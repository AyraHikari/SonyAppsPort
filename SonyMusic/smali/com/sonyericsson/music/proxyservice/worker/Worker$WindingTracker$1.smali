.class Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker$1;
.super Landroid/os/Handler;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;-><init>(Lcom/sonyericsson/music/proxyservice/worker/Worker;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

.field final synthetic val$this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;Landroid/os/Looper;Lcom/sonyericsson/music/proxyservice/worker/Worker;)V
    .locals 0

    .line 2038
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker$1;->this$1:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

    iput-object p3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker$1;->val$this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 2041
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2043
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker$1;->this$1:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result p1

    .line 2045
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker$1;->this$1:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v8, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v9, 0xb

    new-instance v10, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$SeekUpdate;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 2047
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSeekedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker$1;->this$1:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v3, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 2048
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->isPlaying()Z

    move-result v5

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker$1;->this$1:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

    iget-boolean v7, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->mSeekForward:Z

    move-object v1, v10

    move v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$SeekUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;Z)V

    const/4 v0, -0x1

    .line 2045
    invoke-virtual {v8, v9, v0, v0, v10}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 2051
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker$1;->this$1:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

    iget-object v1, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v1, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 2054
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker$1;->this$1:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

    iget-boolean v0, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->mStopped:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 2055
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x1f4

    .line 2057
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->sendTrackPlaybackPosMsg(I)V

    :goto_0
    return-void
.end method
