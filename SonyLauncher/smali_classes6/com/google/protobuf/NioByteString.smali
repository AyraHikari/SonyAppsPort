.class final Lcom/google/protobuf/NioByteString;
.super Lcom/google/protobuf/ByteString$LeafByteString;
.source "NioByteString.java"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 51
    invoke-direct {p0}, Lcom/google/protobuf/ByteString$LeafByteString;-><init>()V

    .line 52
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/google/protobuf/NioByteString;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/NioByteString;

    .line 48
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "NioByteString instances are not to be serialized directly"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private slice(II)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 282
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-gt p2, v0, :cond_0

    if-gt p1, p2, :cond_0

    .line 287
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 288
    .local v0, "slice":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 289
    iget-object v1, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 290
    return-object v0

    .line 283
    .end local v0    # "slice":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Invalid indices [%d, %d]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asReadOnlyByteBufferList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/google/protobuf/NioByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public byteAt(I)B
    .locals 3
    .param p1, "index"    # I

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    throw v0
.end method

.method public copyTo(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "target"    # Ljava/nio/ByteBuffer;

    .line 118
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 119
    return-void
.end method

.method protected copyToInternal([BIII)V
    .locals 1
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "numberToCopy"    # I

    .line 111
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 112
    .local v0, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 113
    invoke-virtual {v0, p1, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 114
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 189
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 190
    return v0

    .line 192
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 193
    return v2

    .line 195
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 196
    .local v1, "otherString":Lcom/google/protobuf/ByteString;
    invoke-virtual {p0}, Lcom/google/protobuf/NioByteString;->size()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 197
    return v2

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/NioByteString;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 200
    return v0

    .line 202
    :cond_3
    instance-of v0, p1, Lcom/google/protobuf/NioByteString;

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    move-object v2, p1

    check-cast v2, Lcom/google/protobuf/NioByteString;

    iget-object v2, v2, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 205
    :cond_4
    instance-of v0, p1, Lcom/google/protobuf/RopeByteString;

    if-eqz v0, :cond_5

    .line 206
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 208
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method equalsRange(Lcom/google/protobuf/ByteString;II)Z
    .locals 2
    .param p1, "other"    # Lcom/google/protobuf/ByteString;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/google/protobuf/NioByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object v0

    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public internalByteAt(I)B
    .locals 1
    .param p1, "index"    # I

    .line 88
    invoke-virtual {p0, p1}, Lcom/google/protobuf/NioByteString;->byteAt(I)B

    move-result v0

    return v0
.end method

.method public isValidUtf8()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/protobuf/Utf8;->isValidUtf8(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method public newCodedInput()Lcom/google/protobuf/CodedInputStream;
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/nio/ByteBuffer;Z)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .locals 1

    .line 221
    new-instance v0, Lcom/google/protobuf/NioByteString$1;

    invoke-direct {v0, p0}, Lcom/google/protobuf/NioByteString$1;-><init>(Lcom/google/protobuf/NioByteString;)V

    return-object v0
.end method

.method protected partialHash(III)I
    .locals 3
    .param p1, "h"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 213
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 214
    mul-int/lit8 v1, p1, 0x1f

    iget-object v2, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    add-int p1, v1, v2

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "i":I
    :cond_0
    return p1
.end method

.method protected partialIsValidUtf8(III)I
    .locals 2
    .param p1, "state"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 184
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    add-int v1, p2, p3

    invoke-static {p1, v0, p2, v1}, Lcom/google/protobuf/Utf8;->partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public substring(II)Lcom/google/protobuf/ByteString;
    .locals 3
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 99
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/NioByteString;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 100
    .local v0, "slice":Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/google/protobuf/NioByteString;

    invoke-direct {v1, v0}, Lcom/google/protobuf/NioByteString;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 103
    .end local v0    # "slice":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    throw v0
.end method

.method protected toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 164
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 166
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 167
    .local v1, "offset":I
    iget-object v2, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .local v2, "length":I
    goto :goto_0

    .line 170
    .end local v0    # "bytes":[B
    .end local v1    # "offset":I
    .end local v2    # "length":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/NioByteString;->toByteArray()[B

    move-result-object v0

    .line 171
    .restart local v0    # "bytes":[B
    const/4 v1, 0x0

    .line 172
    .restart local v1    # "offset":I
    array-length v2, v0

    .line 174
    .restart local v2    # "length":I
    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v3
.end method

.method writeTo(Lcom/google/protobuf/ByteOutput;)V
    .locals 1
    .param p1, "output"    # Lcom/google/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/ByteOutput;->writeLazy(Ljava/nio/ByteBuffer;)V

    .line 147
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/google/protobuf/NioByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 124
    return-void
.end method

.method writeToInternal(Ljava/io/OutputStream;II)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "sourceOffset"    # I
    .param p3, "numberToWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    .line 137
    .local v0, "bufferOffset":I
    iget-object v1, p0, Lcom/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1, v1, v0, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 138
    return-void

    .line 141
    .end local v0    # "bufferOffset":I
    :cond_0
    add-int v0, p2, p3

    invoke-direct {p0, p2, v0}, Lcom/google/protobuf/NioByteString;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/ByteBufferWriter;->write(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V

    .line 142
    return-void
.end method
