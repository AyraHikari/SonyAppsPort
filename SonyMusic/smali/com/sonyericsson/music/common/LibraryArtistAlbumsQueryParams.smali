.class public final Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;
.super Ljava/lang/Object;
.source "LibraryArtistAlbumsQueryParams.java"


# static fields
.field private static COLUMNS:[Ljava/lang/String;

.field private static COLUMNS_R:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    .line 21
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "album"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "artist"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "minyear"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->COLUMNS:[Ljava/lang/String;

    const/4 v1, 0x4

    .line 28
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "album"

    aput-object v2, v1, v4

    const-string v2, "artist"

    aput-object v2, v1, v5

    const-string v2, "minyear"

    aput-object v2, v1, v0

    sput-object v1, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->COLUMNS_R:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColumns(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    const v0, 0x7f10018e

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "unknown_album"

    .line 46
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->COLUMNS_R:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->COLUMNS:[Ljava/lang/String;

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/music/common/StringUtils;->getLocalizedStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSelection()Ljava/lang/String;
    .locals 1

    const-string v0, "album != \'\'"

    return-object v0
.end method

.method public static getSelectionArgs()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSortOrder()Ljava/lang/String;
    .locals 1

    const-string v0, "minyear DESC, album COLLATE NOCASE"

    return-object v0
.end method

.method public static getUri(J)Landroid/net/Uri;
    .locals 1

    const-string v0, "external"

    .line 40
    invoke-static {v0, p0, p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
