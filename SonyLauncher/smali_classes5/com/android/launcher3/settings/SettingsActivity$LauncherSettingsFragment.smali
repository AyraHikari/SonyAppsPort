.class public Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LauncherSettingsFragment"
.end annotation


# instance fields
.field private mDeveloperOptionPref:Landroidx/preference/Preference;

.field private mHighLightKey:Ljava/lang/String;

.field private mPreferenceHighlighted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 200
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mPreferenceHighlighted:Z

    return-void
.end method

.method private createHighlighter()Lcom/android/launcher3/settings/PreferenceHighlighter;
    .locals 6

    .line 375
    iget-object v0, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mHighLightKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 376
    return-object v1

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 380
    .local v0, "screen":Landroidx/preference/PreferenceScreen;
    if-nez v0, :cond_1

    .line 381
    return-object v1

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    .line 385
    .local v2, "list":Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    .line 386
    .local v3, "callback":Landroidx/preference/PreferenceGroup$PreferencePositionCallback;
    iget-object v4, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mHighLightKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v4

    .line 387
    .local v4, "position":I
    if-ltz v4, :cond_2

    new-instance v1, Lcom/android/launcher3/settings/PreferenceHighlighter;

    iget-object v5, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mHighLightKey:Ljava/lang/String;

    .line 388
    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    invoke-direct {v1, v2, v4, v5}, Lcom/android/launcher3/settings/PreferenceHighlighter;-><init>(Landroidx/recyclerview/widget/RecyclerView;ILandroidx/preference/Preference;)V

    goto :goto_0

    .line 389
    :cond_2
    nop

    .line 387
    :goto_0
    return-object v1
.end method

.method static synthetic lambda$onViewCreated$0(ILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .param p0, "bottomPadding"    # I
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 267
    nop

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 271
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    add-int/2addr v3, p0

    .line 267
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 272
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$requestAccessibilityFocus$1(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3
    .param p0, "rv"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 394
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    .line 396
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 398
    :cond_0
    return-void
.end method

.method private requestAccessibilityFocus(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "rv"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 393
    new-instance v0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 399
    return-void
.end method

.method private updateDeveloperOption()Z
    .locals 3

    .line 337
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_USER_DEVICE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/config/FeatureFlags;->showFlagTogglerUserUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->hasPlugins(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .local v0, "showPreference":Z
    goto :goto_3

    .line 340
    .end local v0    # "showPreference":Z
    :cond_1
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/config/FeatureFlags;->showFlagTogglerUi(Landroid/content/Context;)Z

    move-result v0

    .restart local v0    # "showPreference":Z
    goto :goto_3

    .line 343
    .end local v0    # "showPreference":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/config/FeatureFlags;->showFlagTogglerUi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 344
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->hasPlugins(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    :goto_1
    nop

    :goto_2
    move v0, v1

    .line 346
    .restart local v0    # "showPreference":Z
    :goto_3
    iget-object v1, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mDeveloperOptionPref:Landroidx/preference/Preference;

    if-eqz v1, :cond_6

    .line 347
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 348
    if-eqz v0, :cond_5

    .line 349
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mDeveloperOptionPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    .line 351
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mDeveloperOptionPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 354
    :cond_6
    :goto_4
    return v0
.end method


# virtual methods
.method protected getParentKeyForPref(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 295
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initPreference(Landroidx/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroidx/preference/Preference;

    .line 303
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "flag_toggler"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "pref_allowRotation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "pref_developer_options"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "pref_icon_badging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 328
    return v3

    .line 324
    :pswitch_0
    iput-object p1, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mDeveloperOptionPref:Landroidx/preference/Preference;

    .line 325
    invoke-direct {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->updateDeveloperOption()Z

    move-result v0

    return v0

    .line 321
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/config/FeatureFlags;->showFlagTogglerUi(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 308
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 309
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 308
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 309
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 310
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_1

    .line 312
    return v2

    .line 315
    :cond_1
    nop

    .line 316
    invoke-static {v0}, Lcom/android/launcher3/states/RotationHelper;->getAllowRotationDefaultValue(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 315
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 317
    return v3

    .line 305
    .end local v0    # "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    :pswitch_3
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x78b3b18a -> :sswitch_3
        -0x7711ebf3 -> :sswitch_2
        -0x2f13c735 -> :sswitch_1
        0x60c829cb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 209
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mHighLightKey:Ljava/lang/String;

    .line 210
    if-nez p2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mHighLightKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getParentKeyForPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 214
    :cond_1
    if-eqz p1, :cond_2

    .line 215
    const-string v1, "android:preference_highlighted"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mPreferenceHighlighted:Z

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "com.android.launcher3.prefs"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 219
    sget v1, Lcom/android/launcher3/R$xml;->launcher_preferences:I

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 222
    .local v1, "screen":Landroidx/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 223
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 224
    .local v3, "preference":Landroidx/preference/Preference;
    invoke-virtual {p0, v3}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->initPreference(Landroidx/preference/Preference;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 225
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 222
    .end local v3    # "preference":Landroidx/preference/Preference;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 230
    .end local v2    # "i":I
    :cond_4
    const-string v2, "pref_show_quick_search_box"

    invoke-virtual {p0, v2}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SwitchPreference;

    .line 231
    .local v3, "showQsbPref":Landroidx/preference/SwitchPreference;
    invoke-virtual {v3}, Landroidx/preference/SwitchPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    .line 232
    .local v2, "contain":Z
    if-nez v2, :cond_5

    .line 233
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->getQsbDefaultValue(Landroid/content/Context;)Z

    move-result v4

    .line 237
    .local v4, "defaultValue":Z
    xor-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v5}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 238
    invoke-virtual {v3, v4}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 241
    .end local v4    # "defaultValue":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 242
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 243
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$string;->search_pref_screen_title:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 242
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 244
    sget-object v4, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 245
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 244
    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 245
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    .line 246
    .local v4, "mDeviceProfile":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    iget-boolean v6, v4, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v6, :cond_6

    .line 247
    sget v6, Lcom/android/launcher3/R$string;->search_pref_screen_title_tablet:I

    goto :goto_2

    .line 248
    :cond_6
    sget v6, Lcom/android/launcher3/R$string;->search_pref_screen_title:I

    .line 246
    :goto_2
    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceScreen;->setTitle(I)V

    .line 250
    .end local v4    # "mDeviceProfile":Lcom/android/launcher3/DeviceProfile;
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    :cond_8
    new-instance v4, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$1;-><init>(Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;)V

    invoke-virtual {v3, v4}, Landroidx/preference/SwitchPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 259
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroidx/preference/Preference;

    .line 403
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_show_quick_search_box"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.xperiahome.action.INTERNAL_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 408
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .line 359
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onResume()V

    .line 361
    invoke-direct {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->updateDeveloperOption()Z

    .line 363
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mPreferenceHighlighted:Z

    if-nez v0, :cond_1

    .line 364
    invoke-direct {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->createHighlighter()Lcom/android/launcher3/settings/PreferenceHighlighter;

    move-result-object v0

    .line 365
    .local v0, "highlighter":Lcom/android/launcher3/settings/PreferenceHighlighter;
    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mPreferenceHighlighted:Z

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->requestAccessibilityFocus(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 372
    .end local v0    # "highlighter":Lcom/android/launcher3/settings/PreferenceHighlighter;
    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 290
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 291
    iget-boolean v0, p0, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->mPreferenceHighlighted:Z

    const-string v1, "android:preference_highlighted"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 278
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    .line 279
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 280
    .local v0, "screen":Landroidx/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 281
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 282
    .local v2, "preference":Landroidx/preference/Preference;
    invoke-virtual {p0, v2}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->initPreference(Landroidx/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 283
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 280
    .end local v2    # "preference":Landroidx/preference/Preference;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 286
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 263
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 265
    .local v0, "listView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 266
    .local v1, "bottomPadding":I
    new-instance v2, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 274
    return-void
.end method
