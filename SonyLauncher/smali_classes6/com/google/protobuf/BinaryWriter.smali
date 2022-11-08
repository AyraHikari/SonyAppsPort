.class abstract Lcom/google/protobuf/BinaryWriter;
.super Lcom/google/protobuf/ByteOutput;
.source "BinaryWriter.java"

# interfaces
.implements Lcom/google/protobuf/Writer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;,
        Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;,
        Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;,
        Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHUNK_SIZE:I = 0x1000

.field private static final MAP_KEY_NUMBER:I = 0x1

.field private static final MAP_VALUE_NUMBER:I = 0x2


# instance fields
.field private final alloc:Lcom/google/protobuf/BufferAllocator;

.field final buffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/protobuf/AllocatedBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final chunkSize:I

.field totalDoneBytes:I


# direct methods
.method private constructor <init>(Lcom/google/protobuf/BufferAllocator;I)V
    .locals 2
    .param p1, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p2, "chunkSize"    # I

    .line 145
    invoke-direct {p0}, Lcom/google/protobuf/ByteOutput;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    .line 146
    if-lez p2, :cond_0

    .line 149
    const-string v0, "alloc"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BufferAllocator;

    iput-object v0, p0, Lcom/google/protobuf/BinaryWriter;->alloc:Lcom/google/protobuf/BufferAllocator;

    .line 150
    iput p2, p0, Lcom/google/protobuf/BinaryWriter;->chunkSize:I

    .line 151
    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chunkSize must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/BufferAllocator;ILcom/google/protobuf/BinaryWriter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/BufferAllocator;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/protobuf/BinaryWriter$1;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter;-><init>(Lcom/google/protobuf/BufferAllocator;I)V

    return-void
.end method

.method static synthetic access$200(J)B
    .locals 1
    .param p0, "x0"    # J

    .line 69
    invoke-static {p0, p1}, Lcom/google/protobuf/BinaryWriter;->computeUInt64SizeNoTag(J)B

    move-result v0

    return v0
.end method

.method private static computeUInt64SizeNoTag(J)B
    .locals 6
    .param p0, "value"    # J

    .line 890
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 892
    const/4 v0, 0x1

    return v0

    .line 894
    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    .line 896
    const/16 v0, 0xa

    return v0

    .line 899
    :cond_1
    const/4 v0, 0x2

    .line 900
    .local v0, "n":B
    const-wide v4, -0x800000000L

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 902
    add-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 903
    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    .line 905
    :cond_2
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    .line 907
    add-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 908
    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    .line 910
    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    .line 912
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 914
    :cond_4
    return v0
.end method

.method static isUnsafeDirectSupported()Z
    .locals 1

    .line 119
    invoke-static {}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;->access$000()Z

    move-result v0

    return v0
.end method

.method static isUnsafeHeapSupported()Z
    .locals 1

    .line 115
    invoke-static {}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;->isSupported()Z

    move-result v0

    return v0
.end method

.method public static newDirectInstance(Lcom/google/protobuf/BufferAllocator;)Lcom/google/protobuf/BinaryWriter;
    .locals 1
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;

    .line 101
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/google/protobuf/BinaryWriter;->newDirectInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;

    move-result-object v0

    return-object v0
.end method

.method public static newDirectInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;
    .locals 1
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .line 109
    invoke-static {}, Lcom/google/protobuf/BinaryWriter;->isUnsafeDirectSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p0, p1}, Lcom/google/protobuf/BinaryWriter;->newUnsafeDirectInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {p0, p1}, Lcom/google/protobuf/BinaryWriter;->newSafeDirectInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0
.end method

.method public static newHeapInstance(Lcom/google/protobuf/BufferAllocator;)Lcom/google/protobuf/BinaryWriter;
    .locals 1
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;

    .line 83
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/google/protobuf/BinaryWriter;->newHeapInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;

    move-result-object v0

    return-object v0
.end method

.method public static newHeapInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;
    .locals 1
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .line 91
    invoke-static {}, Lcom/google/protobuf/BinaryWriter;->isUnsafeHeapSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {p0, p1}, Lcom/google/protobuf/BinaryWriter;->newUnsafeHeapInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {p0, p1}, Lcom/google/protobuf/BinaryWriter;->newSafeHeapInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0
.end method

.method static newSafeDirectInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;
    .locals 1
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .line 134
    new-instance v0, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeDirectWriter;-><init>(Lcom/google/protobuf/BufferAllocator;I)V

    return-object v0
.end method

.method static newSafeHeapInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;
    .locals 1
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .line 123
    new-instance v0, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/BinaryWriter$SafeHeapWriter;-><init>(Lcom/google/protobuf/BufferAllocator;I)V

    return-object v0
.end method

.method static newUnsafeDirectInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;
    .locals 2
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .line 138
    invoke-static {}, Lcom/google/protobuf/BinaryWriter;->isUnsafeDirectSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeDirectWriter;-><init>(Lcom/google/protobuf/BufferAllocator;I)V

    return-object v0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsafe operations not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static newUnsafeHeapInstance(Lcom/google/protobuf/BufferAllocator;I)Lcom/google/protobuf/BinaryWriter;
    .locals 2
    .param p0, "alloc"    # Lcom/google/protobuf/BufferAllocator;
    .param p1, "chunkSize"    # I

    .line 127
    invoke-static {}, Lcom/google/protobuf/BinaryWriter;->isUnsafeHeapSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/BinaryWriter$UnsafeHeapWriter;-><init>(Lcom/google/protobuf/BufferAllocator;I)V

    return-object v0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsafe operations not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final writeBoolList_Internal(ILcom/google/protobuf/BooleanArrayList;Z)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/BooleanArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    if-eqz p3, :cond_1

    .line 519
    invoke-virtual {p2}, Lcom/google/protobuf/BooleanArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 520
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 521
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/BooleanArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 522
    invoke-virtual {p2, v1}, Lcom/google/protobuf/BooleanArrayList;->getBoolean(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter;->writeBool(Z)V

    .line 521
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 524
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 525
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 526
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 527
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 528
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/BooleanArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 529
    invoke-virtual {p2, v0}, Lcom/google/protobuf/BooleanArrayList;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeBool(IZ)V

    .line 528
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 532
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private final writeBoolList_Internal(ILjava/util/List;Z)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_1

    .line 501
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 502
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 503
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 504
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter;->writeBool(Z)V

    .line 503
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 506
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 507
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 508
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 509
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 510
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 511
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeBool(IZ)V

    .line 510
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 514
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private final writeDoubleList_Internal(ILcom/google/protobuf/DoubleArrayList;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/DoubleArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    if-eqz p3, :cond_1

    .line 467
    invoke-virtual {p2}, Lcom/google/protobuf/DoubleArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 468
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 469
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/DoubleArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 470
    invoke-virtual {p2, v1}, Lcom/google/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 469
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 472
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 473
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 474
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 475
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 476
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/DoubleArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 477
    invoke-virtual {p2, v0}, Lcom/google/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/protobuf/BinaryWriter;->writeDouble(ID)V

    .line 476
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 480
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private final writeDoubleList_Internal(ILjava/util/List;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    if-eqz p3, :cond_1

    .line 449
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 450
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 451
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 452
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 451
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 454
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 455
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 456
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 457
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 458
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 459
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/protobuf/BinaryWriter;->writeDouble(ID)V

    .line 458
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 462
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private final writeFixed32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/IntArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    if-eqz p3, :cond_1

    .line 277
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 278
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 279
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 280
    invoke-virtual {p2, v1}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 279
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 282
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 283
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 284
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 285
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 286
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 287
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 286
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 290
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private final writeFixed32List_Internal(ILjava/util/List;Z)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_1

    .line 259
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 260
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 261
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 262
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 261
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 264
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 265
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 266
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 267
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 268
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 269
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 268
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 272
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private final writeFixed64List_Internal(ILcom/google/protobuf/LongArrayList;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/LongArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    if-eqz p3, :cond_1

    .line 375
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 376
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 377
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 378
    invoke-virtual {p2, v1}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 377
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 380
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 381
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 382
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 383
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 384
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 385
    invoke-virtual {p2, v0}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 384
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 388
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private final writeFixed64List_Internal(ILjava/util/List;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p3, :cond_1

    .line 357
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 358
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 359
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 360
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(J)V

    .line 359
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 362
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 363
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 364
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 365
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 366
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 367
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 366
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 370
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private final writeFloatList_Internal(ILcom/google/protobuf/FloatArrayList;Z)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/FloatArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    if-eqz p3, :cond_1

    .line 421
    invoke-virtual {p2}, Lcom/google/protobuf/FloatArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 422
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 423
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/FloatArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 424
    invoke-virtual {p2, v1}, Lcom/google/protobuf/FloatArrayList;->getFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 423
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 426
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 427
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 428
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 429
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 430
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/FloatArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 431
    invoke-virtual {p2, v0}, Lcom/google/protobuf/FloatArrayList;->getFloat(I)F

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeFloat(IF)V

    .line 430
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 434
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private final writeFloatList_Internal(ILjava/util/List;Z)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    if-eqz p3, :cond_1

    .line 403
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 404
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 405
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 406
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(I)V

    .line 405
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 408
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 409
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 410
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 411
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 412
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 413
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeFloat(IF)V

    .line 412
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 416
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private final writeInt32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/IntArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    if-eqz p3, :cond_1

    .line 231
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 232
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 233
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 234
    invoke-virtual {p2, v1}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter;->writeInt32(I)V

    .line 233
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 236
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 237
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 238
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 239
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 240
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 241
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeInt32(II)V

    .line 240
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 244
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private final writeInt32List_Internal(ILjava/util/List;Z)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_1

    .line 213
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 214
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 215
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 216
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter;->writeInt32(I)V

    .line 215
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 218
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 219
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 220
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 221
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 222
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 223
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeInt32(II)V

    .line 222
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 226
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private writeLazyString(ILjava/lang/Object;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 550
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 554
    :goto_0
    return-void
.end method

.method static final writeMapEntryField(Lcom/google/protobuf/Writer;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 3
    .param p0, "writer"    # Lcom/google/protobuf/Writer;
    .param p1, "fieldNumber"    # I
    .param p2, "fieldType"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p3, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    sget-object v0, Lcom/google/protobuf/BinaryWriter$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p2}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 756
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported map value type for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :pswitch_0
    instance-of v0, p3, Lcom/google/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_0

    .line 748
    move-object v0, p3

    check-cast v0, Lcom/google/protobuf/Internal$EnumLite;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_0

    .line 749
    :cond_0
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 750
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_0

    .line 752
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected type for enum in map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :pswitch_1
    move-object v0, p3

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 745
    goto/16 :goto_0

    .line 741
    :pswitch_2
    invoke-interface {p0, p1, p3}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    .line 742
    goto/16 :goto_0

    .line 738
    :pswitch_3
    move-object v0, p3

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    .line 739
    goto/16 :goto_0

    .line 735
    :pswitch_4
    move-object v0, p3

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    .line 736
    goto/16 :goto_0

    .line 732
    :pswitch_5
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    .line 733
    goto/16 :goto_0

    .line 729
    :pswitch_6
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    .line 730
    goto :goto_0

    .line 726
    :pswitch_7
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 727
    goto :goto_0

    .line 723
    :pswitch_8
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    .line 724
    goto :goto_0

    .line 720
    :pswitch_9
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    .line 721
    goto :goto_0

    .line 717
    :pswitch_a
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    .line 718
    goto :goto_0

    .line 714
    :pswitch_b
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    .line 715
    goto :goto_0

    .line 711
    :pswitch_c
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    .line 712
    goto :goto_0

    .line 708
    :pswitch_d
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    .line 709
    goto :goto_0

    .line 705
    :pswitch_e
    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    .line 706
    goto :goto_0

    .line 702
    :pswitch_f
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    .line 703
    goto :goto_0

    .line 699
    :pswitch_10
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    .line 700
    nop

    .line 758
    :goto_0
    return-void

    nop

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

.method private final writeSInt32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/IntArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    if-eqz p3, :cond_1

    .line 652
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 653
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 654
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 655
    invoke-virtual {p2, v1}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter;->writeSInt32(I)V

    .line 654
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 657
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 658
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 659
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 660
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 661
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 662
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeSInt32(II)V

    .line 661
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 665
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private final writeSInt32List_Internal(ILjava/util/List;Z)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 633
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_1

    .line 634
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 635
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 636
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 637
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter;->writeSInt32(I)V

    .line 636
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 639
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 640
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 641
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 642
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 643
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 644
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeSInt32(II)V

    .line 643
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 647
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private final writeSInt64List_Internal(ILcom/google/protobuf/LongArrayList;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/LongArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 780
    if-eqz p3, :cond_1

    .line 781
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 782
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 783
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 784
    invoke-virtual {p2, v1}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/protobuf/BinaryWriter;->writeSInt64(J)V

    .line 783
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 786
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 787
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 788
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 789
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 790
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 791
    invoke-virtual {p2, v0}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/protobuf/BinaryWriter;->writeSInt64(IJ)V

    .line 790
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 794
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private final writeSInt64List_Internal(ILjava/util/List;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 762
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p3, :cond_1

    .line 763
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 764
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 765
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 766
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/protobuf/BinaryWriter;->writeSInt64(J)V

    .line 765
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 768
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 769
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 770
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 771
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 772
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 773
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/protobuf/BinaryWriter;->writeSInt64(IJ)V

    .line 772
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 776
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private final writeUInt32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/IntArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 593
    if-eqz p3, :cond_1

    .line 594
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 595
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 596
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 597
    invoke-virtual {p2, v1}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 596
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 599
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 600
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 601
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 602
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 603
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/IntArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 604
    invoke-virtual {p2, v0}, Lcom/google/protobuf/IntArrayList;->getInt(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeUInt32(II)V

    .line 603
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 607
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private final writeUInt32List_Internal(ILjava/util/List;Z)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_1

    .line 576
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 577
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 578
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 579
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 578
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 581
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 582
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 583
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 584
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 585
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 586
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeUInt32(II)V

    .line 585
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 589
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private final writeUInt64List_Internal(ILcom/google/protobuf/LongArrayList;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p2, "list"    # Lcom/google/protobuf/LongArrayList;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    if-eqz p3, :cond_1

    .line 329
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 330
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 331
    .local v0, "prevBytes":I
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 332
    invoke-virtual {p2, v1}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/protobuf/BinaryWriter;->writeVarint64(J)V

    .line 331
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 334
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 335
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 336
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 337
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 338
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/LongArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 339
    invoke-virtual {p2, v0}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/protobuf/BinaryWriter;->writeUInt64(IJ)V

    .line 338
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 342
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private final writeUInt64List_Internal(ILjava/util/List;Z)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p3, :cond_1

    .line 311
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryWriter;->requireSpace(I)V

    .line 312
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v0

    .line 313
    .local v0, "prevBytes":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 314
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/protobuf/BinaryWriter;->writeVarint64(J)V

    .line 313
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 316
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 317
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 318
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 319
    .end local v0    # "prevBytes":I
    .end local v1    # "length":I
    goto :goto_2

    .line 320
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 321
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/protobuf/BinaryWriter;->writeUInt64(IJ)V

    .line 320
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 324
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public final complete()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/google/protobuf/AllocatedBuffer;",
            ">;"
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->finishCurrentBuffer()V

    .line 167
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method public final fieldOrder()Lcom/google/protobuf/Writer$FieldOrder;
    .locals 1

    .line 155
    sget-object v0, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    return-object v0
.end method

.method abstract finishCurrentBuffer()V
.end method

.method public abstract getTotalBytesWritten()I
.end method

.method final newDirectBuffer()Lcom/google/protobuf/AllocatedBuffer;
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter;->alloc:Lcom/google/protobuf/BufferAllocator;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter;->chunkSize:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/BufferAllocator;->allocateDirectBuffer(I)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final newDirectBuffer(I)Lcom/google/protobuf/AllocatedBuffer;
    .locals 2
    .param p1, "capacity"    # I

    .line 851
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter;->alloc:Lcom/google/protobuf/BufferAllocator;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter;->chunkSize:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/BufferAllocator;->allocateDirectBuffer(I)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final newHeapBuffer()Lcom/google/protobuf/AllocatedBuffer;
    .locals 2

    .line 839
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter;->alloc:Lcom/google/protobuf/BufferAllocator;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter;->chunkSize:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/BufferAllocator;->allocateHeapBuffer(I)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final newHeapBuffer(I)Lcom/google/protobuf/AllocatedBuffer;
    .locals 2
    .param p1, "capacity"    # I

    .line 843
    iget-object v0, p0, Lcom/google/protobuf/BinaryWriter;->alloc:Lcom/google/protobuf/BufferAllocator;

    iget v1, p0, Lcom/google/protobuf/BinaryWriter;->chunkSize:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/BufferAllocator;->allocateHeapBuffer(I)Lcom/google/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method abstract requireSpace(I)V
.end method

.method abstract writeBool(Z)V
.end method

.method public final writeBoolList(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    instance-of v0, p2, Lcom/google/protobuf/BooleanArrayList;

    if-eqz v0, :cond_0

    .line 492
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/BooleanArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/google/protobuf/BinaryWriter;->writeBoolList_Internal(ILcom/google/protobuf/BooleanArrayList;Z)V

    goto :goto_0

    .line 494
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeBoolList_Internal(ILjava/util/List;Z)V

    .line 496
    :goto_0
    return-void
.end method

.method public final writeBytesList(ILjava/util/List;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 558
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 559
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 558
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 561
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final writeDouble(ID)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 193
    return-void
.end method

.method public final writeDoubleList(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    instance-of v0, p2, Lcom/google/protobuf/DoubleArrayList;

    if-eqz v0, :cond_0

    .line 440
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/DoubleArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/google/protobuf/BinaryWriter;->writeDoubleList_Internal(ILcom/google/protobuf/DoubleArrayList;Z)V

    goto :goto_0

    .line 442
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeDoubleList_Internal(ILjava/util/List;Z)V

    .line 444
    :goto_0
    return-void
.end method

.method public final writeEnum(II)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter;->writeInt32(II)V

    .line 198
    return-void
.end method

.method public final writeEnumList(ILjava/util/List;Z)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeInt32List(ILjava/util/List;Z)V

    .line 486
    return-void
.end method

.method abstract writeFixed32(I)V
.end method

.method public final writeFixed32List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p2, Lcom/google/protobuf/IntArrayList;

    if-eqz v0, :cond_0

    .line 250
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V

    goto :goto_0

    .line 252
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32List_Internal(ILjava/util/List;Z)V

    .line 254
    :goto_0
    return-void
.end method

.method abstract writeFixed64(J)V
.end method

.method public final writeFixed64List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p2, Lcom/google/protobuf/LongArrayList;

    if-eqz v0, :cond_0

    .line 348
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed64List_Internal(ILcom/google/protobuf/LongArrayList;Z)V

    goto :goto_0

    .line 350
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed64List_Internal(ILjava/util/List;Z)V

    .line 352
    :goto_0
    return-void
.end method

.method public final writeFloat(IF)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 188
    return-void
.end method

.method public final writeFloatList(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    instance-of v0, p2, Lcom/google/protobuf/FloatArrayList;

    if-eqz v0, :cond_0

    .line 394
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/FloatArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/google/protobuf/BinaryWriter;->writeFloatList_Internal(ILcom/google/protobuf/FloatArrayList;Z)V

    goto :goto_0

    .line 396
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFloatList_Internal(ILjava/util/List;Z)V

    .line 398
    :goto_0
    return-void
.end method

.method public final writeGroupList(ILjava/util/List;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 813
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 814
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeGroup(ILjava/lang/Object;)V

    .line 813
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 816
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final writeGroupList(ILjava/util/List;Lcom/google/protobuf/Schema;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p3, "schema"    # Lcom/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 821
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 822
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/protobuf/BinaryWriter;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    .line 821
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 824
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method abstract writeInt32(I)V
.end method

.method public final writeInt32List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p2, Lcom/google/protobuf/IntArrayList;

    if-eqz v0, :cond_0

    .line 204
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/google/protobuf/BinaryWriter;->writeInt32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeInt32List_Internal(ILjava/util/List;Z)V

    .line 208
    :goto_0
    return-void
.end method

.method public final writeInt64(IJ)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeUInt64(IJ)V

    .line 178
    return-void
.end method

.method public final writeInt64List(ILjava/util/List;Z)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeUInt64List(ILjava/util/List;Z)V

    .line 296
    return-void
.end method

.method public writeMap(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 7
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 684
    .local p2, "metadata":Lcom/google/protobuf/MapEntryLite$Metadata;, "Lcom/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 685
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v2

    .line 686
    .local v2, "prevBytes":I
    iget-object v3, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {p0, v5, v3, v4}, Lcom/google/protobuf/BinaryWriter;->writeMapEntryField(Lcom/google/protobuf/Writer;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 687
    const/4 v3, 0x1

    iget-object v4, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0, v3, v4, v6}, Lcom/google/protobuf/BinaryWriter;->writeMapEntryField(Lcom/google/protobuf/Writer;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 688
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryWriter;->getTotalBytesWritten()I

    move-result v3

    sub-int/2addr v3, v2

    .line 689
    .local v3, "length":I
    invoke-virtual {p0, v3}, Lcom/google/protobuf/BinaryWriter;->writeVarint32(I)V

    .line 690
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 691
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "prevBytes":I
    .end local v3    # "length":I
    goto :goto_0

    .line 692
    :cond_0
    return-void
.end method

.method public final writeMessageList(ILjava/util/List;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 798
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 799
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeMessage(ILjava/lang/Object;)V

    .line 798
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 801
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final writeMessageList(ILjava/util/List;Lcom/google/protobuf/Schema;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p3, "schema"    # Lcom/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 807
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/protobuf/BinaryWriter;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    .line 806
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 809
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final writeMessageSetItem(ILjava/lang/Object;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 828
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 829
    instance-of v1, p2, Lcom/google/protobuf/ByteString;

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    .line 830
    move-object v1, p2

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, v2, v1}, Lcom/google/protobuf/BinaryWriter;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 832
    :cond_0
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/BinaryWriter;->writeMessage(ILjava/lang/Object;)V

    .line 834
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/BinaryWriter;->writeUInt32(II)V

    .line 835
    invoke-virtual {p0, v0, v2}, Lcom/google/protobuf/BinaryWriter;->writeTag(II)V

    .line 836
    return-void
.end method

.method public final writeSFixed32(II)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/BinaryWriter;->writeFixed32(II)V

    .line 173
    return-void
.end method

.method public final writeSFixed32List(ILjava/util/List;Z)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 612
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed32List(ILjava/util/List;Z)V

    .line 613
    return-void
.end method

.method public final writeSFixed64(IJ)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed64(IJ)V

    .line 183
    return-void
.end method

.method public final writeSFixed64List(ILjava/util/List;Z)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeFixed64List(ILjava/util/List;Z)V

    .line 619
    return-void
.end method

.method abstract writeSInt32(I)V
.end method

.method public final writeSInt32List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 624
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p2, Lcom/google/protobuf/IntArrayList;

    if-eqz v0, :cond_0

    .line 625
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/google/protobuf/BinaryWriter;->writeSInt32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V

    goto :goto_0

    .line 627
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeSInt32List_Internal(ILjava/util/List;Z)V

    .line 629
    :goto_0
    return-void
.end method

.method abstract writeSInt64(J)V
.end method

.method public final writeSInt64List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 670
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p2, Lcom/google/protobuf/LongArrayList;

    if-eqz v0, :cond_0

    .line 671
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/google/protobuf/BinaryWriter;->writeSInt64List_Internal(ILcom/google/protobuf/LongArrayList;Z)V

    goto :goto_0

    .line 673
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeSInt64List_Internal(ILjava/util/List;Z)V

    .line 675
    :goto_0
    return-void
.end method

.method abstract writeString(Ljava/lang/String;)V
.end method

.method public final writeStringList(ILjava/util/List;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 536
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v0, p2, Lcom/google/protobuf/LazyStringList;

    if-eqz v0, :cond_1

    .line 537
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/LazyStringList;

    .line 538
    .local v0, "lazyList":Lcom/google/protobuf/LazyStringList;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 539
    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/BinaryWriter;->writeLazyString(ILjava/lang/Object;)V

    .line 538
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 541
    .end local v0    # "lazyList":Lcom/google/protobuf/LazyStringList;
    .end local v1    # "i":I
    :cond_0
    goto :goto_2

    .line 542
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 543
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/BinaryWriter;->writeString(ILjava/lang/String;)V

    .line 542
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 546
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method abstract writeTag(II)V
.end method

.method public final writeUInt32List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p2, Lcom/google/protobuf/IntArrayList;

    if-eqz v0, :cond_0

    .line 567
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/google/protobuf/BinaryWriter;->writeUInt32List_Internal(ILcom/google/protobuf/IntArrayList;Z)V

    goto :goto_0

    .line 569
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeUInt32List_Internal(ILjava/util/List;Z)V

    .line 571
    :goto_0
    return-void
.end method

.method public final writeUInt64List(ILjava/util/List;Z)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p2, Lcom/google/protobuf/LongArrayList;

    if-eqz v0, :cond_0

    .line 302
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/google/protobuf/BinaryWriter;->writeUInt64List_Internal(ILcom/google/protobuf/LongArrayList;Z)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/BinaryWriter;->writeUInt64List_Internal(ILjava/util/List;Z)V

    .line 306
    :goto_0
    return-void
.end method

.method abstract writeVarint32(I)V
.end method

.method abstract writeVarint64(J)V
.end method
