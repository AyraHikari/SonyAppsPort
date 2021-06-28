.class public Lcom/sonyericsson/music/proxyservice/worker/RemoveTrackFromPlayqueue;
.super Lcom/sonyericsson/music/proxyservice/worker/Task;
.source "RemoveTrackFromPlayqueue.java"


# instance fields
.field private mPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Task;-><init>()V

    .line 19
    iput p1, p0, Lcom/sonyericsson/music/proxyservice/worker/RemoveTrackFromPlayqueue;->mPosition:I

    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/RemoveTrackFromPlayqueue;->mPosition:I

    return v0
.end method
