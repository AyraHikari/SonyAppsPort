.class public Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;
.super Ljava/lang/Object;
.source "GoogleCastConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionFailedListener;,
        Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;,
        Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnErrorListener;,
        Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnAppConnectionListener;
    }
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "F3F3F51B"

.field private static final DEV_APP_ID:Ljava/lang/String; = "9D469131"

.field private static final PROD_APP_ID:Ljava/lang/String; = "F3F3F51B"

.field private static sCastDevice:Landroid/os/Bundle;

.field private static sRouteId:Ljava/lang/String;

.field private static sSessionId:Ljava/lang/String;


# instance fields
.field private mApplicationCastStarted:Z

.field private final mContext:Landroid/content/Context;

.field private mErrorListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnErrorListener;

.field private mGoogleApiConnected:Z

.field private mGoogleCastApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mGoogleCastConnectionCallbacks:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;

.field private mGoogleCastConnectionFailedListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionFailedListener;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mOnAppConnectionListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnAppConnectionListener;

.field private mWaitingForCastReconnect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mWaitingForCastReconnect:Z

    .line 51
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mApplicationCastStarted:Z

    .line 53
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleApiConnected:Z

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mOnAppConnectionListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnAppConnectionListener;

    .line 63
    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mErrorListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnErrorListener;

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->getSessionId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->onErrorListener()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->onReconnectChannel()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->setGoogleApiConnected(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mWaitingForCastReconnect:Z

    return p0
.end method

.method static synthetic access$302(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mWaitingForCastReconnect:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)Z
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->reconnectSession()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->setApplicationCastStarted(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->setSessionId(Ljava/lang/String;)V

    return-void
.end method

.method static declared-synchronized getCastDevice()Landroid/os/Bundle;
    .locals 2

    const-class v0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    monitor-enter v0

    .line 118
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->sCastDevice:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getIds()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    monitor-enter v0

    .line 146
    :try_start_0
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->sRouteId:Ljava/lang/String;

    sget-object v3, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->sSessionId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSessionId()Ljava/lang/String;
    .locals 2

    .line 136
    const-class v0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    monitor-enter v0

    .line 137
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->sSessionId:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 138
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized isGoogleApiConnected()Z
    .locals 1

    monitor-enter p0

    .line 154
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleApiConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onAppDisconnected()V
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mOnAppConnectionListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnAppConnectionListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mOnAppConnectionListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnAppConnectionListener;

    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnAppConnectionListener;->onAppDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onErrorListener()V
    .locals 1

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mErrorListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnErrorListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mErrorListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnErrorListener;

    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnErrorListener;->onErrorListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onReconnectChannel()V
    .locals 1

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mOnAppConnectionListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnAppConnectionListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mOnAppConnectionListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnAppConnectionListener;

    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnAppConnectionListener;->onReconnectChannel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reconnectSession()Z
    .locals 2

    .line 100
    invoke-static {}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->getIds()Landroid/util/Pair;

    move-result-object v0

    .line 101
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized setApplicationCastStarted(Z)V
    .locals 0

    monitor-enter p0

    .line 126
    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mApplicationCastStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static declared-synchronized setCastDevice(Landroid/os/Bundle;)V
    .locals 1

    const-class v0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    monitor-enter v0

    .line 158
    :try_start_0
    sput-object p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->sCastDevice:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setCastDevice(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-static {p0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->setCastDevice(Landroid/os/Bundle;)V

    .line 114
    invoke-static {p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->setRouteId(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized setGoogleApiConnected(Z)V
    .locals 0

    monitor-enter p0

    .line 150
    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleApiConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static declared-synchronized setRouteId(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    monitor-enter v0

    .line 142
    :try_start_0
    sput-object p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->sRouteId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setSessionId(Ljava/lang/String;)V
    .locals 1

    .line 130
    const-class v0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    monitor-enter v0

    .line 131
    :try_start_0
    sput-object p1, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->sSessionId:Ljava/lang/String;

    .line 132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method hasVideoOutCapability()Z
    .locals 2

    .line 163
    const-class v0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    monitor-enter v0

    .line 164
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->sCastDevice:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v1

    .line 165
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 167
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/CastDevice;->hasCapability(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    .line 165
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method declared-synchronized isApplicationRunning()Z
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mApplicationCastStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method launchReceiver(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 178
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/cast/Cast$CastOptions;->builder(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;

    move-result-object p1

    .line 179
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->isApplicationRunning()Z

    move-result p2

    if-nez p2, :cond_1

    .line 180
    new-instance p2, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$1;)V

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastConnectionCallbacks:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;

    .line 181
    new-instance p2, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionFailedListener;

    invoke-direct {p2, p0, v0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionFailedListener;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$1;)V

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastConnectionFailedListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionFailedListener;

    .line 182
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 183
    new-instance p2, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/cast/Cast;->API:Lcom/google/android/gms/common/api/Api;

    .line 184
    invoke-virtual {p1}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->build()Lcom/google/android/gms/cast/Cast$CastOptions;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastConnectionCallbacks:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;

    .line 185
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastConnectionFailedListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionFailedListener;

    .line 186
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 187
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 188
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 193
    :try_start_0
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :catch_0
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->isApplicationRunning()Z

    move-result p1

    return p1
.end method

.method declared-synchronized setErrorListener(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnErrorListener;)V
    .locals 0

    monitor-enter p0

    .line 74
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mErrorListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnErrorListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setOnAppConnectionListener(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnAppConnectionListener;)V
    .locals 0

    monitor-enter p0

    .line 70
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mOnAppConnectionListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnAppConnectionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized teardown()V
    .locals 3

    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_3

    .line 212
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->isApplicationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->isGoogleApiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/Cast$CastApi;->stopApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 222
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->onAppDisconnected()V

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastConnectionCallbacks:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionCallbacks;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastConnectionFailedListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionFailedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    :cond_3
    const/4 v0, 0x0

    .line 227
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->setGoogleApiConnected(Z)V

    const/4 v1, 0x0

    .line 228
    iput-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->mGoogleCastApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 229
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->setApplicationCastStarted(Z)V

    .line 230
    invoke-static {}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->getCastDevice()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    .line 231
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->setSessionId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
