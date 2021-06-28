.class public final Lcom/sonyericsson/music/common/LibraryArtistTracksQueryParams;
.super Ljava/lang/Object;
.source "LibraryArtistTracksQueryParams.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColumns(Z)[Ljava/lang/String;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->getAllTracksProjection(Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSelection(J)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/DBUtils;->getArtistAllTracksSelection(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    .line 18
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method
