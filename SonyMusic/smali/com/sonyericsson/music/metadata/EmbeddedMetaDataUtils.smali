.class public Lcom/sonyericsson/music/metadata/EmbeddedMetaDataUtils;
.super Ljava/lang/Object;
.source "EmbeddedMetaDataUtils.java"


# static fields
.field private static mImageSize:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndSaveAlbumArtFromUri(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 10

    .line 110
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_Q_API:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 111
    :cond_0
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 116
    :try_start_0
    sget v0, Lcom/sonyericsson/music/metadata/EmbeddedMetaDataUtils;->mImageSize:I

    if-gtz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 118
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/sonyericsson/music/metadata/EmbeddedMetaDataUtils;->mImageSize:I

    .line 120
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "_id"

    const/4 v9, 0x0

    aput-object v5, v4, v9

    const-string v5, "_data= ?"

    new-array v6, v0, [Ljava/lang/String;

    aput-object p1, v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_2

    .line 123
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v2, "external"

    .line 125
    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Landroid/util/Size;

    sget v4, Lcom/sonyericsson/music/metadata/EmbeddedMetaDataUtils;->mImageSize:I

    sget v5, Lcom/sonyericsson/music/metadata/EmbeddedMetaDataUtils;->mImageSize:I

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 130
    invoke-static {}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {p0, v2}, Lcom/sonyericsson/music/common/FileUtils;->ensurePathAndGetFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 133
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 135
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 136
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :catch_1
    nop

    goto :goto_3

    :catch_2
    nop

    goto :goto_4

    :catch_3
    nop

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_4
    move-object v2, v1

    goto :goto_2

    :catch_5
    move-object v2, v1

    goto :goto_3

    :catch_6
    move-object v2, v1

    goto :goto_4

    :catch_7
    move-object v2, v1

    goto :goto_5

    :cond_2
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_3

    .line 165
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_3
    invoke-static {v1}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    throw p0

    :catch_8
    move-object p1, v1

    move-object v2, p1

    :goto_2
    if-eqz p1, :cond_4

    goto :goto_6

    :catch_9
    move-object p1, v1

    move-object v2, p1

    :goto_3
    if-eqz p1, :cond_4

    goto :goto_6

    :catch_a
    move-object p1, v1

    move-object v2, p1

    :goto_4
    if-eqz p1, :cond_4

    goto :goto_6

    :catch_b
    move-object p1, v1

    move-object v2, p1

    :goto_5
    if-eqz p1, :cond_4

    .line 165
    :goto_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_4
    invoke-static {v2}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1
.end method

.method public static getAndSaveEmbeddedAlbumArt(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 63
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 65
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    .line 68
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    invoke-static {}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {p0, v2}, Lcom/sonyericsson/music/common/FileUtils;->ensurePathAndGetFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 76
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :cond_0
    move-object p0, v1

    .line 103
    :goto_0
    invoke-static {v1}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 104
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    move-object v1, p0

    goto :goto_3

    :catchall_1
    move-exception p0

    .line 103
    :goto_1
    invoke-static {v1}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 104
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 105
    throw p0

    :catch_0
    move-object v2, v1

    goto :goto_2

    :catch_1
    move-object v2, v1

    goto :goto_2

    :catch_2
    move-object v2, v1

    goto :goto_2

    :catch_3
    move-object v2, v1

    .line 103
    :catch_4
    :goto_2
    invoke-static {v2}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 104
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :goto_3
    return-object v1
.end method

.method public static getEmbeddedAlbumArt(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 43
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 45
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    .line 47
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    .line 50
    array-length v3, p0

    invoke-static {p0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    .line 57
    :catch_0
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 58
    throw p0

    :goto_0
    return-object v1
.end method
