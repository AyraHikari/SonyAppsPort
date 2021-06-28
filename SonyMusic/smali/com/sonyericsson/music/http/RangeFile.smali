.class public Lcom/sonyericsson/music/http/RangeFile;
.super Ljava/lang/Object;
.source "RangeFile.java"


# instance fields
.field private final mFile:Ljava/io/File;

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;

.field private mTempData:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 21
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sonyericsson/music/http/RangeFile;->mTempData:[B

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/music/http/RangeFile;->mFile:Ljava/io/File;

    return-void
.end method

.method private getTempArray(I)[B
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/music/http/RangeFile;->mTempData:[B

    array-length v0, v0

    :goto_0
    if-ge v0, p1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/http/RangeFile;->mTempData:[B

    array-length p1, p1

    if-le v0, p1, :cond_1

    .line 107
    new-array p1, v0, [B

    iput-object p1, p0, Lcom/sonyericsson/music/http/RangeFile;->mTempData:[B

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/http/RangeFile;->mTempData:[B

    return-object p1
.end method

.method private readFromFile([BJ)I
    .locals 1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/http/RangeFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 79
    iget-object p2, p0, Lcom/sonyericsson/music/http/RangeFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p2, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/http/RangeFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/music/http/RangeFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/sonyericsson/music/http/RangeFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public delete()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/music/http/RangeFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/music/http/RangeFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getFileLength()J
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/music/http/RangeFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRange([BJI)I
    .locals 0

    .line 70
    invoke-direct {p0, p4}, Lcom/sonyericsson/music/http/RangeFile;->getTempArray(I)[B

    move-result-object p4

    .line 71
    invoke-direct {p0, p4, p2, p3}, Lcom/sonyericsson/music/http/RangeFile;->readFromFile([BJ)I

    move-result p2

    const/4 p3, 0x0

    .line 72
    invoke-static {p4, p3, p1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p2
.end method

.method public initRead()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/sonyericsson/music/http/RangeFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 34
    iget-object v0, p0, Lcom/sonyericsson/music/http/RangeFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/sonyericsson/music/http/RangeFile;->mFile:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/music/http/RangeFile;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The RandomAccessFile must not have been initiated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot init read for a file that has negative length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
