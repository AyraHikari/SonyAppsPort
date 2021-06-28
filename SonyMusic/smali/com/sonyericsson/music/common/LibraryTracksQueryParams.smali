.class public final Lcom/sonyericsson/music/common/LibraryTracksQueryParams;
.super Ljava/lang/Object;
.source "LibraryTracksQueryParams.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    .line 13
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "title"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "artist"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "duration"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "_data"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "artist_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "album"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "album_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/common/LibraryTracksQueryParams;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColumns()[Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/sonyericsson/music/common/LibraryTracksQueryParams;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public static getSelection()Ljava/lang/String;
    .locals 1

    const-string v0, "is_music <> 0"

    return-object v0
.end method

.method public static getSelectionArgs()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSortOrder()Ljava/lang/String;
    .locals 1

    const-string v0, "title COLLATE NOCASE"

    return-object v0
.end method

.method public static getUri()Landroid/net/Uri;
    .locals 1

    .line 29
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method
