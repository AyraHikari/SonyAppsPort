.class final Lcom/google/protobuf/CodedInputStream$ArrayDecoder;
.super Lcom/google/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayDecoder"
.end annotation


# instance fields
.field private final buffer:[B

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private enableAliasing:Z

.field private final immutable:Z

.field private lastTag:I

.field private limit:I

.field private pos:I

.field private startPos:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "immutable"    # Z

    .line 606
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream;-><init>(Lcom/google/protobuf/CodedInputStream$1;)V

    .line 604
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 607
    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 608
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 609
    iput p2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 610
    iput p2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    .line 611
    iput-boolean p4, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->immutable:Z

    .line 612
    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/protobuf/CodedInputStream$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/google/protobuf/CodedInputStream$1;

    .line 593
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;-><init>([BIIZ)V

    return-void
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 3

    .line 1197
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 1198
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    sub-int v1, v0, v1

    .line 1199
    .local v1, "bufferEnd":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    if-le v1, v2, :cond_0

    .line 1201
    sub-int v2, v1, v2

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    .line 1202
    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    goto :goto_0

    .line 1204
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    .line 1206
    :goto_0
    return-void
.end method

.method private skipRawVarint()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1022
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 1023
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipRawVarintFastPath()V

    goto :goto_0

    .line 1025
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipRawVarintSlowPath()V

    .line 1027
    :goto_0
    return-void
.end method

.method private skipRawVarintFastPath()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1030
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1031
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_0

    .line 1032
    return-void

    .line 1030
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1035
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

    .line 1039
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1040
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_0

    .line 1041
    return-void

    .line 1039
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1044
    .end local v0    # "i":I
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
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

    .line 632
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    if-ne v0, p1, :cond_0

    .line 635
    return-void

    .line 633
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public enableAliasing(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1171
    iput-boolean p1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->enableAliasing:Z

    .line 1172
    return-void
.end method

.method public getBytesUntilLimit()I
    .locals 2

    .line 1216
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 1217
    const/4 v0, -0x1

    return v0

    .line 1220
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLastTag()I
    .locals 1

    .line 639
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .locals 2

    .line 1230
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1225
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-ne v0, v1, :cond_0

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

    .line 1210
    iput p1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 1211
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recomputeBufferSizeAfterLimit()V

    .line 1212
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

    .line 1181
    if-ltz p1, :cond_1

    .line 1184
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->getTotalBytesRead()I

    move-result v0

    add-int/2addr p1, v0

    .line 1185
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 1186
    .local v0, "oldLimit":I
    if-gt p1, v0, :cond_0

    .line 1189
    iput p1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 1191
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recomputeBufferSizeAfterLimit()V

    .line 1193
    return v0

    .line 1187
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1182
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

    .line 780
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 915
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 916
    .local v0, "size":I
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawBytes(I)[B

    move-result-object v1

    return-object v1
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 921
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 922
    .local v0, "size":I
    if-lez v0, :cond_1

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 929
    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->immutable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->enableAliasing:Z

    if-eqz v1, :cond_0

    .line 930
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 931
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_0
    nop

    .line 932
    .local v1, "result":Ljava/nio/ByteBuffer;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 934
    return-object v1

    .line 937
    .end local v1    # "result":Ljava/nio/ByteBuffer;
    :cond_1
    if-nez v0, :cond_2

    .line 938
    sget-object v1, Lcom/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v1

    .line 940
    :cond_2
    if-gez v0, :cond_3

    .line 941
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 943
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 896
    .local v0, "size":I
    if-lez v0, :cond_1

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 900
    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->immutable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->enableAliasing:Z

    if-eqz v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/ByteString;->wrap([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    goto :goto_0

    .line 902
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    :goto_0
    nop

    .line 903
    .local v1, "result":Lcom/google/protobuf/ByteString;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 904
    return-object v1

    .line 906
    .end local v1    # "result":Lcom/google/protobuf/ByteString;
    :cond_1
    if-nez v0, :cond_2

    .line 907
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v1

    .line 910
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawBytes(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

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

    .line 953
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

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

    .line 775
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

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

    .line 770
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

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

    .line 750
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

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

    .line 843
    .local p2, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TT;>;"
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionLimit:I

    if-ge v0, v1, :cond_0

    .line 846
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 847
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    .line 848
    .local v0, "result":Lcom/google/protobuf/MessageLite;, "TT;"
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 849
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 850
    return-object v0

    .line 844
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

    .line 827
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionLimit:I

    if-ge v0, v1, :cond_0

    .line 830
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 831
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 832
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 833
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 834
    return-void

    .line 828
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

    .line 765
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

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

    .line 760
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

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

    .line 880
    .local p1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TT;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 881
    .local v0, "length":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 884
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pushLimit(I)I

    move-result v1

    .line 885
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 886
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 887
    .local v2, "result":Lcom/google/protobuf/MessageLite;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 888
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 889
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->popLimit(I)V

    .line 890
    return-object v2

    .line 882
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

    .line 864
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 865
    .local v0, "length":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionLimit:I

    if-ge v1, v2, :cond_0

    .line 868
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pushLimit(I)I

    move-result v1

    .line 869
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 870
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 871
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 872
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 873
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->popLimit(I)V

    .line 874
    return-void

    .line 866
    .end local v1    # "oldLimit":I
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readRawByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1235
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-eq v0, v1, :cond_0

    .line 1238
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    aget-byte v0, v1, v0

    return v0

    .line 1236
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readRawBytes(I)[B
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1243
    if-lez p1, :cond_0

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 1244
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1245
    .local v0, "tempPos":I
    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1246
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    .line 1249
    .end local v0    # "tempPos":I
    :cond_0
    if-gtz p1, :cond_2

    .line 1250
    if-nez p1, :cond_1

    .line 1251
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 1253
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1256
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readRawLittleEndian32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1135
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1137
    .local v0, "tempPos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 1141
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 1142
    .local v1, "buffer":[B
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1143
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

    .line 1138
    .end local v1    # "buffer":[B
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readRawLittleEndian64()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1151
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1153
    .local v0, "tempPos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 1157
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 1158
    .local v1, "buffer":[B
    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1159
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x7

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v4, v7, v5

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2

    .line 1154
    .end local v1    # "buffer":[B
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readRawVarint32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 983
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 985
    .local v0, "tempPos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-ne v1, v0, :cond_0

    .line 986
    goto/16 :goto_0

    .line 989
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 991
    .local v2, "buffer":[B
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "tempPos":I
    .local v3, "tempPos":I
    aget-byte v0, v2, v0

    move v4, v0

    .local v4, "x":I
    if-ltz v0, :cond_1

    .line 992
    iput v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 993
    return v4

    .line 994
    :cond_1
    sub-int/2addr v1, v3

    const/16 v0, 0x9

    if-ge v1, v0, :cond_2

    .line 995
    goto :goto_0

    .line 996
    :cond_2
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v1, v2, v3

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v4

    move v3, v1

    .end local v4    # "x":I
    .local v3, "x":I
    if-gez v1, :cond_3

    .line 997
    xor-int/lit8 v1, v3, -0x80

    .end local v3    # "x":I
    .local v1, "x":I
    goto :goto_1

    .line 998
    .end local v1    # "x":I
    .restart local v3    # "x":I
    :cond_3
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tempPos":I
    .local v1, "tempPos":I
    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v3

    move v3, v0

    if-ltz v0, :cond_4

    .line 999
    xor-int/lit16 v0, v3, 0x3f80

    move v5, v1

    move v1, v0

    move v0, v5

    .end local v3    # "x":I
    .local v0, "x":I
    goto :goto_1

    .line 1000
    .end local v0    # "x":I
    .restart local v3    # "x":I
    :cond_4
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "tempPos":I
    .local v0, "tempPos":I
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v1, v3

    move v3, v1

    if-gez v1, :cond_5

    .line 1001
    const v1, -0x1fc080

    xor-int/2addr v1, v3

    .end local v3    # "x":I
    .local v1, "x":I
    goto :goto_1

    .line 1003
    .end local v1    # "x":I
    .restart local v3    # "x":I
    :cond_5
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tempPos":I
    .local v1, "tempPos":I
    aget-byte v0, v2, v0

    .line 1004
    .local v0, "y":I
    shl-int/lit8 v4, v0, 0x1c

    xor-int/2addr v3, v4

    .line 1005
    const v4, 0xfe03f80

    xor-int/2addr v3, v4

    .line 1006
    if-gez v0, :cond_7

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "tempPos":I
    .local v4, "tempPos":I
    aget-byte v1, v2, v1

    if-gez v1, :cond_6

    add-int/lit8 v1, v4, 0x1

    .end local v4    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v4, v2, v4

    if-gez v4, :cond_7

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v4    # "tempPos":I
    aget-byte v1, v2, v1

    if-gez v1, :cond_6

    add-int/lit8 v1, v4, 0x1

    .end local v4    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v4, v2, v4

    if-gez v4, :cond_7

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v4    # "tempPos":I
    aget-byte v1, v2, v1

    if-gez v1, :cond_6

    .line 1012
    nop

    .line 1018
    .end local v0    # "y":I
    .end local v2    # "buffer":[B
    .end local v3    # "x":I
    .end local v4    # "tempPos":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 1006
    .restart local v0    # "y":I
    .restart local v2    # "buffer":[B
    .restart local v3    # "x":I
    .restart local v4    # "tempPos":I
    :cond_6
    move v1, v3

    move v0, v4

    goto :goto_1

    .end local v4    # "tempPos":I
    .restart local v1    # "tempPos":I
    :cond_7
    move v0, v1

    move v1, v3

    .line 1015
    .end local v3    # "x":I
    .local v0, "tempPos":I
    .local v1, "x":I
    :goto_1
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1016
    return v1
.end method

.method public readRawVarint64()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1062
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1064
    .local v0, "tempPos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-ne v1, v0, :cond_0

    .line 1065
    goto/16 :goto_0

    .line 1068
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 1071
    .local v2, "buffer":[B
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "tempPos":I
    .local v3, "tempPos":I
    aget-byte v0, v2, v0

    move v4, v0

    .local v4, "y":I
    if-ltz v0, :cond_1

    .line 1072
    iput v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1073
    int-to-long v0, v4

    return-wide v0

    .line 1074
    :cond_1
    sub-int/2addr v1, v3

    const/16 v0, 0x9

    if-ge v1, v0, :cond_2

    .line 1075
    goto/16 :goto_0

    .line 1076
    :cond_2
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v1, v2, v3

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v4

    move v3, v1

    .end local v4    # "y":I
    .local v3, "y":I
    if-gez v1, :cond_3

    .line 1077
    xor-int/lit8 v1, v3, -0x80

    int-to-long v4, v1

    .local v4, "x":J
    goto/16 :goto_1

    .line 1078
    .end local v4    # "x":J
    :cond_3
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tempPos":I
    .local v1, "tempPos":I
    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v3

    move v3, v0

    if-ltz v0, :cond_4

    .line 1079
    xor-int/lit16 v0, v3, 0x3f80

    int-to-long v4, v0

    move v0, v1

    .restart local v4    # "x":J
    goto/16 :goto_1

    .line 1080
    .end local v4    # "x":J
    :cond_4
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v1, v3

    move v3, v1

    if-gez v1, :cond_5

    .line 1081
    const v1, -0x1fc080

    xor-int/2addr v1, v3

    int-to-long v4, v1

    .restart local v4    # "x":J
    goto/16 :goto_1

    .line 1082
    .end local v4    # "x":J
    :cond_5
    int-to-long v4, v3

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v0, v2, v0

    int-to-long v6, v0

    const/16 v0, 0x1c

    shl-long/2addr v6, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    .local v6, "x":J
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-ltz v0, :cond_6

    .line 1083
    const-wide/32 v4, 0xfe03f80

    xor-long/2addr v4, v6

    move v0, v1

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_1

    .line 1084
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_6
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v1, v2, v1

    int-to-long v4, v1

    const/16 v1, 0x23

    shl-long/2addr v4, v1

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v1, v4, v8

    if-gez v1, :cond_7

    .line 1085
    const-wide v4, -0x7f01fc080L

    xor-long/2addr v4, v6

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_1

    .line 1086
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_7
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v0, v2, v0

    int-to-long v4, v0

    const/16 v0, 0x2a

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v0, v4, v8

    if-ltz v0, :cond_8

    .line 1087
    const-wide v4, 0x3f80fe03f80L

    xor-long/2addr v4, v6

    move v0, v1

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_1

    .line 1088
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_8
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v1, v2, v1

    int-to-long v4, v1

    const/16 v1, 0x31

    shl-long/2addr v4, v1

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v1, v4, v8

    if-gez v1, :cond_9

    .line 1089
    const-wide v4, -0x1fc07f01fc080L

    xor-long/2addr v4, v6

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_1

    .line 1098
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_9
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tempPos":I
    .restart local v1    # "tempPos":I
    aget-byte v0, v2, v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    .line 1099
    .end local v6    # "x":J
    .restart local v4    # "x":J
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v4, v6

    .line 1108
    cmp-long v0, v4, v8

    if-gez v0, :cond_a

    .line 1109
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v1, v2, v1

    int-to-long v6, v1

    cmp-long v1, v6, v8

    if-gez v1, :cond_b

    .line 1110
    nop

    .line 1117
    .end local v0    # "tempPos":I
    .end local v2    # "buffer":[B
    .end local v3    # "y":I
    .end local v4    # "x":J
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    .line 1108
    .restart local v1    # "tempPos":I
    .restart local v2    # "buffer":[B
    .restart local v3    # "y":I
    .restart local v4    # "x":J
    :cond_a
    move v0, v1

    .line 1114
    .end local v1    # "tempPos":I
    .restart local v0    # "tempPos":I
    :cond_b
    :goto_1
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1115
    return-wide v4
.end method

.method readRawVarint64SlowPath()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1122
    const-wide/16 v0, 0x0

    .line 1123
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "shift":I
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 1124
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawByte()B

    move-result v3

    .line 1125
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 1126
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_0

    .line 1127
    return-wide v0

    .line 1123
    .end local v3    # "b":B
    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 1130
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

    .line 958
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

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

    .line 963
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

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

    .line 968
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->decodeZigZag32(I)I

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

    .line 973
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 785
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 786
    .local v0, "size":I
    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 789
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 790
    .local v1, "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 791
    return-object v1

    .line 794
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 795
    const-string v1, ""

    return-object v1

    .line 797
    :cond_1
    if-gez v0, :cond_2

    .line 798
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 800
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 805
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 806
    .local v0, "size":I
    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 807
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v1

    .line 808
    .local v1, "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 809
    return-object v1

    .line 812
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 813
    const-string v1, ""

    return-object v1

    .line 815
    :cond_1
    if-gtz v0, :cond_2

    .line 816
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 818
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

    .line 616
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    .line 618
    return v0

    .line 621
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    .line 622
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    return v0

    .line 625
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

    .line 948
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

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

    .line 755
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

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

    .line 857
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 858
    return-void
.end method

.method public resetSizeCounter()V
    .locals 1

    .line 1176
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    .line 1177
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

    .line 644
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 665
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 662
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipRawBytes(I)V

    .line 663
    return v2

    .line 660
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 655
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipMessage()V

    .line 656
    nop

    .line 657
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    invoke-static {v0, v1}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 656
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 658
    return v2

    .line 652
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipRawBytes(I)V

    .line 653
    return v2

    .line 649
    :pswitch_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipRawBytes(I)V

    .line 650
    return v2

    .line 646
    :pswitch_5
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipRawVarint()V

    .line 647
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

    .line 671
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 716
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 710
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 711
    .local v0, "value":I
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 712
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 713
    return v1

    .line 706
    .end local v0    # "value":I
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 695
    :pswitch_2
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 696
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipMessage(Lcom/google/protobuf/CodedOutputStream;)V

    .line 697
    nop

    .line 699
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    const/4 v2, 0x4

    .line 698
    invoke-static {v0, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 700
    .local v0, "endtag":I
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 701
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 702
    return v1

    .line 688
    .end local v0    # "endtag":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 689
    .local v0, "value":Lcom/google/protobuf/ByteString;
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 690
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    .line 691
    return v1

    .line 681
    .end local v0    # "value":Lcom/google/protobuf/ByteString;
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 682
    .local v2, "value":J
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 683
    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 684
    return v1

    .line 674
    .end local v2    # "value":J
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readInt64()J

    move-result-wide v2

    .line 675
    .restart local v2    # "value":J
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 676
    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 677
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

    .line 723
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readTag()I

    move-result v0

    .line 724
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 727
    .end local v0    # "tag":I
    :cond_0
    goto :goto_0

    .line 725
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

    .line 733
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->readTag()I

    move-result v0

    .line 734
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->skipField(ILcom/google/protobuf/CodedOutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 737
    .end local v0    # "tag":I
    :cond_0
    goto :goto_0

    .line 735
    .restart local v0    # "tag":I
    :cond_1
    :goto_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1261
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 1263
    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1264
    return-void

    .line 1267
    :cond_0
    if-gez p1, :cond_1

    .line 1268
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1270
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method
