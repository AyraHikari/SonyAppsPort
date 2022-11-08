.class final Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;
.super Lcom/google/protobuf/CodedOutputStream;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeDirectNioEncoder"
.end annotation


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final initialPosition:I

.field private final originalBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1559
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream;-><init>(Lcom/google/protobuf/CodedOutputStream$1;)V

    .line 1560
    iput-object p1, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->originalBuffer:Ljava/nio/ByteBuffer;

    .line 1561
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    .line 1562
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->initialPosition:I

    .line 1563
    return-void
.end method

.method private encode(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1865
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/google/protobuf/Utf8;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1868
    nop

    .line 1869
    return-void

    .line 1866
    :catch_0
    move-exception v0

    .line 1867
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public flush()V
    .locals 2

    .line 1850
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->originalBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1851
    return-void
.end method

.method public getTotalBytesWritten()I
    .locals 2

    .line 1860
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->initialPosition:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public spaceLeft()I
    .locals 1

    .line 1855
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public write(B)V
    .locals 2
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1684
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1687
    nop

    .line 1688
    return-void

    .line 1685
    :catch_0
    move-exception v0

    .line 1686
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1794
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1797
    nop

    .line 1798
    return-void

    .line 1795
    :catch_0
    move-exception v0

    .line 1796
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write([BII)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1778
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1783
    nop

    .line 1784
    return-void

    .line 1781
    :catch_0
    move-exception v0

    .line 1782
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1779
    .end local v0    # "e":Ljava/nio/BufferOverflowException;
    :catch_1
    move-exception v0

    .line 1780
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeBool(IZ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1602
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1603
    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->write(B)V

    .line 1604
    return-void
.end method

.method public writeByteArray(I[B)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1620
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeByteArray(I[BII)V

    .line 1621
    return-void
.end method

.method public writeByteArray(I[BII)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1627
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1628
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeByteArrayNoTag([BII)V

    .line 1629
    return-void
.end method

.method public writeByteArrayNoTag([BII)V
    .locals 0
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1698
    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1699
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->write([BII)V

    .line 1700
    return-void
.end method

.method public writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1633
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1634
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1635
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    .line 1636
    return-void
.end method

.method public writeBytes(ILcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1614
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1615
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    .line 1616
    return-void
.end method

.method public writeBytesNoTag(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1692
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1693
    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/ByteOutput;)V

    .line 1694
    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1584
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1585
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeFixed32NoTag(I)V

    .line 1586
    return-void
.end method

.method public writeFixed32NoTag(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1743
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1746
    nop

    .line 1747
    return-void

    .line 1744
    :catch_0
    move-exception v0

    .line 1745
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeFixed64(IJ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1596
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1597
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeFixed64NoTag(J)V

    .line 1598
    return-void
.end method

.method public writeFixed64NoTag(J)V
    .locals 2
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1769
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1772
    nop

    .line 1773
    return-void

    .line 1770
    :catch_0
    move-exception v0

    .line 1771
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1572
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1573
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeInt32NoTag(I)V

    .line 1574
    return-void
.end method

.method public writeInt32NoTag(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1715
    if-ltz p1, :cond_0

    .line 1716
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    goto :goto_0

    .line 1719
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt64NoTag(J)V

    .line 1721
    :goto_0
    return-void
.end method

.method public writeLazy(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1802
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 1803
    return-void
.end method

.method public writeLazy([BII)V
    .locals 0
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1788
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->write([BII)V

    .line 1789
    return-void
.end method

.method public writeMessage(ILcom/google/protobuf/MessageLite;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1640
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1641
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V

    .line 1642
    return-void
.end method

.method writeMessage(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/MessageLite;
    .param p3, "schema"    # Lcom/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1647
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1648
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeMessageNoTag(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)V

    .line 1649
    return-void
.end method

.method public writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1671
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1672
    invoke-interface {p1, p0}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1673
    return-void
.end method

.method writeMessageNoTag(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/MessageLite;
    .param p2, "schema"    # Lcom/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1677
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/AbstractMessageLite;

    invoke-virtual {v0, p2}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1678
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->wrapper:Lcom/google/protobuf/CodedOutputStreamWriter;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 1679
    return-void
.end method

.method public writeMessageSetExtension(ILcom/google/protobuf/MessageLite;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1654
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1655
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32(II)V

    .line 1656
    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1657
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1658
    return-void
.end method

.method public writeRawBytes(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1704
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1705
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->write([BII)V

    goto :goto_0

    .line 1707
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1708
    .local v0, "duplicated":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1709
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 1711
    .end local v0    # "duplicated":Ljava/nio/ByteBuffer;
    :goto_0
    return-void
.end method

.method public writeRawMessageSetExtension(ILcom/google/protobuf/ByteString;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1663
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1664
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32(II)V

    .line 1665
    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1666
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1667
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1608
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1609
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeStringNoTag(Ljava/lang/String;)V

    .line 1610
    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1807
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1811
    .local v0, "startPos":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 1812
    .local v1, "maxEncodedSize":I
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    .line 1813
    .local v2, "maxLengthVarIntSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->computeUInt32SizeNoTag(I)I

    move-result v3

    .line 1814
    .local v3, "minLengthVarIntSize":I
    if-ne v3, v2, :cond_0

    .line 1817
    iget-object v4, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    .line 1818
    .local v4, "startOfBytes":I
    iget-object v5, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1821
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->encode(Ljava/lang/String;)V

    .line 1824
    iget-object v5, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 1825
    .local v5, "endOfBytes":I
    iget-object v6, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1826
    sub-int v6, v5, v4

    invoke-virtual {p0, v6}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1829
    iget-object v6, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1830
    nop

    .end local v4    # "startOfBytes":I
    .end local v5    # "endOfBytes":I
    goto :goto_0

    .line 1831
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1832
    .local v4, "length":I
    invoke-virtual {p0, v4}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1833
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->encode(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1841
    .end local v1    # "maxEncodedSize":I
    .end local v2    # "maxLengthVarIntSize":I
    .end local v3    # "minLengthVarIntSize":I
    .end local v4    # "length":I
    :catch_0
    move-exception v1

    .line 1843
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v2, v1}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1835
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1837
    .local v1, "e":Lcom/google/protobuf/Utf8$UnpairedSurrogateException;
    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1840
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/google/protobuf/Utf8$UnpairedSurrogateException;)V

    .line 1844
    .end local v1    # "e":Lcom/google/protobuf/Utf8$UnpairedSurrogateException;
    :goto_0
    nop

    .line 1845
    return-void
.end method

.method public writeTag(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1567
    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1568
    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1578
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1579
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt32NoTag(I)V

    .line 1580
    return-void
.end method

.method public writeUInt32NoTag(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1727
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1728
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1729
    return-void

    .line 1731
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1732
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 1735
    :catch_0
    move-exception v0

    .line 1736
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeUInt64(IJ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1590
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeTag(II)V

    .line 1591
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->writeUInt64NoTag(J)V

    .line 1592
    return-void
.end method

.method public writeUInt64NoTag(J)V
    .locals 4
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1753
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1754
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1755
    return-void

    .line 1757
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->buffer:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1758
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    .line 1761
    :catch_0
    move-exception v0

    .line 1762
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
