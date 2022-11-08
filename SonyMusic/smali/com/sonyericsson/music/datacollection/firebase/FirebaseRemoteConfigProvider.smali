.class public Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;
.super Landroid/content/ContentProvider;
.source "FirebaseRemoteConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$Methods;,
        Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;
    }
.end annotation


# static fields
.field public static final CONFIG_FETCH_COMPLETE_KEY:Ljava/lang/String; = "config-fetch-complete"

.field public static final IS_CRASHLYTICS_DISABLED_KEY:Ljava/lang/String; = "is-crashlytics-disabled"

.field public static final IS_GAF_DISABLED_KEY:Ljava/lang/String; = "is-gaf-disabled"

.field public static final IS_GOOGLE_DRIVE_DISABLED_KEY:Ljava/lang/String; = "is-google-drive-disabled"

.field public static final IS_MORA_DISABLED_KEY:Ljava/lang/String; = "is-mora-disabled"

.field private static final LATCH_TIMEOUT_SECONDS:I = 0xa

.field public static final LATEST_AVAILABLE_VERSION_CODE_KEY:Ljava/lang/String; = "latest-version-code-available"

.field private static final LOCK:Ljava/lang/Object;

.field private static sConfigFetchResult:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

.field private static final sFetchConfigLatch:Ljava/util/concurrent/CountDownLatch;

.field private static sIsConfigFetchComplete:Z

.field private static sIsCrashlyticsDisabled:Z

.field private static sIsGafDisabled:Z

.field private static sIsGoogleDriveDisabled:Z

.field private static sIsMoraDisabled:Z

.field private static sLatestAvailableVersionCode:I


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCrashlyticsVersionCode:J

.field private mGafVersionCode:J

.field private mGoogleDriveVersionCode:J

.field private mLatestVersionCode:J

.field private mMoraVersionCode:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sFetchConfigLatch:Ljava/util/concurrent/CountDownLatch;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 57
    sput-boolean v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sIsCrashlyticsDisabled:Z

    .line 58
    sput-boolean v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sIsMoraDisabled:Z

    .line 59
    sput-boolean v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sIsGoogleDriveDisabled:Z

    .line 60
    sput-boolean v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sIsGafDisabled:Z

    .line 61
    sput-boolean v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sIsConfigFetchComplete:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->fetchGafConfig()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 36
    sget-object v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;)Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;
    .locals 0

    .line 36
    sput-object p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sConfigFetchResult:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->loadConfigValuesFromSharedPrefs()V

    return-void
.end method

.method static synthetic access$500()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 36
    sget-object v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sFetchConfigLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->loadConfigValuesFromRemoteConfig(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    return-void
.end method

.method private fetchGafConfig()V
    .locals 3

    .line 300
    invoke-static {}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseHelper;->getFirebaseRemoteConfig()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    .line 303
    new-instance v1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    invoke-direct {v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;-><init>()V

    const/4 v2, 0x0

    .line 304
    invoke-virtual {v1, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setDeveloperModeEnabled(Z)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->build()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    move-result-object v1

    .line 305
    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setConfigSettings(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)V

    const v1, 0x7f130005

    .line 307
    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setDefaults(I)V

    .line 312
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInfo()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;->getConfigSettings()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->isDeveloperModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xe10

    .line 316
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetch(J)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$3;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$3;-><init>(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    .line 317
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    new-instance v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$2;-><init>(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;)V

    .line 383
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f1000a9

    .line 100
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static isDisabled(J)Z
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    return v0

    .line 495
    :cond_0
    invoke-static {}, Lcom/sonyericsson/music/common/VersionUtils;->getVersionCode()I

    move-result v1

    long-to-int p1, p0

    if-gt v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private loadConfigValuesFromRemoteConfig(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V
    .locals 4

    .line 412
    sget-object v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "latestAvailableVersionCode"

    .line 413
    invoke-virtual {p1, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mLatestVersionCode:J

    .line 415
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mAppContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mLatestVersionCode:J

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->setLatestVersionCode(Landroid/content/Context;J)V

    const-string v1, "firebaseCrashlyticsDisabler"

    .line 417
    invoke-virtual {p1, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mCrashlyticsVersionCode:J

    .line 419
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mAppContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mCrashlyticsVersionCode:J

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->setFirebaseCrashlyticsDisabledVersionCode(Landroid/content/Context;J)V

    const-string v1, "gafDisabler"

    .line 422
    invoke-virtual {p1, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mGafVersionCode:J

    .line 423
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mAppContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mGafVersionCode:J

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->setGafDisabledVersionCode(Landroid/content/Context;J)V

    const-string v1, "moraDisabler"

    .line 425
    invoke-virtual {p1, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mMoraVersionCode:J

    .line 426
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mAppContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mMoraVersionCode:J

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->setMoraDisabledVersionCode(Landroid/content/Context;J)V

    const-string v1, "googleDriveDisabler"

    .line 429
    invoke-virtual {p1, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mGoogleDriveVersionCode:J

    .line 430
    iget-object p1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mAppContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mGoogleDriveVersionCode:J

    .line 431
    invoke-static {p1, v1, v2}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->setGoogleDriveDisabledVersionCode(Landroid/content/Context;J)V

    .line 433
    invoke-direct {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->setConfigValues()V

    .line 434
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private loadConfigValuesFromSharedPrefs()V
    .locals 3

    .line 443
    sget-object v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->getLatestVersionCode(Landroid/content/Context;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mLatestVersionCode:J

    .line 446
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mAppContext:Landroid/content/Context;

    .line 447
    invoke-static {v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->getFirebaseCrashlyticsDisabledVersionCode(Landroid/content/Context;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mCrashlyticsVersionCode:J

    .line 449
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->getGafDisabledVersionCode(Landroid/content/Context;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mGafVersionCode:J

    .line 451
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->getMoraDisabledVersionCode(Landroid/content/Context;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mMoraVersionCode:J

    .line 453
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mAppContext:Landroid/content/Context;

    .line 454
    invoke-static {v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebasePreferencesUtil;->getGoogleDriveDisabledVersionCode(Landroid/content/Context;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mGoogleDriveVersionCode:J

    .line 456
    invoke-direct {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->setConfigValues()V

    .line 457
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setConfigValues()V
    .locals 2

    const/4 v0, 0x1

    .line 475
    sput-boolean v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sIsConfigFetchComplete:Z

    .line 477
    iget-wide v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mLatestVersionCode:J

    long-to-int v1, v0

    sput v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sLatestAvailableVersionCode:I

    .line 481
    iget-wide v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mCrashlyticsVersionCode:J

    invoke-static {v0, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->isDisabled(J)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sIsCrashlyticsDisabled:Z

    .line 483
    iget-wide v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mMoraVersionCode:J

    invoke-static {v0, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->isDisabled(J)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sIsMoraDisabled:Z

    .line 485
    iget-wide v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mGafVersionCode:J

    invoke-static {v0, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->isDisabled(J)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sIsGafDisabled:Z

    .line 487
    iget-wide v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mGoogleDriveVersionCode:J

    invoke-static {v0, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->isDisabled(J)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sIsGoogleDriveDisabled:Z

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const p3, 0x5aea5467

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "fetch_config"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 120
    :cond_2
    sget-object p1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->LOCK:Ljava/lang/Object;

    monitor-enter p1

    .line 121
    :try_start_0
    sget-object p2, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sConfigFetchResult:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    sget-object p3, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->CONFIG_FETCH_IN_PROGRESS:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    if-eq p2, p3, :cond_4

    .line 123
    iget-object p2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mAppContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 125
    sget-object p2, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->CONFIG_FETCH_IN_PROGRESS:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    sput-object p2, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sConfigFetchResult:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    .line 130
    new-instance p2, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$1;-><init>(Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;)V

    .line 157
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 160
    :cond_3
    sget-object p2, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->CONFIG_FETCH_COMPLETE:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    sput-object p2, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sConfigFetchResult:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    .line 161
    invoke-direct {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->loadConfigValuesFromSharedPrefs()V

    .line 165
    sget-boolean p2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mAppContext:Landroid/content/Context;

    .line 166
    invoke-static {p2}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataTrafficWarningRequired(Landroid/content/Context;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz p2, :cond_4

    .line 168
    :try_start_1
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/FirebaseApp;->delete()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 178
    :catch_0
    :cond_4
    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 180
    invoke-static {}, Lcom/sonyericsson/music/common/VersionUtils;->getVersionName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 181
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const-class p2, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;

    const-string p3, "No app version name provided"

    invoke-virtual {p1, p2, p3}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    .line 182
    sget-object p1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->LOCK:Ljava/lang/Object;

    monitor-enter p1

    .line 186
    :try_start_3
    sget-object p2, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->CONFIG_FETCH_COMPLETE:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    sput-object p2, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sConfigFetchResult:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    .line 187
    invoke-direct {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->loadConfigValuesFromSharedPrefs()V

    .line 188
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2

    .line 193
    :cond_5
    :goto_3
    sget-object p2, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->LOCK:Ljava/lang/Object;

    monitor-enter p2

    .line 194
    :try_start_4
    sget-object p1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sConfigFetchResult:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    .line 195
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 197
    sget-object p2, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->CONFIG_FETCH_IN_PROGRESS:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    if-ne p1, p2, :cond_6

    .line 200
    :try_start_5
    sget-object p1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sFetchConfigLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 p2, 0xa

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 201
    invoke-virtual {p1, p2, p3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 203
    sget-object p1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->LOCK:Ljava/lang/Object;

    monitor-enter p1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 206
    :try_start_6
    sget-object p2, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->CONFIG_FETCH_COMPLETE:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    sput-object p2, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sConfigFetchResult:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->loadConfigValuesFromSharedPrefs()V

    .line 208
    monitor-exit p1

    goto :goto_4

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p2
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    .line 221
    :catch_1
    sget-object p1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->LOCK:Ljava/lang/Object;

    monitor-enter p1

    .line 224
    :try_start_8
    sget-object p2, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->CONFIG_FETCH_COMPLETE:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    sput-object p2, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sConfigFetchResult:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    .line 225
    invoke-direct {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->loadConfigValuesFromSharedPrefs()V

    .line 226
    monitor-exit p1

    goto :goto_4

    :catchall_2
    move-exception p2

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p2

    .line 230
    :cond_6
    :goto_4
    sget-object p1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->LOCK:Ljava/lang/Object;

    monitor-enter p1

    .line 236
    :try_start_9
    sget-object p2, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sConfigFetchResult:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    .line 237
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 254
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "config-fetch-complete"

    .line 255
    sget-boolean p3, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sIsConfigFetchComplete:Z

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "is-crashlytics-disabled"

    .line 256
    sget-boolean p3, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sIsCrashlyticsDisabled:Z

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "is-mora-disabled"

    .line 257
    sget-boolean p3, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sIsMoraDisabled:Z

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "is-google-drive-disabled"

    .line 258
    sget-boolean p3, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sIsGoogleDriveDisabled:Z

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "is-gaf-disabled"

    .line 259
    sget-boolean p3, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sIsGafDisabled:Z

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "latest-version-code-available"

    .line 260
    sget p3, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sLatestAvailableVersionCode:I

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    :catchall_3
    move-exception p2

    .line 237
    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p2

    :catchall_4
    move-exception p1

    .line 195
    :try_start_b
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p1

    :catchall_5
    move-exception p2

    .line 178
    :try_start_c
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw p2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 293
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 271
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 282
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onCreate()Z
    .locals 2

    .line 105
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->mAppContext:Landroid/content/Context;

    .line 106
    sget-object v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->CONFIG_FETCH_NONE:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    sput-object v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sConfigFetchResult:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    const/4 v1, 0x1

    .line 108
    sput-boolean v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->sIsCrashlyticsDisabled:Z

    .line 109
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 277
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 288
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
