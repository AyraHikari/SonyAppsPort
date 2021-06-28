.class public Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;
.super Ljava/lang/Object;
.source "PlaylistAsyncDataAddTracks.java"


# instance fields
.field private mItemsToAdd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNewPlaylistCreated:Z

.field private mPlaylistId:I

.field private mPlaylistName:Ljava/lang/String;

.field private mShowAddedToast:Z

.field private mTrackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 46
    new-array v0, v0, [Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v0, p3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;-><init>(ILjava/util/List;ZZ)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;ZZ)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->mPlaylistId:I

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->mItemsToAdd:Ljava/util/List;

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->mShowAddedToast:Z

    .line 32
    iput-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->mPlaylistName:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->mTrackName:Ljava/lang/String;

    .line 38
    iput p1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->mPlaylistId:I

    .line 39
    iput-object p2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->mItemsToAdd:Ljava/util/List;

    .line 40
    iput-boolean p3, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->mNewPlaylistCreated:Z

    .line 41
    iput-boolean p4, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->mShowAddedToast:Z

    return-void
.end method


# virtual methods
.method public getItemsToAdd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->mItemsToAdd:Ljava/util/List;

    return-object v0
.end method

.method public getPlaylistId()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->mPlaylistId:I

    return v0
.end method

.method public getPlaylistName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->mPlaylistName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public isNewPlaylistCreated()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->mNewPlaylistCreated:Z

    return v0
.end method

.method public setPlaylistName(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->mPlaylistName:Ljava/lang/String;

    return-void
.end method

.method public setTrackName(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->mTrackName:Ljava/lang/String;

    return-void
.end method

.method public showAddedToast()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->mShowAddedToast:Z

    return v0
.end method
