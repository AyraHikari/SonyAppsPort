.class public Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRenamePlaylist;
.super Ljava/lang/Object;
.source "PlaylistAsyncDataRenamePlaylist.java"


# instance fields
.field private final mNewName:Ljava/lang/String;

.field private final mPlaylistUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRenamePlaylist;->mPlaylistUri:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRenamePlaylist;->mNewName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRenamePlaylist;->mNewName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistUri()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRenamePlaylist;->mPlaylistUri:Ljava/lang/String;

    return-object v0
.end method
