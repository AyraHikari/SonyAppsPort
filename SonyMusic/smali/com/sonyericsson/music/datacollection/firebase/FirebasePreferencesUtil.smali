.class public final Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;
.super Ljava/lang/Object;
.source "FirebasePreferencesUtil.java"


# static fields
.field private static final FIREBASE_REMOTE_CONFIG_SHARED_PREFS:Ljava/lang/String; = "firebase_remote_config_prefs"

.field private static final KEY_PREF_CRASHLYTICS_DISABLED_VERSION:Ljava/lang/String; = "pref_key_crashlytics_disabled_version"

.field private static final KEY_PREF_GAF_DISABLED_VERSION:Ljava/lang/String; = "pref_key_gaf_disabled_version"

.field private static final KEY_PREF_GOOGLE_DRIVE_DISABLED_VERSION:Ljava/lang/String; = "pref_key_google_drive_disabled_version"

.field private static final KEY_PREF_LATEST_AVAILABLE_VERSION:Ljava/lang/String; = "pref_key_latest_available_version"

.field private static final KEY_PREF_MORA_DISABLED_VERSION:Ljava/lang/String; = "pref_key_mora_disabled_version"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFirebaseCrashlyticsDisabledVersionCode(Landroid/content/Context;)J
    .locals 2

    const-string v0, "pref_key_crashlytics_disabled_version"

    .line 75
    invoke-static {p0, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGafDisabledVersionCode(Landroid/content/Context;)J
    .locals 2

    const-string v0, "pref_key_gaf_disabled_version"

    .line 58
    invoke-static {p0, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGoogleDriveDisabledVersionCode(Landroid/content/Context;)J
    .locals 2

    const-string v0, "pref_key_google_drive_disabled_version"

    .line 66
    invoke-static {p0, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLatestVersionCode(Landroid/content/Context;)J
    .locals 2

    const-string v0, "pref_key_latest_available_version"

    .line 50
    invoke-static {p0, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMoraDisabledVersionCode(Landroid/content/Context;)J
    .locals 2

    const-string v0, "pref_key_mora_disabled_version"

    .line 42
    invoke-static {p0, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getRemoteConfigSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const/4 v0, 0x1

    .line 97
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    const-string v0, "firebase_remote_config_prefs"

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static getVersionCode(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    .line 88
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->getRemoteConfigSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 91
    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method public static setFirebaseCrashlyticsDisabledVersionCode(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "pref_key_crashlytics_disabled_version"

    .line 71
    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->setVersionCode(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static setGafDisabledVersionCode(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "pref_key_gaf_disabled_version"

    .line 54
    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->setVersionCode(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static setGoogleDriveDisabledVersionCode(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "pref_key_google_drive_disabled_version"

    .line 62
    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->setVersionCode(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static setLatestVersionCode(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "pref_key_latest_available_version"

    .line 46
    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->setVersionCode(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static setMoraDisabledVersionCode(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "pref_key_mora_disabled_version"

    .line 38
    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->setVersionCode(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private static setVersionCode(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 79
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->getRemoteConfigSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 82
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 83
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
