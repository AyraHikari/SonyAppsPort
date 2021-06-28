.class public final Lcom/sonyericsson/music/common/AvailabilityUtils;
.super Ljava/lang/Object;
.source "AvailabilityUtils.java"


# static fields
.field public static final ACTION_DLNA_MEDIA_SERVER:Ljava/lang/String; = "com.sonymobile.dlna.intent.action.START_DMS_ACTIVITY"

.field private static final CTA_PACKAGE:Ljava/lang/String; = "com.sonymobile.cta"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioGlobalSetting(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "main"

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 49
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    sget-object v1, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->CLEAR_AUDIO_PLUS_GLOBAL:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    invoke-static {v1}, Lcom/sonyericsson/music/common/ApiAvailabilityManager;->isApiAvailable(Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    new-instance v0, Lcom/sonymobile/audioeffect/ClearAudioPlus;

    invoke-direct {v0, p0}, Lcom/sonymobile/audioeffect/ClearAudioPlus;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v0}, Lcom/sonymobile/audioeffect/ClearAudioPlus;->isGlobalSetting()Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 45
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should not be called from main thread!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isAudioControlPanelAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static isCtaPackageInstalled(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "com.sonymobile.cta"

    .line 125
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isGooglePlayStoreEnabled(Landroid/content/pm/PackageManager;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.vending"

    .line 115
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 116
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static isIlluminationSettingsAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.settings.intent.action.ILLUMINATION_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    .line 90
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMediaServerSettingsAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.dlna.intent.action.START_DMS_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static isMoraStoreEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 145
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public static isPodcastAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.podcast.action.SHOW_CHANNELS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static isSettingsMusicInformationCategoryShown(Landroid/content/Context;)Z
    .locals 1

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isWalkmanShakeControlSettingAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.settings.intent.action.SHAKECONTROL_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static showAccessibilityConformance(Landroid/content/Context;)Z
    .locals 1

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
