.class public Lcom/android/systemui/shared/system/QuickStepContract;
.super Ljava/lang/Object;
.source "QuickStepContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/QuickStepContract$SystemUiStateFlags;
    }
.end annotation


# static fields
.field public static final KEY_EXTRA_RECENT_TASKS:Ljava/lang/String; = "recent_tasks"

.field public static final KEY_EXTRA_SHELL_BACK_ANIMATION:Ljava/lang/String; = "extra_shell_back_animation"

.field public static final KEY_EXTRA_SHELL_ONE_HANDED:Ljava/lang/String; = "extra_shell_one_handed"

.field public static final KEY_EXTRA_SHELL_PIP:Ljava/lang/String; = "extra_shell_pip"

.field public static final KEY_EXTRA_SHELL_SHELL_TRANSITIONS:Ljava/lang/String; = "extra_shell_shell_transitions"

.field public static final KEY_EXTRA_SHELL_SPLIT_SCREEN:Ljava/lang/String; = "extra_shell_split_screen"

.field public static final KEY_EXTRA_SHELL_STARTING_WINDOW:Ljava/lang/String; = "extra_shell_starting_window"

.field public static final KEY_EXTRA_SUPPORTS_WINDOW_CORNERS:Ljava/lang/String; = "extra_supports_window_corners"

.field public static final KEY_EXTRA_SYSUI_PROXY:Ljava/lang/String; = "extra_sysui_proxy"

.field public static final KEY_EXTRA_UNLOCK_ANIMATION_CONTROLLER:Ljava/lang/String; = "unlock_animation"

.field public static final KEY_EXTRA_WINDOW_CORNER_RADIUS:Ljava/lang/String; = "extra_window_corner_radius"

.field public static final LAUNCHER_ACTIVITY_CLASS_NAME:Ljava/lang/String; = "com.google.android.apps.nexuslauncher.NexusLauncherActivity"

.field public static final NAV_BAR_MODE_3BUTTON_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.threebutton"

.field public static final NAV_BAR_MODE_GESTURAL_OVERLAY:Ljava/lang/String; = "com.android.internal.systemui.navbar.gestural"

.field public static final QUICKSTEP_TOUCH_SLOP_RATIO:F = 3.0f

.field public static final SYSUI_STATE_A11Y_BUTTON_CLICKABLE:I = 0x10

.field public static final SYSUI_STATE_A11Y_BUTTON_LONG_CLICKABLE:I = 0x20

.field public static final SYSUI_STATE_ALLOW_GESTURE_IGNORING_BAR_VISIBILITY:I = 0x20000

.field public static final SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED:I = 0x2000

.field public static final SYSUI_STATE_BACK_DISABLED:I = 0x400000

.field public static final SYSUI_STATE_BOUNCER_SHOWING:I = 0x8

.field public static final SYSUI_STATE_BUBBLES_EXPANDED:I = 0x4000

.field public static final SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED:I = 0x800000

.field public static final SYSUI_STATE_DEVICE_DOZING:I = 0x200000

.field public static final SYSUI_STATE_DIALOG_SHOWING:I = 0x8000

.field public static final SYSUI_STATE_HOME_DISABLED:I = 0x100

.field public static final SYSUI_STATE_IME_SHOWING:I = 0x40000

.field public static final SYSUI_STATE_IME_SWITCHER_SHOWING:I = 0x100000

.field public static final SYSUI_STATE_IMMERSIVE_MODE:I = 0x1000000

.field public static final SYSUI_STATE_MAGNIFICATION_OVERLAP:I = 0x80000

.field public static final SYSUI_STATE_NAV_BAR_HIDDEN:I = 0x2

.field public static final SYSUI_STATE_NOTIFICATION_PANEL_EXPANDED:I = 0x4

.field public static final SYSUI_STATE_ONE_HANDED_ACTIVE:I = 0x10000

.field public static final SYSUI_STATE_OVERVIEW_DISABLED:I = 0x80

.field public static final SYSUI_STATE_QUICK_SETTINGS_EXPANDED:I = 0x800

.field public static final SYSUI_STATE_SCREEN_PINNING:I = 0x1

.field public static final SYSUI_STATE_SEARCH_DISABLED:I = 0x400

.field public static final SYSUI_STATE_STATUS_BAR_KEYGUARD_SHOWING:I = 0x40

.field public static final SYSUI_STATE_STATUS_BAR_KEYGUARD_SHOWING_OCCLUDED:I = 0x200

.field public static final SYSUI_STATE_TRACING_ENABLED:I = 0x1000

.field public static final SYSUI_STATE_VOICE_INTERACTION_WINDOW_SHOWING:I = 0x2000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertDpToPixel(F)I
    .locals 1
    .param p0, "dp"    # F

    .line 225
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static getQuickScrubTouchSlopPx()I
    .locals 1

    .line 221
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getQuickStepDragSlopPx()I
    .locals 1

    .line 213
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static final getQuickStepTouchSlopPx(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 203
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getQuickStepTouchSlopPx()I
    .locals 1

    .line 217
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getSystemUiStateString(I)Ljava/lang/String;
    .locals 3
    .param p0, "flags"    # I

    .line 160
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 161
    .local v0, "str":Ljava/util/StringJoiner;
    and-int/lit8 v1, p0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, "screen_pinned"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 162
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_1

    const-string v1, "overview_disabled"

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 163
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_2

    const-string v1, "home_disabled"

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 164
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_3

    const-string v1, "search_disabled"

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 165
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_4

    const-string v1, "navbar_hidden"

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 166
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_5

    const-string v1, "notif_visible"

    goto :goto_5

    :cond_5
    move-object v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 167
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_6

    const-string v1, "qs_visible"

    goto :goto_6

    :cond_6
    move-object v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 168
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_7

    const-string v1, "keygrd_visible"

    goto :goto_7

    :cond_7
    move-object v1, v2

    :goto_7
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 169
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_8

    .line 170
    const-string v1, "keygrd_occluded"

    goto :goto_8

    :cond_8
    move-object v1, v2

    .line 169
    :goto_8
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 171
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_9

    const-string v1, "bouncer_visible"

    goto :goto_9

    :cond_9
    move-object v1, v2

    :goto_9
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 172
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_a

    const-string v1, "dialog_showing"

    goto :goto_a

    :cond_a
    move-object v1, v2

    :goto_a
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 173
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_b

    const-string v1, "a11y_click"

    goto :goto_b

    :cond_b
    move-object v1, v2

    :goto_b
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 174
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_c

    const-string v1, "a11y_long_click"

    goto :goto_c

    :cond_c
    move-object v1, v2

    :goto_c
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 175
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_d

    const-string v1, "tracing"

    goto :goto_d

    :cond_d
    move-object v1, v2

    :goto_d
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 176
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_e

    .line 177
    const-string v1, "asst_gesture_constrain"

    goto :goto_e

    :cond_e
    move-object v1, v2

    .line 176
    :goto_e
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 178
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_f

    const-string v1, "bubbles_expanded"

    goto :goto_f

    :cond_f
    move-object v1, v2

    :goto_f
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 179
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_10

    const-string v1, "one_handed_active"

    goto :goto_10

    :cond_10
    move-object v1, v2

    :goto_10
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 180
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_11

    .line 181
    const-string v1, "allow_gesture"

    goto :goto_11

    :cond_11
    move-object v1, v2

    .line 180
    :goto_11
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 182
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_12

    const-string v1, "ime_visible"

    goto :goto_12

    :cond_12
    move-object v1, v2

    :goto_12
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 183
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_13

    const-string v1, "magnification_overlap"

    goto :goto_13

    :cond_13
    move-object v1, v2

    :goto_13
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 184
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_14

    const-string v1, "ime_switcher_showing"

    goto :goto_14

    :cond_14
    move-object v1, v2

    :goto_14
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 185
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_15

    const-string v1, "device_dozing"

    goto :goto_15

    :cond_15
    move-object v1, v2

    :goto_15
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 186
    const/high16 v1, 0x400000

    and-int/2addr v1, p0

    if-eqz v1, :cond_16

    const-string v1, "back_disabled"

    goto :goto_16

    :cond_16
    move-object v1, v2

    :goto_16
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 187
    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_17

    .line 188
    const-string v1, "bubbles_mange_menu_expanded"

    goto :goto_17

    :cond_17
    move-object v1, v2

    .line 187
    :goto_17
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 189
    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_18

    const-string v1, "immersive_mode"

    goto :goto_18

    :cond_18
    move-object v1, v2

    :goto_18
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 190
    const/high16 v1, 0x2000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_19

    const-string v2, "vis_win_showing"

    :cond_19
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 191
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getWindowCornerRadius(Landroid/content/Context;)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 305
    invoke-static {p0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static isAssistantGestureDisabled(I)Z
    .locals 3
    .param p0, "sysuiStateFlags"    # I

    .line 233
    const/high16 v0, 0x20000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 234
    and-int/lit8 p0, p0, -0x3

    .line 238
    :cond_0
    const/16 v0, 0xc0b

    .line 243
    .local v0, "disableFlags":I
    and-int v1, p0, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 244
    return v2

    .line 248
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    and-int/lit8 v1, p0, 0x40

    if-nez v1, :cond_2

    .line 250
    return v2

    .line 253
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static isBackGestureDisabled(I)Z
    .locals 3
    .param p0, "sysuiStateFlags"    # I

    .line 263
    and-int/lit8 v0, p0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const v0, 0x8000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/high16 v0, 0x2000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    const/high16 v0, 0x20000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    .line 269
    and-int/lit8 p0, p0, -0x3

    .line 272
    :cond_1
    const/16 v0, 0x46

    .line 275
    .local v0, "disableFlags":I
    and-int v2, p0, v0

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 266
    .end local v0    # "disableFlags":I
    :cond_3
    :goto_0
    return v1
.end method

.method public static isGesturalMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .line 282
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLegacyMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .line 296
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSwipeUpMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .line 289
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 312
    invoke-static {p0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method
