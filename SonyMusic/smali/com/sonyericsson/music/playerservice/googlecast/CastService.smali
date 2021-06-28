.class public Lcom/sonyericsson/music/playerservice/googlecast/CastService;
.super Lcom/sonyericsson/music/playerservice/BasePlayer;
.source "CastService.java"

# interfaces
.implements Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$CastPlayerListener;


# instance fields
.field private final mCastClientListener:Lcom/google/android/gms/cast/Cast$Listener;

.field private mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

.field private final mContext:Landroid/content/Context;

.field private mDrmUtils:Lcom/sonyericsson/music/common/DrmUtils;

.field private mErrorCount:I

.field private mEventHandler:Landroid/os/Handler;

.field private mGoogleCastWrapper:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

.field private mHttpServer:Lcom/sonyericsson/music/http/HttpServer;

.field private mHttpServerAddress:Ljava/lang/String;

.field private mIsInContinuousPlayingState:Z

.field private final mOnErrorListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnErrorListener;

.field private mPlayer:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

.field private mPlayqueueDirection:I

.field private mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

.field private mReleaseCastPlayerThrowable:Ljava/lang/Throwable;

.field private mSavedPlaybackPosition:I

.field private mStopOnError:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/playerservice/BasePlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 54
    iput p2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayqueueDirection:I

    .line 59
    new-instance p2, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)V

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastClientListener:Lcom/google/android/gms/cast/Cast$Listener;

    .line 126
    new-instance p2, Lcom/sonyericsson/music/playerservice/googlecast/CastService$2;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService$2;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)V

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mOnErrorListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnErrorListener;

    .line 146
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mContext:Landroid/content/Context;

    .line 149
    invoke-static {p1}, Lcom/sonyericsson/music/http/HttpServer;->getHttpServer(Landroid/content/Context;)Lcom/sonyericsson/music/http/HttpServer;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mHttpServer:Lcom/sonyericsson/music/http/HttpServer;

    .line 150
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mHttpServer:Lcom/sonyericsson/music/http/HttpServer;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 152
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/http/HttpServer;->startServer()V

    .line 153
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mHttpServer:Lcom/sonyericsson/music/http/HttpServer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/http/HttpServer;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mHttpServer:Lcom/sonyericsson/music/http/HttpServer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/http/HttpServer;->getPort()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mHttpServerAddress:Ljava/lang/String;

    goto :goto_1

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mHttpServer:Lcom/sonyericsson/music/http/HttpServer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/http/HttpServer;->stopServer()V

    .line 162
    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mHttpServerAddress:Ljava/lang/String;

    .line 163
    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mHttpServer:Lcom/sonyericsson/music/http/HttpServer;

    .line 165
    :goto_1
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 169
    :catch_0
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    .line 172
    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mHttpServer:Lcom/sonyericsson/music/http/HttpServer;

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mGoogleCastWrapper:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/music/playerservice/googlecast/CastService;Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;)Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mIsInContinuousPlayingState:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/sonyericsson/music/playerservice/googlecast/CastService;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mIsInContinuousPlayingState:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mRepeatMode:I

    return p0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mRepeatMode:I

    return p0
.end method

.method static synthetic access$2400(Lcom/sonyericsson/music/playerservice/googlecast/CastService;IZZ)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->setPlayQueuePosition(IZZ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mRepeatMode:I

    return p0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/playerutil/PlayQueueInfo;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayqueueDirection:I

    return p0
.end method

.method static synthetic access$302(Lcom/sonyericsson/music/playerservice/googlecast/CastService;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mStopOnError:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/music/playerservice/googlecast/CastService;Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->handleError(Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V

    return-void
.end method

.method private connectCast()Z
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mGoogleCastWrapper:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mGoogleCastWrapper:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mGoogleCastWrapper:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mOnErrorListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->setErrorListener(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnErrorListener;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mGoogleCastWrapper:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->isApplicationRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    invoke-static {}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->getCastDevice()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mGoogleCastWrapper:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastClientListener:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->launchReceiver(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private createCastPlayer()Z
    .locals 13

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mHttpServer:Lcom/sonyericsson/music/http/HttpServer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;

    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;-><init>(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->handleError(Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V

    .line 328
    sget-object v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->ERROR:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    return v3

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayer:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    if-eqz v0, :cond_1

    .line 333
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "About to create a new player. There shouldn\'t exist any old player here, but it does. Release it."

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/music/debug/DebugBase;->logW(Ljava/lang/Class;Ljava/lang/String;)V

    .line 335
    invoke-direct {p0, v3, v3}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->releaseCastPlayer(ZZ)V

    .line 338
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->connectCast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    :try_start_0
    new-instance v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mGoogleCastWrapper:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    iget-object v6, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mHttpServerAddress:Ljava/lang/String;

    invoke-direct {v0, v4, v5, p0, v6}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$CastPlayerListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayer:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    .line 341
    iget-object v7, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-virtual/range {v7 .. v12}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyIdle(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 342
    sget-object v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->IDLE:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 344
    :catch_0
    new-instance v0, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;

    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;-><init>(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->handleError(Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V

    .line 345
    sget-object v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->ERROR:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    return v3

    .line 350
    :cond_2
    new-instance v0, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;

    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;-><init>(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->handleError(Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V

    .line 351
    sget-object v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->ERROR:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    return v3
.end method

.method private discardWinding()V
    .locals 0

    return-void
.end method

.method private handleCompleted()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService$3;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleError(Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V
    .locals 18

    move-object/from16 v0, p0

    .line 765
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->getErrorCode()I

    move-result v2

    .line 766
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 767
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v3

    .line 768
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->isPlaying()Z

    move-result v7

    if-nez v3, :cond_0

    .line 771
    iget-object v4, v0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v5, v0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 772
    invoke-virtual {v3, v5, v4}, Lcom/sonyericsson/music/common/Track;->isSame(Lcom/sonymobile/music/audioplayer/BasicTrack;Z)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-void

    .line 776
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Error code: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    const-string v5, " "

    .line 780
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    :cond_3
    sget-object v1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    .line 785
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->discardWinding()V

    .line 787
    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v11, 0x0

    if-eqz v1, :cond_4

    .line 790
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 794
    :goto_0
    iget v3, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mErrorCount:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mErrorCount:I

    .line 795
    iget v3, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mErrorCount:I

    if-lt v3, v1, :cond_5

    .line 796
    iput-boolean v11, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mIsInContinuousPlayingState:Z

    .line 797
    iput v11, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mErrorCount:I

    .line 804
    :cond_5
    iget-object v3, v0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    .line 805
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 806
    iget-object v5, v0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v5}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 807
    iget-object v6, v0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v6}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v6

    move-object v14, v3

    move-object v15, v5

    move v10, v6

    goto :goto_1

    :cond_6
    move-object v14, v5

    move-object v15, v14

    const/4 v10, 0x0

    .line 810
    :goto_1
    iget-boolean v3, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mStopOnError:Z

    if-eqz v3, :cond_7

    .line 811
    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v3, 0x0

    move v4, v7

    move-object v5, v14

    move-object v6, v15

    move v7, v10

    invoke-virtual/range {v1 .. v7}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyError(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 812
    iput-boolean v11, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mIsInContinuousPlayingState:Z

    .line 813
    invoke-direct {v0, v11, v11}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->releaseCastPlayer(ZZ)V

    goto :goto_2

    .line 814
    :cond_7
    iget-boolean v2, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mIsInContinuousPlayingState:Z

    if-eqz v2, :cond_9

    if-le v1, v4, :cond_9

    .line 815
    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v1, :cond_8

    .line 816
    iget-object v12, v0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v13, 0x1

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v16

    const/16 v17, -0x1

    invoke-virtual/range {v12 .. v17}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyIdle(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 819
    :cond_8
    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mEventHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/music/playerservice/googlecast/CastService$4;

    invoke-direct {v2, v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService$4;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 831
    :cond_9
    iget-object v4, v0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/16 v5, 0x32

    const/4 v6, 0x0

    move-object v8, v14

    move-object v9, v15

    invoke-virtual/range {v4 .. v10}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyError(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 834
    iput-boolean v11, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mIsInContinuousPlayingState:Z

    .line 835
    invoke-direct {v0, v11, v11}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->releaseCastPlayer(ZZ)V

    :goto_2
    return-void
.end method

.method private handleOnPrepared()V
    .locals 9

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    .line 381
    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/common/Track;->isSame(Lcom/sonymobile/music/audioplayer/BasicTrack;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->getOperation()Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 389
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 390
    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/CastService$5;->$SwitchMap$com$sonyericsson$music$playerservice$PrepareOperation$PrepareOp:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_1

    .line 396
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object v6, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 397
    invoke-virtual {v6}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v6

    .line 396
    invoke-virtual {v1, v4, v5, v6}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyOpened(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 392
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object v6, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    .line 393
    invoke-virtual {v6}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->getOldPlaybackPos()I

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v7}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v7

    .line 392
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifySkipped(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    const/4 v1, 0x0

    .line 410
    :goto_1
    iget-object v6, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    invoke-virtual {v6}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->getPlaybackPos()I

    move-result v6

    .line 411
    iget-object v7, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayer:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    if-eqz v7, :cond_1

    .line 412
    invoke-virtual {v7}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->getDuration()I

    move-result v7

    if-le v6, v7, :cond_3

    move v6, v7

    goto :goto_2

    .line 416
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mReleaseCastPlayerThrowable:Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    .line 417
    invoke-static {}, Lcom/sonyericsson/music/common/MusicUtils;->isDebugBuild()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/sonyericsson/music/common/MusicUtils;->isImBuild()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 420
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mReleaseCastPlayerThrowable:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_2
    if-lez v6, :cond_4

    .line 424
    invoke-virtual {p0, v6}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->setPlaybackPosition(I)V

    .line 427
    :cond_4
    iget-object v6, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    invoke-virtual {v6}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->shouldStartPlaying()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 429
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->internalPlay()V

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_7

    .line 431
    sget-object v1, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->FAST_FORWARD:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    if-ne v0, v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p0, v2}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->startWinding(Z)V

    goto :goto_4

    .line 433
    :cond_7
    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V

    :goto_4
    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    return-void

    :cond_8
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private internalPlay()V
    .locals 5

    .line 518
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->discardWinding()V

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    .line 521
    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->ERROR:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 522
    new-instance v0, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;

    const/16 v1, 0x32

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;-><init>(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->handleError(Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V

    goto/16 :goto_1

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayer:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->COMPLETED:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 526
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->PREPARED:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->STARTED:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->PAUSED:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->IDLE:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    if-ne v0, v1, :cond_3

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayer:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->start()V

    .line 529
    iput-boolean v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mIsInContinuousPlayingState:Z

    const/4 v0, 0x0

    .line 530
    iput v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mErrorCount:I

    .line 532
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 533
    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v3

    const/4 v4, -0x1

    .line 532
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPlaying(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 534
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->PREPARING:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    if-eqz v0, :cond_4

    .line 536
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->setStartPlaying(Z)V

    goto :goto_1

    .line 538
    :cond_4
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CastService:play ignored play command; service state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    .line 539
    invoke-virtual {v3}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " player state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 538
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    .line 525
    :cond_5
    :goto_0
    iget v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mSavedPlaybackPosition:I

    sget-object v1, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->NONE:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-direct {p0, v0, v2, v1}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->openCurrentTrack(IZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    :goto_1
    return-void
.end method

.method private isPlayerPreparedAndReady()Z
    .locals 3

    .line 725
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    .line 726
    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->PREPARED:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->STARTED:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->PAUSED:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->COMPLETED:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    if-ne v0, v1, :cond_1

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayer:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private isPlaying()Z
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayer:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    sget-object v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->STARTED:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private openCurrentTrack(IZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V
    .locals 3

    .line 249
    iput p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mSavedPlaybackPosition:I

    .line 251
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->discardWinding()V

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {p0, v0, p2, p1, p3}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->prepareCastPlayer(Lcom/sonyericsson/music/common/Track;ZILcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 261
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->releaseCastPlayer(ZZ)V

    :cond_1
    return-void
.end method

.method private openTrackFromPq(IIZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z
    .locals 0

    .line 237
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/BasePlayer;->openTrackFromPlayQueuePos(I)Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/BasePlayer;->isTrackPlayable(Lcom/sonyericsson/music/common/Track;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 239
    invoke-direct {p0, p2, p3, p4}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->openCurrentTrack(IZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private prepareCastPlayer(Lcom/sonyericsson/music/common/Track;ZILcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z
    .locals 8

    .line 359
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->getPlaybackPosition()I

    move-result v4

    .line 362
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayer:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    const/4 v6, 0x1

    if-nez v0, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->createCastPlayer()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 369
    new-instance v7, Lcom/sonyericsson/music/playerservice/PrepareOperation;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    move-object v0, v7

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/playerservice/PrepareOperation;-><init>(Lcom/sonyericsson/music/common/Track;ZIILcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    iput-object v7, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    .line 372
    iget-object p2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayer:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->prepare(Lcom/sonyericsson/music/common/Track;)V

    return v6

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private releaseCastPlayer(ZZ)V
    .locals 4

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayer:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 267
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    sget-object v3, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->ERROR:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->IDLE:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    if-eq v2, v3, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mSavedPlaybackPosition:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 271
    iput v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mSavedPlaybackPosition:I

    .line 274
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mIsInContinuousPlayingState:Z

    goto :goto_1

    .line 277
    :cond_2
    iput v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mSavedPlaybackPosition:I

    :goto_1
    const/4 p1, 0x0

    .line 279
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayer:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    .line 281
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "mPlayer set to Null"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mReleaseCastPlayerThrowable:Ljava/lang/Throwable;

    .line 283
    iput v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mErrorCount:I

    if-eqz p2, :cond_3

    .line 286
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyReleased()V

    .line 288
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyAudioSessionUpdated(I)V

    return-void
.end method

.method private setPlayQueuePosition(IZZ)V
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x1

    .line 664
    iput-boolean v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mStopOnError:Z

    if-eqz p3, :cond_0

    .line 665
    sget-object p3, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->SKIP:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->NONE:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    .line 666
    :goto_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v0, 0x0

    .line 667
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->openTrackFromPq(IIZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 668
    new-instance p1, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {p1, v0, p2, p3, v1}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;-><init>(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->handleError(Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V

    .line 670
    sget-object p1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->ERROR:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    .line 671
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->releaseCastPlayer(ZZ)V

    :cond_1
    return-void
.end method

.method private tearDownCast()V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mGoogleCastWrapper:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->teardown()V

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mGoogleCastWrapper:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    :cond_0
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 2

    .line 737
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->getDuration()I

    .line 741
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_1

    .line 742
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->isPlayerPreparedAndReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayer:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->getDuration()I

    move-result v0

    .line 744
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->buildUpon()Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->duration(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    goto :goto_0

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPlaybackPosition()I
    .locals 1

    .line 697
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->getPlaybackPosition()I

    .line 699
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->isPlayerPreparedAndReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayer:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    .line 703
    :cond_0
    iget v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mSavedPlaybackPosition:I

    return v0
.end method

.method public init()V
    .locals 2

    .line 179
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->init()V

    .line 181
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mEventHandler:Landroid/os/Handler;

    .line 182
    new-instance v0, Lcom/sonyericsson/music/common/DrmUtilsImpl;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/common/DrmUtilsImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mDrmUtils:Lcom/sonyericsson/music/common/DrmUtils;

    return-void
.end method

.method protected isTrackPlayable(Landroid/net/Uri;)Z
    .locals 1

    .line 648
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mDrmUtils:Lcom/sonyericsson/music/common/DrmUtils;

    if-eqz v0, :cond_0

    .line 649
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/common/DrmUtils;->canForward(Landroid/net/Uri;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public next()V
    .locals 5

    .line 594
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->next()V

    .line 596
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    .line 600
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->validatePlayQueue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 601
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->releaseCastPlayer(ZZ)V

    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 606
    iput-boolean v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mStopOnError:Z

    const/4 v3, -0x1

    .line 608
    iget-boolean v4, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mIsInContinuousPlayingState:Z

    xor-int/2addr v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/music/playerservice/BasePlayer;->findNextPlayableTrack(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 610
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 611
    iput v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayqueueDirection:I

    .line 612
    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    sget-object v4, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->STARTED:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    if-eq v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mIsInContinuousPlayingState:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    sget-object v3, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->SKIP:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->openTrackFromPq(IIZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z

    goto :goto_1

    .line 616
    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->releaseCastPlayer(ZZ)V

    :goto_1
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 0

    .line 755
    invoke-super {p0, p1}, Lcom/sonyericsson/music/playerservice/BasePlayer;->onAudioFocusChange(I)V

    return-void
.end method

.method public onPlayerStateChanged(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;)V
    .locals 4

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    .line 443
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    .line 444
    sget-object p1, Lcom/sonyericsson/music/playerservice/googlecast/CastService$5;->$SwitchMap$com$sonyericsson$music$playerservice$googlecast$CastPlayer$PlayerState:[I

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 462
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->handleOnPrepared()V

    goto :goto_0

    .line 459
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->handleCompleted()V

    goto :goto_0

    .line 451
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->PREPARING:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    .line 453
    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->shouldStartPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 454
    :cond_1
    new-instance p1, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;

    const/16 v0, 0x32

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;-><init>(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->handleError(Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V

    goto :goto_0

    .line 448
    :pswitch_3
    iput-boolean v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mStopOnError:Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 761
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->getPlaybackPosition()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifySeekDone(Ljava/lang/String;II)V

    return-void
.end method

.method public open(Landroid/net/Uri;IIZ)V
    .locals 3

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonyericsson/music/playerservice/BasePlayer;->open(Landroid/net/Uri;IIZ)V

    const/4 v0, 0x0

    .line 213
    iput v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mErrorCount:I

    const/4 v1, 0x1

    .line 214
    iput-boolean v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mStopOnError:Z

    .line 216
    invoke-static {}, Lcom/sonyericsson/music/playqueue/PlayqueueStore$Playqueue;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/playerservice/BasePlayer;->openPlayQueue(Landroid/net/Uri;I)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    .line 220
    sget-object p2, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->OPEN:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->openTrackFromPq(IIZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 222
    sget-object p1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->ERROR:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    .line 223
    new-instance p1, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {p1, v0, p2, p3, v0}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;-><init>(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->handleError(Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->releaseCastPlayer(ZZ)V

    :cond_1
    :goto_0
    return-void

    .line 230
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Non-pq not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pause()V
    .locals 14

    .line 556
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->pause()V

    .line 558
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->discardWinding()V

    const/4 v0, 0x0

    .line 560
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mIsInContinuousPlayingState:Z

    .line 563
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 564
    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->setStartPlaying(Z)V

    const/4 v0, 0x1

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayer:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    sget-object v3, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->PAUSED:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    if-ne v1, v3, :cond_2

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayer:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->pause()V

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_4

    .line 574
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_3

    .line 575
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 577
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 578
    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, v7

    .line 577
    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 581
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v2, -0x1

    const/16 v3, -0x66

    .line 582
    invoke-virtual {v1, v0, v7, v2, v3}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyBuffering(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 586
    :cond_3
    iget-object v8, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 587
    invoke-virtual/range {v8 .. v13}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V

    :cond_4
    :goto_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 511
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->play()V

    const/4 v0, 0x1

    .line 513
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mStopOnError:Z

    .line 514
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->internalPlay()V

    return-void
.end method

.method protected playQueueUpdated(ZI)V
    .locals 7

    if-eqz p1, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->pause()V

    const/4 p1, 0x0

    .line 678
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 679
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyError(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public previous()V
    .locals 5

    .line 622
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->previous()V

    .line 624
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->validatePlayQueue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 625
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->releaseCastPlayer(ZZ)V

    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 630
    iput-boolean v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mStopOnError:Z

    .line 632
    iget-boolean v3, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mIsInContinuousPlayingState:Z

    xor-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/sonyericsson/music/playerservice/BasePlayer;->findPreviousPlayableTrack(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 635
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 637
    iput v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayqueueDirection:I

    .line 638
    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mCastPlayerState:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    sget-object v4, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->STARTED:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    if-eq v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mIsInContinuousPlayingState:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    sget-object v3, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->SKIP:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->openTrackFromPq(IIZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z

    goto :goto_1

    .line 643
    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->releaseCastPlayer(ZZ)V

    :goto_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 187
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->release()V

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mHttpServer:Lcom/sonyericsson/music/http/HttpServer;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/sonyericsson/music/http/HttpServer;->stopServer()V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mHttpServer:Lcom/sonyericsson/music/http/HttpServer;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mDrmUtils:Lcom/sonyericsson/music/common/DrmUtils;

    if-eqz v0, :cond_1

    .line 198
    invoke-interface {v0}, Lcom/sonyericsson/music/common/DrmUtils;->close()V

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->tearDownCast()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 202
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->releaseCastPlayer(ZZ)V

    return-void
.end method

.method public setPlayQueuePosition(IZ)V
    .locals 1

    .line 656
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/playerservice/BasePlayer;->setPlayQueuePosition(IZ)V

    const/4 v0, 0x1

    .line 658
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->setPlayQueuePosition(IZZ)V

    return-void
.end method

.method public setPlaybackPosition(I)V
    .locals 1

    .line 687
    invoke-super {p0, p1}, Lcom/sonyericsson/music/playerservice/BasePlayer;->setPlaybackPosition(I)V

    .line 689
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->isPlayerPreparedAndReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mPlayer:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->seekTo(I)V

    .line 691
    iput p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->mSavedPlaybackPosition:I

    :cond_0
    return-void
.end method

.method public startWinding(Z)V
    .locals 0

    .line 708
    invoke-super {p0, p1}, Lcom/sonyericsson/music/playerservice/BasePlayer;->startWinding(Z)V

    return-void
.end method

.method public stopWinding()V
    .locals 0

    .line 714
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->stopWinding()V

    return-void
.end method
