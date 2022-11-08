.class final Lcom/google/protobuf/BinaryReader$SafeHeapReader;
.super Lcom/google/protobuf/BinaryReader;
.source "BinaryReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BinaryReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeHeapReader"
.end annotation


# instance fields
.field private final buffer:[B

.field private final bufferIsImmutable:Z

.field private endGroupTag:I

.field private final initialPos:I

.field private limit:I

.field private pos:I

.field private tag:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 2
    .param p1, "bytebuf"    # Ljava/nio/ByteBuffer;
    .param p2, "bufferIsImmutable"    # Z

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader;-><init>(Lcom/google/protobuf/BinaryReader$1;)V

    .line 101
    iput-boolean p2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->bufferIsImmutable:Z

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 103
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->initialPos:I

    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 105
    return-void
.end method

.method private isAtEnd()Z
    .locals 2

    .line 108
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1612
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-eq v0, v1, :cond_0

    .line 1615
    iget-object v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    aget-byte v0, v1, v0

    return v0

    .line 1613
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1453
    .local p2, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/google/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1489
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1487
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1485
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1483
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1481
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1479
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1477
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1475
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1473
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1471
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1469
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1467
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1465
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1463
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1461
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1459
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1457
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 1455
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 4
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Schema<",
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

    .line 290
    .local p1, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 291
    .local v0, "prevEndGroupTag":I
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 295
    :try_start_0
    invoke-interface {p1}, Lcom/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 296
    .local v1, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1, p0, p2}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 297
    invoke-interface {p1, v1}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 299
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    .line 302
    nop

    .line 305
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 302
    return-object v1

    .line 300
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    .end local v0    # "prevEndGroupTag":I
    .end local p0    # "this":Lcom/google/protobuf/BinaryReader$SafeHeapReader;
    .end local p1    # "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    .end local v1    # "message":Ljava/lang/Object;, "TT;"
    .restart local v0    # "prevEndGroupTag":I
    .restart local p0    # "this":Lcom/google/protobuf/BinaryReader$SafeHeapReader;
    .restart local p1    # "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catchall_0
    move-exception v1

    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 306
    throw v1
.end method

.method private readLittleEndian32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1619
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1620
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    return v0
.end method

.method private readLittleEndian32_NoCheck()I
    .locals 4

    .line 1629
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1630
    .local v0, "p":I
    iget-object v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1631
    .local v1, "buffer":[B
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1632
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    return v2
.end method

.method private readLittleEndian64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1624
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1625
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v0

    return-wide v0
.end method

.method private readLittleEndian64_NoCheck()J
    .locals 9

    .line 1639
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1640
    .local v0, "p":I
    iget-object v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1641
    .local v1, "buffer":[B
    add-int/lit8 v2, v0, 0x8

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1642
    aget-byte v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x7

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 5
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Schema<",
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

    .line 250
    .local p1, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 251
    .local v0, "size":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 254
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 255
    .local v1, "prevLimit":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    .line 256
    .local v2, "newLimit":I
    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 260
    :try_start_0
    invoke-interface {p1}, Lcom/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 261
    .local v3, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v3, p0, p2}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 262
    invoke-interface {p1, v3}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 264
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v2, :cond_0

    .line 267
    nop

    .line 270
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 267
    return-object v3

    .line 265
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    .end local v0    # "size":I
    .end local v1    # "prevLimit":I
    .end local v2    # "newLimit":I
    .end local p0    # "this":Lcom/google/protobuf/BinaryReader$SafeHeapReader;
    .end local p1    # "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    .end local v3    # "message":Ljava/lang/Object;, "TT;"
    .restart local v0    # "size":I
    .restart local v1    # "prevLimit":I
    .restart local v2    # "newLimit":I
    .restart local p0    # "this":Lcom/google/protobuf/BinaryReader$SafeHeapReader;
    .restart local p1    # "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catchall_0
    move-exception v3

    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 271
    throw v3
.end method

.method private readVarint32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1496
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1498
    .local v0, "i":I
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-eq v1, v2, :cond_8

    .line 1503
    iget-object v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    aget-byte v0, v2, v0

    move v4, v0

    .local v4, "x":I
    if-ltz v0, :cond_0

    .line 1504
    iput v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1505
    return v4

    .line 1506
    :cond_0
    sub-int/2addr v1, v3

    const/16 v0, 0x9

    if-ge v1, v0, :cond_1

    .line 1507
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 1508
    :cond_1
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "i":I
    .restart local v0    # "i":I
    aget-byte v1, v2, v3

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v4

    move v3, v1

    .end local v4    # "x":I
    .local v3, "x":I
    if-gez v1, :cond_2

    .line 1509
    xor-int/lit8 v1, v3, -0x80

    .end local v3    # "x":I
    .local v1, "x":I
    goto :goto_1

    .line 1510
    .end local v1    # "x":I
    .restart local v3    # "x":I
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v3

    move v3, v0

    if-ltz v0, :cond_3

    .line 1511
    xor-int/lit16 v0, v3, 0x3f80

    move v5, v1

    move v1, v0

    move v0, v5

    .end local v3    # "x":I
    .local v0, "x":I
    goto :goto_1

    .line 1512
    .end local v0    # "x":I
    .restart local v3    # "x":I
    :cond_3
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .local v0, "i":I
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v1, v3

    move v3, v1

    if-gez v1, :cond_4

    .line 1513
    const v1, -0x1fc080

    xor-int/2addr v1, v3

    .end local v3    # "x":I
    .local v1, "x":I
    goto :goto_1

    .line 1515
    .end local v1    # "x":I
    .restart local v3    # "x":I
    :cond_4
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-byte v0, v2, v0

    .line 1516
    .local v0, "y":I
    shl-int/lit8 v4, v0, 0x1c

    xor-int/2addr v3, v4

    .line 1517
    const v4, 0xfe03f80

    xor-int/2addr v3, v4

    .line 1518
    if-gez v0, :cond_7

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    aget-byte v1, v2, v1

    if-gez v1, :cond_6

    add-int/lit8 v1, v4, 0x1

    .end local v4    # "i":I
    .restart local v1    # "i":I
    aget-byte v4, v2, v4

    if-gez v4, :cond_7

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .restart local v4    # "i":I
    aget-byte v1, v2, v1

    if-gez v1, :cond_6

    add-int/lit8 v1, v4, 0x1

    .end local v4    # "i":I
    .restart local v1    # "i":I
    aget-byte v4, v2, v4

    if-gez v4, :cond_7

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .restart local v4    # "i":I
    aget-byte v1, v2, v1

    if-ltz v1, :cond_5

    goto :goto_0

    .line 1524
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1518
    :cond_6
    :goto_0
    move v1, v3

    move v0, v4

    goto :goto_1

    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_7
    move v0, v1

    move v1, v3

    .line 1527
    .end local v3    # "x":I
    .local v0, "i":I
    .local v1, "x":I
    :goto_1
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1528
    return v1

    .line 1499
    .end local v1    # "x":I
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private readVarint64SlowPath()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1600
    const-wide/16 v0, 0x0

    .line 1601
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "shift":I
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 1602
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readByte()B

    move-result v3

    .line 1603
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 1604
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_0

    .line 1605
    return-wide v0

    .line 1601
    .end local v3    # "b":B
    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 1608
    .end local v2    # "shift":I
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method private requireBytes(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1696
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 1699
    return-void

    .line 1697
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private requirePosition(I)V
    .locals 1
    .param p1, "expectedPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1724
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ne v0, p1, :cond_0

    .line 1727
    return-void

    .line 1725
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private requireWireType(I)V
    .locals 1
    .param p1, "requiredWireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1702
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1705
    return-void

    .line 1703
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method private skipBytes(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1676
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1678
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1679
    return-void
.end method

.method private skipGroup()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1682
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 1683
    .local v0, "prevEndGroupTag":I
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 1685
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->getFieldNumber()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1689
    :cond_1
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v1, v2, :cond_2

    .line 1692
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 1693
    return-void

    .line 1690
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private skipVarint()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1653
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 1654
    iget-object v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1655
    .local v0, "buffer":[B
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1656
    .local v2, "p":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1657
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "p":I
    .local v4, "p":I
    aget-byte v2, v0, v2

    if-ltz v2, :cond_0

    .line 1658
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1659
    return-void

    .line 1656
    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_0

    .line 1663
    .end local v0    # "buffer":[B
    .end local v3    # "i":I
    .end local v4    # "p":I
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipVarintSlowPath()V

    .line 1664
    return-void
.end method

.method private skipVarintSlowPath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1667
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1668
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readByte()B

    move-result v1

    if-ltz v1, :cond_0

    .line 1669
    return-void

    .line 1667
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1672
    .end local v0    # "i":I
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private verifyPackedFixed32Length(I)V
    .locals 1
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1716
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1717
    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_0

    .line 1721
    return-void

    .line 1719
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private verifyPackedFixed64Length(I)V
    .locals 1
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1708
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1709
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 1713
    return-void

    .line 1711
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public getFieldNumber()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_0

    .line 119
    return v1

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 122
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v0, v2, :cond_1

    .line 123
    return v1

    .line 125
    :cond_1
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .locals 2

    .line 113
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->initialPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readBool()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 205
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public readBoolList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 812
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    instance-of v0, p1, Lcom/google/protobuf/BooleanArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 813
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/BooleanArrayList;

    .line 814
    .local v0, "plist":Lcom/google/protobuf/BooleanArrayList;
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v3}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 840
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 816
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    .line 817
    .local v3, "bytes":I
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v4, v3

    .line 818
    .local v4, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v4, :cond_1

    .line 819
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    if-eqz v5, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    invoke-virtual {v0, v5}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_0

    .line 821
    :cond_1
    invoke-direct {p0, v4}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 822
    nop

    .line 842
    .end local v0    # "plist":Lcom/google/protobuf/BooleanArrayList;
    .end local v3    # "bytes":I
    .end local v4    # "fieldEndPos":I
    goto :goto_5

    .line 825
    .restart local v0    # "plist":Lcom/google/protobuf/BooleanArrayList;
    :goto_2
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 827
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 828
    return-void

    .line 830
    :cond_2
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 831
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 832
    .local v2, "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_3

    .line 835
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 836
    return-void

    .line 838
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_3
    goto :goto_2

    .line 843
    .end local v0    # "plist":Lcom/google/protobuf/BooleanArrayList;
    :cond_4
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 869
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 845
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 846
    .local v0, "bytes":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v3, v0

    .line 847
    .local v3, "fieldEndPos":I
    :goto_3
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v4, v3, :cond_6

    .line 848
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v1

    goto :goto_4

    :cond_5
    move v4, v2

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 850
    :cond_6
    invoke-direct {p0, v3}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 851
    nop

    .line 872
    .end local v0    # "bytes":I
    .end local v3    # "fieldEndPos":I
    :goto_5
    return-void

    .line 854
    :goto_6
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 857
    return-void

    .line 859
    :cond_7
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 860
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 861
    .local v1, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_8

    .line 864
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 865
    return-void

    .line 867
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_8
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 312
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 313
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 314
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v1

    .line 317
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 319
    iget-boolean v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->bufferIsImmutable:Z

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/ByteString;->wrap([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    goto :goto_0

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    :goto_0
    nop

    .line 322
    .local v1, "bytes":Lcom/google/protobuf/ByteString;
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 323
    return-object v1
.end method

.method public readBytesList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 994
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 999
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    return-void

    .line 1004
    :cond_0
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1005
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1006
    .local v1, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_1

    .line 1009
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1010
    return-void

    .line 1012
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_1
    goto :goto_0

    .line 995
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 163
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubleList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    instance-of v0, p1, Lcom/google/protobuf/DoubleArrayList;

    if-eqz v0, :cond_3

    .line 365
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/DoubleArrayList;

    .line 366
    .local v0, "plist":Lcom/google/protobuf/DoubleArrayList;
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 392
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 368
    :pswitch_0
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 369
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 370
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 371
    .local v2, "fieldEndPos":I
    :goto_0
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    goto :goto_0

    .line 394
    .end local v0    # "plist":Lcom/google/protobuf/DoubleArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_0
    goto :goto_3

    .line 377
    .restart local v0    # "plist":Lcom/google/protobuf/DoubleArrayList;
    :goto_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    .line 379
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    return-void

    .line 382
    :cond_1
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 383
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 384
    .local v2, "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_2

    .line 387
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 388
    return-void

    .line 390
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_2
    goto :goto_1

    .line 395
    .end local v0    # "plist":Lcom/google/protobuf/DoubleArrayList;
    :cond_3
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 421
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 397
    :pswitch_2
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 398
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 399
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 400
    .local v1, "fieldEndPos":I
    :goto_2
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_4

    .line 401
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 424
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :goto_3
    return-void

    .line 406
    :goto_4
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 409
    return-void

    .line 411
    :cond_5
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 412
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 413
    .local v1, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_6

    .line 416
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 417
    return-void

    .line 419
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_6
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 335
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readEnumList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1079
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v0, :cond_3

    .line 1080
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    .line 1081
    .local v0, "plist":Lcom/google/protobuf/IntArrayList;
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1106
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1083
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1084
    .local v1, "bytes":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 1085
    .local v2, "fieldEndPos":I
    :goto_0
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_0

    .line 1086
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    .line 1108
    .end local v0    # "plist":Lcom/google/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_0
    goto :goto_3

    .line 1091
    .restart local v0    # "plist":Lcom/google/protobuf/IntArrayList;
    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 1093
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1094
    return-void

    .line 1096
    :cond_1
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1097
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1098
    .local v2, "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_2

    .line 1101
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1102
    return-void

    .line 1104
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_2
    goto :goto_1

    .line 1109
    .end local v0    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_3
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1134
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1111
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1112
    .local v0, "bytes":I
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1113
    .local v1, "fieldEndPos":I
    :goto_2
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_4

    .line 1114
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1137
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :goto_3
    return-void

    .line 1119
    :goto_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1122
    return-void

    .line 1124
    :cond_5
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1125
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1126
    .local v1, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_6

    .line 1129
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1130
    return-void

    .line 1132
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_6
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 199
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v0, :cond_3

    .line 749
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    .line 750
    .local v0, "plist":Lcom/google/protobuf/IntArrayList;
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 776
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 761
    :goto_0
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 763
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    return-void

    .line 766
    :cond_0
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 767
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 768
    .local v2, "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_1

    .line 771
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 772
    return-void

    .line 774
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_1
    goto :goto_0

    .line 752
    :sswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 753
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 754
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 755
    .local v2, "fieldEndPos":I
    :goto_1
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_2

    .line 756
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_1

    .line 778
    .end local v0    # "plist":Lcom/google/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_2
    goto :goto_4

    .line 779
    :cond_3
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 805
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 790
    :goto_2
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 793
    return-void

    .line 795
    :cond_4
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 796
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 797
    .local v1, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_5

    .line 800
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 801
    return-void

    .line 803
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_5
    goto :goto_2

    .line 781
    :sswitch_3
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 782
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 783
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 784
    .local v1, "fieldEndPos":I
    :goto_3
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_6

    .line 785
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 808
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_6
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 193
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFixed64List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 684
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v0, :cond_3

    .line 685
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    .line 686
    .local v0, "plist":Lcom/google/protobuf/LongArrayList;
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 712
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 688
    :pswitch_0
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 689
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 690
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 691
    .local v2, "fieldEndPos":I
    :goto_0
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_0

    .line 692
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    .line 714
    .end local v0    # "plist":Lcom/google/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_0
    goto :goto_3

    .line 697
    .restart local v0    # "plist":Lcom/google/protobuf/LongArrayList;
    :goto_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 699
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    return-void

    .line 702
    :cond_1
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 703
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 704
    .local v2, "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_2

    .line 707
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 708
    return-void

    .line 710
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_2
    goto :goto_1

    .line 715
    .end local v0    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_3
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 741
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 717
    :pswitch_2
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 718
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 719
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 720
    .local v1, "fieldEndPos":I
    :goto_2
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_4

    .line 721
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 744
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :goto_3
    return-void

    .line 726
    :goto_4
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 729
    return-void

    .line 731
    :cond_5
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 732
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 733
    .local v1, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_6

    .line 736
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 737
    return-void

    .line 739
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_6
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 169
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFloatList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    instance-of v0, p1, Lcom/google/protobuf/FloatArrayList;

    if-eqz v0, :cond_3

    .line 429
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/FloatArrayList;

    .line 430
    .local v0, "plist":Lcom/google/protobuf/FloatArrayList;
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 456
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 441
    :goto_0
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    .line 443
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    return-void

    .line 446
    :cond_0
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 447
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 448
    .local v2, "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_1

    .line 451
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 452
    return-void

    .line 454
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_1
    goto :goto_0

    .line 432
    :sswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 433
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 434
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 435
    .local v2, "fieldEndPos":I
    :goto_1
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_2

    .line 436
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    goto :goto_1

    .line 458
    .end local v0    # "plist":Lcom/google/protobuf/FloatArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_2
    goto :goto_4

    .line 459
    :cond_3
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 485
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 470
    :goto_2
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 473
    return-void

    .line 475
    :cond_4
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 476
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 477
    .local v1, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_5

    .line 480
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 481
    return-void

    .line 483
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_5
    goto :goto_2

    .line 461
    :sswitch_3
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 462
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 463
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 464
    .local v1, "fieldEndPos":I
    :goto_3
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_6

    .line 465
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 488
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_6
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public readGroup(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
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

    .line 277
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 278
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readGroupBySchemaWithCheck(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Schema<",
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

    .line 284
    .local p1, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readGroupList(Ljava/util/List;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 971
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 974
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 976
    .local v0, "listTag":I
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 978
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    return-void

    .line 981
    :cond_0
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 982
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 983
    .local v2, "nextTag":I
    if-eq v2, v0, :cond_1

    .line 986
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 987
    return-void

    .line 989
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_1
    goto :goto_0

    .line 972
    .end local v0    # "listTag":I
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public readGroupList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 963
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    .line 964
    .local v0, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readGroupList(Ljava/util/List;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 965
    return-void
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 187
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readInt32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v0, :cond_3

    .line 621
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    .line 622
    .local v0, "plist":Lcom/google/protobuf/IntArrayList;
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 648
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 624
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 625
    .local v1, "bytes":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 626
    .local v2, "fieldEndPos":I
    :goto_0
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_0

    .line 627
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    .line 629
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 630
    nop

    .line 650
    .end local v0    # "plist":Lcom/google/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    goto :goto_3

    .line 633
    .restart local v0    # "plist":Lcom/google/protobuf/IntArrayList;
    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 635
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    return-void

    .line 638
    :cond_1
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 639
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 640
    .local v2, "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_2

    .line 643
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 644
    return-void

    .line 646
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_2
    goto :goto_1

    .line 651
    .end local v0    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_3
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 677
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 653
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 654
    .local v0, "bytes":I
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 655
    .local v1, "fieldEndPos":I
    :goto_2
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_4

    .line 656
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 658
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 659
    nop

    .line 680
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :goto_3
    return-void

    .line 662
    :goto_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 665
    return-void

    .line 667
    :cond_5
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 668
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 669
    .local v1, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_6

    .line 672
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 673
    return-void

    .line 675
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_6
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 181
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt64List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v0, :cond_3

    .line 557
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    .line 558
    .local v0, "plist":Lcom/google/protobuf/LongArrayList;
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 584
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 560
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 561
    .local v1, "bytes":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 562
    .local v2, "fieldEndPos":I
    :goto_0
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    .line 565
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 566
    nop

    .line 586
    .end local v0    # "plist":Lcom/google/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    goto :goto_3

    .line 569
    .restart local v0    # "plist":Lcom/google/protobuf/LongArrayList;
    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 571
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    return-void

    .line 574
    :cond_1
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 575
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 576
    .local v2, "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_2

    .line 579
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 580
    return-void

    .line 582
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_2
    goto :goto_1

    .line 587
    .end local v0    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_3
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 613
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 589
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 590
    .local v0, "bytes":I
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 591
    .local v1, "fieldEndPos":I
    :goto_2
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_4

    .line 592
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 594
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 595
    nop

    .line 616
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :goto_3
    return-void

    .line 598
    :goto_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 601
    return-void

    .line 603
    :cond_5
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 604
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 605
    .local v1, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_6

    .line 608
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 609
    return-void

    .line 611
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_6
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readMap(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$Metadata;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1398
    .local p1, "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "metadata":Lcom/google/protobuf/MapEntryLite$Metadata;, "Lcom/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 1399
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1400
    .local v0, "size":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1403
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1404
    .local v1, "prevLimit":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    .line 1405
    .local v2, "newLimit":I
    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1408
    :try_start_0
    iget-object v3, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 1409
    .local v3, "key":Ljava/lang/Object;, "TK;"
    iget-object v4, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1411
    .local v4, "value":Ljava/lang/Object;, "TV;"
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->getFieldNumber()I

    move-result v5

    .line 1412
    .local v5, "number":I
    const v6, 0x7fffffff

    if-ne v5, v6, :cond_0

    .line 1413
    nop

    .line 1441
    .end local v5    # "number":I
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1444
    nop

    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1445
    nop

    .line 1446
    return-void

    .line 1416
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    .restart local v4    # "value":Ljava/lang/Object;, "TV;"
    .restart local v5    # "number":I
    :cond_0
    const-string v6, "Unable to parse map entry."

    packed-switch v5, :pswitch_data_0

    .line 1429
    :try_start_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v7

    goto :goto_1

    .line 1421
    :pswitch_0
    iget-object v7, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    iget-object v8, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1425
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 1423
    invoke-direct {p0, v7, v8, p3}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 1427
    goto :goto_2

    .line 1418
    :pswitch_1
    iget-object v7, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v8}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 1419
    goto :goto_2

    .line 1434
    :catch_0
    move-exception v7

    goto :goto_3

    .line 1429
    :goto_1
    if-eqz v7, :cond_1

    .line 1439
    :goto_2
    goto :goto_4

    .line 1430
    :cond_1
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v7, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .end local v0    # "size":I
    .end local v1    # "prevLimit":I
    .end local v2    # "newLimit":I
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    .end local v5    # "number":I
    .end local p0    # "this":Lcom/google/protobuf/BinaryReader$SafeHeapReader;
    .end local p1    # "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local p2    # "metadata":Lcom/google/protobuf/MapEntryLite$Metadata;, "Lcom/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .end local p3    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v7
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1436
    .restart local v0    # "size":I
    .restart local v1    # "prevLimit":I
    .restart local v2    # "newLimit":I
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    .restart local v4    # "value":Ljava/lang/Object;, "TV;"
    .restart local v5    # "number":I
    .local v7, "ignore":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .restart local p0    # "this":Lcom/google/protobuf/BinaryReader$SafeHeapReader;
    .restart local p1    # "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .restart local p2    # "metadata":Lcom/google/protobuf/MapEntryLite$Metadata;, "Lcom/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .restart local p3    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1440
    .end local v5    # "number":I
    .end local v7    # "ignore":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :goto_4
    goto :goto_0

    .line 1437
    .restart local v5    # "number":I
    .restart local v7    # "ignore":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :cond_2
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v8, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .end local v0    # "size":I
    .end local v1    # "prevLimit":I
    .end local v2    # "newLimit":I
    .end local p0    # "this":Lcom/google/protobuf/BinaryReader$SafeHeapReader;
    .end local p1    # "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local p2    # "metadata":Lcom/google/protobuf/MapEntryLite$Metadata;, "Lcom/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .end local p3    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1444
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    .end local v5    # "number":I
    .end local v7    # "ignore":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .restart local v0    # "size":I
    .restart local v1    # "prevLimit":I
    .restart local v2    # "newLimit":I
    .restart local p0    # "this":Lcom/google/protobuf/BinaryReader$SafeHeapReader;
    .restart local p1    # "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .restart local p2    # "metadata":Lcom/google/protobuf/MapEntryLite$Metadata;, "Lcom/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .restart local p3    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catchall_0
    move-exception v3

    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1445
    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
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

    .line 237
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 238
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readMessageBySchemaWithCheck(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Schema<",
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

    .line 244
    .local p1, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readMessageList(Ljava/util/List;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 938
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 941
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 943
    .local v0, "listTag":I
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    return-void

    .line 948
    :cond_0
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 949
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 950
    .local v2, "nextTag":I
    if-eq v2, v0, :cond_1

    .line 953
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 954
    return-void

    .line 956
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_1
    goto :goto_0

    .line 939
    .end local v0    # "listTag":I
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 930
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    .line 931
    .local v0, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readMessageList(Ljava/util/List;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 932
    return-void
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 341
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1141
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v0, :cond_3

    .line 1142
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    .line 1143
    .local v0, "plist":Lcom/google/protobuf/IntArrayList;
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1169
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1154
    :goto_0
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 1156
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1157
    return-void

    .line 1159
    :cond_0
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1160
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1161
    .local v2, "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_1

    .line 1164
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1165
    return-void

    .line 1167
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_1
    goto :goto_0

    .line 1145
    :sswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1146
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 1147
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 1148
    .local v2, "fieldEndPos":I
    :goto_1
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_2

    .line 1149
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_1

    .line 1171
    .end local v0    # "plist":Lcom/google/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_2
    goto :goto_4

    .line 1172
    :cond_3
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 1198
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1183
    :goto_2
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1185
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1186
    return-void

    .line 1188
    :cond_4
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1189
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1190
    .local v1, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_5

    .line 1193
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1194
    return-void

    .line 1196
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_5
    goto :goto_2

    .line 1174
    :sswitch_3
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1175
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 1176
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1177
    .local v1, "fieldEndPos":I
    :goto_3
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_6

    .line 1178
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1201
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_6
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 347
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSFixed64List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1205
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v0, :cond_3

    .line 1206
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    .line 1207
    .local v0, "plist":Lcom/google/protobuf/LongArrayList;
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1233
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1209
    :pswitch_0
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1210
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 1211
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 1212
    .local v2, "fieldEndPos":I
    :goto_0
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_0

    .line 1213
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    .line 1235
    .end local v0    # "plist":Lcom/google/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_0
    goto :goto_3

    .line 1218
    .restart local v0    # "plist":Lcom/google/protobuf/LongArrayList;
    :goto_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 1220
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1221
    return-void

    .line 1223
    :cond_1
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1224
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1225
    .local v2, "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_2

    .line 1228
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1229
    return-void

    .line 1231
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_2
    goto :goto_1

    .line 1236
    .end local v0    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_3
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1262
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1238
    :pswitch_2
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1239
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 1240
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1241
    .local v1, "fieldEndPos":I
    :goto_2
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_4

    .line 1242
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1265
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :goto_3
    return-void

    .line 1247
    :goto_4
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1250
    return-void

    .line 1252
    :cond_5
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1253
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1254
    .local v1, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_6

    .line 1257
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1258
    return-void

    .line 1260
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_6
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 353
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1269
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v0, :cond_3

    .line 1270
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    .line 1271
    .local v0, "plist":Lcom/google/protobuf/IntArrayList;
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1296
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1273
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1274
    .local v1, "bytes":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 1275
    .local v2, "fieldEndPos":I
    :goto_0
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_0

    .line 1276
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    .line 1298
    .end local v0    # "plist":Lcom/google/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_0
    goto :goto_3

    .line 1281
    .restart local v0    # "plist":Lcom/google/protobuf/IntArrayList;
    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 1283
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1284
    return-void

    .line 1286
    :cond_1
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1287
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1288
    .local v2, "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_2

    .line 1291
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1292
    return-void

    .line 1294
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_2
    goto :goto_1

    .line 1299
    .end local v0    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_3
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1324
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1301
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1302
    .local v0, "bytes":I
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1303
    .local v1, "fieldEndPos":I
    :goto_2
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_4

    .line 1304
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1327
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :goto_3
    return-void

    .line 1309
    :goto_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1312
    return-void

    .line 1314
    :cond_5
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1315
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1316
    .local v1, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_6

    .line 1319
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1320
    return-void

    .line 1322
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_6
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 359
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt64List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1331
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v0, :cond_3

    .line 1332
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    .line 1333
    .local v0, "plist":Lcom/google/protobuf/LongArrayList;
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1358
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1335
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1336
    .local v1, "bytes":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 1337
    .local v2, "fieldEndPos":I
    :goto_0
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_0

    .line 1338
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    .line 1360
    .end local v0    # "plist":Lcom/google/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_0
    goto :goto_3

    .line 1343
    .restart local v0    # "plist":Lcom/google/protobuf/LongArrayList;
    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 1345
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1346
    return-void

    .line 1348
    :cond_1
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1349
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1350
    .local v2, "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_2

    .line 1353
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1354
    return-void

    .line 1356
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_2
    goto :goto_1

    .line 1361
    .end local v0    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_3
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1386
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1363
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1364
    .local v0, "bytes":I
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1365
    .local v1, "fieldEndPos":I
    :goto_2
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_4

    .line 1366
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1389
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :goto_3
    return-void

    .line 1371
    :goto_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1373
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1374
    return-void

    .line 1376
    :cond_5
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1377
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1378
    .local v1, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_6

    .line 1381
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1382
    return-void

    .line 1384
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_6
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStringInternal(Z)Ljava/lang/String;
    .locals 5
    .param p1, "requireUtf8"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 220
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 221
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 222
    const-string v1, ""

    return-object v1

    .line 225
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 226
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 229
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 230
    .local v1, "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 231
    return-object v1
.end method

.method public readStringList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 876
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 877
    return-void
.end method

.method public readStringListInternal(Ljava/util/List;Z)V
    .locals 4
    .param p2, "requireUtf8"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 890
    instance-of v0, p1, Lcom/google/protobuf/LazyStringList;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 891
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LazyStringList;

    .line 893
    .local v0, "lazyList":Lcom/google/protobuf/LazyStringList;
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 895
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    return-void

    .line 898
    :cond_0
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 899
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 900
    .local v2, "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_1

    .line 903
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 904
    return-void

    .line 906
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_1
    goto :goto_0

    .line 909
    .end local v0    # "lazyList":Lcom/google/protobuf/LazyStringList;
    :cond_2
    :goto_1
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 912
    return-void

    .line 914
    :cond_3
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 915
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 916
    .local v1, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_4

    .line 919
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 920
    return-void

    .line 922
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_4
    goto :goto_1

    .line 887
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public readStringListRequireUtf8(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 881
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 882
    return-void
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 329
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1017
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v0, :cond_3

    .line 1018
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    .line 1019
    .local v0, "plist":Lcom/google/protobuf/IntArrayList;
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1044
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1021
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1022
    .local v1, "bytes":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 1023
    .local v2, "fieldEndPos":I
    :goto_0
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_0

    .line 1024
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    .line 1046
    .end local v0    # "plist":Lcom/google/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    :cond_0
    goto :goto_3

    .line 1029
    .restart local v0    # "plist":Lcom/google/protobuf/IntArrayList;
    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 1031
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1032
    return-void

    .line 1034
    :cond_1
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1035
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1036
    .local v2, "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_2

    .line 1039
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1040
    return-void

    .line 1042
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_2
    goto :goto_1

    .line 1047
    .end local v0    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_3
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1072
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1049
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1050
    .local v0, "bytes":I
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 1051
    .local v1, "fieldEndPos":I
    :goto_2
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_4

    .line 1052
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1075
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :goto_3
    return-void

    .line 1057
    :goto_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1060
    return-void

    .line 1062
    :cond_5
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1063
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 1064
    .local v1, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_6

    .line 1067
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1068
    return-void

    .line 1070
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_6
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 175
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt64List(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v0, :cond_3

    .line 493
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    .line 494
    .local v0, "plist":Lcom/google/protobuf/LongArrayList;
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 520
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 496
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 497
    .local v1, "bytes":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    .line 498
    .local v2, "fieldEndPos":I
    :goto_0
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    .line 501
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 502
    nop

    .line 522
    .end local v0    # "plist":Lcom/google/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "fieldEndPos":I
    goto :goto_3

    .line 505
    .restart local v0    # "plist":Lcom/google/protobuf/LongArrayList;
    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 507
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    return-void

    .line 510
    :cond_1
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 511
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 512
    .local v2, "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_2

    .line 515
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 516
    return-void

    .line 518
    .end local v1    # "prevPos":I
    .end local v2    # "nextTag":I
    :cond_2
    goto :goto_1

    .line 523
    .end local v0    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_3
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 549
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 525
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 526
    .local v0, "bytes":I
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    .line 527
    .local v1, "fieldEndPos":I
    :goto_2
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_4

    .line 528
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 530
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    .line 531
    nop

    .line 552
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :goto_3
    return-void

    .line 534
    :goto_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 537
    return-void

    .line 539
    :cond_5
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 540
    .local v0, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 541
    .local v1, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_6

    .line 544
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 545
    return-void

    .line 547
    .end local v0    # "prevPos":I
    .end local v1    # "nextTag":I
    :cond_6
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readVarint64()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1543
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1545
    .local v0, "i":I
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-eq v1, v0, :cond_b

    .line 1549
    iget-object v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1552
    .local v2, "buffer":[B
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    aget-byte v0, v2, v0

    move v4, v0

    .local v4, "y":I
    if-ltz v0, :cond_0

    .line 1553
    iput v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1554
    int-to-long v0, v4

    return-wide v0

    .line 1555
    :cond_0
    sub-int/2addr v1, v3

    const/16 v0, 0x9

    if-ge v1, v0, :cond_1

    .line 1556
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    .line 1557
    :cond_1
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "i":I
    .restart local v0    # "i":I
    aget-byte v1, v2, v3

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v4

    move v3, v1

    .end local v4    # "y":I
    .local v3, "y":I
    if-gez v1, :cond_2

    .line 1558
    xor-int/lit8 v1, v3, -0x80

    int-to-long v4, v1

    .local v4, "x":J
    goto/16 :goto_0

    .line 1559
    .end local v4    # "x":J
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v3

    move v3, v0

    if-ltz v0, :cond_3

    .line 1560
    xor-int/lit16 v0, v3, 0x3f80

    int-to-long v4, v0

    move v0, v1

    .restart local v4    # "x":J
    goto/16 :goto_0

    .line 1561
    .end local v4    # "x":J
    :cond_3
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v1, v3

    move v3, v1

    if-gez v1, :cond_4

    .line 1562
    const v1, -0x1fc080

    xor-int/2addr v1, v3

    int-to-long v4, v1

    .restart local v4    # "x":J
    goto/16 :goto_0

    .line 1563
    .end local v4    # "x":J
    :cond_4
    int-to-long v4, v3

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-byte v0, v2, v0

    int-to-long v6, v0

    const/16 v0, 0x1c

    shl-long/2addr v6, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    .local v6, "x":J
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-ltz v0, :cond_5

    .line 1564
    const-wide/32 v4, 0xfe03f80

    xor-long/2addr v4, v6

    move v0, v1

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_0

    .line 1565
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_5
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v1, v2, v1

    int-to-long v4, v1

    const/16 v1, 0x23

    shl-long/2addr v4, v1

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v1, v4, v8

    if-gez v1, :cond_6

    .line 1566
    const-wide v4, -0x7f01fc080L

    xor-long/2addr v4, v6

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_0

    .line 1567
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_6
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-byte v0, v2, v0

    int-to-long v4, v0

    const/16 v0, 0x2a

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v0, v4, v8

    if-ltz v0, :cond_7

    .line 1568
    const-wide v4, 0x3f80fe03f80L

    xor-long/2addr v4, v6

    move v0, v1

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_0

    .line 1569
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_7
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v1, v2, v1

    int-to-long v4, v1

    const/16 v1, 0x31

    shl-long/2addr v4, v1

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v1, v4, v8

    if-gez v1, :cond_8

    .line 1570
    const-wide v4, -0x1fc07f01fc080L

    xor-long/2addr v4, v6

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_0

    .line 1579
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_8
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-byte v0, v2, v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    .line 1580
    .end local v6    # "x":J
    .restart local v4    # "x":J
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v4, v6

    .line 1589
    cmp-long v0, v4, v8

    if-gez v0, :cond_a

    .line 1590
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v1, v2, v1

    int-to-long v6, v1

    cmp-long v1, v6, v8

    if-ltz v1, :cond_9

    goto :goto_0

    .line 1591
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1589
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_a
    move v0, v1

    .line 1595
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :goto_0
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1596
    return-wide v4

    .line 1546
    .end local v2    # "buffer":[B
    .end local v3    # "y":I
    .end local v4    # "x":J
    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public skipField()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 156
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 150
    :pswitch_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    .line 151
    return v1

    .line 153
    :pswitch_2
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipGroup()V

    .line 154
    return v1

    .line 147
    :pswitch_3
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    .line 148
    return v1

    .line 144
    :pswitch_4
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    .line 145
    return v1

    .line 141
    :pswitch_5
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipVarint()V

    .line 142
    return v1

    .line 136
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
