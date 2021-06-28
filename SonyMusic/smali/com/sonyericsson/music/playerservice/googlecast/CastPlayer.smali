.class Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;
.super Ljava/lang/Object;
.source "CastPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$CastPlayerListener;,
        Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;
    }
.end annotation


# instance fields
.field private mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final mContext:Landroid/content/Context;

.field private mCurrentLoadOperation:Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mGoogleCastConnection:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

.field private final mGoogleCastConnectionListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnAppConnectionListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mHttpAddress:Ljava/lang/String;

.field private mIsPlaying:Z

.field private final mListener:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$CastPlayerListener;

.field private mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field private final mStatusListener:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$CastPlayerListener;Ljava/lang/String;)V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$1;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mStatusListener:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;

    .line 109
    new-instance v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mGoogleCastConnectionListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnAppConnectionListener;

    .line 169
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mHandler:Landroid/os/Handler;

    .line 173
    iput-object p3, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mListener:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$CastPlayerListener;

    .line 174
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mContext:Landroid/content/Context;

    .line 175
    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mGoogleCastConnection:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    .line 176
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mGoogleCastConnection:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    iget-object p3, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mGoogleCastConnectionListener:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnAppConnectionListener;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->setOnAppConnectionListener(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnAppConnectionListener;)V

    .line 178
    invoke-virtual {p2}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 179
    iput-object p4, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mHttpAddress:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->createRemoteMediaPlayer()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 182
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to create CastPlayer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mIsPlaying:Z

    return p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->updateCurrentState(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p0
.end method

.method static synthetic access$602(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mCurrentLoadOperation:Lcom/google/android/gms/common/api/PendingResult;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$CastPlayerListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mListener:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$CastPlayerListener;

    return-object p0
.end method

.method private loadMetaData(Lcom/google/android/gms/cast/MediaMetadata;Lcom/sonyericsson/music/common/Track;)V
    .locals 7

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "title"

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "artist"

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 312
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "title"

    .line 314
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 313
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "artist"

    .line 316
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 315
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    .line 317
    invoke-virtual {p1, v3, v1}, Lcom/google/android/gms/cast/MediaMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.cast.metadata.ARTIST"

    .line 318
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/cast/MediaMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->supportAlbumArt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    sget-object v1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    .line 323
    invoke-static {}, Lcom/sonyericsson/music/http/CastCipher;->getInstance()Lcom/sonyericsson/music/http/CastCipher;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album_art/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 323
    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/http/CastCipher;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mHttpAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 326
    new-instance v1, Lcom/google/android/gms/common/images/WebImage;

    invoke-direct {v1, p2}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/MediaMetadata;->addImage(Lcom/google/android/gms/common/images/WebImage;)V

    goto :goto_0

    .line 328
    :cond_0
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 335
    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private supportAlbumArt()Z
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mGoogleCastConnection:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->hasVideoOutCapability()Z

    move-result v0

    return v0
.end method

.method private updateCurrentState(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mListener:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$CastPlayerListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$CastPlayerListener;->onPlayerStateChanged(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;)V

    return-void
.end method

.method private validateCastConnection()Z
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 349
    :cond_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v2}, Lcom/google/android/gms/cast/Cast$CastApi;->getApplicationMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "F3F3F51B"

    sget-object v2, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 350
    invoke-interface {v2, v3}, Lcom/google/android/gms/cast/Cast$CastApi;->getApplicationMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/ApplicationMetadata;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method protected createRemoteMediaPlayer()Z
    .locals 6

    .line 187
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 188
    new-array v1, v1, [Z

    .line 189
    new-instance v2, Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-direct {v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    .line 191
    :try_start_0
    sget-object v2, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getNamespace()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 198
    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->requestStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$3;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;[ZLjava/util/concurrent/CountDownLatch;)V

    .line 199
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 207
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 209
    sget-object v2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "Waiting for RemoteMediaPlayer failed"

    invoke-virtual {v2, v3, v4, v0}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 212
    aget-boolean v2, v1, v0

    if-eqz v2, :cond_0

    .line 213
    sget-object v2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    .line 216
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mStatusListener:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->setOnStatusUpdatedListener(Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;)V

    goto :goto_1

    .line 218
    :cond_0
    sget-object v2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "Failure loading RemoteMediaPlayer"

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    .line 221
    :goto_1
    aget-boolean v0, v1, v0

    return v0

    .line 194
    :catch_1
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Exception while creating media channel"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create media channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getCurrentPosition()I
    .locals 2

    .line 429
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->validateCastConnection()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getApproximateStreamPosition()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method getDuration()I
    .locals 2

    .line 419
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->validateCastConnection()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getStreamDuration()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method isPlaying()Z
    .locals 1

    .line 470
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mIsPlaying:Z

    return v0
.end method

.method pause()V
    .locals 2

    .line 364
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->validateCastConnection()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->pause(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$5;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method prepare(Lcom/sonyericsson/music/common/Track;)V
    .locals 5

    .line 225
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    .line 229
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->validateCastConnection()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->PREPARING:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->updateCurrentState(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;)V

    .line 235
    new-instance v0, Lcom/google/android/gms/cast/MediaMetadata;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    .line 237
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {}, Lcom/sonyericsson/music/http/CastCipher;->getInstance()Lcom/sonyericsson/music/http/CastCipher;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "track/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/http/CastCipher;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mHttpAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->loadMetaData(Lcom/google/android/gms/cast/MediaMetadata;Lcom/sonyericsson/music/common/Track;)V

    .line 244
    sget-object v3, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    .line 253
    new-instance v3, Lcom/google/android/gms/cast/MediaInfo$Builder;

    invoke-direct {v3, v1}, Lcom/google/android/gms/cast/MediaInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setContentType(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    const/4 v1, 0x1

    .line 256
    invoke-virtual {v3, v1}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setStreamType(I)Lcom/google/android/gms/cast/MediaInfo$Builder;

    .line 257
    invoke-virtual {v3, v0}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setMetadata(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    .line 258
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaInfo$Builder;->build()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mCurrentLoadOperation:Lcom/google/android/gms/common/api/PendingResult;

    if-eqz v1, :cond_1

    .line 261
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    .line 264
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mCurrentLoadOperation:Lcom/google/android/gms/common/api/PendingResult;

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mCurrentLoadOperation:Lcom/google/android/gms/common/api/PendingResult;

    new-instance v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$4;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;Lcom/sonyericsson/music/common/Track;)V

    .line 266
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    .line 301
    sget-object p1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->ERROR:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->updateCurrentState(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;)V

    goto :goto_0

    .line 293
    :catch_1
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    .line 296
    sget-object p1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;->ERROR:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->updateCurrentState(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$PlayerState;)V

    :goto_0
    return-void
.end method

.method seekTo(I)V
    .locals 4

    .line 396
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->validateCastConnection()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->seek(Lcom/google/android/gms/common/api/GoogleApiClient;J)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$6;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method start()V
    .locals 2

    .line 439
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->validateCastConnection()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->play(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$7;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$7;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method
