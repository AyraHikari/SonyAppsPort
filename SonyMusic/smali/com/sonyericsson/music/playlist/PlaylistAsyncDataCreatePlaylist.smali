.class public Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;
.super Ljava/lang/Object;
.source "PlaylistAsyncDataCreatePlaylist.java"


# instance fields
.field private mAddtionalMessage:Ljava/lang/String;

.field private mItemsToAdd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOrigPlaylistName:Ljava/lang/String;

.field private mResultPlaylistId:J

.field private mResultPlaylistName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->mOrigPlaylistName:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->mItemsToAdd:Ljava/util/List;

    .line 26
    iput-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->mResultPlaylistName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->mAddtionalMessage:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->mOrigPlaylistName:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->mItemsToAdd:Ljava/util/List;

    .line 56
    iput-object p3, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->mAddtionalMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdditionalMessage()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->mAddtionalMessage:Ljava/lang/String;

    return-object v0
.end method

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

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->mItemsToAdd:Ljava/util/List;

    return-object v0
.end method

.method public getOrigPlaylistName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->mOrigPlaylistName:Ljava/lang/String;

    return-object v0
.end method

.method public getResultPlaylistId()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->mResultPlaylistId:J

    return-wide v0
.end method

.method public getResultPlaylistName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->mResultPlaylistName:Ljava/lang/String;

    return-object v0
.end method

.method public setResultPlaylistId(J)V
    .locals 0

    .line 86
    iput-wide p1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->mResultPlaylistId:J

    return-void
.end method

.method public setResultPlaylistName(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->mResultPlaylistName:Ljava/lang/String;

    return-void
.end method
