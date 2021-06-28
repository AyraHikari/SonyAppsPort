.class public Lcom/sonyericsson/music/common/ArtistImageUtils;
.super Ljava/lang/Object;
.source "ArtistImageUtils.java"


# static fields
.field private static final ARTIST_COVER_FOLDER:Ljava/lang/String; = "artist_images"

.field public static final ARTIST_IMAGE_LANDSCAPE_ORIENTATION:I = 0x1

.field public static final ARTIST_IMAGE_PORTRAIT_ORIENTATION:I = 0x0

.field private static final USE_IMAGE_DIMENSIONS:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeArtistArt(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3

    .line 159
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 160
    iput-object p3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 p3, 0x1

    .line 161
    iput p3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    if-lez p2, :cond_1

    .line 165
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 166
    iput-boolean p3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 167
    iput p3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-nez p1, :cond_0

    .line 169
    iget p1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v1, p1

    int-to-double p1, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 172
    :cond_0
    iget p1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v1, p1

    int-to-double p1, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 177
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static getArtistArtFolderName()Ljava/lang/String;
    .locals 1

    const-string v0, "artist_images"

    return-object v0
.end method

.method public static getArtistArtUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 202
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 205
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Artists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static getArtistImagePath(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8

    .line 55
    invoke-static {p0}, Lcom/sonyericsson/music/common/ArtistImageUtils;->isMediaReady(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    return-object v1

    .line 71
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 73
    invoke-static {v2, p1, p2}, Lcom/sonyericsson/music/common/DBUtils;->getArtistName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 76
    invoke-static {p0}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistArtUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 81
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_2

    .line 82
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "art_path"

    .line 85
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 84
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p0, :cond_4

    .line 89
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_3
    throw p1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public static getArtistShortcutImage(Landroid/content/Context;JI)Landroid/graphics/Bitmap;
    .locals 0

    .line 135
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistImagePath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    .line 139
    invoke-static {p0, p2, p3, p1}, Lcom/sonyericsson/music/common/ArtistImageUtils;->decodeArtistArt(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getNumberOfArtistArts(Landroid/content/Context;)I
    .locals 8

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 110
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Artists;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p0

    :cond_1
    if-eqz v1, :cond_3

    .line 118
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_2
    throw p0

    :catch_0
    nop

    if-eqz v1, :cond_3

    goto :goto_0

    :catch_1
    nop

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static isMediaReady(Landroid/content/Context;)Z
    .locals 1

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 194
    :cond_0
    invoke-static {}, Lcom/sonyericsson/music/common/MusicUtils;->isExternalStorageMounted()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
