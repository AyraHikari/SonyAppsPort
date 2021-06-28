.class public final Lcom/sonyericsson/music/common/LibraryPlaylistTracksQueryParams;
.super Ljava/lang/Object;
.source "LibraryPlaylistTracksQueryParams.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    .line 14
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "artist_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "audio_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "title"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "artist"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "album"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "album_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "duration"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "_data"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/common/LibraryPlaylistTracksQueryParams;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColumns()[Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/sonyericsson/music/common/LibraryPlaylistTracksQueryParams;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public static getSelection()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSelectionArgs()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSortOrder()Ljava/lang/String;
    .locals 1

    const-string v0, "play_order"

    return-object v0
.end method

.method public static getUri(I)Landroid/net/Uri;
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
