.class public Lcom/sonyericsson/music/common/OpenAndPlayConditions;
.super Ljava/lang/Object;
.source "OpenAndPlayConditions.java"


# instance fields
.field private mShuffle:Z

.field private mSourcePosition:I

.field private mTracksPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->mTracksPosition:I

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->mShuffle:Z

    .line 17
    iput v0, p0, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->mSourcePosition:I

    return-void
.end method


# virtual methods
.method public getSourcePosition()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->mSourcePosition:I

    return v0
.end method

.method public getTracksPosition()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->mTracksPosition:I

    return v0
.end method

.method public isShuffle()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->mShuffle:Z

    return v0
.end method

.method public setShuffle(Z)Lcom/sonyericsson/music/common/OpenAndPlayConditions;
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->mShuffle:Z

    return-object p0
.end method

.method public setTracksPosition(I)Lcom/sonyericsson/music/common/OpenAndPlayConditions;
    .locals 0

    .line 24
    iput p1, p0, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->mTracksPosition:I

    return-object p0
.end method
