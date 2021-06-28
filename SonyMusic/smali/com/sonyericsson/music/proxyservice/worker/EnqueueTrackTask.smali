.class public Lcom/sonyericsson/music/proxyservice/worker/EnqueueTrackTask;
.super Lcom/sonyericsson/music/proxyservice/worker/EnqueueTask;
.source "EnqueueTrackTask.java"


# instance fields
.field private final mSourcePosition:I

.field private final mSourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;IIZ)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p4, p5}, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTask;-><init>(Landroid/net/Uri;IZ)V

    .line 23
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTrackTask;->mSourceUri:Landroid/net/Uri;

    .line 24
    iput p3, p0, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTrackTask;->mSourcePosition:I

    return-void
.end method


# virtual methods
.method public getSourcePosition()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTrackTask;->mSourcePosition:I

    return v0
.end method

.method public getSourceUri()Landroid/net/Uri;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTrackTask;->mSourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isSingleTrack()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
