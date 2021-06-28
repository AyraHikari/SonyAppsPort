.class public Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;
.super Ljava/lang/Object;
.source "PlaylistAsyncDataMoveTrack.java"


# instance fields
.field private mFromIndex:I

.field private mPlaylistId:I

.field private mToIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;->mPlaylistId:I

    .line 17
    iput v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;->mToIndex:I

    .line 19
    iput v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;->mFromIndex:I

    .line 22
    iput p1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;->mPlaylistId:I

    .line 23
    iput p3, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;->mToIndex:I

    .line 24
    iput p2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;->mFromIndex:I

    return-void
.end method


# virtual methods
.method public getFromIndex()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;->mFromIndex:I

    return v0
.end method

.method public getPlaylistId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;->mPlaylistId:I

    return v0
.end method

.method public getToIndex()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;->mToIndex:I

    return v0
.end method
