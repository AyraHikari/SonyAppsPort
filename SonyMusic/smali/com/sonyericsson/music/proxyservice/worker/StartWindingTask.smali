.class public Lcom/sonyericsson/music/proxyservice/worker/StartWindingTask;
.super Lcom/sonyericsson/music/proxyservice/worker/Task;
.source "StartWindingTask.java"


# instance fields
.field private final mForward:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Task;-><init>()V

    .line 18
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/worker/StartWindingTask;->mForward:Z

    return-void
.end method


# virtual methods
.method public isForward()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/StartWindingTask;->mForward:Z

    return v0
.end method
