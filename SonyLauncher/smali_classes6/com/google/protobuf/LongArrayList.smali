.class final Lcom/google/protobuf/LongArrayList;
.super Lcom/google/protobuf/AbstractProtobufList;
.source "LongArrayList.java"

# interfaces
.implements Lcom/google/protobuf/Internal$LongList;
.implements Ljava/util/RandomAccess;
.implements Lcom/google/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractProtobufList<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/google/protobuf/Internal$LongList;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/google/protobuf/LongArrayList;


# instance fields
.field private array:[J

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-direct {v0, v2, v1}, Lcom/google/protobuf/LongArrayList;-><init>([JI)V

    sput-object v0, Lcom/google/protobuf/LongArrayList;->EMPTY_LIST:Lcom/google/protobuf/LongArrayList;

    .line 51
    invoke-virtual {v0}, Lcom/google/protobuf/LongArrayList;->makeImmutable()V

    .line 52
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/LongArrayList;-><init>([JI)V

    .line 70
    return-void
.end method

.method private constructor <init>([JI)V
    .locals 0
    .param p1, "other"    # [J
    .param p2, "size"    # I

    .line 75
    invoke-direct {p0}, Lcom/google/protobuf/AbstractProtobufList;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    .line 77
    iput p2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    .line 78
    return-void
.end method

.method private addLong(IJ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "element"    # J

    .line 175
    invoke-virtual {p0}, Lcom/google/protobuf/LongArrayList;->ensureIsMutable()V

    .line 176
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    if-gt p1, v0, :cond_1

    .line 180
    iget-object v1, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 182
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 185
    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 186
    .local v0, "length":I
    new-array v2, v0, [J

    .line 189
    .local v2, "newArray":[J
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget-object v1, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/google/protobuf/LongArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iput-object v2, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    .line 196
    .end local v0    # "length":I
    .end local v2    # "newArray":[J
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aput-wide p2, v0, p1

    .line 197
    iget v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    .line 198
    iget v0, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    .line 199
    return-void

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/protobuf/LongArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static emptyList()Lcom/google/protobuf/LongArrayList;
    .locals 1

    .line 55
    sget-object v0, Lcom/google/protobuf/LongArrayList;->EMPTY_LIST:Lcom/google/protobuf/LongArrayList;

    return-object v0
.end method

.method private ensureIndexInRange(I)V
    .locals 2
    .param p1, "index"    # I

    .line 268
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    if-ge p1, v0, :cond_0

    .line 271
    return-void

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/protobuf/LongArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 274
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

    iget v1, p0, Lcom/google/protobuf/LongArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Long;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Long;

    .line 164
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/protobuf/LongArrayList;->addLong(IJ)V

    .line 165
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LongArrayList;->add(ILjava/lang/Long;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 203
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/LongArrayList;->ensureIsMutable()V

    .line 205
    invoke-static {p1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    if-nez v0, :cond_0

    .line 209
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 212
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    .line 213
    .local v0, "list":Lcom/google/protobuf/LongArrayList;
    iget v1, v0, Lcom/google/protobuf/LongArrayList;->size:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 214
    return v2

    .line 217
    :cond_1
    const v3, 0x7fffffff

    iget v4, p0, Lcom/google/protobuf/LongArrayList;->size:I

    sub-int/2addr v3, v4

    .line 218
    .local v3, "overflow":I
    if-lt v3, v1, :cond_3

    .line 223
    add-int/2addr v4, v1

    .line 224
    .local v4, "newSize":I
    iget-object v1, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    array-length v5, v1

    if-le v4, v5, :cond_2

    .line 225
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    .line 228
    :cond_2
    iget-object v1, v0, Lcom/google/protobuf/LongArrayList;->array:[J

    iget-object v5, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    iget v6, p0, Lcom/google/protobuf/LongArrayList;->size:I

    iget v7, v0, Lcom/google/protobuf/LongArrayList;->size:I

    invoke-static {v1, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iput v4, p0, Lcom/google/protobuf/LongArrayList;->size:I

    .line 230
    iget v1, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    .line 231
    return v2

    .line 220
    .end local v4    # "newSize":I
    :cond_3
    new-instance v1, Ljava/lang/OutOfMemoryError;

    invoke-direct {v1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v1
.end method

.method public addLong(J)V
    .locals 1
    .param p1, "element"    # J

    .line 170
    iget v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/LongArrayList;->addLong(IJ)V

    .line 171
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
    instance-of v1, p1, Lcom/google/protobuf/LongArrayList;

    if-nez v1, :cond_1

    .line 98
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 100
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/LongArrayList;

    .line 101
    .local v1, "other":Lcom/google/protobuf/LongArrayList;
    iget v2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    iget v3, v1, Lcom/google/protobuf/LongArrayList;->size:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    .line 102
    return v4

    .line 105
    :cond_2
    iget-object v2, v1, Lcom/google/protobuf/LongArrayList;->array:[J

    .line 106
    .local v2, "arr":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/LongArrayList;->size:I

    if-ge v3, v5, :cond_4

    .line 107
    iget-object v5, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aget-wide v5, v5, v3

    aget-wide v7, v2, v3

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

.method public get(I)Ljava/lang/Long;
    .locals 2
    .param p1, "index"    # I

    .line 134
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LongArrayList;->get(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 139
    invoke-direct {p0, p1}, Lcom/google/protobuf/LongArrayList;->ensureIndexInRange(I)V

    .line 140
    iget-object v0, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 117
    const/4 v0, 0x1

    .line 118
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    if-ge v1, v2, :cond_0

    .line 119
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int v0, v2, v3

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$LongList;
    .locals 3
    .param p1, "capacity"    # I

    .line 126
    iget v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    if-lt p1, v0, :cond_0

    .line 129
    new-instance v0, Lcom/google/protobuf/LongArrayList;

    iget-object v1, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/LongArrayList;->size:I

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;-><init>([JI)V

    return-object v0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LongArrayList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$LongList;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Long;
    .locals 5
    .param p1, "index"    # I

    .line 250
    invoke-virtual {p0}, Lcom/google/protobuf/LongArrayList;->ensureIsMutable()V

    .line 251
    invoke-direct {p0, p1}, Lcom/google/protobuf/LongArrayList;->ensureIndexInRange(I)V

    .line 252
    iget-object v0, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aget-wide v1, v0, p1

    .line 253
    .local v1, "value":J
    iget v3, p0, Lcom/google/protobuf/LongArrayList;->size:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_0

    .line 254
    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    :cond_0
    iget v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    .line 257
    iget v0, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    .line 258
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LongArrayList;->remove(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 236
    invoke-virtual {p0}, Lcom/google/protobuf/LongArrayList;->ensureIsMutable()V

    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/protobuf/LongArrayList;->size:I

    if-ge v0, v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aget-wide v1, v1, v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/google/protobuf/LongArrayList;->size:I

    sub-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iget v1, p0, Lcom/google/protobuf/LongArrayList;->size:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/google/protobuf/LongArrayList;->size:I

    .line 241
    iget v1, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    .line 242
    return v4

    .line 237
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
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
    invoke-virtual {p0}, Lcom/google/protobuf/LongArrayList;->ensureIsMutable()V

    .line 83
    if-lt p2, p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    iget v1, p0, Lcom/google/protobuf/LongArrayList;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    .line 89
    iget v0, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LongArrayList;->modCount:I

    .line 90
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/Long;)Ljava/lang/Long;
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Long;

    .line 150
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/LongArrayList;->setLong(IJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LongArrayList;->set(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public setLong(IJ)J
    .locals 3
    .param p1, "index"    # I
    .param p2, "element"    # J

    .line 155
    invoke-virtual {p0}, Lcom/google/protobuf/LongArrayList;->ensureIsMutable()V

    .line 156
    invoke-direct {p0, p1}, Lcom/google/protobuf/LongArrayList;->ensureIndexInRange(I)V

    .line 157
    iget-object v0, p0, Lcom/google/protobuf/LongArrayList;->array:[J

    aget-wide v1, v0, p1

    .line 158
    .local v1, "previousValue":J
    aput-wide p2, v0, p1

    .line 159
    return-wide v1
.end method

.method public size()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/google/protobuf/LongArrayList;->size:I

    return v0
.end method
