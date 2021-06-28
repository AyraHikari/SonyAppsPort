.class public Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;
.super Ljava/lang/Object;
.source "PlaylistAsyncDataAddGenre.java"


# instance fields
.field private mGenreId:J

.field private mPlaylistId:I

.field private mPlaylistName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;->mPlaylistId:I

    const-wide/16 v0, -0x1

    .line 17
    iput-wide v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;->mGenreId:J

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;->mPlaylistName:Ljava/lang/String;

    .line 22
    iput p1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;->mPlaylistId:I

    .line 23
    iput-wide p2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;->mGenreId:J

    return-void
.end method


# virtual methods
.method public getGenreId()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;->mGenreId:J

    return-wide v0
.end method

.method public getPlaylistId()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;->mPlaylistId:I

    return v0
.end method

.method public getPlaylistName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;->mPlaylistName:Ljava/lang/String;

    return-object v0
.end method

.method public setPlaylistName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;->mPlaylistName:Ljava/lang/String;

    return-void
.end method
