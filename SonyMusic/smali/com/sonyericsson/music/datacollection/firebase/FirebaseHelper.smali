.class final Lcom/sonyericsson/music/datacollection/firebase/FirebaseHelper;
.super Ljava/lang/Object;
.source "FirebaseHelper.java"


# static fields
.field private static sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private static sFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFirebaseAnalytics(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    .line 23
    sget-object v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseHelper;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseHelper;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 26
    :cond_0
    sget-object p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseHelper;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p0
.end method

.method static declared-synchronized getFirebaseRemoteConfig()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
    .locals 2

    const-class v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseHelper;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseHelper;->sFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    if-nez v1, :cond_0

    .line 44
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseHelper;->sFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    .line 46
    :cond_0
    sget-object v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseHelper;->sFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized logEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-class v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseHelper;

    monitor-enter v0

    .line 30
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseHelper;->getFirebaseAnalytics(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized setAnalyticsCollectionEnabled(Landroid/content/Context;Z)V
    .locals 1

    const-class v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseHelper;

    monitor-enter v0

    .line 39
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseHelper;->getFirebaseAnalytics(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setAnalyticsCollectionEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized setUserProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseHelper;

    monitor-enter v0

    .line 34
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseHelper;->getFirebaseAnalytics(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
