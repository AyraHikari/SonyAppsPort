.class Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment$FetchAlbumInfoTask;
.super Lcom/sonyericsson/music/metadata/FetchInfoTask;
.source "EditMusicInfoAlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchAlbumInfoTask"
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 0

    .line 244
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/music/metadata/FetchInfoTask;-><init>(Landroid/app/Activity;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public populateInfo(Landroid/content/Context;J)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Landroid/util/Pair<",
            "Lcom/sonyericsson/music/metadata/EditMusicInfo;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-direct {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;-><init>()V

    .line 250
    invoke-static {p1}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 251
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 253
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 254
    invoke-virtual {v0, p2, p3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setAlbumId(J)V

    .line 255
    invoke-static {v1, p2, p3}, Lcom/sonyericsson/music/common/DBUtils;->getArtistAndAlbumByAlbumId(Landroid/content/ContentResolver;J)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 256
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    if-eqz v3, :cond_2

    .line 257
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 258
    :goto_1
    invoke-static {p1, v4}, Lcom/sonyericsson/music/common/StringUtils;->isEmptyOrUnknown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 259
    invoke-virtual {v0, v4}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setArtist(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, v4}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setOriginalArtist(Ljava/lang/String;)V

    .line 262
    :cond_3
    invoke-static {p1, v3}, Lcom/sonyericsson/music/common/StringUtils;->isEmptyOrUnknown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 263
    invoke-virtual {v0, v3}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setAlbum(Ljava/lang/String;)V

    .line 265
    :cond_4
    invoke-static {v1, p2, p3}, Lcom/sonyericsson/music/common/DBUtils;->getAlbumYears(Landroid/content/ContentResolver;J)[Ljava/lang/String;

    move-result-object p2

    .line 266
    array-length p3, p2

    const/4 v1, 0x0

    if-lez p3, :cond_6

    .line 268
    array-length p3, p2

    const/4 v5, 0x1

    if-le p3, v5, :cond_5

    const-string p2, "MULTIPLE_YEARS"

    goto :goto_2

    :cond_5
    aget-object p2, p2, v1

    :goto_2
    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setYear(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string p2, ""

    .line 270
    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setYear(Ljava/lang/String;)V

    .line 272
    :goto_3
    invoke-static {v4, v3}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 274
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string p3, "force"

    const-string v3, "true"

    .line 275
    invoke-virtual {p2, p3, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 276
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    const-string p3, "art_path"

    .line 274
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/music/common/DBUtils;->getArtDataFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setAlbumArt(Ljava/io/File;)V

    .line 279
    :cond_7
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->setHasEmbeddedAlbumArt(Z)V

    .line 280
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
