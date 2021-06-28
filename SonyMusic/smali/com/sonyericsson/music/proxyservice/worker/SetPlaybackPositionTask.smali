.class public Lcom/sonyericsson/music/proxyservice/worker/SetPlaybackPositionTask;
.super Lcom/sonyericsson/music/proxyservice/worker/Task;
.source "SetPlaybackPositionTask.java"


# instance fields
.field private final mPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Task;-><init>()V

    .line 18
    iput p1, p0, Lcom/sonyericsson/music/proxyservice/worker/SetPlaybackPositionTask;->mPosition:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Task;-><init>()V

    .line 22
    invoke-static {p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/SetPlaybackPositionTask;->safeLongToInt(J)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/proxyservice/worker/SetPlaybackPositionTask;->mPosition:I

    return-void
.end method

.method private static safeLongToInt(J)I
    .locals 0

    long-to-int p0, p0

    const/4 p1, 0x0

    .line 30
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/SetPlaybackPositionTask;->mPosition:I

    return v0
.end method
