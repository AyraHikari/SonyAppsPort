.class public final Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$AlbumColumns;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$ArtistColumns;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$AudioColumns;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$GenresColumns;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$PlaylistsColumns;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$AudioTag;,
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$MediaStoreSync;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static keyFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1208
    invoke-static {p0}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
