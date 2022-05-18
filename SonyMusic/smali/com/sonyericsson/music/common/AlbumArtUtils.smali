.class public Lcom/sonyericsson/music/common/AlbumArtUtils;
.super Ljava/lang/Object;
.source "AlbumArtUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/AlbumArtUtils$ExternalStorageNotMountedException;
    }
.end annotation


# static fields
.field private static final ALBUM_COVER_FOLDER:Ljava/lang/String; = "album_images"

.field private static final DRIVE_ART_FOLDER:Ljava/lang/String; = "drive_images"

.field public static final PLAYLIST_SHORTCUT_ALBUMS:I = 0x4

.field public static final USE_IMAGE_DIMENSIONS:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFolderBitmapUri(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 411
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p3, :cond_2

    .line 416
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/music/common/FolderUtils;->getAudioFilesFromFolder(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    :try_start_1
    const-string p2, "artist"

    const-string p3, "album"

    const-string v1, "album_id"

    .line 419
    invoke-static {p0, p1, p2, p3, v1}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getFolderArtUri(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    nop

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 430
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 432
    :cond_1
    throw p0

    :catch_1
    move-object p1, v0

    :goto_3
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_4
    return-object v0
.end method

.method public static createPlaylistBitmap(Landroid/content/Context;[Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 96
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 98
    array-length v4, v0

    const/4 v5, 0x4

    if-gt v4, v5, :cond_0

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0801e9

    sget-object v8, Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;->FIT:Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

    invoke-static {v6, v7, v1, v1, v8}, Lcom/sonyericsson/music/common/ScalingUtilities;->createScaledBitmap(Landroid/content/res/Resources;IIILcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 104
    invoke-virtual {v3, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    move-object v6, v2

    .line 110
    :goto_0
    div-int/lit8 v7, v1, 0x2

    .line 111
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x6

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v9, 0x1

    if-ne v4, v9, :cond_1

    const/4 v5, 0x1

    :cond_1
    if-ne v5, v9, :cond_2

    move v10, v1

    goto :goto_1

    :cond_2
    move v10, v7

    :goto_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v12, v5, :cond_6

    if-ge v12, v4, :cond_6

    .line 118
    aget-object v14, v0, v12

    .line 119
    invoke-static {v14}, Lcom/sonyericsson/music/common/DBUtils;->isMusicInfoStoreUri(Landroid/net/Uri;)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v15, p0

    .line 120
    invoke-static {v15, v14, v10, v2, v11}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getDecodeArt(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_3

    :cond_3
    move-object/from16 v15, p0

    move-object v14, v2

    :goto_3
    if-ne v5, v9, :cond_4

    move v0, v1

    move v2, v0

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    packed-switch v13, :pswitch_data_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    goto :goto_4

    :pswitch_0
    move v0, v1

    move v2, v0

    move v9, v7

    move v11, v9

    goto :goto_4

    :pswitch_1
    move v0, v1

    move v2, v7

    move v11, v2

    const/4 v9, 0x0

    goto :goto_4

    :pswitch_2
    move v2, v1

    move v0, v7

    move v9, v0

    goto :goto_4

    :pswitch_3
    move v0, v7

    move v2, v0

    const/4 v9, 0x0

    .line 180
    :goto_4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v9, v11, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz v14, :cond_5

    const/4 v0, 0x0

    .line 182
    invoke-virtual {v3, v14, v0, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    .line 184
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-object v2, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v9, 0x1

    const/4 v11, 0x0

    goto :goto_2

    :cond_6
    move-object v0, v2

    if-nez v13, :cond_7

    move-object v2, v0

    goto :goto_6

    :cond_7
    move-object v2, v6

    :goto_6
    move-object v0, v2

    goto :goto_7

    :cond_8
    move-object v0, v2

    :goto_7
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static deleteGoogleDriveArtwork(Landroid/content/Context;)V
    .locals 3

    .line 542
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 544
    invoke-static {}, Lcom/sonyericsson/music/common/MusicUtils;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "drive_images"

    .line 545
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 546
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 549
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 550
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static deleteGoogleDriveArtworkFiles(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 562
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 564
    invoke-static {}, Lcom/sonyericsson/music/common/MusicUtils;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "drive_images"

    .line 565
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 566
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Lcom/sonyericsson/music/common/AlbumArtUtils$1;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/common/AlbumArtUtils$1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 575
    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p0, v0

    .line 576
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getAlbumArtFolderName()Ljava/lang/String;
    .locals 1

    const-string v0, "album_images"

    return-object v0
.end method

.method public static getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "Unknown album"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "unknown_album"

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "<unknown>"

    .line 252
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 254
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "unknown_artist"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Unknown artist"

    .line 255
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "<unknown>"

    .line 256
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz v1, :cond_5

    const-string p0, "<unknown>"

    :cond_5
    if-eqz v0, :cond_6

    const-string p1, "<unknown>"

    .line 260
    :cond_6
    invoke-static {p0, p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Albums;->getContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getDecodeAlbumArt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    .line 279
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    .line 280
    invoke-static {p0, p1, p3, p4, p2}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getDecodeArt(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getDecodeArt(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 303
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v1

    const-string v2, "com.sonyericsson.music.musicinfo"

    .line 304
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 305
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isUriCloudFileType(Landroid/net/Uri;)Z

    move-result v3

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    .line 310
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v0

    .line 315
    :cond_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 316
    iput-object p3, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 p3, 0x1

    .line 317
    iput p3, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_4

    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    .line 321
    :cond_3
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getDecodeOptions(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p3

    .line 322
    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p3, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-double v1, p3

    int-to-double v4, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p3, v1

    iput p3, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_4
    if-eqz p0, :cond_8

    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 332
    :try_start_0
    invoke-virtual {p3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_6

    .line 334
    :try_start_1
    invoke-static {p1, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p4, :cond_5

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 338
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    sget-object p4, Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;->FIT:Lcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;

    .line 337
    invoke-static {p3, p0, p2, p2, p4}, Lcom/sonyericsson/music/common/ScalingUtilities;->createScaledBitmap(Landroid/graphics/Bitmap;Landroid/util/DisplayMetrics;IILcom/sonyericsson/music/common/ScalingUtilities$ScalingLogic;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    goto :goto_0

    :cond_5
    move-object v0, p3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_6
    :goto_0
    if-eqz p1, :cond_8

    .line 355
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    const-string p0, "SemcMusicPlayer"

    const-string p1, "File InputStream close Error."

    .line 358
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_7

    .line 355
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    const-string p1, "SemcMusicPlayer"

    const-string p2, "File InputStream close Error."

    .line 358
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_7
    :goto_3
    throw p0

    :catch_2
    move-object p1, v0

    :catch_3
    if-eqz p1, :cond_8

    goto :goto_1

    :catch_4
    move-object p1, v0

    :catch_5
    if-eqz p1, :cond_8

    goto :goto_1

    :catch_6
    move-object p1, v0

    :catch_7
    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    :goto_4
    return-object v0
.end method

.method private static getDecodeOptions(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .line 207
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 208
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 209
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz p0, :cond_2

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    .line 215
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 217
    :try_start_1
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    .line 232
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    const-string p0, "SemcMusicPlayer"

    const-string p1, "File InputStream close Error."

    .line 236
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_1

    .line 232
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    const-string p0, "SemcMusicPlayer"

    const-string v0, "File InputStream close Error."

    .line 236
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    :goto_3
    throw p1

    :catch_2
    move-object p0, v1

    :catch_3
    if-eqz p0, :cond_2

    goto :goto_1

    :catch_4
    move-object p0, v1

    :catch_5
    if-eqz p0, :cond_2

    goto :goto_1

    :catch_6
    move-object p0, v1

    :catch_7
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_4
    return-object v0
.end method

.method public static getFolderArtUri(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 451
    invoke-static {p1, p2, p3, p4}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getUnique2by2Images(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 454
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_0

    .line 455
    invoke-static {p0, p1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$PlaylistArt;->getPlaylistArtUri(Landroid/content/Context;Ljava/util/List;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getUnique2by2Images(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    .line 468
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 469
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 470
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 471
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    .line 472
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 474
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 475
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 476
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 477
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 478
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    :cond_1
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-nez v3, :cond_3

    .line 486
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    return-object v0
.end method

.method public static saveGoogleDriveArtwork(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/music/common/AlbumArtUtils$ExternalStorageNotMountedException;
        }
    .end annotation

    .line 506
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 508
    invoke-static {}, Lcom/sonyericsson/music/common/MusicUtils;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "drive_images"

    .line 509
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-static {v0}, Lcom/sonyericsson/music/common/FileUtils;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 522
    array-length v0, p2

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 524
    invoke-static {p2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "drive_images"

    .line 526
    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/music/common/FileUtils;->storeImageToExternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 512
    :cond_2
    new-instance p0, Lcom/sonyericsson/music/common/AlbumArtUtils$ExternalStorageNotMountedException;

    invoke-direct {p0}, Lcom/sonyericsson/music/common/AlbumArtUtils$ExternalStorageNotMountedException;-><init>()V

    throw p0

    .line 532
    :cond_3
    new-instance p0, Lcom/sonyericsson/music/common/AlbumArtUtils$ExternalStorageNotMountedException;

    invoke-direct {p0}, Lcom/sonyericsson/music/common/AlbumArtUtils$ExternalStorageNotMountedException;-><init>()V

    throw p0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p0, :cond_1

    .line 376
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 377
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 383
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_0

    .line 386
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 388
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
