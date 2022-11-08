.class public final Lcom/google/protobuf/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Internal$FloatList;,
        Lcom/google/protobuf/Internal$DoubleList;,
        Lcom/google/protobuf/Internal$LongList;,
        Lcom/google/protobuf/Internal$BooleanList;,
        Lcom/google/protobuf/Internal$IntList;,
        Lcom/google/protobuf/Internal$ProtobufList;,
        Lcom/google/protobuf/Internal$MapAdapter;,
        Lcom/google/protobuf/Internal$ListAdapter;,
        Lcom/google/protobuf/Internal$EnumVerifier;,
        Lcom/google/protobuf/Internal$EnumLiteMap;,
        Lcom/google/protobuf/Internal$EnumLite;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

.field public static final EMPTY_CODED_INPUT_STREAM:Lcom/google/protobuf/CodedInputStream;

.field static final ISO_8859_1:Ljava/nio/charset/Charset;

.field static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 59
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 375
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    .line 378
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lcom/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    .line 381
    nop

    .line 382
    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->newInstance([B)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/Internal;->EMPTY_CODED_INPUT_STREAM:Lcom/google/protobuf/CodedInputStream;

    .line 381
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayDefaultValue(Ljava/lang/String;)[B
    .locals 1
    .param p0, "bytes"    # Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/google/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static byteBufferDefaultValue(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "bytes"    # Ljava/lang/String;

    .line 128
    invoke-static {p0}, Lcom/google/protobuf/Internal;->byteArrayDefaultValue(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static bytesDefaultValue(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p0, "bytes"    # Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/google/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 63
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 66
    return-object p0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 71
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 74
    return-object p0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "source"    # Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 142
    .local v0, "temp":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 143
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 144
    .local v1, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 145
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 146
    return-object v1
.end method

.method public static equals(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 259
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 260
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 261
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    return v2

    .line 260
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static equalsByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p0, "a"    # Ljava/nio/ByteBuffer;
    .param p1, "b"    # Ljava/nio/ByteBuffer;

    .line 306
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 307
    const/4 v0, 0x0

    return v0

    .line 311
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalsByteBuffer(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)Z"
        }
    .end annotation

    .line 316
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 317
    return v2

    .line 319
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 320
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-static {v1, v3}, Lcom/google/protobuf/Internal;->equalsByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 321
    return v2

    .line 319
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static getDefaultInstance(Ljava/lang/Class;)Lcom/google/protobuf/MessageLite;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 366
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    const-string v0, "getDefaultInstance"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 367
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 368
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get default instance for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hashBoolean(Z)I
    .locals 1
    .param p0, "b"    # Z

    .line 234
    if-eqz p0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    return v0
.end method

.method public static hashCode(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)I"
        }
    .end annotation

    .line 270
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x1

    .line 271
    .local v0, "hash":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 272
    .local v2, "bytes":[B
    mul-int/lit8 v3, v0, 0x1f

    invoke-static {v2}, Lcom/google/protobuf/Internal;->hashCode([B)I

    move-result v4

    add-int v0, v3, v4

    .line 273
    .end local v2    # "bytes":[B
    goto :goto_0

    .line 274
    :cond_0
    return v0
.end method

.method public static hashCode([B)I
    .locals 2
    .param p0, "bytes"    # [B

    .line 283
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/Internal;->hashCode([BII)I

    move-result v0

    return v0
.end method

.method static hashCode([BII)I
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 292
    invoke-static {p2, p0, p1, p2}, Lcom/google/protobuf/Internal;->partialHash(I[BII)I

    move-result v0

    .line 293
    .local v0, "h":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public static hashCodeByteBuffer(Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 340
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/protobuf/Internal;->partialHash(I[BII)I

    move-result v0

    .line 343
    .local v0, "h":I
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1

    .line 348
    .end local v0    # "h":I
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v2, 0x1000

    if-le v0, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    :goto_1
    move v0, v2

    .line 349
    .local v0, "bufferSize":I
    new-array v2, v0, [B

    .line 350
    .local v2, "buffer":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 351
    .local v3, "duplicated":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 352
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    .line 353
    .local v4, "h":I
    :goto_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_4

    .line 355
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-gt v5, v0, :cond_3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    goto :goto_3

    :cond_3
    move v5, v0

    .line 356
    .local v5, "length":I
    :goto_3
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 357
    invoke-static {v4, v2, v6, v5}, Lcom/google/protobuf/Internal;->partialHash(I[BII)I

    move-result v4

    .line 358
    .end local v5    # "length":I
    goto :goto_2

    .line 359
    :cond_4
    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    move v1, v4

    :goto_4
    return v1
.end method

.method public static hashCodeByteBuffer(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)I"
        }
    .end annotation

    .line 329
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    const/4 v0, 0x1

    .line 330
    .local v0, "hash":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 331
    .local v2, "bytes":Ljava/nio/ByteBuffer;
    mul-int/lit8 v3, v0, 0x1f

    invoke-static {v2}, Lcom/google/protobuf/Internal;->hashCodeByteBuffer(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int v0, v3, v4

    .line 332
    .end local v2    # "bytes":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 333
    :cond_0
    return v0
.end method

.method public static hashEnum(Lcom/google/protobuf/Internal$EnumLite;)I
    .locals 1
    .param p0, "e"    # Lcom/google/protobuf/Internal$EnumLite;

    .line 245
    invoke-interface {p0}, Lcom/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    return v0
.end method

.method public static hashEnumList(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/Internal$EnumLite;",
            ">;)I"
        }
    .end annotation

    .line 250
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Lcom/google/protobuf/Internal$EnumLite;>;"
    const/4 v0, 0x1

    .line 251
    .local v0, "hash":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Internal$EnumLite;

    .line 252
    .local v2, "e":Lcom/google/protobuf/Internal$EnumLite;
    mul-int/lit8 v3, v0, 0x1f

    invoke-static {v2}, Lcom/google/protobuf/Internal;->hashEnum(Lcom/google/protobuf/Internal$EnumLite;)I

    move-result v4

    add-int v0, v3, v4

    .line 253
    .end local v2    # "e":Lcom/google/protobuf/Internal$EnumLite;
    goto :goto_0

    .line 254
    :cond_0
    return v0
.end method

.method public static hashLong(J)I
    .locals 2
    .param p0, "n"    # J

    .line 225
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static isValidUtf8(Lcom/google/protobuf/ByteString;)Z
    .locals 1
    .param p0, "byteString"    # Lcom/google/protobuf/ByteString;

    .line 176
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    return v0
.end method

.method public static isValidUtf8([B)Z
    .locals 1
    .param p0, "byteArray"    # [B

    .line 181
    invoke-static {p0}, Lcom/google/protobuf/Utf8;->isValidUtf8([B)Z

    move-result v0

    return v0
.end method

.method static mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "destination"    # Ljava/lang/Object;
    .param p1, "source"    # Ljava/lang/Object;

    .line 387
    move-object v0, p0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-interface {v0, v1}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->buildPartial()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method static partialHash(I[BII)I
    .locals 3
    .param p0, "h"    # I
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 298
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 299
    mul-int/lit8 v1, p0, 0x1f

    aget-byte v2, p1, v0

    add-int p0, v1, v2

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    .end local v0    # "i":I
    :cond_0
    return p0
.end method

.method public static stringDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 186
    sget-object v0, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toStringUtf8([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .line 191
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
