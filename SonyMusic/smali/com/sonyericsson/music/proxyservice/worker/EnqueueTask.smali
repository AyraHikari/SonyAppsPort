.class public Lcom/sonyericsson/music/proxyservice/worker/EnqueueTask;
.super Lcom/sonyericsson/music/proxyservice/worker/Task;
.source "EnqueueTask.java"


# instance fields
.field private final mEnqueueLast:Z

.field protected final mEnqueueType:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;IZ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Task;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTask;->mUri:Landroid/net/Uri;

    .line 24
    iput p2, p0, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTask;->mEnqueueType:I

    .line 25
    iput-boolean p3, p0, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTask;->mEnqueueLast:Z

    return-void
.end method


# virtual methods
.method public enqueueLast()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTask;->mEnqueueLast:Z

    return v0
.end method

.method public getEnqueueType()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTask;->mEnqueueType:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTask;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isSingleTrack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
