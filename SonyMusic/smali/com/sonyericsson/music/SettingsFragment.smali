.class public Lcom/sonyericsson/music/SettingsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/sonyericsson/music/settings/InterceptableSwitchPreference$SwitchInterceptor;
.implements Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/SettingsFragment$HandleXperiaIdTask;,
        Lcom/sonyericsson/music/SettingsFragment$HandleClearAudioTask;,
        Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_CONFORMANCE_URL:Ljava/lang/String; = "https://www.sony.fr/electronics/support/articles/00254808"

.field private static final CUSTOMIZE_MY_LIBRARY_REQUEST:I = 0x3

.field private static final DISPLAY_EQUALIZER_REQUEST:I = 0x1

.field private static final GOOGLE_DRIVE_SETTINGS_REQUEST:I = 0x4

.field private static final ILLUMINATION_SETTING_REQUEST:I = 0x2

.field private static final LEFT_TO_RIGHT_FORMATTER:C = '\u200e'

.field private static final SOUND_ENHANCEMENT_CLASS_NAME:Ljava/lang/String; = "com.sonyericsson.soundenhancement.SoundEnhancementRedirector"

.field private static final SOUND_ENHANCEMENT_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.soundenhancement"

.field public static final TAG_SETTINGS_FRAGMENT:Ljava/lang/String; = "SettingsFragment"


# instance fields
.field private mAccessibilityPref:Lcom/sonyericsson/music/settings/TitleLinkPreference;

.field private mBetaCategory:Landroidx/preference/PreferenceCategory;

.field private mCustomizeCategory:Landroidx/preference/PreferenceCategory;

.field private mCustomizeMyLibraryPref:Landroidx/preference/Preference;

.field private mDeleteFilesPref:Landroidx/preference/Preference;

.field private mExtensionsCategory:Landroidx/preference/PreferenceCategory;

.field private mExtensionsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/preference/CheckBoxPreference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeneralCategory:Landroidx/preference/PreferenceCategory;

.field private mGoogleDriveSettings:Landroidx/preference/Preference;

.field private mGoogleDriveSettingsKey:Ljava/lang/String;

.field private mHandleExtensionsPrefs:Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;

.field private mIlluminationPref:Landroidx/preference/Preference;

.field private mIsGlobalAudioAvailable:Z

.field private mMediaServerPreference:Landroidx/preference/Preference;

.field private mMusicInformationCategory:Landroidx/preference/PreferenceCategory;

.field private mPermissionsPref:Landroidx/preference/Preference;

.field private mPersonalDataCollectionPref:Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;

.field private mQuickPlayPref:Landroidx/preference/Preference;

.field private mSleepTimerPref:Landroidx/preference/Preference;

.field mSoundEnhancementsPref:Landroidx/preference/Preference;

.field private mVersionPref:Landroidx/preference/Preference;

.field private mWalkmanShakeControlPref:Landroidx/preference/Preference;

.field private mXperiaIdPref:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mIsGlobalAudioAvailable:Z

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mExtensionsMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/SettingsFragment;)Ljava/util/HashMap;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/sonyericsson/music/SettingsFragment;->mExtensionsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/SettingsFragment;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/sonyericsson/music/SettingsFragment;->mExtensionsCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/SettingsFragment;Landroid/content/Context;Z)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/SettingsFragment;->setIsGlobalAudioSettingsAvailable(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/SettingsFragment;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/SettingsFragment;->enableXperiaId(Ljava/lang/String;)V

    return-void
.end method

.method private static backOutOfGoogleDriveFragment(Landroid/app/Activity;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 892
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra_pop_google_drive"

    const/4 v2, 0x1

    .line 894
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 895
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private callSleeperTimerDialog()V
    .locals 3

    .line 809
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/SettingsActivity;

    .line 810
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 811
    invoke-static {}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->newInstance()Lcom/sonyericsson/music/dialogs/SleepTimerDialog;

    move-result-object v1

    .line 812
    invoke-virtual {v1, p0}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->setSleepTimerController(Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerController;)V

    const-string v2, "sleeptimer_dialog"

    .line 813
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private enableAccessibility(Landroid/content/Context;)V
    .locals 4

    const-string v0, "pref_key_accessibility"

    .line 623
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/settings/TitleLinkPreference;

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mAccessibilityPref:Lcom/sonyericsson/music/settings/TitleLinkPreference;

    const-string v0, "pref_key_music_settings_about"

    .line 624
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 627
    invoke-static {p1}, Lcom/sonyericsson/music/common/AvailabilityUtils;->showAccessibilityConformance(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 628
    iget-object p1, p0, Lcom/sonyericsson/music/SettingsFragment;->mAccessibilityPref:Lcom/sonyericsson/music/settings/TitleLinkPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 631
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1001e3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "https://www.sony.fr/electronics/support/articles/00254808"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 632
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 635
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 636
    invoke-static {p1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    goto :goto_0

    .line 638
    :cond_1
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 640
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mAccessibilityPref:Lcom/sonyericsson/music/settings/TitleLinkPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private enableAppPermissionSettings(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f100263

    .line 601
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mPermissionsPref:Landroidx/preference/Preference;

    .line 603
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mPermissionsPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 604
    invoke-static {p1}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataTrafficWarningRequired(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 605
    iget-object p1, p0, Lcom/sonyericsson/music/SettingsFragment;->mGeneralCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_0

    .line 606
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mPermissionsPref:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private enableDeleteFiles()V
    .locals 1

    const-string v0, "pref_key_delete_data"

    .line 575
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mDeleteFilesPref:Landroidx/preference/Preference;

    return-void
.end method

.method private enableIlluminationSettings(Landroid/content/Context;)V
    .locals 1

    const-string v0, "pref_key_illumination_setting"

    .line 556
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mIlluminationPref:Landroidx/preference/Preference;

    .line 557
    invoke-static {p1}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isIlluminationSettingsAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 558
    iget-object p1, p0, Lcom/sonyericsson/music/SettingsFragment;->mCustomizeCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mIlluminationPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private enableMediaServer(Landroid/content/Context;)V
    .locals 1

    const-string v0, "pref_key_media_server"

    .line 547
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mMediaServerPreference:Landroidx/preference/Preference;

    .line 548
    invoke-static {p1}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isMediaServerSettingsAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 549
    iget-object p1, p0, Lcom/sonyericsson/music/SettingsFragment;->mGeneralCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mMediaServerPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private enablePersonalDataCollection()V
    .locals 1

    const v0, 0x7f100266

    .line 580
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mPersonalDataCollectionPref:Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;

    .line 581
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mPersonalDataCollectionPref:Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->setInterceptor(Lcom/sonyericsson/music/settings/InterceptableSwitchPreference$SwitchInterceptor;)V

    :cond_0
    return-void
.end method

.method private enableSleepTimer()V
    .locals 1

    const-string v0, "pref_key_sleep_timer"

    .line 597
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mSleepTimerPref:Landroidx/preference/Preference;

    return-void
.end method

.method private enableSoundEnhancement(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "pref_key_clear_audio"

    .line 452
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 454
    sget-object v1, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->CLEAR_AUDIO_PLUS:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    invoke-static {v1}, Lcom/sonyericsson/music/common/ApiAvailabilityManager;->isApiAvailable(Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "pref_key_music_settings_music_quality"

    .line 457
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    .line 460
    .line 464
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isAudioControlPanelAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p2, "pref_key_music_settings_music_quality"

    .line 465
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    .line 467
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mSoundEnhancementsPref:Landroidx/preference/Preference;

    const/4 p2, 0x0

    .line 468
    iput-object p2, p0, Lcom/sonyericsson/music/SettingsFragment;->mSoundEnhancementsPref:Landroidx/preference/Preference;

    goto :goto_0

    .line 470
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/music/SettingsFragment;->mSoundEnhancementsPref:Landroidx/preference/Preference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    if-nez p2, :cond_3

    .line 472
    new-instance p2, Lcom/sonyericsson/music/SettingsFragment$1;

    invoke-direct {p2, p0, v0}, Lcom/sonyericsson/music/SettingsFragment$1;-><init>(Lcom/sonyericsson/music/SettingsFragment;Landroidx/preference/Preference;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 490
    invoke-virtual {p2, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 493
    :cond_3
    iget-object p2, p0, Lcom/sonyericsson/music/SettingsFragment;->mSoundEnhancementsPref:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 496
    :goto_0
    iget-object p2, p0, Lcom/sonyericsson/music/SettingsFragment;->mSoundEnhancementsPref:Landroidx/preference/Preference;

    if-eqz p2, :cond_4

    const-string v0, "com.sonyericsson.soundenhancement"

    const v1, 0x7f100215

    .line 499
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/common/MusicUtils;->getApplicationName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 497
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private enableWalkmanShakeControlSettings(Landroid/content/Context;)V
    .locals 1

    const-string v0, "pref_key_walkman_shake_control_setting"

    .line 565
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mWalkmanShakeControlPref:Landroidx/preference/Preference;

    .line 567
    invoke-static {p1}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isWalkmanShakeControlSettingAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 568
    iget-object p1, p0, Lcom/sonyericsson/music/SettingsFragment;->mCustomizeCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mWalkmanShakeControlPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private enableXperiaId(Ljava/lang/String;)V
    .locals 2

    .line 587
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object p1, p0, Lcom/sonyericsson/music/SettingsFragment;->mGeneralCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mXperiaIdPref:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mGeneralCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sonyericsson/music/SettingsFragment;->mXperiaIdPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 591
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mXperiaIdPref:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 592
    iget-object p1, p0, Lcom/sonyericsson/music/SettingsFragment;->mXperiaIdPref:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_0
    return-void
.end method

.method private static finishAndLaunchGoogleDrive(Landroid/app/Activity;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 900
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra_launch_google_drive"

    const/4 v2, 0x1

    .line 902
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 903
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 904
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private static finishForReload(Landroid/app/Activity;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 883
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 884
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra_reload"

    const/4 v2, 0x1

    .line 885
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 886
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 887
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/music/SettingsFragment;
    .locals 2

    .line 165
    new-instance v0, Lcom/sonyericsson/music/SettingsFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/SettingsFragment;-><init>()V

    .line 167
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 168
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setIsGlobalAudioSettingsAvailable(Landroid/content/Context;Z)V
    .locals 0

    .line 444
    iput-boolean p2, p0, Lcom/sonyericsson/music/SettingsFragment;->mIsGlobalAudioAvailable:Z

    .line 445
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 446
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    .line 447
    iget-boolean p2, p0, Lcom/sonyericsson/music/SettingsFragment;->mIsGlobalAudioAvailable:Z

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/SettingsFragment;->enableSoundEnhancement(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private showVersionPreference(Landroid/content/Context;)V
    .locals 6

    const-string v0, "pref_key_version"

    .line 613
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mVersionPref:Landroidx/preference/Preference;

    .line 614
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mVersionPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    const v1, 0x7f100225

    const/4 v2, 0x1

    .line 615
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x200e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 617
    invoke-static {}, Lcom/sonyericsson/music/common/VersionUtils;->getVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 616
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 615
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private startEqualizer()V
    .locals 4

    .line 839
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/SettingsActivity;

    if-eqz v0, :cond_5

    .line 840
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 841
    invoke-static {v0}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isAudioControlPanelAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 842
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 847
    iget-boolean v2, p0, Lcom/sonyericsson/music/SettingsFragment;->mIsGlobalAudioAvailable:Z

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 868
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sonyericsson.soundenhancement"

    const-string v3, "com.sonyericsson.soundenhancement.SoundEnhancementRedirector"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_3

    .line 848
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    .line 849
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.media.extra.PACKAGE_NAME"

    .line 850
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.media.extra.CONTENT_TYPE"

    const/4 v3, 0x0

    .line 851
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 853
    invoke-virtual {v0}, Lcom/sonyericsson/music/SettingsActivity;->getMediaPlayback()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 856
    :try_start_0
    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v2, -0x1

    if-eqz v0, :cond_3

    .line 857
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getAudioSession()I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    :goto_2
    if-le v0, v2, :cond_4

    const-string v2, "android.media.extra.AUDIO_SESSION"

    .line 862
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_3
    const/4 v0, 0x1

    .line 873
    :try_start_1
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 875
    :catch_1
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Unable to launch equalizer"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/music/debug/DebugBase;->logW(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void
.end method

.method private startIlluminationSettings()V
    .locals 2

    .line 526
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.settings.intent.action.ILLUMINATION_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 527
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startPersonalDataCollectionActivity()V
    .locals 4

    .line 536
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 539
    const-class v2, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "title"

    const v3, 0x7f100202

    .line 540
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private startWalkmanShakeControlSettings()V
    .locals 2

    .line 531
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.settings.intent.action.SHAKECONTROL_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private toggleClearAudio(Z)V
    .locals 4

    .line 504
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/SettingsActivity;

    if-eqz v0, :cond_0

    .line 507
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonymobile.audioeffect.intent.action.CLEARAUDIO_PLUS_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sonymobile.audioeffect.intent.extra.CLEARAUDIO_PLUS_PACKAGE_NAME"

    .line 509
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.sonymobile.audioeffect.intent.extra.CLEARAUDIO_PLUS_STATUS"

    .line 510
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 514
    invoke-virtual {v0}, Lcom/sonyericsson/music/SettingsActivity;->getMediaPlayback()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 517
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setClearAudioEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    :catch_0
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const-class v0, Lcom/sonyericsson/music/SettingsFragment;

    const-string v1, "Could not set ClearAudio setting in service."

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public activateDelayedPause(J)V
    .locals 1

    .line 686
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/SettingsActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/SettingsActivity;->getMediaPlayback()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 688
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->pauseDelayed(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getDelayedPausedEndMillis()J
    .locals 2

    .line 671
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/SettingsActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/SettingsActivity;->getMediaPlayback()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 673
    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getDelayedPauseEndMillis()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 818
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne p2, v0, :cond_1

    const-string p1, "extra_launch_google_drive"

    .line 828
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 829
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/SettingsFragment;->finishAndLaunchGoogleDrive(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string p1, "extra_pop_google_drive"

    .line 830
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 831
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/SettingsFragment;->backOutOfGoogleDriveFragment(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_1

    .line 823
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/SettingsFragment;->finishForReload(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 175
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "pref_key_sound_enhancements"

    .line 178
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mSoundEnhancementsPref:Landroidx/preference/Preference;

    .line 179
    new-instance v0, Lcom/sonyericsson/music/SettingsFragment$HandleClearAudioTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/SettingsFragment$HandleClearAudioTask;-><init>(Lcom/sonyericsson/music/SettingsFragment;Landroid/content/Context;)V

    .line 180
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, "pref_key_music_settings_general"

    .line 182
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mGeneralCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "pref_key_music_settings_customize"

    .line 184
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mCustomizeCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "pref_key_music_settings_music_info"

    .line 186
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mMusicInformationCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "pref_key_service_settings"

    .line 188
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mExtensionsCategory:Landroidx/preference/PreferenceCategory;

    const v0, 0x7f100264

    .line 190
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mGoogleDriveSettingsKey:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mGoogleDriveSettingsKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mGoogleDriveSettings:Landroidx/preference/Preference;

    const-string v0, "pref_key_beta"

    .line 192
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mBetaCategory:Landroidx/preference/PreferenceCategory;

    const v0, 0x7f100269

    .line 194
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mXperiaIdPref:Landroidx/preference/Preference;

    .line 196
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/SettingsFragment;->enableIlluminationSettings(Landroid/content/Context;)V

    .line 197
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/SettingsFragment;->enableWalkmanShakeControlSettings(Landroid/content/Context;)V

    .line 198
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/SettingsFragment;->enableAppPermissionSettings(Landroid/content/Context;)V

    .line 199
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/SettingsFragment;->enableMediaServer(Landroid/content/Context;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/SettingsFragment;->enableAccessibility(Landroid/content/Context;)V

    .line 202
    invoke-direct {p0}, Lcom/sonyericsson/music/SettingsFragment;->enableDeleteFiles()V

    .line 203
    invoke-direct {p0}, Lcom/sonyericsson/music/SettingsFragment;->enablePersonalDataCollection()V

    .line 204
    invoke-direct {p0}, Lcom/sonyericsson/music/SettingsFragment;->enableSleepTimer()V

    const-string v0, "pref_key_quick_play"

    .line 206
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mQuickPlayPref:Landroidx/preference/Preference;

    const-string v0, "pref_key_customize_my_library"

    .line 207
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mCustomizeMyLibraryPref:Landroidx/preference/Preference;

    .line 209
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/SettingsFragment;->showVersionPreference(Landroid/content/Context;)V

    .line 212
    new-instance v0, Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;-><init>(Lcom/sonyericsson/music/SettingsFragment;Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mHandleExtensionsPrefs:Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mHandleExtensionsPrefs:Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;

    sget-object v1, Lcom/sonymobile/music/common/LongRunningTasks;->LRT_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mGeneralCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sonyericsson/music/SettingsFragment;->mXperiaIdPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 218
    new-instance v0, Lcom/sonyericsson/music/SettingsFragment$HandleXperiaIdTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/SettingsFragment$HandleXperiaIdTask;-><init>(Lcom/sonyericsson/music/SettingsFragment;Landroid/content/Context;)V

    .line 219
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mGeneralCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/SettingsFragment;->mGeneralCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mCustomizeCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 227
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/SettingsFragment;->mCustomizeCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mExtensionsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 231
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/SettingsFragment;->mExtensionsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mBetaCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 234
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/SettingsFragment;->mBetaCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 237
    :cond_3
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveUtils;->isGoogleDriveAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 238
    iget-object p1, p0, Lcom/sonyericsson/music/SettingsFragment;->mGeneralCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mGoogleDriveSettings:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 241
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isSettingsMusicInformationCategoryDisabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 242
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mMusicInformationCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f130007

    .line 260
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 250
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    .line 253
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mHandleExtensionsPrefs:Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 266
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 269
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onIntercept(Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;)V
    .locals 1

    .line 646
    invoke-virtual {p1}, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 648
    iget-object p1, p0, Lcom/sonyericsson/music/SettingsFragment;->mPersonalDataCollectionPref:Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->setChecked(Z)Z

    .line 649
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setPersonalDataCollectionConsented(Landroid/content/Context;I)V

    .line 653
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/SettingsActivity;

    .line 654
    invoke-virtual {p1}, Lcom/sonyericsson/music/SettingsActivity;->getMediaPlayback()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 657
    :try_start_0
    invoke-interface {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setPersonalDataCollectionConsented(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 664
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/SettingsFragment;->startPersonalDataCollectionActivity()V

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 374
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 376
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mSoundEnhancementsPref:Landroidx/preference/Preference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mIlluminationPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_2

    .line 386
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mWalkmanShakeControlPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_3

    .line 390
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mMediaServerPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_4

    .line 394
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 397
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mQuickPlayPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_5

    .line 398
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mDeleteFilesPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_6

    .line 402
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 405
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mPersonalDataCollectionPref:Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;

    if-eqz v0, :cond_7

    .line 406
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->setInterceptor(Lcom/sonyericsson/music/settings/InterceptableSwitchPreference$SwitchInterceptor;)V

    .line 409
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mXperiaIdPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_8

    .line 410
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 413
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mVersionPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_9

    .line 414
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 417
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mCustomizeMyLibraryPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_a

    .line 418
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_a
    const-string v0, "pref_key_oss"

    .line 421
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 423
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 426
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mSleepTimerPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_c

    .line 427
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 430
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mExtensionsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 431
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 434
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mPermissionsPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_e

    .line 435
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 438
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mGoogleDriveSettings:Landroidx/preference/Preference;

    if-eqz v0, :cond_f

    .line 439
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_f
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 699
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/SettingsActivity;

    const-string v1, "pref_key_sound_enhancements"

    .line 701
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 702
    invoke-direct {p0}, Lcom/sonyericsson/music/SettingsFragment;->startEqualizer()V

    goto/16 :goto_0

    :cond_0
    const-string v1, "pref_key_illumination_setting"

    .line 703
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 704
    invoke-direct {p0}, Lcom/sonyericsson/music/SettingsFragment;->startIlluminationSettings()V

    goto/16 :goto_0

    :cond_1
    const-string v1, "pref_key_walkman_shake_control_setting"

    .line 705
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 706
    invoke-direct {p0}, Lcom/sonyericsson/music/SettingsFragment;->startWalkmanShakeControlSettings()V

    goto/16 :goto_0

    :cond_2
    const-string v1, "pref_key_extension"

    .line 707
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    instance-of v1, p1, Landroidx/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 709
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 710
    iget-object v1, p0, Lcom/sonyericsson/music/SettingsFragment;->mExtensionsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_11

    if-eqz v0, :cond_11

    .line 713
    new-instance v4, Lcom/sonyericsson/music/extension/ExtensionManager$EnableExtensionTask;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-direct {v4, v0, v1, p1, v3}, Lcom/sonyericsson/music/extension/ExtensionManager$EnableExtensionTask;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v3, [Ljava/lang/Void;

    .line 714
    invoke-virtual {v4, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_3
    const-string v1, "pref_key_media_server"

    .line 716
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_11

    .line 718
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.sonymobile.dlna.intent.action.START_DMS_ACTIVITY"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "pref_key_quick_play"

    .line 720
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_11

    .line 722
    invoke-static {v0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 723
    invoke-static {v0}, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->start(Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "pref_key_oss"

    .line 726
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_11

    .line 727
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_11

    .line 728
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 729
    const-class v1, Lcom/sonyericsson/music/settings/OpenSourceActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 730
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "pref_key_delete_data"

    .line 733
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 734
    invoke-static {}, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->newInstance()Lcom/sonyericsson/music/dialogs/ClearDataDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "cleardata_dialog"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const v1, 0x7f100262

    .line 735
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 736
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 735
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v0, :cond_11

    .line 737
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_11

    .line 739
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isWifiAndMobileDataAccepted(Landroid/content/Context;)Z

    move-result p1

    .line 740
    invoke-virtual {v0}, Lcom/sonyericsson/music/SettingsActivity;->getMediaPlayback()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 743
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setWifiAndMobileDataAccepted(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_8
    const-string v1, "pref_key_sleep_timer"

    .line 749
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 751
    sget-boolean p1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_S_API:Z

    if-eqz p1, :cond_a

    .line 752
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "alarm"

    .line 754
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 755
    invoke-virtual {p1}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 760
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 761
    invoke-direct {p0}, Lcom/sonyericsson/music/SettingsFragment;->callSleeperTimerDialog()V

    goto/16 :goto_0

    .line 763
    :cond_9
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

    const-string v1, "package:com.sonyericsson.music"

    .line 764
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 765
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 766
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 767
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 770
    :cond_a
    invoke-direct {p0}, Lcom/sonyericsson/music/SettingsFragment;->callSleeperTimerDialog()V

    goto/16 :goto_0

    :cond_b
    const-string v1, "pref_key_version"

    .line 773
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 774
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 775
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Your android-id is: %s"

    .line 776
    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "pref_key_customize_my_library"

    .line 779
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 780
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 781
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/music/settings/CustomizeMyLibraryActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 782
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 783
    :cond_d
    iget-object v1, p0, Lcom/sonyericsson/music/SettingsFragment;->mGoogleDriveSettingsKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_11

    .line 785
    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 786
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 787
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v0, 0x4

    .line 788
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_e
    const p1, 0x7f100246

    .line 790
    invoke-static {v0, p1, v2}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    goto :goto_0

    .line 793
    :cond_f
    iget-object v1, p0, Lcom/sonyericsson/music/SettingsFragment;->mXperiaIdPref:Landroidx/preference/Preference;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 794
    iget-object p1, p0, Lcom/sonyericsson/music/SettingsFragment;->mXperiaIdPref:Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaIdDialog;->newInstance(Ljava/lang/String;)Lcom/sonyericsson/music/datacollection/dataplatform/XperiaIdDialog;

    move-result-object p1

    .line 795
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "xperia_id_dialog"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 796
    :cond_10
    iget-object v1, p0, Lcom/sonyericsson/music/SettingsFragment;->mPermissionsPref:Landroidx/preference/Preference;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 798
    invoke-static {}, Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;->newInstance()Lcom/sonyericsson/music/dialogs/AppPermissionsSettingDialog;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "app_permissions_settings_dialog"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :catch_0
    :cond_11
    :goto_0
    return v2

    :cond_12
    return v3
.end method

.method public onResume()V
    .locals 3

    .line 298
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 300
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mMediaServerPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mSoundEnhancementsPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_2

    .line 310
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mIlluminationPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_3

    .line 314
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mWalkmanShakeControlPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_4

    .line 318
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mQuickPlayPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_5

    .line 322
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 325
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mDeleteFilesPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_6

    .line 326
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 329
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mPersonalDataCollectionPref:Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;

    if-eqz v0, :cond_8

    .line 330
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->setInterceptor(Lcom/sonyericsson/music/settings/InterceptableSwitchPreference$SwitchInterceptor;)V

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mPersonalDataCollectionPref:Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;

    .line 333
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 332
    invoke-static {v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isPersonalDataCollectionConsented(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    .line 331
    :goto_0
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/settings/InterceptableSwitchPreference;->setChecked(Z)Z

    .line 337
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mXperiaIdPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_9

    .line 338
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 341
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mSleepTimerPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_a

    .line 342
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 345
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mCustomizeMyLibraryPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_b

    .line 346
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 349
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mVersionPref:Landroidx/preference/Preference;

    const-string v0, "pref_key_oss"

    .line 354
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 356
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 359
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mExtensionsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 360
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 363
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mPermissionsPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_e

    .line 364
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 367
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment;->mGoogleDriveSettings:Landroidx/preference/Preference;

    if-eqz v0, :cond_f

    .line 368
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_f
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "pref_key_clear_audio"

    .line 276
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, "pref_key_clear_audio"

    const/4 v0, 0x0

    .line 278
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 279
    iget-object p2, p0, Lcom/sonyericsson/music/SettingsFragment;->mSoundEnhancementsPref:Landroidx/preference/Preference;

    if-eqz p2, :cond_0

    xor-int/lit8 v0, p1, 0x1

    .line 280
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 282
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/SettingsFragment;->toggleClearAudio(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "pref_key_theme"

    .line 283
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 284
    new-instance p1, Lcom/sonyericsson/music/datacollection/googleanalytics/ThemeSelectionTask;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/datacollection/googleanalytics/ThemeSelectionTask;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/sonyericsson/music/datacollection/googleanalytics/ThemeSelectionTask;->run()V

    .line 285
    new-instance p1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseThemeSelectionTask;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseThemeSelectionTask;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseThemeSelectionTask;->run()V

    .line 289
    invoke-static {}, Lcom/sonyericsson/music/ui/LandingPageItemView;->clearDrawableCache()V

    .line 290
    invoke-static {}, Lcom/sonyericsson/music/ui/DrawerItemView;->clearDrawableCache()V

    .line 292
    invoke-static {v0}, Lcom/sonyericsson/music/SettingsFragment;->finishForReload(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method
