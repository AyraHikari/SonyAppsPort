.class final Lcom/google/protobuf/UnsafeUtil;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;,
        Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;
    }
.end annotation


# static fields
.field private static final BOOLEAN_ARRAY_BASE_OFFSET:J

.field private static final BOOLEAN_ARRAY_INDEX_SCALE:J

.field private static final BUFFER_ADDRESS_OFFSET:J

.field private static final BYTE_ARRAY_ALIGNMENT:I

.field static final BYTE_ARRAY_BASE_OFFSET:J

.field private static final DOUBLE_ARRAY_BASE_OFFSET:J

.field private static final DOUBLE_ARRAY_INDEX_SCALE:J

.field private static final FLOAT_ARRAY_BASE_OFFSET:J

.field private static final FLOAT_ARRAY_INDEX_SCALE:J

.field private static final HAS_UNSAFE_ARRAY_OPERATIONS:Z

.field private static final HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

.field private static final INT_ARRAY_BASE_OFFSET:J

.field private static final INT_ARRAY_INDEX_SCALE:J

.field static final IS_BIG_ENDIAN:Z

.field private static final LONG_ARRAY_BASE_OFFSET:J

.field private static final LONG_ARRAY_INDEX_SCALE:J

.field private static final MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

.field private static final OBJECT_ARRAY_BASE_OFFSET:J

.field private static final OBJECT_ARRAY_INDEX_SCALE:J

.field private static final STRIDE:I = 0x8

.field private static final STRIDE_ALIGNMENT_MASK:I = 0x7

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 44
    const-class v0, [D

    const-class v1, [F

    const-class v2, [J

    const-class v3, [I

    const-class v4, [Z

    const-class v5, Lcom/google/protobuf/UnsafeUtil;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    sput-object v5, Lcom/google/protobuf/UnsafeUtil;->logger:Ljava/util/logging/Logger;

    .line 45
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v5

    sput-object v5, Lcom/google/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    .line 46
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getMemoryAccessor()Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    move-result-object v5

    sput-object v5, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 48
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->supportsUnsafeByteBufferOperations()Z

    move-result v5

    sput-boolean v5, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    .line 49
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->supportsUnsafeArrayOperations()Z

    move-result v5

    sput-boolean v5, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    .line 51
    const-class v5, [B

    invoke-static {v5}, Lcom/google/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v5

    int-to-long v5, v5

    sput-wide v5, Lcom/google/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    .line 55
    invoke-static {v4}, Lcom/google/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v7

    int-to-long v7, v7

    sput-wide v7, Lcom/google/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_BASE_OFFSET:J

    .line 56
    invoke-static {v4}, Lcom/google/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v4

    int-to-long v7, v4

    sput-wide v7, Lcom/google/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_INDEX_SCALE:J

    .line 58
    invoke-static {v3}, Lcom/google/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v4

    int-to-long v7, v4

    sput-wide v7, Lcom/google/protobuf/UnsafeUtil;->INT_ARRAY_BASE_OFFSET:J

    .line 59
    invoke-static {v3}, Lcom/google/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/google/protobuf/UnsafeUtil;->INT_ARRAY_INDEX_SCALE:J

    .line 61
    invoke-static {v2}, Lcom/google/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/google/protobuf/UnsafeUtil;->LONG_ARRAY_BASE_OFFSET:J

    .line 62
    invoke-static {v2}, Lcom/google/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/google/protobuf/UnsafeUtil;->LONG_ARRAY_INDEX_SCALE:J

    .line 64
    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/google/protobuf/UnsafeUtil;->FLOAT_ARRAY_BASE_OFFSET:J

    .line 65
    invoke-static {v1}, Lcom/google/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/google/protobuf/UnsafeUtil;->FLOAT_ARRAY_INDEX_SCALE:J

    .line 67
    invoke-static {v0}, Lcom/google/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/google/protobuf/UnsafeUtil;->DOUBLE_ARRAY_BASE_OFFSET:J

    .line 68
    invoke-static {v0}, Lcom/google/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/protobuf/UnsafeUtil;->DOUBLE_ARRAY_INDEX_SCALE:J

    .line 70
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/protobuf/UnsafeUtil;->OBJECT_ARRAY_BASE_OFFSET:J

    .line 71
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/protobuf/UnsafeUtil;->OBJECT_ARRAY_INDEX_SCALE:J

    .line 73
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->bufferAddressField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnsafeUtil;->fieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/protobuf/UnsafeUtil;->BUFFER_ADDRESS_OFFSET:J

    .line 77
    const-wide/16 v0, 0x7

    and-long/2addr v0, v5

    long-to-int v0, v0

    sput v0, Lcom/google/protobuf/UnsafeUtil;->BYTE_ARRAY_ALIGNMENT:I

    .line 80
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addressOffset(Ljava/nio/ByteBuffer;)J
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 274
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/google/protobuf/UnsafeUtil;->BUFFER_ADDRESS_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 96
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static arrayBaseOffset(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 107
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private static arrayIndexScale(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 111
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private static bufferAddressField()Ljava/lang/reflect/Field;
    .locals 3

    .line 388
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 389
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method static copyMemory(J[BJJ)V
    .locals 8
    .param p0, "srcOffset"    # J
    .param p2, "target"    # [B
    .param p3, "targetIndex"    # J
    .param p5, "length"    # J

    .line 241
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->copyMemory(J[BJJ)V

    .line 242
    return-void
.end method

.method static copyMemory([BJJJ)V
    .locals 8
    .param p0, "src"    # [B
    .param p1, "srcIndex"    # J
    .param p3, "targetOffset"    # J
    .param p5, "length"    # J

    .line 237
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->copyMemory([BJJJ)V

    .line 238
    return-void
.end method

.method static copyMemory([BJ[BJJ)V
    .locals 3
    .param p0, "src"    # [B
    .param p1, "srcIndex"    # J
    .param p3, "target"    # [B
    .param p4, "targetIndex"    # J
    .param p6, "length"    # J

    .line 245
    long-to-int v0, p1

    long-to-int v1, p4

    long-to-int v2, p6

    invoke-static {p0, v0, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    return-void
.end method

.method private static field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 480
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    .local v0, "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 481
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v0

    .line 483
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    move-object v0, v1

    .line 485
    .local v0, "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v0
.end method

.method private static fieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 471
    if-eqz p0, :cond_1

    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0
.end method

.method private static firstDifferingByteIndexNativeEndian(JJ)I
    .locals 2
    .param p0, "left"    # J
    .param p2, "right"    # J

    .line 401
    sget-boolean v0, Lcom/google/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_0

    .line 402
    xor-long v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    goto :goto_0

    .line 403
    :cond_0
    xor-long v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    :goto_0
    nop

    .line 404
    .local v0, "n":I
    shr-int/lit8 v1, v0, 0x3

    return v1
.end method

.method static getBoolean(Ljava/lang/Object;J)Z
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .line 139
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method static getBoolean([ZJ)Z
    .locals 5
    .param p0, "target"    # [Z
    .param p1, "index"    # J

    .line 197
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/google/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method static getByte(J)B
    .locals 1
    .param p0, "address"    # J

    .line 249
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getByte(J)B

    move-result v0

    return v0
.end method

.method static getByte(Ljava/lang/Object;J)B
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .line 115
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method static getByte([BJ)B
    .locals 3
    .param p0, "target"    # [B
    .param p1, "index"    # J

    .line 171
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/google/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method static getDouble(Ljava/lang/Object;J)D
    .locals 2
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .line 155
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method static getDouble([DJ)D
    .locals 5
    .param p0, "target"    # [D
    .param p1, "index"    # J

    .line 217
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/google/protobuf/UnsafeUtil;->DOUBLE_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/UnsafeUtil;->DOUBLE_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method static getFloat(Ljava/lang/Object;J)F
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .line 147
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method static getFloat([FJ)F
    .locals 5
    .param p0, "target"    # [F
    .param p1, "index"    # J

    .line 207
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/google/protobuf/UnsafeUtil;->FLOAT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/UnsafeUtil;->FLOAT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method static getInt(J)I
    .locals 1
    .param p0, "address"    # J

    .line 257
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(J)I

    move-result v0

    return v0
.end method

.method static getInt(Ljava/lang/Object;J)I
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .line 123
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static getInt([IJ)I
    .locals 5
    .param p0, "target"    # [I
    .param p1, "index"    # J

    .line 179
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/google/protobuf/UnsafeUtil;->INT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/UnsafeUtil;->INT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static getLong(J)J
    .locals 2
    .param p0, "address"    # J

    .line 265
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLong(Ljava/lang/Object;J)J
    .locals 2
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .line 131
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLong([JJ)J
    .locals 5
    .param p0, "target"    # [J
    .param p1, "index"    # J

    .line 187
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/google/protobuf/UnsafeUtil;->LONG_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/UnsafeUtil;->LONG_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMemoryAccessor()Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;
    .locals 2

    .line 314
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    return-object v0

    .line 317
    :cond_0
    new-instance v1, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    invoke-direct {v1, v0}, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    return-object v1
.end method

.method static getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .line 163
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getObject([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 5
    .param p0, "target"    # [Ljava/lang/Object;
    .param p1, "index"    # J

    .line 227
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/google/protobuf/UnsafeUtil;->OBJECT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/UnsafeUtil;->OBJECT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 278
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getUnsafe()Lsun/misc/Unsafe;
    .locals 2

    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, "unsafe":Lsun/misc/Unsafe;
    :try_start_0
    new-instance v1, Lcom/google/protobuf/UnsafeUtil$1;

    invoke-direct {v1}, Lcom/google/protobuf/UnsafeUtil$1;-><init>()V

    .line 288
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 308
    goto :goto_0

    .line 305
    :catchall_0
    move-exception v1

    .line 309
    :goto_0
    return-object v0
.end method

.method static hasUnsafeArrayOperations()Z
    .locals 1

    .line 85
    sget-boolean v0, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    return v0
.end method

.method static hasUnsafeByteBufferOperations()Z
    .locals 1

    .line 89
    sget-boolean v0, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    return v0
.end method

.method static mismatch([BI[BII)I
    .locals 9
    .param p0, "left"    # [B
    .param p1, "leftOff"    # I
    .param p2, "right"    # [B
    .param p3, "rightOff"    # I
    .param p4, "length"    # I

    .line 416
    if-ltz p1, :cond_6

    if-ltz p3, :cond_6

    if-ltz p4, :cond_6

    add-int v0, p1, p4

    array-length v1, p0

    if-gt v0, v1, :cond_6

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_6

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "index":I
    sget-boolean v1, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    if-eqz v1, :cond_3

    .line 426
    sget v1, Lcom/google/protobuf/UnsafeUtil;->BYTE_ARRAY_ALIGNMENT:I

    add-int/2addr v1, p1

    and-int/lit8 v1, v1, 0x7

    .line 433
    .local v1, "leftAlignment":I
    :goto_0
    if-ge v0, p4, :cond_1

    and-int/lit8 v2, v1, 0x7

    if-eqz v2, :cond_1

    .line 435
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_0

    .line 436
    return v0

    .line 434
    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :cond_1
    sub-int v2, p4, v0

    and-int/lit8 v2, v2, -0x8

    add-int/2addr v2, v0

    .line 446
    .local v2, "strideLength":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 447
    sget-wide v3, Lcom/google/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v5, p1

    add-long/2addr v5, v3

    int-to-long v7, v0

    add-long/2addr v5, v7

    invoke-static {p0, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 448
    .local v5, "leftLongWord":J
    int-to-long v7, p3

    add-long/2addr v3, v7

    int-to-long v7, v0

    add-long/2addr v3, v7

    invoke-static {p2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 449
    .local v3, "rightLongWord":J
    cmp-long v7, v5, v3

    if-eqz v7, :cond_2

    .line 451
    invoke-static {v5, v6, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->firstDifferingByteIndexNativeEndian(JJ)I

    move-result v7

    add-int/2addr v7, v0

    return v7

    .line 446
    .end local v3    # "rightLongWord":J
    .end local v5    # "leftLongWord":J
    :cond_2
    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 458
    .end local v1    # "leftAlignment":I
    .end local v2    # "strideLength":I
    :cond_3
    :goto_2
    if-ge v0, p4, :cond_5

    .line 459
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    add-int v2, p3, v0

    aget-byte v2, p2, v2

    if-eq v1, v2, :cond_4

    .line 460
    return v0

    .line 458
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 463
    :cond_5
    const/4 v1, -0x1

    return v1

    .line 421
    .end local v0    # "index":I
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 103
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method static putBoolean(Ljava/lang/Object;JZ)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # Z

    .line 143
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    .line 144
    return-void
.end method

.method static putBoolean([ZJZ)V
    .locals 5
    .param p0, "target"    # [Z
    .param p1, "index"    # J
    .param p3, "value"    # Z

    .line 202
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/google/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    .line 204
    return-void
.end method

.method static putByte(JB)V
    .locals 1
    .param p0, "address"    # J
    .param p2, "value"    # B

    .line 253
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putByte(JB)V

    .line 254
    return-void
.end method

.method static putByte(Ljava/lang/Object;JB)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # B

    .line 119
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putByte(Ljava/lang/Object;JB)V

    .line 120
    return-void
.end method

.method static putByte([BJB)V
    .locals 3
    .param p0, "target"    # [B
    .param p1, "index"    # J
    .param p3, "value"    # B

    .line 175
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/google/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putByte(Ljava/lang/Object;JB)V

    .line 176
    return-void
.end method

.method static putDouble(Ljava/lang/Object;JD)V
    .locals 6
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # D

    .line 159
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    .line 160
    return-void
.end method

.method static putDouble([DJD)V
    .locals 6
    .param p0, "target"    # [D
    .param p1, "index"    # J
    .param p3, "value"    # D

    .line 222
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/google/protobuf/UnsafeUtil;->DOUBLE_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/UnsafeUtil;->DOUBLE_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long v2, v1, v3

    move-object v1, p0

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    .line 224
    return-void
.end method

.method static putFloat(Ljava/lang/Object;JF)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # F

    .line 151
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    .line 152
    return-void
.end method

.method static putFloat([FJF)V
    .locals 5
    .param p0, "target"    # [F
    .param p1, "index"    # J
    .param p3, "value"    # F

    .line 212
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/google/protobuf/UnsafeUtil;->FLOAT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/UnsafeUtil;->FLOAT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    .line 214
    return-void
.end method

.method static putInt(JI)V
    .locals 1
    .param p0, "address"    # J
    .param p2, "value"    # I

    .line 261
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putInt(JI)V

    .line 262
    return-void
.end method

.method static putInt(Ljava/lang/Object;JI)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # I

    .line 127
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putInt(Ljava/lang/Object;JI)V

    .line 128
    return-void
.end method

.method static putInt([IJI)V
    .locals 5
    .param p0, "target"    # [I
    .param p1, "index"    # J
    .param p3, "value"    # I

    .line 183
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/google/protobuf/UnsafeUtil;->INT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/UnsafeUtil;->INT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putInt(Ljava/lang/Object;JI)V

    .line 184
    return-void
.end method

.method static putLong(JJ)V
    .locals 1
    .param p0, "address"    # J
    .param p2, "value"    # J

    .line 269
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putLong(JJ)V

    .line 270
    return-void
.end method

.method static putLong(Ljava/lang/Object;JJ)V
    .locals 6
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # J

    .line 135
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putLong(Ljava/lang/Object;JJ)V

    .line 136
    return-void
.end method

.method static putLong([JJJ)V
    .locals 6
    .param p0, "target"    # [J
    .param p1, "index"    # J
    .param p3, "value"    # J

    .line 192
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/google/protobuf/UnsafeUtil;->LONG_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/UnsafeUtil;->LONG_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long v2, v1, v3

    move-object v1, p0

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putLong(Ljava/lang/Object;JJ)V

    .line 194
    return-void
.end method

.method static putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 168
    return-void
.end method

.method static putObject([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 5
    .param p0, "target"    # [Ljava/lang/Object;
    .param p1, "index"    # J
    .param p3, "value"    # Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/google/protobuf/UnsafeUtil;->OBJECT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/google/protobuf/UnsafeUtil;->OBJECT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 234
    return-void
.end method

.method private static supportsUnsafeArrayOperations()Z
    .locals 8

    .line 322
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 323
    return v1

    .line 326
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 327
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "objectFieldOffset"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 328
    const-string v2, "arrayBaseOffset"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 329
    const-string v2, "arrayIndexScale"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 330
    const-string v2, "getInt"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 331
    const-string v2, "putInt"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 332
    const-string v2, "getLong"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 333
    const-string v2, "putLong"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 334
    const-string v2, "getObject"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 335
    const-string v2, "putObject"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 336
    const-string v2, "getByte"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 337
    const-string v2, "putByte"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 338
    const-string v2, "getBoolean"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 339
    const-string v2, "putBoolean"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 340
    const-string v2, "getFloat"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 341
    const-string v2, "putFloat"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 342
    const-string v2, "getDouble"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 343
    const-string v2, "putDouble"

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    return v3

    .line 346
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/google/protobuf/UnsafeUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 351
    .end local v0    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method private static supportsUnsafeByteBufferOperations()Z
    .locals 9

    .line 355
    const-string v0, "copyMemory"

    const-string v1, "getLong"

    sget-object v2, Lcom/google/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 356
    return v3

    .line 359
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 361
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "objectFieldOffset"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/reflect/Field;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 362
    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 364
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->bufferAddressField()Ljava/lang/reflect/Field;

    move-result-object v6

    if-nez v6, :cond_1

    .line 365
    return v3

    .line 368
    :cond_1
    const-string v6, "getByte"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 369
    const-string v6, "putByte"

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 370
    const-string v6, "getInt"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 371
    const-string v6, "putInt"

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 372
    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 373
    const-string v1, "putLong"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 374
    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v2, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 375
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v6, v1

    const/4 v1, 0x4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v6, v1

    invoke-virtual {v2, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    return v5

    .line 377
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 382
    .end local v0    # "e":Ljava/lang/Throwable;
    return v3
.end method
