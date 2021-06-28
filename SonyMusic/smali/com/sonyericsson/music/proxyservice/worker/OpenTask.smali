.class public Lcom/sonyericsson/music/proxyservice/worker/OpenTask;
.super Lcom/sonyericsson/music/proxyservice/worker/Task;
.source "OpenTask.java"


# instance fields
.field private final mAlbum:Ljava/lang/String;

.field private final mArtist:Ljava/lang/String;

.field private final mPlaybackPos:I

.field private final mPosition:I

.field private final mShuffle:Z

.field private final mSourcePosition:I

.field private final mStartPlayback:Z

.field private final mTitle:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private final mUsePlayqueue:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;IZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Task;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mUri:Landroid/net/Uri;

    .line 40
    iput p2, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mPosition:I

    .line 41
    iput-boolean p3, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mShuffle:Z

    .line 42
    iput-boolean p4, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mUsePlayqueue:Z

    .line 43
    iput-object p5, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mTitle:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mAlbum:Ljava/lang/String;

    .line 45
    iput-object p7, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mArtist:Ljava/lang/String;

    .line 46
    iput p8, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mPlaybackPos:I

    .line 47
    iput-boolean p9, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mStartPlayback:Z

    .line 48
    iput p10, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mSourcePosition:I

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackPos()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mPlaybackPos:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mPosition:I

    return v0
.end method

.method public getSourcePosition()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mSourcePosition:I

    return v0
.end method

.method public getStartPlayback()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mStartPlayback:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isShuffle()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mShuffle:Z

    return v0
.end method

.method public usePlayqueue()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->mUsePlayqueue:Z

    return v0
.end method
