.class public final Lcom/sonyericsson/music/common/LibraryAlbumsQueryParams;
.super Ljava/lang/Object;
.source "LibraryAlbumsQueryParams.java"


# static fields
.field private static final ALBUMS_COLUMNS:[Ljava/lang/String;

.field private static final ALBUMS_COLUMNS_FROM_Q:[Ljava/lang/String;

.field private static final ALBUMS_SORT_ORDER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x6

    .line 25
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CASE WHEN %s in(\'%s\', \'%s\') THEN \'%s\' ELSE %s END AS %s"

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "album"

    aput-object v5, v4, v3

    const-string v5, "<unknown>"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "Unknown Album"

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-string v5, "unknown_album"

    const/4 v8, 0x3

    aput-object v5, v4, v8

    const-string v5, "album"

    const/4 v9, 0x4

    aput-object v5, v4, v9

    const-string v5, "album"

    const/4 v10, 0x5

    aput-object v5, v4, v10

    .line 27
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "artist"

    aput-object v2, v1, v7

    const-string v2, "numsongs"

    aput-object v2, v1, v8

    const-string v2, "artist_id"

    aput-object v2, v1, v9

    const-string v2, "album_art"

    aput-object v2, v1, v10

    sput-object v1, Lcom/sonyericsson/music/common/LibraryAlbumsQueryParams;->ALBUMS_COLUMNS:[Ljava/lang/String;

    .line 40
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v6

    const-string v1, "artist"

    aput-object v1, v0, v7

    const-string v1, "numsongs"

    aput-object v1, v0, v8

    const-string v1, "artist_id"

    aput-object v1, v0, v9

    const-string v1, "album_art"

    aput-object v1, v0, v10

    sput-object v0, Lcom/sonyericsson/music/common/LibraryAlbumsQueryParams;->ALBUMS_COLUMNS_FROM_Q:[Ljava/lang/String;

    const-string v0, "CASE WHEN %s in(\'%s\', \'%s\') THEN \'%s\' ELSE %s END COLLATE NOCASE"

    .line 52
    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "album"

    aput-object v2, v1, v3

    const-string v2, "<unknown>"

    aput-object v2, v1, v6

    const-string v2, "Unknown Album"

    aput-object v2, v1, v7

    const-string v2, "unknown_album"

    aput-object v2, v1, v8

    const-string v2, "album"

    aput-object v2, v1, v9

    .line 53
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/common/LibraryAlbumsQueryParams;->ALBUMS_SORT_ORDER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColumns(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    const v0, 0x7f10018e

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    const-string v0, "unknown_album"

    .line 73
    sget-object v1, Lcom/sonyericsson/music/common/LibraryAlbumsQueryParams;->ALBUMS_COLUMNS_FROM_Q:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/music/common/StringUtils;->getLocalizedStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "unknown_album"

    .line 76
    sget-object v1, Lcom/sonyericsson/music/common/LibraryAlbumsQueryParams;->ALBUMS_COLUMNS:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/music/common/StringUtils;->getLocalizedStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
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

.method public static getSortOrder(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const v0, 0x7f10018e

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 92
    sget-object v0, Lcom/sonyericsson/music/common/LibraryAlbumsQueryParams;->ALBUMS_SORT_ORDER:Ljava/lang/String;

    const-string v1, "unknown_album"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUri()Landroid/net/Uri;
    .locals 1

    .line 65
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method
