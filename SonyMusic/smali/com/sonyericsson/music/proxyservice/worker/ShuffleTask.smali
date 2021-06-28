.class public Lcom/sonyericsson/music/proxyservice/worker/ShuffleTask;
.super Lcom/sonyericsson/music/proxyservice/worker/Task;
.source "ShuffleTask.java"


# instance fields
.field private final mShuffle:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Task;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/worker/ShuffleTask;->mShuffle:Z

    return-void
.end method


# virtual methods
.method public getShuffle()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/ShuffleTask;->mShuffle:Z

    return v0
.end method
