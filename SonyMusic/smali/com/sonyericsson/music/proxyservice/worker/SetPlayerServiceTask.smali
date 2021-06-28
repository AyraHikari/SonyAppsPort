.class public Lcom/sonyericsson/music/proxyservice/worker/SetPlayerServiceTask;
.super Lcom/sonyericsson/music/proxyservice/worker/Task;
.source "SetPlayerServiceTask.java"


# instance fields
.field private final mPlaybackPos:I

.field private final mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

.field private final mStartPlaying:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/playerservice/PlayerService;ZI)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Task;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/SetPlayerServiceTask;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    .line 19
    iput-boolean p2, p0, Lcom/sonyericsson/music/proxyservice/worker/SetPlayerServiceTask;->mStartPlaying:Z

    .line 20
    iput p3, p0, Lcom/sonyericsson/music/proxyservice/worker/SetPlayerServiceTask;->mPlaybackPos:I

    return-void
.end method


# virtual methods
.method public getPlaybackPos()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/SetPlayerServiceTask;->mPlaybackPos:I

    return v0
.end method

.method public getPlayer()Lcom/sonyericsson/music/playerservice/PlayerService;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/SetPlayerServiceTask;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    return-object v0
.end method

.method public getStartPlaying()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/SetPlayerServiceTask;->mStartPlaying:Z

    return v0
.end method
