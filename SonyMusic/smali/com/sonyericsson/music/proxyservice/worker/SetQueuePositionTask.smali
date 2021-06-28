.class public Lcom/sonyericsson/music/proxyservice/worker/SetQueuePositionTask;
.super Lcom/sonyericsson/music/proxyservice/worker/Task;
.source "SetQueuePositionTask.java"


# instance fields
.field private final mPosition:I

.field private final mStartPlaying:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Task;-><init>()V

    .line 21
    iput p1, p0, Lcom/sonyericsson/music/proxyservice/worker/SetQueuePositionTask;->mPosition:I

    .line 22
    iput-boolean p2, p0, Lcom/sonyericsson/music/proxyservice/worker/SetQueuePositionTask;->mStartPlaying:Z

    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/SetQueuePositionTask;->mPosition:I

    return v0
.end method

.method public getStartPlaying()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/SetQueuePositionTask;->mStartPlaying:Z

    return v0
.end method
