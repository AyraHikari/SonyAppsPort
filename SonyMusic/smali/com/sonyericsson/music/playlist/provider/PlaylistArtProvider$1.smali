.class Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider$1;
.super Ljava/lang/Object;
.source "PlaylistArtProvider.java"

# interfaces
.implements Landroid/content/ContentProvider$PipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ContentProvider$PipeDataWriter<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 582
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 583
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 p4, 0x0

    invoke-virtual {p5, p3, p4, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 584
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    .line 585
    array-length p5, p3

    .line 587
    :try_start_0
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :catch_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :goto_0
    if-ge p4, p5, :cond_1

    sub-int p1, p5, p4

    const/16 v0, 0x2000

    if-ge p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 p1, 0x2000

    .line 603
    :goto_1
    :try_start_1
    invoke-virtual {p2, p3, p4, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr p4, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 612
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 619
    :catch_1
    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 625
    :catch_2
    throw p1

    .line 626
    :catch_3
    :goto_2
    throw p1

    .line 612
    :catch_4
    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 619
    :catch_5
    :goto_3
    :try_start_6
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_4

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 625
    :catch_6
    throw p1

    .line 612
    :cond_1
    :try_start_8
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    .line 619
    :try_start_9
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 625
    :catch_7
    throw p1

    :catch_8
    :goto_4
    return-void
.end method

.method public bridge synthetic writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    .line 576
    check-cast p5, Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p5}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtProvider$1;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    return-void
.end method
