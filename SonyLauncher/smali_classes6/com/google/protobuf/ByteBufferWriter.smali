.class final Lcom/google/protobuf/ByteBufferWriter;
.super Ljava/lang/Object;
.source "ByteBufferWriter.java"


# static fields
.field private static final BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private static final BUFFER_REALLOCATION_THRESHOLD:F = 0.5f

.field private static final CHANNEL_FIELD_OFFSET:J

.field private static final FILE_OUTPUT_STREAM_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final MAX_CACHED_BUFFER_SIZE:I = 0x4000

.field private static final MIN_CACHED_BUFFER_SIZE:I = 0x400


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/protobuf/ByteBufferWriter;->BUFFER:Ljava/lang/ThreadLocal;

    .line 75
    const-string v0, "java.io.FileOutputStream"

    invoke-static {v0}, Lcom/google/protobuf/ByteBufferWriter;->safeGetClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/ByteBufferWriter;->FILE_OUTPUT_STREAM_CLASS:Ljava/lang/Class;

    .line 77
    invoke-static {v0}, Lcom/google/protobuf/ByteBufferWriter;->getChannelFieldOffset(Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/protobuf/ByteBufferWriter;->CHANNEL_FIELD_OFFSET:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearCachedBuffer()V
    .locals 2

    .line 84
    sget-object v0, Lcom/google/protobuf/ByteBufferWriter;->BUFFER:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method private static getBuffer()[B
    .locals 2

    .line 137
    sget-object v0, Lcom/google/protobuf/ByteBufferWriter;->BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 138
    .local v0, "sr":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<[B>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_0
    return-object v1
.end method

.method private static getChannelFieldOffset(Ljava/lang/Class;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)J"
        }
    .end annotation

    .line 172
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "channel"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 174
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-static {v0}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v1

    .line 176
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 178
    :cond_0
    nop

    .line 179
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static getOrCreateBuffer(I)[B
    .locals 2
    .param p0, "requestedSize"    # I

    .line 115
    const/16 v0, 0x400

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 117
    invoke-static {}, Lcom/google/protobuf/ByteBufferWriter;->getBuffer()[B

    move-result-object v0

    .line 119
    .local v0, "buffer":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    invoke-static {p0, v1}, Lcom/google/protobuf/ByteBufferWriter;->needToReallocate(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    :cond_0
    new-array v0, p0, [B

    .line 123
    const/16 v1, 0x4000

    if-gt p0, v1, :cond_1

    .line 124
    invoke-static {v0}, Lcom/google/protobuf/ByteBufferWriter;->setBuffer([B)V

    .line 127
    :cond_1
    return-object v0
.end method

.method private static needToReallocate(II)Z
    .locals 3
    .param p0, "requestedSize"    # I
    .param p1, "bufferLength"    # I

    .line 132
    if-ge p1, p0, :cond_0

    int-to-float v0, p1

    int-to-float v1, p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static safeGetClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 164
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static setBuffer([B)V
    .locals 2
    .param p0, "value"    # [B

    .line 142
    sget-object v0, Lcom/google/protobuf/ByteBufferWriter;->BUFFER:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method static write(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 94
    .local v0, "initialPos":I
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 98
    :cond_0
    invoke-static {p0, p1}, Lcom/google/protobuf/ByteBufferWriter;->writeToChannel(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/ByteBufferWriter;->getOrCreateBuffer(I)[B

    move-result-object v1

    .line 102
    .local v1, "array":[B
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 104
    .local v2, "length":I
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v2    # "length":I
    goto :goto_0

    .line 110
    .end local v1    # "array":[B
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 111
    nop

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 111
    throw v1
.end method

.method private static writeToChannel(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)Z
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    sget-wide v0, Lcom/google/protobuf/ByteBufferWriter;->CHANNEL_FIELD_OFFSET:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    sget-object v2, Lcom/google/protobuf/ByteBufferWriter;->FILE_OUTPUT_STREAM_CLASS:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const/4 v2, 0x0

    .line 150
    .local v2, "channel":Ljava/nio/channels/WritableByteChannel;
    :try_start_0
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/WritableByteChannel;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 153
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 154
    :goto_0
    if-eqz v2, :cond_0

    .line 155
    invoke-interface {v2, p0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 156
    const/4 v0, 0x1

    return v0

    .line 159
    .end local v2    # "channel":Ljava/nio/channels/WritableByteChannel;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
