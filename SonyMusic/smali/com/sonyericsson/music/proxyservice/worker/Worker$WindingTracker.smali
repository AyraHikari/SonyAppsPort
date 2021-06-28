.class final Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;
.super Ljava/lang/Object;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/worker/Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindingTracker"
.end annotation


# static fields
.field private static final TRACK_PLAYBACK_POS:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field mSeekForward:Z

.field mStopped:Z

.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/proxyservice/worker/Worker;Landroid/os/Looper;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 2037
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2030
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->mSeekForward:Z

    .line 2032
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->mStopped:Z

    .line 2038
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker$1;-><init>(Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;Landroid/os/Looper;Lcom/sonyericsson/music/proxyservice/worker/Worker;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method isWinding()Z
    .locals 1

    .line 2083
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->mStopped:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method sendTrackPlaybackPosMsg(I)V
    .locals 3

    .line 2079
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->mHandler:Landroid/os/Handler;

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method start(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2069
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->mStopped:Z

    .line 2070
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->mSeekForward:Z

    .line 2071
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->sendTrackPlaybackPosMsg(I)V

    return-void
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x1

    .line 2075
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->mStopped:Z

    return-void
.end method
