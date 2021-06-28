.class public Lcom/sonyericsson/music/proxyservice/worker/MoveTrackInPlayqueue;
.super Lcom/sonyericsson/music/proxyservice/worker/Task;
.source "MoveTrackInPlayqueue.java"


# instance fields
.field private mFrom:I

.field private mTo:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Task;-><init>()V

    .line 21
    iput p1, p0, Lcom/sonyericsson/music/proxyservice/worker/MoveTrackInPlayqueue;->mFrom:I

    .line 22
    iput p2, p0, Lcom/sonyericsson/music/proxyservice/worker/MoveTrackInPlayqueue;->mTo:I

    return-void
.end method


# virtual methods
.method public getFrom()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/MoveTrackInPlayqueue;->mFrom:I

    return v0
.end method

.method public getTo()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/MoveTrackInPlayqueue;->mTo:I

    return v0
.end method
