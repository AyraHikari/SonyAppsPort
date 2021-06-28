/*
 * Copyright (C) 2013 Sony Mobile Communications AB.
 * All rights, including trade secret rights, reserved.
 */
package com.sonymobile.ui.support;

import android.view.View;

/**
 * Utility class for manipulating SystemUi properties for a view.
 * <p>
 * This class is intended to be used by applications that want to
 * enable features like <i>Suppress Navigation Bar</i>, <i>Rounded Corners</i>,
 * <i>Transparent System UI</i>, etc.
 * <p>
 * The class takes care of compatibility, and nothing bad happens when
 * running on a platform that doesn't support the functionality.
 * <p>
 * This class also wraps the functionality in {@link android.view.View#setSystemUiVisibility(int)
 * android.view.View.setSystemUiVisibility(int)},
 * which shouldn't be called explicitly when this class is used.
 * Standard Android flags are changed using {@link #setSystemUiVisibility(int)}
 * or {@link #setVisibilityFlag(int, boolean)}, and SOMC extensions have their own setter methods.
 * <p>
 * Note: In order to use the SOMC extension flags, the app must either have the permission
 * com.sonymobile.permission.SYSTEM_UI_VISIBILITY_EXTENSIONS (needs platform certificate)
 * or be installed in /system/app/.
 * <p>
 * Note: Some of the flags are mutually exclusive. If more than one of the below flags are set,
 * the following priority applies (highest priority first):
 * <ol>
 * <li><i>LowProfile</i></li>
 * <li><i>TranslucentBackground</i></li>
 * <li><i>LightBackground</i></li>
 * </ol>
 * <p>
 * <b>Example of use:</b>
 * <pre>
 * <code>
 * import com.sonymobile.ui.support.SystemUiVisibilityWrapper;
 *
 * ...
 *
 * // Get a mutable System UI visibility wrapper for the view
 * SystemUiVisibilityWrapper systemUiVis = SystemUiVisibilityWrapper.newInstance(mView);
 *
 * // Set two standard flags and three SOMC extension flags,
 * // and finally apply the changes to the view.
 * systemUiVis.setVisibilityFlag(View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN, true)
 *         .setVisibilityFlag(View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION, true)
 *         .setTranslucentBackground(true)
 *         .setTranslucentBackgroundOpacity(SystemUiVisibilityWrapper.BACKGROUND_OPACITY_DEFAULT)
 *         .setRoundedCorners(true)
 *         .apply();
 * </code>
 * </pre>
 */
public class SystemUiVisibilityWrapper {

    /**
     * Default background opacity.
     * @see #setTranslucentBackgroundOpacity(int)
     * @see #supportsTranslucentBackgroundOpacity(int)
     */
    public static final int BACKGROUND_OPACITY_DEFAULT = -1;

    /**
     * Completely transparent background.
     * @see #setTranslucentBackgroundOpacity(int)
     * @see #supportsTranslucentBackgroundOpacity(int)
     */
    public static final int BACKGROUND_OPACITY_TRANSPARENT = -2;

    /**
     * Mirrors the value of {@link android.view.View#SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION}.
     * Read using Reflection in order to encompass differences between platform versions.
     */
    private static final int SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION;

    /**
     * Mirrors the value of {@link android.view.View#SYSTEM_UI_FLAG_TRANSPARENT}.
     * Read using Reflection in order to encompass differences between platform versions.
     */
    private static final int SYSTEM_UI_FLAG_TRANSPARENT;

    /**
     * Mirrors the value of {@link com.android.view.View#SYSTEM_UI_FLAG_FULL_TRANSPARENCY}.
     * Read using Reflection in order to encompass differences between platform versions.
     */
    private static final int SYSTEM_UI_FLAG_FULL_TRANSPARENCY;

    /**
     * Mirrors the value of {@link android.view.View#SYSTEM_UI_FLAG_ROUNDED_CORNERS}.
     * Read using Reflection in order to encompass differences between platform versions.
     */
    private static final int SYSTEM_UI_FLAG_ROUNDED_CORNERS;

    /**
     * Mirrors the value of {@link android.view.View#SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS}.
     * Read using Reflection in order to encompass differences between platform versions.
     */
    private static final int SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS;

    /**
     * Mirrors the value of {@link android.view.View#SYSTEM_UI_FLAG_LIGHT}.
     * Read using Reflection in order to encompass differences between platform versions.
     */
    private static final int SYSTEM_UI_FLAG_LIGHT;

    /**
     * Bit-mask containing a "1" for each SOMC extension flag.
     */
    private static final int SOMC_EXTENSION_MASK;

    /**
     * The associated view.
     */
    private final View mView;

    /**
     * The SystemUiVisibility state of the associated view.
     */
    private int mSystemUiVisibility;

    /**
     * Bit-mask keeping track of which flags have been changed.
     */
    private int mChangedMask = 0;

    static {
        SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION = getValue(
                "SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION");
        SYSTEM_UI_FLAG_TRANSPARENT = getValue("SYSTEM_UI_FLAG_TRANSPARENT");
        SYSTEM_UI_FLAG_FULL_TRANSPARENCY = getValue("SYSTEM_UI_FLAG_FULL_TRANSPARENCY");
        SYSTEM_UI_FLAG_ROUNDED_CORNERS = getValue(
                "SYSTEM_UI_FLAG_ROUNDED_CORNERS");
        SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS = getValue(
                "SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS");
        SYSTEM_UI_FLAG_LIGHT = getValue("SYSTEM_UI_FLAG_LIGHT");

        SOMC_EXTENSION_MASK = SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION
                | SYSTEM_UI_FLAG_TRANSPARENT
                | SYSTEM_UI_FLAG_FULL_TRANSPARENCY
                | SYSTEM_UI_FLAG_ROUNDED_CORNERS
                | SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS
                | SYSTEM_UI_FLAG_LIGHT;
    }

    /**
     * Gets the value of an integer field in the View class.
     *
     * @param field the name of the field
     * @return the value of the field, or 0 if the field doesn't exist
     */
    private static int getValue(String field) {
        try {
            return View.class.getField(field).getInt(null);
        } catch (NoSuchFieldException e) {
        } catch (IllegalArgumentException e) {
        } catch (IllegalAccessException e) {
        }
        return 0;
    }

    /**
     * Private constructor. Clients shall use {@link #newInstance(View)} instead.
     *
     * @param view the view to be affected by the System UI visibility wrapper. Must not be
     *  <code>null</code>.
     * @throws NullPointerException Thrown if the parameter is <code>null</code>.
     */
    private SystemUiVisibilityWrapper(View view) {
        mView = view;
        mSystemUiVisibility = view.getSystemUiVisibility();
    }

    /**
     * Creates an object that can be used for modifying the SystemUi visibility state of a view.
     *
     * @param view The view to be affected by this wrapper. Normally the content
     *          view of the application.
     * @return A System UI visibility wrapper object. This object can be modified,
     *          and the changes applied back to the view.
     * @throws NullPointerException Thrown if the 'view' parameter is <code>null</code>.
     *
     * @see #setSystemUiVisibility(int)
     * @see #setVisibilityFlag(int, boolean)
     * @see #setSuppressNavigationBar(boolean)
     * @see #setTranslucentBackground(boolean)
     * @see #setLightBackground(boolean)
     * @see #setRoundedCorners(boolean)
     * @see #apply()
     */
    public static SystemUiVisibilityWrapper newInstance(View view) {
        if (view == null) {
            throw new NullPointerException();
        }
        return new SystemUiVisibilityWrapper(view);
    }

    /**
     * Applies all the changes to the view as one operation.
     * <p>
     * Note: Only the values that have been modified are written back to the view.
     *       All other values are left untouched.
     */
    public void apply() {
        // Merge modified flags and old value
        final int oldVal = mView.getSystemUiVisibility();
        final int newVal = mSystemUiVisibility & mChangedMask| oldVal &  ~mChangedMask;

        // Apply
        mView.setSystemUiVisibility(newVal);

        // Mark all flags as unchanged
        mChangedMask = 0;
    }

    /**
     * Sets/resets the value of any single flag in mSystemUiVisibility.
     *
     * @param flag the flag
     * @param value the new flag value (<code>true</code>/<code>false</code>)
     */
    private void setFlag(int flag, boolean value) {
        if (value) {
            mSystemUiVisibility |= flag;
        } else {
            mSystemUiVisibility &= ~flag;
        }

        // Mark flag as changed
        mChangedMask |= flag;
    }

    /**
     * Gets the value of any single flag from the associated view.
     *
     * @param flag the flag
     * @return the flag value
     */
    private boolean getFlag(int flag) {
        return (mView.getSystemUiVisibility() & flag) != 0;
    }

    /**
     * Sets/resets all Android System UI Visibility flags.
     *
     * Same functionality as {@link android.view.View#setSystemUiVisibility(int)
     * android.view.View.setSystemUiVisibility(int)}, except
     * that SOMC extensions aren't affected, since they have their own setter methods.
     *
     * @param visibility bitwise or of flags
     * @return the same SystemUiVisibilityWrapper object to facilitate chaining
     * @see android.view.View#setSystemUiVisibility(int)
     * android.view.View.setSystemUiVisibility(int)
     * @see #setVisibilityFlag(int, boolean)
     */
    public SystemUiVisibilityWrapper setSystemUiVisibility(int visibility) {
        // Mask out SOMC extension flags
        mSystemUiVisibility = visibility & ~SOMC_EXTENSION_MASK
                | mSystemUiVisibility & SOMC_EXTENSION_MASK;

        // Mark all non-SOMC flags as changed
        mChangedMask |= ~SOMC_EXTENSION_MASK;

        return this;
    }

    /**
     * Sets/resets the value of a single Android System UI Visibility flag,
     * without affecting the others.
     *
     * SOMC extensions can't be set with this method, since they have their own setter methods.
     *
     * @param flag the flag
     * @param value the new flag value (<code>true</code>/<code>false</code>)
     * @return the same SystemUiVisibilityWrapper object to facilitate chaining
     * @see #setSystemUiVisibility(int)
     */
    public SystemUiVisibilityWrapper setVisibilityFlag(int flag, boolean value) {
        // Mask out SOMC extension flags
        setFlag(flag & ~SOMC_EXTENSION_MASK, value);
        return this;
    }

    /**
     * Hides the navigation bar.
     * <p>
     * Note: This only has an effect when {@link #supportsSuppressNavigationBar()}
     * returns <code>true</code>.
     *
     * @param value <code>true</code> to hide, <code>false</code> to show
     * @return the same SystemUiVisibilityWrapper object to facilitate chaining
     */
    public SystemUiVisibilityWrapper setSuppressNavigationBar(boolean value) {
        setFlag(SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION, value);
        return this;
    }

    /**
     * Makes the navigation and status bar translucent.
     *
     * This has higher priority than {@link #setLightBackground(boolean)}.
     * <p>
     * Note: This only has an effect when {@link #supportsTranslucentBackground()}
     * returns <code>true</code>.
     *
     * @param value <code>true</code> for translucent, <code>false</code> for opaque
     * @return the same SystemUiVisibilityWrapper object to facilitate chaining
     */
    public SystemUiVisibilityWrapper setTranslucentBackground(boolean value) {
        setFlag(SYSTEM_UI_FLAG_TRANSPARENT, value);
        return this;
    }

    /**
     * Sets the opacity level that is used in translucent mode.
     * <p>
     * Note: This doesn't activate translucent mode, it just modifies the
     * transparency level. To activate translucent mode, use
     * {@link #setTranslucentBackground(boolean)}.
     * <p>
     * Note: This only has an effect if
     * {@link #supportsTranslucentBackgroundOpacity(int)} returns
     * <code>true</code> for the specific 'alpha' value.
     *
     * @param alpha One of the constants {@link #BACKGROUND_OPACITY_DEFAULT} or
     *            {@link #BACKGROUND_OPACITY_TRANSPARENT}.
     * @return the same SystemUiVisibilityWrapper object to facilitate chaining
     */
    public SystemUiVisibilityWrapper setTranslucentBackgroundOpacity(int alpha) {
        if (alpha == BACKGROUND_OPACITY_DEFAULT || alpha == BACKGROUND_OPACITY_TRANSPARENT) {
            setFlag(SYSTEM_UI_FLAG_FULL_TRANSPARENCY, (alpha == BACKGROUND_OPACITY_TRANSPARENT));
        }
        return this;
    }

    /**
     * Makes the navigation and status bar opaque with a color theme
     * made to go well with an application themed with <code>DeviceDefault.Light</code>.
     *
     * This has lower priority than {@link #setTranslucentBackground(boolean)}
     * <p>
     * Note: This only has an effect when {@link #supportsLightBackground()} returns
     * <code>true</code>.
     *
     * @param value <code>true</code> for light, <code>false</code> for default color (dark)
     * @return the same SystemUiVisibilityWrapper object to facilitate chaining
     */
    public SystemUiVisibilityWrapper setLightBackground(boolean value) {
        setFlag(SYSTEM_UI_FLAG_LIGHT, value);
        return this;
    }

    /**
     * Makes the system UI draw graphics in the corners of the display
     * to make the them appear rounded.
     * <p>
     * Note: This only has an effect when {@link #supportsRoundedCorners()} returns
     * <code>true</code>.
     *
     * @param value <code>true</code> for rounded corners, <code>false</code> for square corners
     * @return the same SystemUiVisibilityWrapper object to facilitate chaining
     */
    public SystemUiVisibilityWrapper setRoundedCorners(boolean value) {
        // This method affects two flags:
        // * SYSTEM_UI_FLAG_ROUNDED_CORNERS enables rounded corners for this view if not
        //   already enabled by the theme.
        // * SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS disables rounded corners for this view
        //   even if enabled by the theme.
        // The disable flag has higher priority.
        setFlag(SYSTEM_UI_FLAG_ROUNDED_CORNERS, value);
        setFlag(SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS, !value);
        return this;
    }

    /**
     * Gets all Android System UI Visibility flags from the associated view.
     *
     * Same functionality as {@link android.view.View#getSystemUiVisibility()
     * android.view.View.getSystemUiVisibility()}, except
     * that SOMC extensions are masked off, since they have their own getter methods.
     *
     * @return bitwise or of flags
     * @see #getVisibilityFlag(int)
     * @see android.view.View#getSystemUiVisibility()
     * android.view.View.getSystemUiVisibility()
     * @see #setSystemUiVisibility(int)
     */
    public int getSystemUiVisibility() {
        // Mask out SOMC extension flags
        return mView.getSystemUiVisibility() & ~SOMC_EXTENSION_MASK;
    }

    /**
     * Gets the value of a single Android System UI Visibility flag from the associated view.
     *
     * SOMC extensions can't be retrieved with this method, since they have
     * their own getter methods.
     *
     * @param flag the flag
     * @return the flag value
     * @see #getSystemUiVisibility()
     * @see #setVisibilityFlag(int, boolean)
     */
    public boolean getVisibilityFlag(int flag) {
        // Mask out SOMC extension flags
        return getFlag(flag & ~SOMC_EXTENSION_MASK);
    }

    /**
     * Gets the value of the <i>Suppress Navigation Bar</i> flag from the associated view.
     * <p>
     * Note: This only has an effect when {@link #supportsSuppressNavigationBar()}
     * returns <code>true</code>.
     *
     * @return the flag value, or <code>false</code> if not supported
     * @see #setSuppressNavigationBar(boolean)
     */
    public boolean getSuppressNavigationBar() {
        return getFlag(SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION);
    }

    /**
     * Gets the value of the <i>Translucent System UI</i> flag from the associated view.
     * <p>
     * Note: This only has an effect when {@link #supportsTranslucentBackground()}
     * returns <code>true</code>.
     *
     * @return the flag value, or <code>false</code> if not supported
     * @see #setTranslucentBackground(boolean)
     */
    public boolean getTranslucentBackground() {
        return getFlag(SYSTEM_UI_FLAG_TRANSPARENT);
    }

    /**
     * Returns the translucent background opacity.
     * <p>
     * Note: This only has an effect when
     * {@link #supportsTranslucentBackground()} returns <code>true</code>.
     *
     * @return One of the constants {@link #BACKGROUND_OPACITY_DEFAULT} or
     *         {@link #BACKGROUND_OPACITY_TRANSPARENT}.
     * @see #setTranslucentBackground(boolean)
     * @see #supportsTranslucentBackgroundOpacity(int)
     */
    public int getTranslucentBackgroundOpacity() {
        return getFlag(SYSTEM_UI_FLAG_FULL_TRANSPARENCY) ?
                BACKGROUND_OPACITY_TRANSPARENT : BACKGROUND_OPACITY_DEFAULT;
    }

    /**
     * Gets the value of the <i>Light System UI</i> flag from the associated view.
     * <p>
     * Note: This only has an effect when {@link #supportsLightBackground()}
     * returns <code>true</code>.
     *
     * @return the flag value, or <code>false</code> if not supported
     * @see #setLightBackground(boolean)
     */
    public boolean getLightBackground() {
        return getFlag(SYSTEM_UI_FLAG_LIGHT);
    }

    /**
     * Gets the value of the <i>Rounded Corners</i> flag from the associated view.
     * <p>
     * Note: This only has an effect when {@link #supportsRoundedCorners()}
     * returns <code>true</code>.
     *
     * @return the flag value, or <code>false</code> if not supported
     * @see #setRoundedCorners(boolean)
     */
    public boolean getRoundedCorners() {
        // This method checks two flags:
        // * SYSTEM_UI_FLAG_ROUNDED_CORNERS enables rounded corners for this view if not
        //   already enabled by the theme.
        // * SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS disables rounded corners for this view
        //   even if enabled by the theme.
        // The disable flag has higher priority.
        return getFlag(SYSTEM_UI_FLAG_ROUNDED_CORNERS)
                && !getFlag(SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS);
    }

    /**
     * Checks if the <i>Suppress Navigation Bar</i> feature is supported.
     *
     * @return <code>true</code> if the feature is supported, <code>false</code> if not supported
     * @see #setSuppressNavigationBar(boolean)
     */
    public boolean supportsSuppressNavigationBar() {
        return SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION != 0;
    }

    /**
     * Checks if the <i>Translucent System UI</i> feature is supported.
     *
     * @return <code>true</code> if the feature is supported, <code>false</code> if not supported
     * @see #setTranslucentBackground(boolean)
     */
    public boolean supportsTranslucentBackground() {
        return SYSTEM_UI_FLAG_TRANSPARENT != 0;
    }

    /**
     * Checks if the <i>Fully Transparent System UI</i> feature is supported.
     *
     * @param alpha One of the constants {@link #BACKGROUND_OPACITY_DEFAULT} or
     *            {@link #BACKGROUND_OPACITY_TRANSPARENT}.
     * @return <code>true</code> if the feature is supported, <code>false</code>
     *         if not supported
     * @see #setTranslucentBackgroundOpacity(int)
     * @see #setTranslucentBackground(boolean)
     * @see #BACKGROUND_OPACITY_DEFAULT
     * @see #BACKGROUND_OPACITY_TRANSPARENT
     */
    public boolean supportsTranslucentBackgroundOpacity(int alpha) {
        return alpha == BACKGROUND_OPACITY_DEFAULT || (SYSTEM_UI_FLAG_FULL_TRANSPARENCY != 0 &&
                    alpha == BACKGROUND_OPACITY_TRANSPARENT);
    }

    /**
     * Checks if the <i>Light System UI</i> feature is supported.
     *
     * @return <code>true</code> if the feature is supported, <code>false</code> if not supported
     * @see #setLightBackground(boolean)
     */
    public boolean supportsLightBackground() {
        return SYSTEM_UI_FLAG_LIGHT != 0;
    }

    /**
     * Checks if the <i>Rounded Corners</i> feature is supported.
     *
     * @return <code>true</code> if the feature is supported, <code>false</code> if not supported
     * @see #setRoundedCorners()
     */
    public boolean supportsRoundedCorners() {
        return SYSTEM_UI_FLAG_ROUNDED_CORNERS != 0;
    }

}
