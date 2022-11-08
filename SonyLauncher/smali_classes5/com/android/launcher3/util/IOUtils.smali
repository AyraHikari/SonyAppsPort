.class public Lcom/android/launcher3/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final BUF_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "IOUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .line 68
    if-eqz p0, :cond_0

    .line 70
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 77
    :cond_0
    :goto_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 7
    .param p0, "from"    # Ljava/io/InputStream;
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0

    .line 57
    :cond_0
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 58
    .local v0, "buf":[B
    const-wide/16 v1, 0x0

    .line 60
    .local v1, "total":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "r":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 61
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 62
    int-to-long v5, v4

    add-long/2addr v1, v5

    goto :goto_0

    .line 64
    :cond_1
    return-wide v1
.end method

.method public static toByteArray(Ljava/io/File;)[B
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 43
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 43
    return-object v1

    .line 42
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/android/launcher3/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 50
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
