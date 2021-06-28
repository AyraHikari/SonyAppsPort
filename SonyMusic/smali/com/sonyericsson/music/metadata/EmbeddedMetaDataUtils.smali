.class public Lcom/sonyericsson/music/metadata/EmbeddedMetaDataUtils;
.super Ljava/lang/Object;
.source "EmbeddedMetaDataUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndSaveEmbeddedAlbumArt(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 50
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 52
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    .line 55
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    invoke-static {}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {p0, v2}, Lcom/sonyericsson/music/common/FileUtils;->ensurePathAndGetFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 63
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
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

    .line 90
    :goto_0
    invoke-static {v1}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    move-object v1, p0

    goto :goto_3

    :catchall_1
    move-exception p0

    .line 90
    :goto_1
    invoke-static {v1}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 92
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

    .line 90
    :catch_4
    :goto_2
    invoke-static {v2}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :goto_3
    return-object v1
.end method

.method public static getEmbeddedAlbumArt(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 30
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 32
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    .line 34
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    .line 37
    array-length v3, p0

    invoke-static {p0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    .line 44
    :catch_0
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 45
    throw p0

    :goto_0
    return-object v1
.end method
