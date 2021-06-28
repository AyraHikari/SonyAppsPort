.class public Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;
.super Ljava/lang/Object;
.source "PlaylistAsyncDataAddFolder.java"


# instance fields
.field private mFolderId:I

.field private mPlaylistId:I

.field private mPlaylistName:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;->mPlaylistId:I

    .line 13
    iput v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;->mFolderId:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;->mPlaylistName:Ljava/lang/String;

    .line 18
    iput p1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;->mPlaylistId:I

    .line 19
    iput p2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;->mFolderId:I

    return-void
.end method


# virtual methods
.method public getFolderId()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;->mFolderId:I

    return v0
.end method

.method public getPlaylistId()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;->mPlaylistId:I

    return v0
.end method

.method public getPlaylistName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;->mPlaylistName:Ljava/lang/String;

    return-object v0
.end method

.method public setPlaylistName(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;->mPlaylistName:Ljava/lang/String;

    return-void
.end method
