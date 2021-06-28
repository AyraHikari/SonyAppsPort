.class public Lcom/sonyericsson/music/proxyservice/worker/OpenLastPlayedTask;
.super Lcom/sonyericsson/music/proxyservice/worker/Task;
.source "OpenLastPlayedTask.java"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mOnlyIfPlayQueueIsEmpty:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Task;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenLastPlayedTask;->mAction:Ljava/lang/String;

    .line 21
    iput-boolean p2, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenLastPlayedTask;->mOnlyIfPlayQueueIsEmpty:Z

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenLastPlayedTask;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public onlyIfPlayQueueIsEmpty()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenLastPlayedTask;->mOnlyIfPlayQueueIsEmpty:Z

    return v0
.end method
