.class public Lcom/sonyericsson/music/playerservice/PrepareOperation;
.super Ljava/lang/Object;
.source "PrepareOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;
    }
.end annotation


# instance fields
.field private final mOldPlaybackPos:I

.field private final mOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

.field private mPlaybackPos:I

.field private mStartPlaying:Z

.field private final mTrack:Lcom/sonyericsson/music/common/Track;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/common/Track;ZIILcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p2, p0, Lcom/sonyericsson/music/playerservice/PrepareOperation;->mStartPlaying:Z

    .line 34
    iput p3, p0, Lcom/sonyericsson/music/playerservice/PrepareOperation;->mPlaybackPos:I

    .line 35
    iput p4, p0, Lcom/sonyericsson/music/playerservice/PrepareOperation;->mOldPlaybackPos:I

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/PrepareOperation;->mTrack:Lcom/sonyericsson/music/common/Track;

    .line 37
    iput-object p5, p0, Lcom/sonyericsson/music/playerservice/PrepareOperation;->mOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    return-void
.end method


# virtual methods
.method public getOldPlaybackPos()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/sonyericsson/music/playerservice/PrepareOperation;->mOldPlaybackPos:I

    return v0
.end method

.method public getOperation()Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/PrepareOperation;->mOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    return-object v0
.end method

.method public getPlaybackPos()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/sonyericsson/music/playerservice/PrepareOperation;->mPlaybackPos:I

    return v0
.end method

.method public getTrack()Lcom/sonyericsson/music/common/Track;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/PrepareOperation;->mTrack:Lcom/sonyericsson/music/common/Track;

    return-object v0
.end method

.method public setPlaybackPos(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/sonyericsson/music/playerservice/PrepareOperation;->mPlaybackPos:I

    return-void
.end method

.method public setStartPlaying(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/PrepareOperation;->mStartPlaying:Z

    return-void
.end method

.method public shouldStartPlaying()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/PrepareOperation;->mStartPlaying:Z

    return v0
.end method
