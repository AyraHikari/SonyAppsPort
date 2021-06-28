.class public Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;
.super Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;
.source "IMediaPlaybackStub.java"

# interfaces
.implements Lcom/sonyericsson/music/proxyservice/worker/MediaPlaybackStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$OperationRunnable;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

.field private volatile mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

.field private mMyUid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    sget-object v0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->DEFAULT:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mHandler:Landroid/os/Handler;

    .line 46
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMyUid:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    return-object p0
.end method

.method private runOnMainThread(Ljava/lang/Runnable;Z)V
    .locals 2

    .line 719
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 720
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 722
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$OperationRunnable;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$OperationRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 723
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_1

    .line 726
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$OperationRunnable;->waitForComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method private verifyCallerUid(I)Z
    .locals 1

    .line 715
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMyUid:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public enqueue(Landroid/net/Uri;IZ)V
    .locals 1

    .line 428
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 429
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$16;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$16;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Landroid/net/Uri;IZ)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public enqueueTrack(Landroid/net/Uri;Landroid/net/Uri;IIZ)V
    .locals 8

    .line 451
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 452
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$17;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$17;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Landroid/net/Uri;Landroid/net/Uri;IIZ)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public getPlaybackPosition()I
    .locals 2

    .line 321
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 322
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 331
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->getPlaybackPosition()I

    move-result v0

    :cond_1
    return v0
.end method

.method public getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;
    .locals 2

    .line 651
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 652
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    new-instance v0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 661
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 662
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->getPlaybackPosition()I

    move-result v0

    .line 665
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    .line 666
    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->playbackPos(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 667
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public loadPlayQueueIfEmpty()V
    .locals 2

    .line 167
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 168
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$5;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public moveTrack(II)V
    .locals 1

    .line 518
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 519
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$20;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;II)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public next()V
    .locals 2

    .line 277
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 278
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$10;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$10;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public onStateUpdated(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    return-void
.end method

.method public open(Landroid/net/Uri;IZ)V
    .locals 1

    .line 75
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 76
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$1;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Landroid/net/Uri;IZ)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public openSmartPlaylist(IIZ)V
    .locals 1

    .line 144
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 145
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$4;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;IIZ)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public openWithMetadata(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 121
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 122
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$3;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public openWithSourcePos(Landroid/net/Uri;IZI)V
    .locals 0

    .line 98
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p4

    .line 99
    invoke-direct {p0, p4}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object p4, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 107
    new-instance p4, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$2;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$2;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Landroid/net/Uri;IZ)V

    const/4 p1, 0x0

    invoke-direct {p0, p4, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2

    .line 189
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 190
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$6;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public pauseDelayed(J)V
    .locals 1

    .line 211
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 212
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$7;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;J)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 2

    .line 233
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 234
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$8;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$8;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public prev()V
    .locals 2

    .line 255
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 256
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$9;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$9;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public removeTrack(I)V
    .locals 1

    .line 496
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 497
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$19;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$19;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;I)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public removeTracks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 474
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 475
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$18;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$18;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public setClearAudioEnabled(Z)V
    .locals 1

    .line 584
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 585
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$23;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$23;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public setMediaPlayback(Lcom/sonyericsson/music/proxyservice/MediaPlayback;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    invoke-interface {v0, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->setStateListener(Lcom/sonyericsson/music/proxyservice/worker/MediaPlaybackStateListener;)V

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    .line 55
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    if-eqz p1, :cond_1

    .line 56
    invoke-interface {p1, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->setStateListener(Lcom/sonyericsson/music/proxyservice/worker/MediaPlaybackStateListener;)V

    :cond_1
    return-void
.end method

.method public setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 694
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 695
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$27;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$27;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Landroid/os/Bundle;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public setPersonalDataCollectionConsented(Z)V
    .locals 1

    .line 606
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 607
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$24;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$24;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public setPlaybackPosition(I)V
    .locals 1

    .line 340
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 341
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$12;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$12;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;I)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public setQueuePosition(IZ)V
    .locals 1

    .line 406
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 407
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$15;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;IZ)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 562
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 563
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$22;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$22;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;I)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public setShuffle(Z)V
    .locals 1

    .line 540
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 541
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$21;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$21;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public setWifiAndMobileDataAccepted(Z)V
    .locals 1

    .line 629
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 630
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$25;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$25;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public shuffleNext()V
    .locals 2

    .line 299
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 300
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$11;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$11;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public startWinding(Z)V
    .locals 1

    .line 362
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 363
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$13;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$13;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public stopWinding()V
    .locals 2

    .line 384
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 385
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$14;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$14;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public updateMediaRouteAndScan()V
    .locals 2

    .line 672
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 673
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$26;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$26;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method
