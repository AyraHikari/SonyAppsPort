.class public final Lcom/google/protobuf/UnknownFieldSetLite;
.super Ljava/lang/Object;
.source "UnknownFieldSetLite.java"


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/UnknownFieldSetLite;

.field private static final MIN_CAPACITY:I = 0x8


# instance fields
.field private count:I

.field private isMutable:Z

.field private memoizedSerializedSize:I

.field private objects:[Ljava/lang/Object;

.field private tags:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    new-instance v0, Lcom/google/protobuf/UnknownFieldSetLite;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/google/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 99
    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 100
    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "tags"    # [I
    .param p3, "objects"    # [Ljava/lang/Object;
    .param p4, "isMutable"    # Z

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 104
    iput p1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 105
    iput-object p2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    .line 106
    iput-object p3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 107
    iput-boolean p4, p0, Lcom/google/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 108
    return-void
.end method

.method private ensureCapacity()V
    .locals 3

    .line 400
    iget v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1

    .line 401
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    shr-int/lit8 v2, v0, 0x1

    .line 402
    .local v2, "increment":I
    :goto_0
    add-int/2addr v0, v2

    .line 404
    .local v0, "newLength":I
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    .line 405
    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 407
    .end local v0    # "newLength":I
    .end local v2    # "increment":I
    :cond_1
    return-void
.end method

.method private static equals([I[II)Z
    .locals 3
    .param p0, "tags1"    # [I
    .param p1, "tags2"    # [I
    .param p2, "count"    # I

    .line 305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 306
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 307
    const/4 v1, 0x0

    return v1

    .line 305
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static equals([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 3
    .param p0, "objects1"    # [Ljava/lang/Object;
    .param p1, "objects2"    # [Ljava/lang/Object;
    .param p2, "count"    # I

    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 315
    aget-object v1, p0, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    const/4 v1, 0x0

    return v1

    .line 314
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 1

    .line 61
    sget-object v0, Lcom/google/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/google/protobuf/UnknownFieldSetLite;

    return-object v0
.end method

.method private static hashCode([II)I
    .locals 4
    .param p0, "tags"    # [I
    .param p1, "count"    # I

    .line 347
    const/16 v0, 0x11

    .line 348
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 349
    mul-int/lit8 v2, v0, 0x1f

    aget v3, p0, v1

    add-int v0, v2, v3

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private static hashCode([Ljava/lang/Object;I)I
    .locals 4
    .param p0, "objects"    # [Ljava/lang/Object;
    .param p1, "count"    # I

    .line 355
    const/16 v0, 0x11

    .line 356
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 357
    mul-int/lit8 v2, v0, 0x1f

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 484
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->mergeFieldFrom(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    goto :goto_1

    .line 487
    .end local v0    # "tag":I
    :cond_0
    goto :goto_0

    .line 488
    :cond_1
    :goto_1
    return-object p0
.end method

.method static mutableCopyOf(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 7
    .param p0, "first"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p1, "second"    # Lcom/google/protobuf/UnknownFieldSetLite;

    .line 74
    iget v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    iget v1, p1, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    add-int/2addr v0, v1

    .line 75
    .local v0, "count":I
    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 76
    .local v1, "tags":[I
    iget-object v2, p1, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    iget v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    iget v4, p1, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, "objects":[Ljava/lang/Object;
    iget-object v3, p1, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    iget v6, p1, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v3, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    new-instance v3, Lcom/google/protobuf/UnknownFieldSetLite;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v3
.end method

.method static newInstance()Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 1

    .line 66
    new-instance v0, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-direct {v0}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>()V

    return-object v0
.end method

.method private static writeField(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 3
    .param p0, "tag"    # I
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 208
    .local v0, "fieldNumber":I
    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 234
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 213
    :pswitch_1
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    .line 214
    goto :goto_0

    .line 222
    :pswitch_2
    invoke-interface {p2}, Lcom/google/protobuf/Writer;->fieldOrder()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v1, v2, :cond_0

    .line 223
    invoke-interface {p2, v0}, Lcom/google/protobuf/Writer;->writeStartGroup(I)V

    .line 224
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/Writer;)V

    .line 225
    invoke-interface {p2, v0}, Lcom/google/protobuf/Writer;->writeEndGroup(I)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-interface {p2, v0}, Lcom/google/protobuf/Writer;->writeEndGroup(I)V

    .line 228
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/Writer;)V

    .line 229
    invoke-interface {p2, v0}, Lcom/google/protobuf/Writer;->writeStartGroup(I)V

    .line 231
    goto :goto_0

    .line 219
    :pswitch_3
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-interface {p2, v0, v1}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 220
    goto :goto_0

    .line 216
    :pswitch_4
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    .line 217
    goto :goto_0

    .line 210
    :pswitch_5
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    .line 211
    nop

    .line 236
    :goto_0
    return-void

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


# virtual methods
.method checkMutable()V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->isMutable:Z

    if-eqz v0, :cond_0

    .line 124
    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 324
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 325
    return v0

    .line 328
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 329
    return v1

    .line 332
    :cond_1
    instance-of v2, p1, Lcom/google/protobuf/UnknownFieldSetLite;

    if-nez v2, :cond_2

    .line 333
    return v1

    .line 336
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 337
    .local v2, "other":Lcom/google/protobuf/UnknownFieldSetLite;
    iget v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    iget v4, v2, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ne v3, v4, :cond_4

    iget-object v4, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    iget-object v5, v2, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    .line 338
    invoke-static {v4, v5, v3}, Lcom/google/protobuf/UnknownFieldSetLite;->equals([I[II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget-object v4, v2, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 339
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/UnknownFieldSetLite;->equals([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 343
    :cond_3
    return v0

    .line 340
    :cond_4
    :goto_0
    return v1
.end method

.method public getSerializedSize()I
    .locals 6

    .line 267
    iget v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 268
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 269
    return v0

    .line 272
    :cond_0
    const/4 v0, 0x0

    .line 273
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ge v1, v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v1

    .line 275
    .local v2, "tag":I
    invoke-static {v2}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v3

    .line 276
    .local v3, "fieldNumber":I
    invoke-static {v2}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 295
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 281
    :pswitch_1
    iget-object v4, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 282
    goto :goto_1

    .line 290
    :pswitch_2
    nop

    .line 291
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 292
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 293
    goto :goto_1

    .line 287
    :pswitch_3
    iget-object v4, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 288
    goto :goto_1

    .line 284
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v4

    add-int/2addr v0, v4

    .line 285
    goto :goto_1

    .line 278
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v0, v4

    .line 279
    nop

    .line 273
    .end local v2    # "tag":I
    .end local v3    # "fieldNumber":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "i":I
    :cond_1
    iput v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 301
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

.method public getSerializedSizeAsMessageSet()I
    .locals 5

    .line 243
    iget v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 244
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 245
    return v0

    .line 248
    :cond_0
    const/4 v0, 0x0

    .line 249
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ge v1, v2, :cond_1

    .line 250
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v1

    .line 251
    .local v2, "tag":I
    invoke-static {v2}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v3

    .line 252
    .local v3, "fieldNumber":I
    iget-object v4, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 253
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeRawMessageSetExtensionSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 249
    .end local v2    # "tag":I
    .end local v3    # "fieldNumber":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v1    # "i":I
    :cond_1
    iput v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 258
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 364
    const/16 v0, 0x11

    .line 366
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    add-int/2addr v1, v2

    .line 367
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v3, v2}, Lcom/google/protobuf/UnknownFieldSetLite;->hashCode([II)I

    move-result v2

    add-int/2addr v0, v2

    .line 368
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v2, v3}, Lcom/google/protobuf/UnknownFieldSetLite;->hashCode([Ljava/lang/Object;I)I

    move-result v2

    add-int/2addr v1, v2

    .line 370
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    return v1
.end method

.method public makeImmutable()V
    .locals 1

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 117
    return-void
.end method

.method mergeFieldFrom(ILcom/google/protobuf/CodedInputStream;)Z
    .locals 5
    .param p1, "tag"    # I
    .param p2, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 419
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 420
    .local v0, "fieldNumber":I
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 442
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 425
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 426
    return v2

    .line 440
    :pswitch_1
    const/4 v1, 0x0

    return v1

    .line 434
    :pswitch_2
    new-instance v1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-direct {v1}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>()V

    .line 435
    .local v1, "subFieldSet":Lcom/google/protobuf/UnknownFieldSetLite;
    invoke-direct {v1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/UnknownFieldSetLite;

    .line 436
    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 437
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 438
    return v2

    .line 431
    .end local v1    # "subFieldSet":Lcom/google/protobuf/UnknownFieldSetLite;
    :pswitch_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 432
    return v2

    .line 428
    :pswitch_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 429
    return v2

    .line 422
    :pswitch_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 423
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

.method mergeLengthDelimitedField(ILcom/google/protobuf/ByteString;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;

    .line 469
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 470
    if-eqz p1, :cond_0

    .line 474
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 476
    return-object p0

    .line 471
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I

    .line 453
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 454
    if-eqz p1, :cond_0

    .line 458
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    int-to-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 460
    return-object p0

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final printWithIndent(Ljava/lang/StringBuilder;I)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I

    .line 382
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 384
    .local v1, "fieldNumber":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {p1, p2, v2, v3}, Lcom/google/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 382
    .end local v1    # "fieldNumber":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method storeField(ILjava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 390
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 391
    invoke-direct {p0}, Lcom/google/protobuf/UnknownFieldSetLite;->ensureCapacity()V

    .line 393
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    iget v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    aput p1, v0, v1

    .line 394
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aput-object p2, v0, v1

    .line 395
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    .line 396
    return-void
.end method

.method public writeAsMessageSetTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 167
    .local v1, "fieldNumber":I
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeRawMessageSetExtension(ILcom/google/protobuf/ByteString;)V

    .line 165
    .end local v1    # "fieldNumber":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method writeAsMessageSetTo(Lcom/google/protobuf/Writer;)V
    .locals 3
    .param p1, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-interface {p1}, Lcom/google/protobuf/Writer;->fieldOrder()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_1

    .line 175
    iget v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 177
    .local v1, "fieldNumber":I
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    .line 175
    .end local v1    # "fieldNumber":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 181
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 183
    .restart local v1    # "fieldNumber":I
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    .line 181
    .end local v1    # "fieldNumber":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    .line 134
    .local v1, "tag":I
    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v2

    .line 135
    .local v2, "fieldNumber":I
    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 154
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v3

    throw v3

    .line 140
    :pswitch_1
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 141
    goto :goto_1

    .line 149
    :pswitch_2
    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 150
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v3, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 151
    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 152
    goto :goto_1

    .line 146
    :pswitch_3
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 147
    goto :goto_1

    .line 143
    :pswitch_4
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 144
    goto :goto_1

    .line 137
    :pswitch_5
    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 138
    nop

    .line 132
    .end local v1    # "tag":I
    .end local v2    # "fieldNumber":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "i":I
    :cond_0
    return-void

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

.method public writeTo(Lcom/google/protobuf/Writer;)V
    .locals 3
    .param p1, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-nez v0, :cond_0

    .line 191
    return-void

    .line 195
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/Writer;->fieldOrder()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_2

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeField(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_2

    .line 200
    :cond_2
    iget v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 201
    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeField(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 200
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 204
    .end local v0    # "i":I
    :cond_3
    :goto_2
    return-void
.end method
