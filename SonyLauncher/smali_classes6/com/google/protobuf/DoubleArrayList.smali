.class final Lcom/google/protobuf/DoubleArrayList;
.super Lcom/google/protobuf/AbstractProtobufList;
.source "DoubleArrayList.java"

# interfaces
.implements Lcom/google/protobuf/Internal$DoubleList;
.implements Ljava/util/RandomAccess;
.implements Lcom/google/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractProtobufList<",
        "Ljava/lang/Double;",
        ">;",
        "Lcom/google/protobuf/Internal$DoubleList;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/google/protobuf/DoubleArrayList;


# instance fields
.field private array:[D

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/google/protobuf/DoubleArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [D

    invoke-direct {v0, v2, v1}, Lcom/google/protobuf/DoubleArrayList;-><init>([DI)V

    sput-object v0, Lcom/google/protobuf/DoubleArrayList;->EMPTY_LIST:Lcom/google/protobuf/DoubleArrayList;

    .line 51
    invoke-virtual {v0}, Lcom/google/protobuf/DoubleArrayList;->makeImmutable()V

    .line 52
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/DoubleArrayList;-><init>([DI)V

    .line 70
    return-void
.end method

.method private constructor <init>([DI)V
    .locals 0
    .param p1, "other"    # [D
    .param p2, "size"    # I

    .line 75
    invoke-direct {p0}, Lcom/google/protobuf/AbstractProtobufList;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    .line 77
    iput p2, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    .line 78
    return-void
.end method

.method private addDouble(ID)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "element"    # D

    .line 176
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 177
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    if-gt p1, v0, :cond_1

    .line 181
    iget-object v1, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 183
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 186
    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 187
    .local v0, "length":I
    new-array v2, v0, [D

    .line 190
    .local v2, "newArray":[D
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iget-object v1, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iput-object v2, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    .line 197
    .end local v0    # "length":I
    .end local v2    # "newArray":[D
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    aput-wide p2, v0, p1

    .line 198
    iget v0, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    .line 199
    iget v0, p0, Lcom/google/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DoubleArrayList;->modCount:I

    .line 200
    return-void

    .line 178
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/protobuf/DoubleArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static emptyList()Lcom/google/protobuf/DoubleArrayList;
    .locals 1

    .line 55
    sget-object v0, Lcom/google/protobuf/DoubleArrayList;->EMPTY_LIST:Lcom/google/protobuf/DoubleArrayList;

    return-object v0
.end method

.method private ensureIndexInRange(I)V
    .locals 2
    .param p1, "index"    # I

    .line 269
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    if-ge p1, v0, :cond_0

    .line 272
    return-void

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/protobuf/DoubleArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Double;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Double;

    .line 165
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/protobuf/DoubleArrayList;->addDouble(ID)V

    .line 166
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DoubleArrayList;->add(ILjava/lang/Double;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 204
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Double;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 206
    invoke-static {p1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    instance-of v0, p1, Lcom/google/protobuf/DoubleArrayList;

    if-nez v0, :cond_0

    .line 210
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 213
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/DoubleArrayList;

    .line 214
    .local v0, "list":Lcom/google/protobuf/DoubleArrayList;
    iget v1, v0, Lcom/google/protobuf/DoubleArrayList;->size:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 215
    return v2

    .line 218
    :cond_1
    const v3, 0x7fffffff

    iget v4, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v3, v4

    .line 219
    .local v3, "overflow":I
    if-lt v3, v1, :cond_3

    .line 224
    add-int/2addr v4, v1

    .line 225
    .local v4, "newSize":I
    iget-object v1, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    array-length v5, v1

    if-le v4, v5, :cond_2

    .line 226
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    .line 229
    :cond_2
    iget-object v1, v0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    iget-object v5, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    iget v6, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    iget v7, v0, Lcom/google/protobuf/DoubleArrayList;->size:I

    invoke-static {v1, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iput v4, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    .line 231
    iget v1, p0, Lcom/google/protobuf/DoubleArrayList;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/DoubleArrayList;->modCount:I

    .line 232
    return v2

    .line 221
    .end local v4    # "newSize":I
    :cond_3
    new-instance v1, Ljava/lang/OutOfMemoryError;

    invoke-direct {v1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v1
.end method

.method public addDouble(D)V
    .locals 1
    .param p1, "element"    # D

    .line 171
    iget v0, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/DoubleArrayList;->addDouble(ID)V

    .line 172
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 94
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 95
    return v0

    .line 97
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/DoubleArrayList;

    if-nez v1, :cond_1

    .line 98
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 100
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/DoubleArrayList;

    .line 101
    .local v1, "other":Lcom/google/protobuf/DoubleArrayList;
    iget v2, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    iget v3, v1, Lcom/google/protobuf/DoubleArrayList;->size:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    .line 102
    return v4

    .line 105
    :cond_2
    iget-object v2, v1, Lcom/google/protobuf/DoubleArrayList;->array:[D

    .line 106
    .local v2, "arr":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    if-ge v3, v5, :cond_4

    .line 107
    iget-object v5, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    aget-wide v5, v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    aget-wide v7, v2, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    .line 108
    return v4

    .line 106
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method public get(I)Ljava/lang/Double;
    .locals 2
    .param p1, "index"    # I

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DoubleArrayList;->get(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .line 140
    invoke-direct {p0, p1}, Lcom/google/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    .line 141
    iget-object v0, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 117
    const/4 v0, 0x1

    .line 118
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    if-ge v1, v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 120
    .local v2, "bits":J
    mul-int/lit8 v4, v0, 0x1f

    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v5

    add-int v0, v4, v5

    .line 118
    .end local v2    # "bits":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$DoubleList;
    .locals 3
    .param p1, "capacity"    # I

    .line 127
    iget v0, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    if-lt p1, v0, :cond_0

    .line 130
    new-instance v0, Lcom/google/protobuf/DoubleArrayList;

    iget-object v1, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/DoubleArrayList;-><init>([DI)V

    return-object v0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DoubleArrayList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$DoubleList;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Double;
    .locals 5
    .param p1, "index"    # I

    .line 251
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 252
    invoke-direct {p0, p1}, Lcom/google/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    .line 253
    iget-object v0, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    aget-wide v1, v0, p1

    .line 254
    .local v1, "value":D
    iget v3, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_0

    .line 255
    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    .line 258
    iget v0, p0, Lcom/google/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DoubleArrayList;->modCount:I

    .line 259
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DoubleArrayList;->remove(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 237
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    if-ge v0, v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    aget-wide v1, v1, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget v1, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    .line 242
    iget v1, p0, Lcom/google/protobuf/DoubleArrayList;->modCount:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/protobuf/DoubleArrayList;->modCount:I

    .line 243
    return v4

    .line 238
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected removeRange(II)V
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 82
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 83
    if-lt p2, p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    iget v1, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget v0, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    .line 89
    iget v0, p0, Lcom/google/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DoubleArrayList;->modCount:I

    .line 90
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/Double;)Ljava/lang/Double;
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Double;

    .line 151
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/DoubleArrayList;->setDouble(ID)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DoubleArrayList;->set(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public setDouble(ID)D
    .locals 3
    .param p1, "index"    # I
    .param p2, "element"    # D

    .line 156
    invoke-virtual {p0}, Lcom/google/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 157
    invoke-direct {p0, p1}, Lcom/google/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    .line 158
    iget-object v0, p0, Lcom/google/protobuf/DoubleArrayList;->array:[D

    aget-wide v1, v0, p1

    .line 159
    .local v1, "previousValue":D
    aput-wide p2, v0, p1

    .line 160
    return-wide v1
.end method

.method public size()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/google/protobuf/DoubleArrayList;->size:I

    return v0
.end method
