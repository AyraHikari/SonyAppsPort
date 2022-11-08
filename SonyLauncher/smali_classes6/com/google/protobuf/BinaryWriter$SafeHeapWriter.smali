.class final Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;
.super Lcom/google/protobuf/BinaryWriter;
.source "BinaryWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeHeapWriter"
.end annotation


# instance fields
.field private allocatedBuffer:Lcom/google/protobuf/AllocatedBuffer;

.field private buffer:[B

.field private limit:I

.field private limitMinusOne:I

.field private offset:I

.field private offsetMinusOne:I

.field private pos:I


# direct methods
.method constructor <init>(Lcom/google/protobuf/BufferAllocator;I)V
    .locals 1
    .param p1, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p2, "chunkSize"    # I

    .line 928
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/protobuf/BinaryWriter;-><init>(Lcom/google/protobuf/BufferAllocator;ILcom/google/protobuf/BinaryWriter$1;)V

    .line 929
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer()V

    .line 930
    return-void
.end method

.method private nextBuffer()V
    .locals 1

    .line 944
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->newHeapBuffer()Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(Lcom/google/protobuf/AllocatedBuffer;)V

    .line 945
    return-void
.end method

.method private nextBuffer(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 948
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->newHeapBuffer(I)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(Lcom/google/protobuf/AllocatedBuffer;)V

    .line 949
    return-void
.end method

.method private nextBuffer(Lcom/google/protobuf/AllocatedBuffer;)V
    .locals 2
    .param p1, "allocatedBuffer"    # Lcom/google/protobuf/AllocatedBuffer;

    .line 952
    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->finishCurrentBuffer()V

    .line 958
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 960
    iput-object p1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Lcom/google/protobuf/AllocatedBuffer;

    .line 961
    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 962
    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->arrayOffset()I

    move-result v0

    .line 963
    .local v0, "arrayOffset":I
    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->limit()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->limit:I

    .line 964
    invoke-virtual {p1}, Lcom/google/protobuf/AllocatedBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    .line 965
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->offsetMinusOne:I

    .line 966
    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->limitMinusOne:I

    .line 967
    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 968
    return-void

    .line 953
    .end local v0    # "arrayOffset":I
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Allocator returned non-heap buffer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeVarint32FiveBytes(I)V
    .locals 4
    .param p1, "value"    # I

    .line 1174
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v3, p1, 0x1c

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1175
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v3, p1, 0x15

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1176
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v3, p1, 0xe

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1177
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v3, p1, 0x7

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1178
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1179
    return-void
.end method

.method private writeVarint32FourBytes(I)V
    .locals 4
    .param p1, "value"    # I

    .line 1167
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v3, p1, 0x15

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1168
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v3, p1, 0xe

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1169
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v3, p1, 0x7

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1170
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 1171
    return-void
.end method

.method private writeVarint32OneByte(I)V
    .locals 3
    .param p1, "value"    # I

    .line 1152
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1153
    return-void
.end method

.method private writeVarint32ThreeBytes(I)V
    .locals 4
    .param p1, "value"    # I

    .line 1161
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v3, p1, 0xe

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1162
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v3, p1, 0x7

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1163
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1164
    return-void
.end method

.method private writeVarint32TwoBytes(I)V
    .locals 4
    .param p1, "value"    # I

    .line 1156
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v3, p1, 0x7

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1157
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 1158
    return-void
.end method

.method private writeVarint64EightBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .line 1267
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x31

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1268
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x2a

    ushr-long v3, p1, v3

    const-wide/16 v5, 0x7f

    and-long/2addr v3, v5

    const-wide/16 v7, 0x80

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1269
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x23

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1270
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x1c

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1271
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x15

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1272
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0xe

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1273
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v3, 0x7

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1274
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v3, p1, v5

    or-long/2addr v3, v7

    long-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 1275
    return-void
.end method

.method private writeVarint64FiveBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .line 1240
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x1c

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1241
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x15

    ushr-long v3, p1, v3

    const-wide/16 v5, 0x7f

    and-long/2addr v3, v5

    const-wide/16 v7, 0x80

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1242
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0xe

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1243
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v3, 0x7

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1244
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v5

    or-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1245
    return-void
.end method

.method private writeVarint64FourBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .line 1233
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x15

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1234
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0xe

    ushr-long v3, p1, v3

    const-wide/16 v5, 0x7f

    and-long/2addr v3, v5

    const-wide/16 v7, 0x80

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1235
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v3, 0x7

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1236
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v3, p1, v5

    or-long/2addr v3, v7

    long-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 1237
    return-void
.end method

.method private writeVarint64NineBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .line 1278
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x38

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1279
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x31

    ushr-long v3, p1, v3

    const-wide/16 v5, 0x7f

    and-long/2addr v3, v5

    const-wide/16 v7, 0x80

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1280
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x2a

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1281
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x23

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1282
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x1c

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1283
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x15

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1284
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0xe

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1285
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v3, 0x7

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1286
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v5

    or-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1287
    return-void
.end method

.method private writeVarint64OneByte(J)V
    .locals 3
    .param p1, "value"    # J

    .line 1218
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1219
    return-void
.end method

.method private writeVarint64SevenBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .line 1257
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x2a

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1258
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x23

    ushr-long v3, p1, v3

    const-wide/16 v5, 0x7f

    and-long/2addr v3, v5

    const-wide/16 v7, 0x80

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1259
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x1c

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1260
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x15

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1261
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0xe

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1262
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v3, 0x7

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1263
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v5

    or-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1264
    return-void
.end method

.method private writeVarint64SixBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .line 1248
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x23

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1249
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x1c

    ushr-long v3, p1, v3

    const-wide/16 v5, 0x7f

    and-long/2addr v3, v5

    const-wide/16 v7, 0x80

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1250
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x15

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1251
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0xe

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1252
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v3, 0x7

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1253
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v3, p1, v5

    or-long/2addr v3, v7

    long-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 1254
    return-void
.end method

.method private writeVarint64TenBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .line 1290
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x3f

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1291
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x38

    ushr-long v3, p1, v3

    const-wide/16 v5, 0x7f

    and-long/2addr v3, v5

    const-wide/16 v7, 0x80

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1292
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x31

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1293
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x2a

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1294
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x23

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1295
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x1c

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1296
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x15

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1297
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0xe

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1298
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v3, 0x7

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1299
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v3, p1, v5

    or-long/2addr v3, v7

    long-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 1300
    return-void
.end method

.method private writeVarint64ThreeBytes(J)V
    .locals 9
    .param p1, "value"    # J

    .line 1227
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    long-to-int v3, p1

    ushr-int/lit8 v3, v3, 0xe

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1228
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v3, 0x7

    ushr-long v3, p1, v3

    const-wide/16 v5, 0x7f

    and-long/2addr v3, v5

    const-wide/16 v7, 0x80

    or-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1229
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-long v2, p1, v5

    or-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1230
    return-void
.end method

.method private writeVarint64TwoBytes(J)V
    .locals 5
    .param p1, "value"    # J

    .line 1222
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/4 v3, 0x7

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1223
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 1224
    return-void
.end method


# virtual methods
.method bytesWrittenToCurrentBuffer()I
    .locals 2

    .line 976
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->limitMinusOne:I

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method finishCurrentBuffer()V
    .locals 3

    .line 934
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Lcom/google/protobuf/AllocatedBuffer;

    if-eqz v0, :cond_0

    .line 935
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    .line 936
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Lcom/google/protobuf/AllocatedBuffer;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    invoke-virtual {v0}, Lcom/google/protobuf/AllocatedBuffer;->arrayOffset()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AllocatedBuffer;->position(I)Lcom/google/protobuf/AllocatedBuffer;

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Lcom/google/protobuf/AllocatedBuffer;

    .line 938
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 939
    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->limitMinusOne:I

    .line 941
    :cond_0
    return-void
.end method

.method public getTotalBytesWritten()I
    .locals 2

    .line 972
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method requireSpace(I)V
    .locals 1
    .param p1, "size"    # I

    .line 1440
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 1441
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(I)V

    .line 1443
    :cond_0
    return-void
.end method

.method spaceLeft()I
    .locals 2

    .line 980
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->offsetMinusOne:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public write(B)V
    .locals 3
    .param p1, "value"    # B

    .line 1378
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    aput-byte p1, v0, v1

    .line 1379
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "value"    # Ljava/nio/ByteBuffer;

    .line 1411
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1412
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 1413
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(I)V

    .line 1416
    :cond_0
    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 1417
    iget-object v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1418
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1383
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 1384
    invoke-direct {p0, p3}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer(I)V

    .line 1387
    :cond_0
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 1388
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1389
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

    .line 1034
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 1035
    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->write(B)V

    .line 1036
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1037
    return-void
.end method

.method writeBool(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 1128
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->write(B)V

    .line 1129
    return-void
.end method

.method public writeBytes(ILcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1052
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/google/protobuf/ByteString;->writeToReverse(Lcom/google/protobuf/ByteOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    nop

    .line 1058
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 1059
    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    .line 1060
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1061
    return-void

    .line 1053
    :catch_0
    move-exception v0

    .line 1055
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeEndGroup(I)V
    .locals 1
    .param p1, "fieldNumber"    # I

    .line 1104
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1105
    return-void
.end method

.method writeFixed32(I)V
    .locals 4
    .param p1, "value"    # I

    .line 1304
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1305
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1306
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1307
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 1308
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

    .line 1006
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 1007
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeFixed32(I)V

    .line 1008
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1009
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

    .line 1027
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 1028
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeFixed64(J)V

    .line 1029
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1030
    return-void
.end method

.method writeFixed64(J)V
    .locals 5
    .param p1, "value"    # J

    .line 1312
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x38

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1313
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1314
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1315
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1316
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1317
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1318
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1319
    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    long-to-int v1, p1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 1320
    return-void
.end method

.method public writeGroup(ILjava/lang/Object;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1085
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1086
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 1087
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1088
    return-void
.end method

.method public writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "schema"    # Lcom/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1092
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1093
    invoke-interface {p3, p2, p0}, Lcom/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 1094
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1095
    return-void
.end method

.method writeInt32(I)V
    .locals 2
    .param p1, "value"    # I

    .line 1109
    if-ltz p1, :cond_0

    .line 1110
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    goto :goto_0

    .line 1112
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64(J)V

    .line 1114
    :goto_0
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

    .line 992
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 993
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeInt32(I)V

    .line 994
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 995
    return-void
.end method

.method public writeLazy(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "value"    # Ljava/nio/ByteBuffer;

    .line 1422
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1423
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 1426
    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    .line 1427
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/google/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1431
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer()V

    .line 1434
    :cond_0
    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 1435
    iget-object v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1436
    return-void
.end method

.method public writeLazy([BII)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1393
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 1396
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->totalDoneBytes:I

    .line 1397
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/AllocatedBuffer;->wrap([BII)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1401
    invoke-direct {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->nextBuffer()V

    .line 1402
    return-void

    .line 1405
    :cond_0
    iget v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 1406
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1407
    return-void
.end method

.method public writeMessage(ILjava/lang/Object;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1065
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v0

    .line 1066
    .local v0, "prevBytes":I
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Lcom/google/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 1067
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1068
    .local v1, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 1069
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    .line 1070
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1071
    return-void
.end method

.method public writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "schema"    # Lcom/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1075
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v0

    .line 1076
    .local v0, "prevBytes":I
    invoke-interface {p3, p2, p0}, Lcom/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 1077
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1078
    .local v1, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 1079
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    .line 1080
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1081
    return-void
.end method

.method writeSInt32(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1118
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    .line 1119
    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 999
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 1000
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeSInt32(I)V

    .line 1001
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1002
    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1020
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 1021
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeSInt64(J)V

    .line 1022
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1023
    return-void
.end method

.method writeSInt64(J)V
    .locals 2
    .param p1, "value"    # J

    .line 1123
    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64(J)V

    .line 1124
    return-void
.end method

.method public writeStartGroup(I)V
    .locals 1
    .param p1, "fieldNumber"    # I

    .line 1099
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1100
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1041
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v0

    .line 1042
    .local v0, "prevBytes":I
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeString(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1044
    .local v1, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 1045
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    .line 1046
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1047
    return-void
.end method

.method writeString(Ljava/lang/String;)V
    .locals 10
    .param p1, "in"    # Ljava/lang/String;

    .line 1325
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 1328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1330
    .local v0, "i":I
    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 1333
    :goto_0
    const/16 v1, 0x80

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v3, v2

    .local v3, "c":C
    if-ge v2, v1, :cond_0

    .line 1334
    iget-object v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/2addr v2, v0

    int-to-byte v4, v3

    aput-byte v4, v1, v2

    .line 1333
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1336
    .end local v3    # "c":C
    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1338
    iget v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 1339
    return-void

    .line 1341
    :cond_1
    iget v3, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 1342
    :goto_1
    if-ltz v0, :cond_8

    .line 1343
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1344
    .restart local v3    # "c":C
    if-ge v3, v1, :cond_2

    iget v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->offsetMinusOne:I

    if-le v4, v5, :cond_2

    .line 1345
    iget-object v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    add-int/lit8 v6, v4, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    int-to-byte v6, v3

    aput-byte v6, v5, v4

    goto/16 :goto_2

    .line 1346
    :cond_2
    const/16 v4, 0x800

    if-ge v3, v4, :cond_3

    iget v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    if-le v4, v5, :cond_3

    .line 1347
    iget-object v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    add-int/lit8 v6, v4, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v7, v3, 0x3f

    or-int/2addr v7, v1

    int-to-byte v7, v7

    aput-byte v7, v5, v4

    .line 1348
    add-int/lit8 v4, v6, -0x1

    iput v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v4, v3, 0x6

    or-int/lit16 v4, v4, 0x3c0

    int-to-byte v4, v4

    aput-byte v4, v5, v6

    goto/16 :goto_2

    .line 1349
    :cond_3
    const v4, 0xd800

    if-lt v3, v4, :cond_4

    const v4, 0xdfff

    if-ge v4, v3, :cond_5

    :cond_4
    iget v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    add-int/lit8 v5, v5, 0x1

    if-le v4, v5, :cond_5

    .line 1352
    iget-object v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    add-int/lit8 v6, v4, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v7, v3, 0x3f

    or-int/2addr v7, v1

    int-to-byte v7, v7

    aput-byte v7, v5, v4

    .line 1353
    add-int/lit8 v4, v6, -0x1

    iput v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v7, v3, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v1

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1354
    add-int/lit8 v6, v4, -0x1

    iput v6, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v6, v3, 0xc

    or-int/lit16 v6, v6, 0x1e0

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    goto :goto_2

    .line 1355
    :cond_5
    iget v4, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v5, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    add-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_7

    .line 1358
    const/4 v4, 0x0

    .line 1359
    .local v4, "high":C
    if-eqz v0, :cond_6

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    invoke-static {v5, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1362
    add-int/lit8 v0, v0, -0x1

    .line 1363
    invoke-static {v4, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    .line 1364
    .local v5, "codePoint":I
    iget-object v6, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    iget v7, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    and-int/lit8 v9, v5, 0x3f

    or-int/2addr v9, v1

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    .line 1365
    add-int/lit8 v7, v8, -0x1

    iput v7, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v1

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    .line 1366
    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v1

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    .line 1367
    add-int/lit8 v7, v8, -0x1

    iput v7, p0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    ushr-int/lit8 v7, v5, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    .line 1368
    .end local v4    # "high":C
    .end local v5    # "codePoint":I
    goto :goto_2

    .line 1360
    .restart local v4    # "high":C
    :cond_6
    new-instance v1, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v0, -0x1

    invoke-direct {v1, v2, v0}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v1

    .line 1370
    .end local v4    # "high":C
    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 1371
    add-int/lit8 v0, v0, 0x1

    .line 1342
    :goto_2
    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 1374
    .end local v3    # "c":C
    :cond_8
    return-void
.end method

.method writeTag(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I

    .line 1133
    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    .line 1134
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

    .line 985
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 986
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32(I)V

    .line 987
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 988
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

    .line 1013
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->requireSpace(I)V

    .line 1014
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64(J)V

    .line 1015
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeTag(II)V

    .line 1016
    return-void
.end method

.method writeVarint32(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1138
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1139
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32OneByte(I)V

    goto :goto_0

    .line 1140
    :cond_0
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_1

    .line 1141
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32TwoBytes(I)V

    goto :goto_0

    .line 1142
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    .line 1143
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32ThreeBytes(I)V

    goto :goto_0

    .line 1144
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    .line 1145
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32FourBytes(I)V

    goto :goto_0

    .line 1147
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint32FiveBytes(I)V

    .line 1149
    :goto_0
    return-void
.end method

.method writeVarint64(J)V
    .locals 1
    .param p1, "value"    # J

    .line 1183
    invoke-static {p1, p2}, Lcom/google/protobuf/BinaryWriter;->access$200(J)B

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1212
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64TenBytes(J)V

    goto :goto_0

    .line 1209
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64NineBytes(J)V

    .line 1210
    goto :goto_0

    .line 1206
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64EightBytes(J)V

    .line 1207
    goto :goto_0

    .line 1203
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64SevenBytes(J)V

    .line 1204
    goto :goto_0

    .line 1200
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64SixBytes(J)V

    .line 1201
    goto :goto_0

    .line 1197
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64FiveBytes(J)V

    .line 1198
    goto :goto_0

    .line 1194
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64FourBytes(J)V

    .line 1195
    goto :goto_0

    .line 1191
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64ThreeBytes(J)V

    .line 1192
    goto :goto_0

    .line 1188
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64TwoBytes(J)V

    .line 1189
    goto :goto_0

    .line 1185
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;->writeVarint64OneByte(J)V

    .line 1186
    nop

    .line 1215
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
