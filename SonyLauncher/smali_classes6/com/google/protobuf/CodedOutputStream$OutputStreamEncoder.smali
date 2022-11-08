.class final Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;
.super Lcom/google/protobuf/CodedOutputStream$AbstractBufferedEncoder;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OutputStreamEncoder"
.end annotation


# instance fields
.field private final out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    .line 2712
    invoke-direct {p0, p2}, Lcom/google/protobuf/CodedOutputStream$AbstractBufferedEncoder;-><init>(I)V

    .line 2713
    if-eqz p1, :cond_0

    .line 2716
    iput-object p1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    .line 2717
    return-void

    .line 2714
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doFlush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3062
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 3063
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 3064
    return-void
.end method

.method private flushIfNotAvailable(I)V
    .locals 2
    .param p1, "requiredSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3056
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 3057
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 3059
    :cond_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2972
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    if-lez v0, :cond_0

    .line 2974
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2976
    :cond_0
    return-void
.end method

.method public write(B)V
    .locals 2
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2866
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    if-ne v0, v1, :cond_0

    .line 2867
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2870
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer(B)V

    .line 2871
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3018
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 3019
    .local v0, "length":I
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    .line 3021
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 3022
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 3023
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    goto :goto_1

    .line 3027
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v1, v2

    .line 3028
    .local v1, "bytesWritten":I
    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 3029
    sub-int/2addr v0, v1

    .line 3030
    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 3031
    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 3032
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 3037
    :goto_0
    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    const/4 v3, 0x0

    if-le v0, v2, :cond_1

    .line 3039
    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v4, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    invoke-virtual {p1, v2, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 3040
    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    invoke-virtual {v2, v4, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 3041
    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    sub-int/2addr v0, v2

    .line 3042
    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    goto :goto_0

    .line 3044
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 3045
    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 3046
    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 3048
    .end local v1    # "bytesWritten":I
    :goto_1
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2980
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    .line 2982
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2983
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2984
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    goto :goto_1

    .line 2988
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v0, v1

    .line 2989
    .local v0, "bytesWritten":I
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2990
    add-int/2addr p2, v0

    .line 2991
    sub-int/2addr p3, v0

    .line 2992
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2993
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 2994
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2999
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    if-gt p3, v1, :cond_1

    .line 3001
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3002
    iput p3, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    goto :goto_0

    .line 3005
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 3007
    :goto_0
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 3009
    .end local v0    # "bytesWritten":I
    :goto_1
    return-void
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

    .line 2761
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2762
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2763
    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer(B)V

    .line 2764
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

    .line 2780
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeByteArray(I[BII)V

    .line 2781
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

    .line 2787
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2788
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeByteArrayNoTag([BII)V

    .line 2789
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

    .line 2806
    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2807
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->write([BII)V

    .line 2808
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

    .line 2793
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2794
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2795
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    .line 2796
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

    .line 2774
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2775
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    .line 2776
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

    .line 2800
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2801
    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/ByteOutput;)V

    .line 2802
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

    .line 2740
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2741
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2742
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed32NoTag(I)V

    .line 2743
    return-void
.end method

.method public writeFixed32NoTag(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2891
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2892
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed32NoTag(I)V

    .line 2893
    return-void
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

    .line 2754
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2755
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2756
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed64NoTag(J)V

    .line 2757
    return-void
.end method

.method public writeFixed64NoTag(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2903
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2904
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed64NoTag(J)V

    .line 2905
    return-void
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

    .line 2726
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2727
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2728
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferInt32NoTag(I)V

    .line 2729
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

    .line 2875
    if-ltz p1, :cond_0

    .line 2876
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    goto :goto_0

    .line 2879
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt64NoTag(J)V

    .line 2881
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

    .line 3052
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 3053
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

    .line 3013
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->write([BII)V

    .line 3014
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

    .line 2823
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2824
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V

    .line 2825
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

    .line 2830
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2831
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessageNoTag(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)V

    .line 2832
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

    .line 2854
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2855
    invoke-interface {p1, p0}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2856
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

    .line 2860
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/AbstractMessageLite;

    invoke-virtual {v0, p2}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2861
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->wrapper:Lcom/google/protobuf/CodedOutputStreamWriter;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 2862
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

    .line 2837
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2838
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    .line 2839
    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2840
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2841
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

    .line 2812
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2813
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->write([BII)V

    goto :goto_0

    .line 2815
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2816
    .local v0, "duplicated":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2817
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 2819
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

    .line 2846
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2847
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    .line 2848
    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2849
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2850
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

    .line 2768
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2769
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeStringNoTag(Ljava/lang/String;)V

    .line 2770
    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2912
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2913
    .local v0, "maxLength":I
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    move-result v1

    .line 2917
    .local v1, "maxLengthVarIntSize":I
    add-int v2, v1, v0

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    if-le v2, v3, :cond_0

    .line 2922
    new-array v2, v0, [B

    .line 2923
    .local v2, "encodedBytes":[B
    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0}, Lcom/google/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v4

    .line 2924
    .local v4, "actualLength":I
    invoke-virtual {p0, v4}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2925
    invoke-virtual {p0, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeLazy([BII)V

    .line 2926
    return-void

    .line 2930
    .end local v2    # "encodedBytes":[B
    .end local v4    # "actualLength":I
    :cond_0
    add-int v2, v1, v0

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v4, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 2932
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2937
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    .line 2938
    .local v2, "minLengthVarIntSize":I
    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I
    :try_end_0
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2941
    .local v3, "oldPosition":I
    if-ne v2, v1, :cond_2

    .line 2942
    add-int v4, v3, v2

    :try_start_1
    iput v4, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2943
    iget-object v4, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    iget v6, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v7, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v6, v7

    invoke-static {p1, v4, v5, v6}, Lcom/google/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v4

    .line 2946
    .local v4, "newPosition":I
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2947
    sub-int v5, v4, v3

    sub-int/2addr v5, v2

    .line 2948
    .local v5, "length":I
    invoke-virtual {p0, v5}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

    .line 2949
    iput v4, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2950
    .end local v4    # "newPosition":I
    goto :goto_0

    .line 2951
    .end local v5    # "length":I
    :cond_2
    invoke-static {p1}, Lcom/google/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v4

    move v5, v4

    .line 2952
    .restart local v5    # "length":I
    invoke-virtual {p0, v5}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

    .line 2953
    iget-object v4, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v6, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-static {p1, v4, v6, v5}, Lcom/google/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v4

    iput v4, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2955
    :goto_0
    iget v4, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I
    :try_end_1
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2964
    nop

    .line 2967
    .end local v0    # "maxLength":I
    .end local v1    # "maxLengthVarIntSize":I
    .end local v2    # "minLengthVarIntSize":I
    .end local v3    # "oldPosition":I
    .end local v5    # "length":I
    goto :goto_1

    .line 2962
    .restart local v0    # "maxLength":I
    .restart local v1    # "maxLengthVarIntSize":I
    .restart local v2    # "minLengthVarIntSize":I
    .restart local v3    # "oldPosition":I
    :catch_0
    move-exception v4

    .line 2963
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_2
    new-instance v5, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v5, v4}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;
    .end local p1    # "value":Ljava/lang/String;
    throw v5

    .line 2956
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local p0    # "this":Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;
    .restart local p1    # "value":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 2959
    .local v4, "e":Lcom/google/protobuf/Utf8$UnpairedSurrogateException;
    iget v5, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    iget v6, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v6, v3

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 2960
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2961
    nop

    .end local p0    # "this":Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;
    .end local p1    # "value":Ljava/lang/String;
    throw v4
    :try_end_2
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2965
    .end local v0    # "maxLength":I
    .end local v1    # "maxLengthVarIntSize":I
    .end local v2    # "minLengthVarIntSize":I
    .end local v3    # "oldPosition":I
    .end local v4    # "e":Lcom/google/protobuf/Utf8$UnpairedSurrogateException;
    .restart local p0    # "this":Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;
    .restart local p1    # "value":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 2966
    .local v0, "e":Lcom/google/protobuf/Utf8$UnpairedSurrogateException;
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/google/protobuf/Utf8$UnpairedSurrogateException;)V

    .line 2968
    .end local v0    # "e":Lcom/google/protobuf/Utf8$UnpairedSurrogateException;
    :goto_1
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

    .line 2721
    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2722
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

    .line 2733
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2734
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2735
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

    .line 2736
    return-void
.end method

.method public writeUInt32NoTag(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2885
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2886
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

    .line 2887
    return-void
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

    .line 2747
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2748
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2749
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt64NoTag(J)V

    .line 2750
    return-void
.end method

.method public writeUInt64NoTag(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2897
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2898
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt64NoTag(J)V

    .line 2899
    return-void
.end method
