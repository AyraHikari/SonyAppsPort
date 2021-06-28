.class public Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;
.super Ljava/lang/Object;
.source "PlaylistAsyncDataAddAlbum.java"


# instance fields
.field private mAlbumId:J

.field private mAlbumName:Ljava/lang/String;

.field private mNewPlaylistCreated:Z

.field private mPlaylistId:I

.field private mPlaylistName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJZ)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->mPlaylistId:I

    const-wide/16 v0, -0x1

    .line 23
    iput-wide v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->mAlbumId:J

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->mAlbumName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->mNewPlaylistCreated:Z

    .line 29
    iput-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->mPlaylistName:Ljava/lang/String;

    .line 32
    iput p1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->mPlaylistId:I

    .line 33
    iput-wide p2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->mAlbumId:J

    .line 34
    iput-boolean p4, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->mNewPlaylistCreated:Z

    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->mAlbumId:J

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistId()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->mPlaylistId:I

    return v0
.end method

.method public getPlaylistName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->mPlaylistName:Ljava/lang/String;

    return-object v0
.end method

.method public isNewPlaylistCreated()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->mNewPlaylistCreated:Z

    return v0
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->mAlbumName:Ljava/lang/String;

    return-void
.end method

.method public setPlaylistName(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->mPlaylistName:Ljava/lang/String;

    return-void
.end method
