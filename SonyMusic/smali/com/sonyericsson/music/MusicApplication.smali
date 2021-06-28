.class public Lcom/sonyericsson/music/MusicApplication;
.super Landroid/app/Application;
.source "MusicApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;,
        Lcom/sonyericsson/music/MusicApplication$PrepareAnalyticsTask;,
        Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;
    }
.end annotation


# static fields
.field private static mRetainMgr:Lcom/sonyericsson/music/RetainManager;

.field private static sAllowTracking:Z

.field private static final sConfigFetchCompleteListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsConfigFetchComplete:Z

.field private static sIsCrashlyticsDisabled:Z

.field private static sIsGafDisabled:Z

.field private static sIsGoogleDriveDisabled:Z

.field private static sIsMoraDisabled:Z


# instance fields
.field private mFirebaseAnalyticsReporting:Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;

.field private mGoogleAnalyticsReporting:Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;

.field private mHandler:Landroid/os/Handler;

.field private mIsServiceProcess:Z

.field private mPrefs:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedPrefsLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/MusicApplication;->sConfigFetchCompleteListeners:Ljava/util/List;

    .line 92
    new-instance v0, Lcom/sonyericsson/music/RetainManager;

    invoke-direct {v0}, Lcom/sonyericsson/music/RetainManager;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/MusicApplication;->mRetainMgr:Lcom/sonyericsson/music/RetainManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/sonyericsson/music/MusicApplication;->mPrefs:Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicApplication;->mIsServiceProcess:Z

    .line 90
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/music/MusicApplication;->mSharedPrefsLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/MusicApplication;)Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/sonyericsson/music/MusicApplication;->mGoogleAnalyticsReporting:Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/MusicApplication;)Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/sonyericsson/music/MusicApplication;->mFirebaseAnalyticsReporting:Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/sonyericsson/music/MusicApplication;->sIsGoogleDriveDisabled:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .line 65
    sput-boolean p0, Lcom/sonyericsson/music/MusicApplication;->sIsGoogleDriveDisabled:Z

    return p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .line 65
    sput-boolean p0, Lcom/sonyericsson/music/MusicApplication;->sIsConfigFetchComplete:Z

    return p0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    .line 65
    sput-boolean p0, Lcom/sonyericsson/music/MusicApplication;->sIsCrashlyticsDisabled:Z

    return p0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    .line 65
    sput-boolean p0, Lcom/sonyericsson/music/MusicApplication;->sIsMoraDisabled:Z

    return p0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    .line 65
    sput-boolean p0, Lcom/sonyericsson/music/MusicApplication;->sIsGafDisabled:Z

    return p0
.end method

.method static synthetic access$900()V
    .locals 0

    .line 65
    invoke-static {}, Lcom/sonyericsson/music/MusicApplication;->notifyConfigFetchCompleteListeners()V

    return-void
.end method

.method public static addConfigFetchCompleteListener(Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;)V
    .locals 1

    .line 309
    sget-object v0, Lcom/sonyericsson/music/MusicApplication;->sConfigFetchCompleteListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    sget-object v0, Lcom/sonyericsson/music/MusicApplication;->sConfigFetchCompleteListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_0
    invoke-static {}, Lcom/sonyericsson/music/MusicApplication;->isConfigFetchComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    invoke-interface {p0}, Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;->onConfigFetchComplete()V

    :cond_1
    return-void
.end method

.method public static getRetainManager()Lcom/sonyericsson/music/RetainManager;
    .locals 1

    .line 99
    sget-object v0, Lcom/sonyericsson/music/MusicApplication;->mRetainMgr:Lcom/sonyericsson/music/RetainManager;

    return-object v0
.end method

.method public static isConfigFetchComplete()Z
    .locals 1

    .line 289
    sget-boolean v0, Lcom/sonyericsson/music/MusicApplication;->sIsConfigFetchComplete:Z

    return v0
.end method

.method public static isCrashlyticsDisabled()Z
    .locals 1

    .line 305
    sget-boolean v0, Lcom/sonyericsson/music/MusicApplication;->sIsCrashlyticsDisabled:Z

    return v0
.end method

.method public static isGafDisabled()Z
    .locals 1

    .line 301
    sget-boolean v0, Lcom/sonyericsson/music/MusicApplication;->sIsGafDisabled:Z

    return v0
.end method

.method public static isGoogleDriveDisabled()Z
    .locals 1

    .line 297
    sget-boolean v0, Lcom/sonyericsson/music/MusicApplication;->sIsGoogleDriveDisabled:Z

    return v0
.end method

.method public static isMoraDisabled()Z
    .locals 1

    .line 293
    sget-boolean v0, Lcom/sonyericsson/music/MusicApplication;->sIsMoraDisabled:Z

    return v0
.end method

.method private static notifyConfigFetchCompleteListeners()V
    .locals 2

    .line 325
    invoke-static {}, Lcom/sonyericsson/music/MusicApplication;->isConfigFetchComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/sonyericsson/music/MusicApplication;->sConfigFetchCompleteListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 330
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;

    if-eqz v1, :cond_0

    .line 333
    invoke-interface {v1}, Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;->onConfigFetchComplete()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static removeConfigFetchCompleteListener(Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;)V
    .locals 1

    .line 321
    sget-object v0, Lcom/sonyericsson/music/MusicApplication;->sConfigFetchCompleteListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static setAllowTracking(Z)V
    .locals 0

    .line 261
    sput-boolean p0, Lcom/sonyericsson/music/MusicApplication;->sAllowTracking:Z

    return-void
.end method

.method private setupAnalytics()V
    .locals 2

    .line 179
    invoke-static {}, Lcom/sonyericsson/music/common/VersionUtils;->getVersionName()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicApplication;->runPrepareAnalyticsTask()V

    .line 190
    new-instance v0, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;

    iget-boolean v1, p0, Lcom/sonyericsson/music/MusicApplication;->mIsServiceProcess:Z

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/sonyericsson/music/MusicApplication;->mGoogleAnalyticsReporting:Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/music/MusicApplication;->mGoogleAnalyticsReporting:Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;

    invoke-virtual {v0}, Lcom/sonyericsson/music/datacollection/googleanalytics/GoogleAnalyticsReporting;->sendInitialAnalytics()V

    return-void
.end method

.method private setupFirebaseAnalytics()V
    .locals 2

    .line 195
    new-instance v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;

    iget-boolean v1, p0, Lcom/sonyericsson/music/MusicApplication;->mIsServiceProcess:Z

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/sonyericsson/music/MusicApplication;->mFirebaseAnalyticsReporting:Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;

    const/4 v0, 0x1

    .line 197
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/MusicApplication;->runPrepareAndInitializeFirebaseTask(Z)V

    return-void
.end method

.method private setupPicasso()V
    .locals 3

    .line 265
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 266
    new-instance v1, Lcom/sonyericsson/music/MusicApplication$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/MusicApplication$4;-><init>(Lcom/sonyericsson/music/MusicApplication;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 275
    new-instance v1, Lcom/squareup/picasso/Picasso$Builder;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    .line 276
    new-instance v2, Lcom/jakewharton/picasso/OkHttp3Downloader;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/jakewharton/picasso/OkHttp3Downloader;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso$Builder;->downloader(Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/Picasso$Builder;

    .line 277
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso$Builder;->loggingEnabled(Z)Lcom/squareup/picasso/Picasso$Builder;

    .line 279
    :try_start_0
    invoke-virtual {v1}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->setSingletonInstance(Lcom/squareup/picasso/Picasso;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    :goto_0
    return-void
.end method


# virtual methods
.method public getDefaultSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    const/4 v0, 0x0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/MusicApplication;->mPrefs:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/music/MusicApplication;->mPrefs:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    return-object v0

    :catch_0
    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 104
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 108
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/music/common/VersionUtils;->setVersionName(Ljava/lang/String;)V

    .line 109
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Lcom/sonyericsson/music/common/VersionUtils;->setVersionCode(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "could not get version name"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/music/debug/DebugBase;->log(Ljava/lang/Class;Ljava/lang/String;)V

    .line 118
    :goto_0
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataTrafficWarningRequired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    goto :goto_1

    .line 123
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 126
    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/sonymobile/music/common/ProcessUtils;->isRunningInServiceProcess(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicApplication;->mIsServiceProcess:Z

    .line 128
    invoke-static {p0}, Lcom/sonymobile/music/common/GoogleAnalyticsUtil;->allowGaTracking(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/music/MusicApplication;->setAllowTracking(Z)V

    .line 131
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicApplication;->setupAnalytics()V

    .line 132
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicApplication;->setupFirebaseAnalytics()V

    .line 135
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicApplication;->setupPicasso()V

    .line 137
    iget-boolean v0, p0, Lcom/sonyericsson/music/MusicApplication;->mIsServiceProcess:Z

    if-nez v0, :cond_2

    const-string v0, "NEW INSTANCE"

    .line 138
    invoke-static {v0}, Lcom/sonyericsson/music/debug/DebugTimer;->print(Ljava/lang/String;)V

    const-string v0, "coldstart_until_lp_draw"

    .line 139
    invoke-static {v0}, Lcom/sonyericsson/music/debug/DebugTimer;->start(Ljava/lang/String;)V

    .line 140
    invoke-static {p0}, Lcom/sonyericsson/music/common/BlurUtils;->init(Landroid/content/Context;)V

    goto :goto_2

    .line 142
    :cond_2
    invoke-static {p0}, Lcom/sonyericsson/music/NotificationChannels;->create(Landroid/content/Context;)V

    .line 145
    :goto_2
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/sonyericsson/music/MusicApplication$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/MusicApplication$1;-><init>(Lcom/sonyericsson/music/MusicApplication;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 156
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 157
    iput-object v0, p0, Lcom/sonyericsson/music/MusicApplication;->mPrefs:Ljava/util/concurrent/Future;

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/MusicApplication;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public runPrepareAnalyticsTask()V
    .locals 3

    .line 201
    invoke-static {}, Lcom/sonyericsson/music/common/VersionUtils;->getVersionName()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/MusicApplication$PrepareAnalyticsTask;

    iget-object v1, p0, Lcom/sonyericsson/music/MusicApplication;->mSharedPrefsLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/music/MusicApplication$PrepareAnalyticsTask;-><init>(Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/music/MusicApplication$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public runPrepareAndInitializeFirebaseTask(Z)V
    .locals 7

    .line 217
    invoke-static {}, Lcom/sonyericsson/music/common/VersionUtils;->getVersionName()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;

    iget-object v3, p0, Lcom/sonyericsson/music/MusicApplication;->mSharedPrefsLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v4, p0, Lcom/sonyericsson/music/MusicApplication;->mFirebaseAnalyticsReporting:Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;-><init>(Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;ZLcom/sonyericsson/music/MusicApplication$1;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 224
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public sendAnalytics()V
    .locals 2

    .line 229
    new-instance v0, Lcom/sonyericsson/music/MusicApplication$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/MusicApplication$2;-><init>(Lcom/sonyericsson/music/MusicApplication;)V

    .line 237
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->isMain()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/MusicApplication;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public sendSyncDependentAnalytics(Landroid/net/Uri;)V
    .locals 1

    .line 245
    new-instance v0, Lcom/sonyericsson/music/MusicApplication$3;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/MusicApplication$3;-><init>(Lcom/sonyericsson/music/MusicApplication;Landroid/net/Uri;)V

    .line 253
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->isMain()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/MusicApplication;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
