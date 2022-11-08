.class Lcom/google/protobuf/ByteString$LiteralByteString;
.super Lcom/google/protobuf/ByteString$LeafByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiteralByteString"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final bytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .line 1294
    invoke-direct {p0}, Lcom/google/protobuf/ByteString$LeafByteString;-><init>()V

    .line 1295
    if-eqz p1, :cond_0

    .line 1298
    iput-object p1, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1299
    return-void

    .line 1296
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1352
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asReadOnlyByteBufferList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1357
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public byteAt(I)B
    .locals 1
    .param p1, "index"    # I

    .line 1306
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final copyTo(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "target"    # Ljava/nio/ByteBuffer;

    .line 1347
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1348
    return-void
.end method

.method protected copyToInternal([BIII)V
    .locals 1
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "numberToCopy"    # I

    .line 1342
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1343
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 1401
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 1402
    return v0

    .line 1404
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1405
    return v2

    .line 1408
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    .line 1409
    return v2

    .line 1411
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 1412
    return v0

    .line 1415
    :cond_3
    instance-of v0, p1, Lcom/google/protobuf/ByteString$LiteralByteString;

    if-eqz v0, :cond_5

    .line 1416
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 1419
    .local v0, "otherAsLiteral":Lcom/google/protobuf/ByteString$LiteralByteString;
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->peekCachedHashCode()I

    move-result v1

    .line 1420
    .local v1, "thisHash":I
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString$LiteralByteString;->peekCachedHashCode()I

    move-result v3

    .line 1421
    .local v3, "thatHash":I
    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    if-eq v1, v3, :cond_4

    .line 1422
    return v2

    .line 1425
    :cond_4
    move-object v4, p1

    check-cast v4, Lcom/google/protobuf/ByteString$LiteralByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v5

    invoke-virtual {p0, v4, v2, v5}, Lcom/google/protobuf/ByteString$LiteralByteString;->equalsRange(Lcom/google/protobuf/ByteString;II)Z

    move-result v2

    return v2

    .line 1428
    .end local v0    # "otherAsLiteral":Lcom/google/protobuf/ByteString$LiteralByteString;
    .end local v1    # "thisHash":I
    .end local v3    # "thatHash":I
    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final equalsRange(Lcom/google/protobuf/ByteString;II)Z
    .locals 9
    .param p1, "other"    # Lcom/google/protobuf/ByteString;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1443
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    if-gt p3, v0, :cond_4

    .line 1446
    add-int v0, p2, p3

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 1451
    instance-of v0, p1, Lcom/google/protobuf/ByteString$LiteralByteString;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1452
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 1453
    .local v0, "lbsOther":Lcom/google/protobuf/ByteString$LiteralByteString;
    iget-object v2, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1454
    .local v2, "thisBytes":[B
    iget-object v3, v0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1455
    .local v3, "otherBytes":[B
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v4

    add-int/2addr v4, p3

    .line 1456
    .local v4, "thisLimit":I
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v5

    .line 1457
    .local v5, "thisIndex":I
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v6

    add-int/2addr v6, p2

    .line 1458
    .local v6, "otherIndex":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 1460
    aget-byte v7, v2, v5

    aget-byte v8, v3, v6

    if-eq v7, v8, :cond_0

    .line 1461
    return v1

    .line 1459
    :cond_0
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1464
    .end local v5    # "thisIndex":I
    .end local v6    # "otherIndex":I
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 1467
    .end local v0    # "lbsOther":Lcom/google/protobuf/ByteString$LiteralByteString;
    .end local v2    # "thisBytes":[B
    .end local v3    # "otherBytes":[B
    .end local v4    # "thisLimit":I
    :cond_2
    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v1, p3}, Lcom/google/protobuf/ByteString$LiteralByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1447
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1448
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1444
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getOffsetIntoBytes()I
    .locals 1

    .line 1500
    const/4 v0, 0x0

    return v0
.end method

.method internalByteAt(I)B
    .locals 1
    .param p1, "index"    # I

    .line 1311
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final isValidUtf8()Z
    .locals 3

    .line 1386
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    .line 1387
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v1

    return v1
.end method

.method public final newCodedInput()Lcom/google/protobuf/CodedInputStream;
    .locals 4

    .line 1487
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1488
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    .line 1487
    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/CodedInputStream;->newInstance([BIIZ)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public final newInput()Ljava/io/InputStream;
    .locals 4

    .line 1480
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method protected final partialHash(III)I
    .locals 2
    .param p1, "h"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1472
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lcom/google/protobuf/Internal;->partialHash(I[BII)I

    move-result v0

    return v0
.end method

.method protected final partialIsValidUtf8(III)I
    .locals 3
    .param p1, "state"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1392
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    add-int/2addr v0, p2

    .line 1393
    .local v0, "index":I
    iget-object v1, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    add-int v2, v0, p3

    invoke-static {p1, v1, v0, v2}, Lcom/google/protobuf/Utf8;->partialIsValidUtf8(I[BII)I

    move-result v1

    return v1
.end method

.method public size()I
    .locals 1

    .line 1316
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public final substring(II)Lcom/google/protobuf/ByteString;
    .locals 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 1324
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/protobuf/ByteString$LiteralByteString;->checkRange(III)I

    move-result v0

    .line 1326
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 1327
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v1

    .line 1330
    :cond_0
    new-instance v1, Lcom/google/protobuf/ByteString$BoundedByteString;

    iget-object v2, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v3

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3, v0}, Lcom/google/protobuf/ByteString$BoundedByteString;-><init>([BII)V

    return-object v1
.end method

.method protected final toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 1378
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final writeTo(Lcom/google/protobuf/ByteOutput;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1373
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/ByteOutput;->writeLazy([BII)V

    .line 1374
    return-void
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1362
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1363
    return-void
.end method

.method final writeToInternal(Ljava/io/OutputStream;II)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "sourceOffset"    # I
    .param p3, "numberToWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1368
    iget-object v0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1369
    return-void
.end method
