.class public Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore;
.super Ljava/lang/Object;
.source "PlaylistArtStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$PlaylistArt;,
        Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$Columns;,
        Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$LocalPlaylistArtUri;,
        Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$GenreArtUri;,
        Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$FolderArtUri;,
        Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$SmartPlaylistArtUri;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBaseUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 30
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const v1, 0x7f10025b

    .line 31
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
