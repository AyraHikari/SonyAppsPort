.class final Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;
.super Lcom/google/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeDirectNioDecoder"
.end annotation


# instance fields
.field private final address:J

.field private final buffer:Ljava/nio/ByteBuffer;

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private enableAliasing:Z

.field private final immutable:Z

.field private lastTag:I

.field private limit:J

.field private pos:J

.field private startPos:J


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "immutable"    # Z

    .line 1319
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream;-><init>(Lcom/google/protobuf/CodedInputStream$1;)V

    .line 1313
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1320
    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    .line 1321
    invoke-static {p1}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    .line 1322
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    .line 1323
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1324
    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    .line 1325
    iput-boolean p2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    .line 1326
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;ZLcom/google/protobuf/CodedInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/google/protobuf/CodedInputStream$1;

    .line 1278
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method private bufferPos(J)I
    .locals 2
    .param p1, "pos"    # J

    .line 2003
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method static isSupported()Z
    .locals 1

    .line 1316
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    return v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 5

    .line 1987
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    .line 1988
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 1989
    .local v2, "bufferEnd":I
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    if-le v2, v3, :cond_0

    .line 1991
    sub-int v3, v2, v3

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    .line 1992
    int-to-long v3, v3

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    goto :goto_0

    .line 1994
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    .line 1996
    :goto_0
    return-void
.end method

.method private remaining()I
    .locals 4

    .line 1999
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private skipRawVarint()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1748
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 1749
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarintFastPath()V

    goto :goto_0

    .line 1751
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarintSlowPath()V

    .line 1753
    :goto_0
    return-void
.end method

.method private skipRawVarintFastPath()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1756
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1757
    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-ltz v1, :cond_0

    .line 1758
    return-void

    .line 1756
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1761
    .end local v0    # "i":I
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private skipRawVarintSlowPath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1765
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1766
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_0

    .line 1767
    return-void

    .line 1765
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1770
    .end local v0    # "i":I
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private slice(JJ)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2007
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2008
    .local v0, "prevPos":I
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 2010
    .local v1, "prevLimit":I
    :try_start_0
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2011
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p3, p4}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2012
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2016
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2017
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2012
    return-object v2

    .line 2016
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 2013
    :catch_0
    move-exception v2

    .line 2014
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "prevPos":I
    .end local v1    # "prevLimit":I
    .end local p0    # "this":Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;
    .end local p1    # "begin":J
    .end local p3    # "end":J
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2016
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "prevPos":I
    .restart local v1    # "prevLimit":I
    .restart local p0    # "this":Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;
    .restart local p1    # "begin":J
    .restart local p3    # "end":J
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2017
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2018
    throw v2
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1346
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    if-ne v0, p1, :cond_0

    .line 1349
    return-void

    .line 1347
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public enableAliasing(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1894
    iput-boolean p1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    .line 1895
    return-void
.end method

.method public getBytesUntilLimit()I
    .locals 2

    .line 1927
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 1928
    const/4 v0, -0x1

    return v0

    .line 1931
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLastTag()I
    .locals 1

    .line 1353
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .locals 4

    .line 1941
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isAtEnd()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1936
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public popLimit(I)V
    .locals 0
    .param p1, "oldLimit"    # I

    .line 1921
    iput p1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1922
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recomputeBufferSizeAfterLimit()V

    .line 1923
    return-void
.end method

.method public pushLimit(I)I
    .locals 2
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1904
    if-ltz p1, :cond_1

    .line 1907
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getTotalBytesRead()I

    move-result v0

    add-int/2addr p1, v0

    .line 1908
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1909
    .local v0, "oldLimit":I
    if-gt p1, v0, :cond_0

    .line 1912
    iput p1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1914
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recomputeBufferSizeAfterLimit()V

    .line 1916
    return v0

    .line 1910
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1905
    .end local v0    # "oldLimit":I
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readBool()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1494
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByteArray()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1640
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1645
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1646
    .local v0, "size":I
    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1650
    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    if-eqz v1, :cond_0

    .line 1651
    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v3, v0

    add-long/2addr v3, v1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1652
    .local v1, "result":Ljava/nio/ByteBuffer;
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1653
    return-object v1

    .line 1656
    .end local v1    # "result":Ljava/nio/ByteBuffer;
    :cond_0
    new-array v1, v0, [B

    .line 1657
    .local v1, "bytes":[B
    iget-wide v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v7, 0x0

    int-to-long v9, v0

    move-object v6, v1

    invoke-static/range {v4 .. v10}, Lcom/google/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 1658
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1659
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2

    .line 1664
    .end local v1    # "bytes":[B
    :cond_1
    if-nez v0, :cond_2

    .line 1665
    sget-object v1, Lcom/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v1

    .line 1667
    :cond_2
    if-gez v0, :cond_3

    .line 1668
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1670
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1614
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1615
    .local v0, "size":I
    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1616
    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    if-eqz v1, :cond_0

    .line 1617
    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v3, v0

    add-long/2addr v3, v1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1618
    .local v1, "result":Ljava/nio/ByteBuffer;
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1619
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    return-object v2

    .line 1622
    .end local v1    # "result":Ljava/nio/ByteBuffer;
    :cond_0
    new-array v1, v0, [B

    .line 1623
    .local v1, "bytes":[B
    iget-wide v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v6, 0x0

    int-to-long v8, v0

    move-object v5, v1

    invoke-static/range {v3 .. v9}, Lcom/google/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 1624
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1625
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    return-object v2

    .line 1629
    .end local v1    # "bytes":[B
    :cond_1
    if-nez v0, :cond_2

    .line 1630
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v1

    .line 1632
    :cond_2
    if-gez v0, :cond_3

    .line 1633
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1635
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1459
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1680
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1489
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1484
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1464
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(I",
            "Lcom/google/protobuf/Parser<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1562
    .local p2, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TT;>;"
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionLimit:I

    if-ge v0, v1, :cond_0

    .line 1565
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1566
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    .line 1567
    .local v0, "result":Lcom/google/protobuf/MessageLite;, "TT;"
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1568
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1569
    return-object v0

    .line 1563
    .end local v0    # "result":Lcom/google/protobuf/MessageLite;, "TT;"
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "builder"    # Lcom/google/protobuf/MessageLite$Builder;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1546
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionLimit:I

    if-ge v0, v1, :cond_0

    .line 1549
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1550
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 1551
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1552
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1553
    return-void

    .line 1547
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1479
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1474
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    .locals 4
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(",
            "Lcom/google/protobuf/Parser<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1599
    .local p1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TT;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1600
    .local v0, "length":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 1603
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pushLimit(I)I

    move-result v1

    .line 1604
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1605
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 1606
    .local v2, "result":Lcom/google/protobuf/MessageLite;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1607
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1608
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->popLimit(I)V

    .line 1609
    return-object v2

    .line 1601
    .end local v1    # "oldLimit":I
    .end local v2    # "result":Lcom/google/protobuf/MessageLite;, "TT;"
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .param p1, "builder"    # Lcom/google/protobuf/MessageLite$Builder;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1583
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1584
    .local v0, "length":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 1587
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pushLimit(I)I

    move-result v1

    .line 1588
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1589
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 1590
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1591
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1592
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->popLimit(I)V

    .line 1593
    return-void

    .line 1585
    .end local v1    # "oldLimit":I
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readRawByte()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1946
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1949
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    return v0

    .line 1947
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readRawBytes(I)[B
    .locals 5
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1954
    if-ltz p1, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 1955
    new-array v0, p1, [B

    .line 1956
    .local v0, "bytes":[B
    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v3, p1

    add-long/2addr v3, v1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1957
    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1958
    return-object v0

    .line 1961
    .end local v0    # "bytes":[B
    :cond_0
    if-gtz p1, :cond_2

    .line 1962
    if-nez p1, :cond_1

    .line 1963
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 1965
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1969
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readRawLittleEndian32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1860
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1862
    .local v0, "tempPos":J
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 1866
    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1867
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    .line 1868
    invoke-static {v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    .line 1869
    invoke-static {v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v3, v0

    .line 1870
    invoke-static {v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    .line 1867
    return v2

    .line 1863
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public readRawLittleEndian64()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1875
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1877
    .local v0, "tempPos":J
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 1881
    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1882
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    .line 1883
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    .line 1884
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    .line 1885
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x4

    add-long/2addr v6, v0

    .line 1886
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x5

    add-long/2addr v6, v0

    .line 1887
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x6

    add-long/2addr v6, v0

    .line 1888
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x7

    add-long/2addr v6, v0

    .line 1889
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 1882
    return-wide v2

    .line 1878
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public readRawVarint32()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1710
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1712
    .local v0, "tempPos":J
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 1713
    goto/16 :goto_0

    .line 1717
    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .end local v0    # "tempPos":J
    .local v4, "tempPos":J
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    move v1, v0

    .local v1, "x":I
    if-ltz v0, :cond_1

    .line 1718
    iput-wide v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1719
    return v1

    .line 1720
    :cond_1
    iget-wide v6, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v0, v6, v8

    if-gez v0, :cond_2

    .line 1721
    goto/16 :goto_0

    .line 1722
    :cond_2
    add-long v6, v4, v2

    .end local v4    # "tempPos":J
    .local v6, "tempPos":J
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x7

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_3

    .line 1723
    xor-int/lit8 v0, v1, -0x80

    .end local v1    # "x":I
    .local v0, "x":I
    goto/16 :goto_1

    .line 1724
    .end local v0    # "x":I
    .restart local v1    # "x":I
    :cond_3
    add-long v4, v6, v2

    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v1

    move v1, v0

    if-ltz v0, :cond_4

    .line 1725
    xor-int/lit16 v0, v1, 0x3f80

    move-wide v6, v4

    .end local v1    # "x":I
    .restart local v0    # "x":I
    goto/16 :goto_1

    .line 1726
    .end local v0    # "x":I
    .restart local v1    # "x":I
    :cond_4
    add-long v6, v4, v2

    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x15

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_5

    .line 1727
    const v0, -0x1fc080

    xor-int/2addr v0, v1

    .end local v1    # "x":I
    .restart local v0    # "x":I
    goto :goto_1

    .line 1729
    .end local v0    # "x":I
    .restart local v1    # "x":I
    :cond_5
    add-long v4, v6, v2

    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    .line 1730
    .local v0, "y":I
    shl-int/lit8 v6, v0, 0x1c

    xor-int/2addr v1, v6

    .line 1731
    const v6, 0xfe03f80

    xor-int/2addr v1, v6

    .line 1732
    if-gez v0, :cond_b

    add-long v6, v4, v2

    .line 1733
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    if-gez v4, :cond_a

    add-long v4, v6, v2

    .line 1734
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    if-gez v6, :cond_9

    add-long v6, v4, v2

    .line 1735
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    if-gez v4, :cond_8

    add-long v4, v6, v2

    .line 1736
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    if-gez v6, :cond_7

    add-long v6, v4, v2

    .line 1737
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    if-gez v2, :cond_6

    .line 1738
    nop

    .line 1744
    .end local v0    # "y":I
    .end local v1    # "x":I
    .end local v6    # "tempPos":J
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 1737
    .restart local v0    # "y":I
    .restart local v1    # "x":I
    .restart local v6    # "tempPos":J
    :cond_6
    move v0, v1

    goto :goto_1

    .line 1736
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    :cond_7
    move v0, v1

    move-wide v6, v4

    goto :goto_1

    .line 1735
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    :cond_8
    move v0, v1

    goto :goto_1

    .line 1734
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    :cond_9
    move v0, v1

    move-wide v6, v4

    goto :goto_1

    .line 1733
    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    :cond_a
    move v0, v1

    goto :goto_1

    .line 1732
    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    :cond_b
    move v0, v1

    move-wide v6, v4

    .line 1741
    .end local v1    # "x":I
    .end local v4    # "tempPos":J
    .local v0, "x":I
    .restart local v6    # "tempPos":J
    :goto_1
    iput-wide v6, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1742
    return v0
.end method

.method public readRawVarint64()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1788
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1790
    .local v0, "tempPos":J
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 1791
    goto/16 :goto_0

    .line 1796
    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .end local v0    # "tempPos":J
    .local v4, "tempPos":J
    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    move v1, v0

    .local v1, "y":I
    if-ltz v0, :cond_1

    .line 1797
    iput-wide v4, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1798
    int-to-long v2, v1

    return-wide v2

    .line 1799
    :cond_1
    iget-wide v6, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v0, v6, v8

    if-gez v0, :cond_2

    .line 1800
    goto/16 :goto_0

    .line 1801
    :cond_2
    add-long v6, v4, v2

    .end local v4    # "tempPos":J
    .local v6, "tempPos":J
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x7

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_3

    .line 1802
    xor-int/lit8 v0, v1, -0x80

    int-to-long v2, v0

    .local v2, "x":J
    goto/16 :goto_1

    .line 1803
    .end local v2    # "x":J
    :cond_3
    add-long v4, v6, v2

    .end local v6    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v1

    move v1, v0

    if-ltz v0, :cond_4

    .line 1804
    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    move-wide v6, v4

    .restart local v2    # "x":J
    goto/16 :goto_1

    .line 1805
    .end local v2    # "x":J
    :cond_4
    add-long v6, v4, v2

    .end local v4    # "tempPos":J
    .restart local v6    # "tempPos":J
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x15

    xor-int/2addr v0, v1

    move v1, v0

    if-gez v0, :cond_5

    .line 1806
    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v2, v0

    .restart local v2    # "x":J
    goto/16 :goto_1

    .line 1807
    .end local v2    # "x":J
    :cond_5
    int-to-long v4, v1

    add-long v8, v6, v2

    .end local v6    # "tempPos":J
    .local v8, "tempPos":J
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x1c

    shl-long/2addr v6, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    .local v6, "x":J
    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-ltz v0, :cond_6

    .line 1808
    const-wide/32 v2, 0xfe03f80

    xor-long/2addr v2, v6

    move-wide v6, v8

    .end local v6    # "x":J
    .restart local v2    # "x":J
    goto/16 :goto_1

    .line 1809
    .end local v2    # "x":J
    .restart local v6    # "x":J
    :cond_6
    add-long v4, v8, v2

    .end local v8    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v8, v0

    const/16 v0, 0x23

    shl-long/2addr v8, v0

    xor-long/2addr v8, v6

    move-wide v6, v8

    cmp-long v0, v8, v10

    if-gez v0, :cond_7

    .line 1810
    const-wide v2, -0x7f01fc080L

    xor-long/2addr v2, v6

    move-wide v6, v4

    .end local v6    # "x":J
    .restart local v2    # "x":J
    goto :goto_1

    .line 1811
    .end local v2    # "x":J
    .restart local v6    # "x":J
    :cond_7
    add-long v8, v4, v2

    .end local v4    # "tempPos":J
    .restart local v8    # "tempPos":J
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v4, v0

    const/16 v0, 0x2a

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v0, v4, v10

    if-ltz v0, :cond_8

    .line 1812
    const-wide v2, 0x3f80fe03f80L

    xor-long/2addr v2, v6

    move-wide v6, v8

    .end local v6    # "x":J
    .restart local v2    # "x":J
    goto :goto_1

    .line 1813
    .end local v2    # "x":J
    .restart local v6    # "x":J
    :cond_8
    add-long v4, v8, v2

    .end local v8    # "tempPos":J
    .restart local v4    # "tempPos":J
    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v8, v0

    const/16 v0, 0x31

    shl-long/2addr v8, v0

    xor-long/2addr v8, v6

    move-wide v6, v8

    cmp-long v0, v8, v10

    if-gez v0, :cond_9

    .line 1814
    const-wide v2, -0x1fc07f01fc080L

    xor-long/2addr v2, v6

    move-wide v6, v4

    .end local v6    # "x":J
    .restart local v2    # "x":J
    goto :goto_1

    .line 1823
    .end local v2    # "x":J
    .restart local v6    # "x":J
    :cond_9
    add-long v8, v4, v2

    .end local v4    # "tempPos":J
    .restart local v8    # "tempPos":J
    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    .line 1824
    .end local v6    # "x":J
    .local v4, "x":J
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v4, v6

    .line 1833
    cmp-long v0, v4, v10

    if-gez v0, :cond_b

    .line 1834
    add-long v6, v8, v2

    .end local v8    # "tempPos":J
    .local v6, "tempPos":J
    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, v10

    if-gez v0, :cond_a

    .line 1835
    nop

    .line 1842
    .end local v1    # "y":I
    .end local v4    # "x":J
    .end local v6    # "tempPos":J
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    .line 1834
    .restart local v1    # "y":I
    .restart local v4    # "x":J
    .restart local v6    # "tempPos":J
    :cond_a
    move-wide v2, v4

    goto :goto_1

    .line 1833
    .end local v6    # "tempPos":J
    .restart local v8    # "tempPos":J
    :cond_b
    move-wide v2, v4

    move-wide v6, v8

    .line 1839
    .end local v4    # "x":J
    .end local v8    # "tempPos":J
    .restart local v2    # "x":J
    .restart local v6    # "tempPos":J
    :goto_1
    iput-wide v6, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1840
    return-wide v2
.end method

.method readRawVarint64SlowPath()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1847
    const-wide/16 v0, 0x0

    .line 1848
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "shift":I
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 1849
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawByte()B

    move-result v3

    .line 1850
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 1851
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_0

    .line 1852
    return-wide v0

    .line 1848
    .end local v3    # "b":B
    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 1855
    .end local v2    # "shift":I
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1685
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1690
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1695
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1700
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1499
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1500
    .local v0, "size":I
    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1505
    new-array v1, v0, [B

    .line 1506
    .local v1, "bytes":[B
    iget-wide v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v5, 0x0

    int-to-long v7, v0

    move-object v4, v1

    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 1507
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1508
    .local v2, "result":Ljava/lang/String;
    iget-wide v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1509
    return-object v2

    .line 1512
    .end local v1    # "bytes":[B
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 1513
    const-string v1, ""

    return-object v1

    .line 1515
    :cond_1
    if-gez v0, :cond_2

    .line 1516
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1518
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1523
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1524
    .local v0, "size":I
    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1525
    iget-wide v1, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-direct {p0, v1, v2}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result v1

    .line 1526
    .local v1, "bufferPos":I
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v2

    .line 1527
    .local v2, "result":Ljava/lang/String;
    iget-wide v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1528
    return-object v2

    .line 1531
    .end local v1    # "bufferPos":I
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 1532
    const-string v1, ""

    return-object v1

    .line 1534
    :cond_1
    if-gtz v0, :cond_2

    .line 1535
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1537
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1330
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    .line 1332
    return v0

    .line 1335
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    .line 1336
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1341
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    return v0

    .line 1339
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1675
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1469
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnknownGroup(ILcom/google/protobuf/MessageLite$Builder;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "builder"    # Lcom/google/protobuf/MessageLite$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1576
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1577
    return-void
.end method

.method public resetSizeCounter()V
    .locals 2

    .line 1899
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    .line 1900
    return-void
.end method

.method public skipField(I)Z
    .locals 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1358
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1379
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1376
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    .line 1377
    return v2

    .line 1374
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 1369
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipMessage()V

    .line 1370
    nop

    .line 1371
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    invoke-static {v0, v1}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 1370
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1372
    return v2

    .line 1366
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    .line 1367
    return v2

    .line 1363
    :pswitch_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    .line 1364
    return v2

    .line 1360
    :pswitch_5
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarint()V

    .line 1361
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public skipField(ILcom/google/protobuf/CodedOutputStream;)Z
    .locals 4
    .param p1, "tag"    # I
    .param p2, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1385
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1430
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1424
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 1425
    .local v0, "value":I
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1426
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 1427
    return v1

    .line 1420
    .end local v0    # "value":I
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 1409
    :pswitch_2
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1410
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipMessage(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1411
    nop

    .line 1413
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    const/4 v2, 0x4

    .line 1412
    invoke-static {v0, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 1414
    .local v0, "endtag":I
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1415
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1416
    return v1

    .line 1402
    .end local v0    # "endtag":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1403
    .local v0, "value":Lcom/google/protobuf/ByteString;
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1404
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    .line 1405
    return v1

    .line 1395
    .end local v0    # "value":Lcom/google/protobuf/ByteString;
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 1396
    .local v2, "value":J
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1397
    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 1398
    return v1

    .line 1388
    .end local v2    # "value":J
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readInt64()J

    move-result-wide v2

    .line 1389
    .restart local v2    # "value":J
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1390
    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 1391
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public skipMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1437
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readTag()I

    move-result v0

    .line 1438
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1441
    .end local v0    # "tag":I
    :cond_0
    goto :goto_0

    .line 1439
    .restart local v0    # "tag":I
    :cond_1
    :goto_1
    return-void
.end method

.method public skipMessage(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1447
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readTag()I

    move-result v0

    .line 1448
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipField(ILcom/google/protobuf/CodedOutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1451
    .end local v0    # "tag":I
    :cond_0
    goto :goto_0

    .line 1449
    .restart local v0    # "tag":I
    :cond_1
    :goto_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1974
    if-ltz p1, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 1976
    iget-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1977
    return-void

    .line 1980
    :cond_0
    if-gez p1, :cond_1

    .line 1981
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1983
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method
