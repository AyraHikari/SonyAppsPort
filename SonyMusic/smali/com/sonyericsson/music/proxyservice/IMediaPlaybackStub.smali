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

    .line 45
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    sget-object v0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->DEFAULT:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mHandler:Landroid/os/Handler;

    .line 47
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMyUid:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)Lcom/sonyericsson/music/proxyservice/MediaPlayback;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    return-object p0
.end method

.method private runOnMainThread(Ljava/lang/Runnable;Z)V
    .locals 2

    .line 759
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 760
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 762
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$OperationRunnable;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$OperationRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 763
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_1

    .line 766
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$OperationRunnable;->waitForComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method private verifyCallerUid(I)Z
    .locals 1

    .line 755
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

    .line 429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 430
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$16;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$16;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Landroid/net/Uri;IZ)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public enqueueTrack(Landroid/net/Uri;Landroid/net/Uri;IIZ)V
    .locals 8

    .line 452
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 453
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
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

    .line 322
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 323
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 332
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->getPlaybackPosition()I

    move-result v0

    :cond_1
    return v0
.end method

.method public getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;
    .locals 2

    .line 691
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 692
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    new-instance v0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 701
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 702
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->getPlaybackPosition()I

    move-result v0

    .line 705
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    .line 706
    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->playbackPos(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 707
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public loadPlayQueueIfEmpty()V
    .locals 2

    .line 168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 169
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$5;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public moveTrack(II)V
    .locals 1

    .line 519
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 520
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$20;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;II)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public next()V
    .locals 2

    .line 278
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 279
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$10;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$10;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public onStateUpdated(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    return-void
.end method

.method public open(Landroid/net/Uri;IZ)V
    .locals 1

    .line 76
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 77
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$1;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Landroid/net/Uri;IZ)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public openSmartPlaylist(IIZ)V
    .locals 1

    .line 145
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 146
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$4;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;IIZ)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public openWithMetadata(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 123
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
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

    .line 99
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p4

    .line 100
    invoke-direct {p0, p4}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object p4, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 108
    new-instance p4, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$2;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$2;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Landroid/net/Uri;IZ)V

    const/4 p1, 0x0

    invoke-direct {p0, p4, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2

    .line 190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 191
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$6;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public pauseDelayed(J)V
    .locals 1

    .line 212
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 213
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$7;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;J)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 2

    .line 234
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 235
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$8;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$8;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public prev()V
    .locals 2

    .line 256
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 257
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$9;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$9;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public removeTrack(I)V
    .locals 1

    .line 497
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 498
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
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

    .line 475
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 476
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$18;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$18;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public setClearAudioEnabled(Z)V
    .locals 1

    .line 585
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 586
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$23;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$23;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public setMediaPlayback(Lcom/sonyericsson/music/proxyservice/MediaPlayback;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 52
    invoke-interface {v0, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->setStateListener(Lcom/sonyericsson/music/proxyservice/worker/MediaPlaybackStateListener;)V

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    .line 56
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    if-eqz p1, :cond_1

    .line 57
    invoke-interface {p1, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->setStateListener(Lcom/sonyericsson/music/proxyservice/worker/MediaPlaybackStateListener;)V

    :cond_1
    return-void
.end method

.method public setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 734
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 735
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$28;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$28;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Landroid/os/Bundle;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public setPersonalDataCollectionConsented(Z)V
    .locals 1

    .line 607
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 608
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$24;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$24;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public setPlaybackPosition(I)V
    .locals 1

    .line 341
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 342
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$12;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$12;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;I)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public setQueuePosition(IZ)V
    .locals 1

    .line 407
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 408
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$15;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;IZ)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 563
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 564
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$22;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$22;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;I)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public setShowSyncUserNoticeDialog(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 670
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 671
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$26;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$26;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public setShuffle(Z)V
    .locals 1

    .line 541
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 542
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$21;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$21;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public setWifiAndMobileDataAccepted(Z)V
    .locals 1

    .line 630
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 631
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$25;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$25;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public shouldShowSyncUserNoticeDialog()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 653
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlayback;

    if-eqz v0, :cond_1

    .line 662
    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlayback;->shouldShowSyncUserNoticeDialog()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public shuffleNext()V
    .locals 2

    .line 300
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 301
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$11;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$11;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public startWinding(Z)V
    .locals 1

    .line 363
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 364
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$13;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$13;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public stopWinding()V
    .locals 2

    .line 385
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 386
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$14;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$14;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public updateMediaRouteAndScan()V
    .locals 2

    .line 712
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 713
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->verifyCallerUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$27;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub$27;-><init>(Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->runOnMainThread(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method
