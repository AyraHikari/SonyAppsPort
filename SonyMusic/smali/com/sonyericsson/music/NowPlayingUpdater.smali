.class public Lcom/sonyericsson/music/NowPlayingUpdater;
.super Ljava/lang/Object;
.source "NowPlayingUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;,
        Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;,
        Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;,
        Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;
    }
.end annotation


# static fields
.field private static final RETAIN_KEY_INFO:Ljava/lang/String; = "now_playing_info"

.field private static final RETAIN_KEY_TASK:Ljava/lang/String; = "now_playing_task"

.field private static final sNowPlayingExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private mActivity:Lcom/sonyericsson/music/MusicActivity;

.field private mChangeTypeFocused:Z

.field private final mFinalPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

.field final mFocusStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

.field mNowPlayingTask:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

.field final mPlayStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

.field private mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

.field private mRefreshOnConnect:Z

.field private final mServiceConnectionListener:Lcom/sonyericsson/music/MediaServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/sonyericsson/music/NowPlayingUpdater$1;

    invoke-direct {v0}, Lcom/sonyericsson/music/NowPlayingUpdater$1;-><init>()V

    .line 52
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/NowPlayingUpdater;->sNowPlayingExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mFocusStateListeners:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mPlayStateListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mRefreshOnConnect:Z

    .line 76
    iput-boolean v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mChangeTypeFocused:Z

    .line 80
    new-instance v0, Lcom/sonyericsson/music/NowPlayingUpdater$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/NowPlayingUpdater$2;-><init>(Lcom/sonyericsson/music/NowPlayingUpdater;)V

    iput-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mFinalPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    .line 124
    new-instance v0, Lcom/sonyericsson/music/NowPlayingUpdater$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/NowPlayingUpdater$3;-><init>(Lcom/sonyericsson/music/NowPlayingUpdater;)V

    iput-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mServiceConnectionListener:Lcom/sonyericsson/music/MediaServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/NowPlayingUpdater;Lcom/sonyericsson/music/player/PlayerState;ZLcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/music/NowPlayingUpdater;->fetchNowPlayingInfo(Lcom/sonyericsson/music/player/PlayerState;ZLcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sonyericsson/music/NowPlayingUpdater;Lcom/sonyericsson/music/player/PlayerController;)Lcom/sonyericsson/music/player/PlayerController;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/NowPlayingUpdater;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mRefreshOnConnect:Z

    return p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/music/NowPlayingUpdater;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mRefreshOnConnect:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/NowPlayingUpdater;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mChangeTypeFocused:Z

    return p0
.end method

.method private addFocusStateListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mFocusStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mFocusStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addPlayStateListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mPlayStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mPlayStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private fetchNowPlayingInfo(Lcom/sonyericsson/music/player/PlayerState;ZLcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;)V
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingTask:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingTask:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    invoke-static {v0}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->access$400(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;)Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingTask:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    invoke-static {v0}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->access$400(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;)Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->reportAsChangeTypeFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p3}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->setReportAsChangeTypeFocused()V

    .line 256
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 260
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 264
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v0

    .line 265
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    const/4 v0, 0x0

    .line 268
    :goto_0
    new-instance v3, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    iget-object v4, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {v3, v4, p0, p2, p3}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/NowPlayingUpdater;ZLcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;)V

    iput-object v3, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingTask:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    .line 269
    iget-object p2, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingTask:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    sget-object p3, Lcom/sonyericsson/music/NowPlayingUpdater;->sNowPlayingExecutor:Ljava/util/concurrent/Executor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    aput-object p1, v3, v1

    invoke-virtual {p2, p3, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private removePlayStateListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mPlayStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addChangeListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;)V
    .locals 3

    .line 216
    sget-object v0, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;->PLAY_CHANGE:Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    .line 217
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/NowPlayingUpdater;->addPlayStateListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    .line 218
    iget-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    if-eqz p1, :cond_2

    .line 219
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_0

    .line 222
    :cond_1
    sget-object v0, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;->FOCUS_CHANGE:Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    if-ne p2, v0, :cond_2

    .line 223
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/NowPlayingUpdater;->addFocusStateListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 227
    :goto_0
    iget-object p2, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    if-nez p2, :cond_3

    .line 228
    iput-boolean v2, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mRefreshOnConnect:Z

    .line 229
    iput-boolean v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mChangeTypeFocused:Z

    goto :goto_1

    .line 230
    :cond_3
    iget-object p2, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingTask:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    if-eqz p2, :cond_4

    if-eqz v1, :cond_5

    .line 231
    :cond_4
    iget-object p2, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p2

    new-instance v0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;-><init>(IZ)V

    invoke-direct {p0, p2, v2, v0}, Lcom/sonyericsson/music/NowPlayingUpdater;->fetchNowPlayingInfo(Lcom/sonyericsson/music/player/PlayerState;ZLcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public addListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V
    .locals 1

    .line 207
    sget-object v0, Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;->FOCUS_CHANGE:Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/NowPlayingUpdater;->addChangeListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;)V

    return-void
.end method

.method onNowPlayingInfoAvailable(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;Z)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    .line 309
    iget-object p2, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 313
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    if-eqz v0, :cond_8

    .line 318
    iget-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getState()Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->reportAsChangeTypeFocused()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 319
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mFocusStateListeners:Ljava/util/List;

    .line 320
    invoke-static {p1}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    .line 321
    monitor-enter p1

    .line 322
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;

    .line 323
    iget-object v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    invoke-interface {v0, v1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;->onNowPlayingInfoChanged(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    goto :goto_1

    .line 325
    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 328
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getState()Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;->isNoState()Z

    move-result p1

    if-nez p1, :cond_8

    .line 330
    :cond_6
    iget-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mPlayStateListeners:Ljava/util/List;

    .line 331
    invoke-static {p1}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p2

    .line 332
    monitor-enter p2

    .line 333
    :try_start_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;

    .line 334
    iget-object v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    invoke-interface {v0, v1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;->onNowPlayingInfoChanged(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    goto :goto_2

    .line 336
    :cond_7
    monitor-exit p2

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p2

    .line 325
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2

    :cond_8
    :goto_3
    const/4 p1, 0x0

    .line 339
    iput-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingTask:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    return-void
.end method

.method public registerPlayerStateListener()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    if-nez v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mFinalPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    iput-object v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    .line 195
    iget-object v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/player/PlayerController;->registerPlayerStateListener(Lcom/sonyericsson/music/player/PlayerStateListener;)V

    :cond_0
    return-void
.end method

.method public removeChangeListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;Lcom/sonyericsson/music/NowPlayingUpdater$ChangeType;)V
    .locals 1

    .line 277
    sget-object v0, Lcom/sonyericsson/music/NowPlayingUpdater$4;->$SwitchMap$com$sonyericsson$music$NowPlayingUpdater$ChangeType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 282
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/NowPlayingUpdater;->removeListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    goto :goto_0

    .line 279
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/NowPlayingUpdater;->removePlayStateListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mFocusStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method start(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 1

    .line 151
    iput-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mServiceConnectionListener:Lcom/sonyericsson/music/MediaServiceConnection;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/MusicActivity;->addMusicServiceConnectedListener(Lcom/sonyericsson/music/MediaServiceConnection;)V

    .line 156
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object p1

    const-string v0, "now_playing_info"

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    iput-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    .line 157
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object p1

    const-string v0, "now_playing_task"

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    iput-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingTask:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    .line 158
    iget-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingTask:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->attach(Lcom/sonyericsson/music/NowPlayingUpdater;)V

    .line 160
    iget-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingTask:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->isDoInBackgroundFinished()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingTask:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->doPostExecute()V

    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingTask:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    :cond_0
    return-void
.end method

.method stop()V
    .locals 4

    .line 169
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    const-string v1, "now_playing_info"

    iget-object v2, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mFocusStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mFocusStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mPlayStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mPlayStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingTask:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->isDoInBackgroundFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingTask:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    .line 180
    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    const-string v2, "now_playing_task"

    iget-object v3, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingTask:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingTask:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    invoke-virtual {v0}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->detach()V

    .line 183
    iput-object v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mNowPlayingTask:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->unregisterPlayerStateListener()V

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    iget-object v2, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mServiceConnectionListener:Lcom/sonyericsson/music/MediaServiceConnection;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/MusicActivity;->removeMusicServiceConnectedListener(Lcom/sonyericsson/music/MediaServiceConnection;)V

    .line 189
    iput-object v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    return-void
.end method

.method public unregisterPlayerStateListener()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/player/PlayerController;->unregisterPlayerStateListener(Lcom/sonyericsson/music/player/PlayerStateListener;)V

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    :cond_0
    return-void
.end method
