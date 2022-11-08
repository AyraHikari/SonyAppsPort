.class final Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;
.super Landroid/os/AsyncTask;
.source "MusicApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/MusicApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrepareAndInitializeFirebaseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mFirebaseAnalyticsReporting:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPrefsLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mShouldSetUserProperty:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;Z)V
    .locals 1

    .line 390
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 391
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;->mContext:Ljava/lang/ref/WeakReference;

    .line 392
    iput-object p2, p0, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;->mSharedPrefsLatch:Ljava/util/concurrent/CountDownLatch;

    .line 393
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;->mFirebaseAnalyticsReporting:Ljava/lang/ref/WeakReference;

    .line 394
    iput-boolean p4, p0, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;->mShouldSetUserProperty:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;ZLcom/sonyericsson/music/MusicApplication$1;)V
    .locals 0

    .line 378
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;-><init>(Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;Z)V

    return-void
.end method

.method private static allowFirebaseCrashlyticsForVersion(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^.+(internal).*$"

    .line 506
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private handleGoogleDriveDisabled(Landroid/content/Context;)V
    .locals 1

    .line 510
    invoke-static {p1}, Lcom/sonymobile/music/common/ProcessUtils;->isRunningInServiceProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 512
    new-instance v0, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask$1;-><init>(Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;Landroid/content/Context;)V

    .line 517
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/os/Bundle;
    .locals 5

    .line 400
    iget-object p1, p0, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;->mSharedPrefsLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :catch_0
    invoke-static {p1}, Lcom/sonymobile/music/common/ProcessUtils;->isRunningInServiceProcess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    invoke-static {p1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getGoogleDriveDisabled(Landroid/content/Context;)Z

    move-result v1

    .line 414
    invoke-static {v1}, Lcom/sonyericsson/music/MusicApplication;->access$402(Z)Z

    .line 417
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "fetch_config"

    invoke-virtual {v1, p1, v2, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 378
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;->doInBackground([Ljava/lang/Void;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 5

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;->mFirebaseAnalyticsReporting:Ljava/lang/ref/WeakReference;

    .line 427
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;

    if-nez v0, :cond_0

    return-void

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    .line 434
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "config-fetch-complete"

    .line 438
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 437
    invoke-static {v2}, Lcom/sonyericsson/music/MusicApplication;->access$502(Z)Z

    const-string v2, "is-crashlytics-disabled"

    const/4 v3, 0x0

    .line 445
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 448
    invoke-static {}, Lcom/sonyericsson/music/common/VersionUtils;->getVersionName()Ljava/lang/String;

    move-result-object v4

    .line 447
    invoke-static {v4}, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;->allowFirebaseCrashlyticsForVersion(Ljava/lang/String;)Z

    move-result v4

    if-nez v2, :cond_2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 449
    :goto_1
    invoke-static {v2}, Lcom/sonyericsson/music/MusicApplication;->access$602(Z)Z

    .line 461
    invoke-static {v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseCrashlyticsUtils;->handleFirebaseCrashlyticsSetup(Landroid/content/Context;)V

    const-string v2, "is-mora-disabled"

    .line 464
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 463
    invoke-static {v2}, Lcom/sonyericsson/music/MusicApplication;->access$702(Z)Z

    const-string v2, "is-google-drive-disabled"

    .line 466
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 465
    invoke-static {v2}, Lcom/sonyericsson/music/MusicApplication;->access$402(Z)Z

    const-string v2, "is-gaf-disabled"

    .line 467
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/sonyericsson/music/MusicApplication;->access$802(Z)Z

    .line 470
    invoke-static {}, Lcom/sonyericsson/music/common/VersionUtils;->getAppBuild()Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 471
    sget-object v4, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;->PRODUCTION:Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    if-ne v2, v4, :cond_3

    .line 472
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isGooglePlayStoreEnabled(Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "latest-version-code-available"

    .line 474
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 476
    :cond_3
    invoke-static {v3}, Lcom/sonyericsson/music/common/VersionUtils;->setLatestAvailableVersionCode(I)V

    .line 478
    invoke-static {v1}, Lcom/sonymobile/music/common/ProcessUtils;->isRunningInServiceProcess(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 481
    invoke-static {}, Lcom/sonyericsson/music/MusicApplication;->access$400()Z

    move-result p1

    invoke-static {v1, p1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setGoogleDriveDisabled(Landroid/content/Context;Z)V

    .line 485
    :cond_4
    invoke-static {}, Lcom/sonyericsson/music/MusicApplication;->access$900()V

    .line 488
    invoke-static {}, Lcom/sonyericsson/music/MusicApplication;->access$400()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 489
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;->handleGoogleDriveDisabled(Landroid/content/Context;)V

    .line 493
    :cond_5
    iget-boolean p1, p0, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;->mShouldSetUserProperty:Z

    invoke-static {v1, p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsUtils;->handleFirebaseAnalyticsSetup(Landroid/content/Context;Z)V

    .line 499
    invoke-virtual {v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsReporting;->sendInitialAnalytics()V

    :cond_6
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 378
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/MusicApplication$PrepareAndInitializeFirebaseTask;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
