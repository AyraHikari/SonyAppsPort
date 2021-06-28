.class public Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;
.super Ljava/lang/Object;
.source "PlaylistAsyncDataRemoveFromPlaylist.java"


# instance fields
.field private mItemsToRemove:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistId:I


# direct methods
.method public constructor <init>(ILjava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;->mPlaylistId:I

    .line 27
    iput-object p2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;->mItemsToRemove:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public getItemsToRemove()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;->mItemsToRemove:Ljava/util/Collection;

    return-object v0
.end method

.method public getPlaylistId()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;->mPlaylistId:I

    return v0
.end method
