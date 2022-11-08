.class public Lcom/android/launcher3/util/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/IntArray$ValueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_INT:[I

.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field mSize:I

.field mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/util/IntArray;->EMPTY_INT:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    .line 52
    sget-object v0, Lcom/android/launcher3/util/IntArray;->EMPTY_INT:[I

    iput-object v0, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    goto :goto_0

    .line 54
    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    .line 56
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    .line 57
    return-void
.end method

.method private constructor <init>([II)V
    .locals 0
    .param p1, "array"    # [I
    .param p2, "size"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    .line 37
    iput p2, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    .line 38
    return-void
.end method

.method private static checkBounds(II)V
    .locals 3
    .param p0, "len"    # I
    .param p1, "index"    # I

    .line 272
    if-ltz p1, :cond_0

    if-le p0, p1, :cond_0

    .line 275
    return-void

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureCapacity(I)V
    .locals 7
    .param p1, "count"    # I

    .line 116
    iget v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    .line 117
    .local v0, "currentSize":I
    add-int v1, v0, p1

    .line 118
    .local v1, "minCapacity":I
    iget-object v2, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    array-length v3, v2

    if-lt v1, v3, :cond_2

    .line 119
    const/4 v3, 0x6

    if-ge v0, v3, :cond_0

    .line 120
    const/16 v3, 0xc

    goto :goto_0

    :cond_0
    shr-int/lit8 v3, v0, 0x1

    :goto_0
    add-int/2addr v3, v0

    .line 121
    .local v3, "targetCap":I
    if-le v3, v1, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    .line 122
    .local v4, "newCapacity":I
    :goto_1
    new-array v5, v4, [I

    .line 123
    .local v5, "newValues":[I
    const/4 v6, 0x0

    invoke-static {v2, v6, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iput-object v5, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    .line 126
    .end local v3    # "targetCap":I
    .end local v4    # "newCapacity":I
    .end local v5    # "newValues":[I
    :cond_2
    return-void
.end method

.method public static fromConcatString(Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;
    .locals 5
    .param p0, "concatString"    # Ljava/lang/String;

    .line 254
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [I

    .line 256
    .local v1, "array":[I
    const/4 v2, 0x0

    .line 257
    .local v2, "count":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    :cond_0
    new-instance v3, Lcom/android/launcher3/util/IntArray;

    array-length v4, v1

    invoke-direct {v3, v1, v4}, Lcom/android/launcher3/util/IntArray;-><init>([II)V

    return-object v3
.end method

.method public static varargs wrap([I)Lcom/android/launcher3/util/IntArray;
    .locals 2
    .param p0, "array"    # [I

    .line 63
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/util/IntArray;-><init>([II)V

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "value"    # I

    .line 70
    iget v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/IntArray;->add(II)V

    .line 71
    return-void
.end method

.method public add(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/IntArray;->ensureCapacity(I)V

    .line 81
    iget v1, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    sub-int v2, v1, p1

    .line 82
    .local v2, "rightSegment":I
    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    .line 83
    invoke-static {v1, p1}, Lcom/android/launcher3/util/IntArray;->checkBounds(II)V

    .line 85
    if-eqz v2, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    aput p2, v0, p1

    .line 91
    return-void
.end method

.method public addAll(Lcom/android/launcher3/util/IntArray;)V
    .locals 5
    .param p1, "values"    # Lcom/android/launcher3/util/IntArray;

    .line 97
    iget v0, p1, Lcom/android/launcher3/util/IntArray;->mSize:I

    .line 98
    .local v0, "count":I
    invoke-direct {p0, v0}, Lcom/android/launcher3/util/IntArray;->ensureCapacity(I)V

    .line 100
    iget-object v1, p1, Lcom/android/launcher3/util/IntArray;->mValues:[I

    iget-object v2, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    iget v3, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget v1, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    .line 102
    return-void
.end method

.method public clear()V
    .locals 1

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    .line 133
    return-void
.end method

.method public clone()Lcom/android/launcher3/util/IntArray;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->clone()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public contains(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public copyFrom(Lcom/android/launcher3/util/IntArray;)V
    .locals 0
    .param p1, "other"    # Lcom/android/launcher3/util/IntArray;

    .line 108
    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->clear()V

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->addAll(Lcom/android/launcher3/util/IntArray;)V

    .line 110
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 142
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 143
    return v0

    .line 145
    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/util/IntArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 146
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/util/IntArray;

    .line 147
    .local v1, "arr":Lcom/android/launcher3/util/IntArray;
    iget v3, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    iget v4, v1, Lcom/android/launcher3/util/IntArray;->mSize:I

    if-ne v3, v4, :cond_3

    .line 148
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    if-ge v3, v4, :cond_2

    .line 149
    iget-object v4, v1, Lcom/android/launcher3/util/IntArray;->mValues:[I

    aget v4, v4, v3

    iget-object v5, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    aget v5, v5, v3

    if-eq v4, v5, :cond_1

    .line 150
    return v2

    .line 148
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    .end local v3    # "i":I
    :cond_2
    return v0

    .line 156
    .end local v1    # "arr":Lcom/android/launcher3/util/IntArray;
    :cond_3
    return v2
.end method

.method public get(I)I
    .locals 1
    .param p1, "index"    # I

    .line 163
    iget v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/launcher3/util/IntArray;->checkBounds(II)V

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    aget v0, v0, p1

    return v0
.end method

.method public indexOf(I)I
    .locals 3
    .param p1, "value"    # I

    .line 180
    iget v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    .line 181
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 182
    iget-object v2, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 183
    return v1

    .line 181
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 194
    iget v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 279
    new-instance v0, Lcom/android/launcher3/util/IntArray$ValueIterator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/IntArray$ValueIterator;-><init>(Lcom/android/launcher3/util/IntArray;)V

    return-object v0
.end method

.method public removeAllValues(Lcom/android/launcher3/util/IntArray;)V
    .locals 2
    .param p1, "values"    # Lcom/android/launcher3/util/IntArray;

    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p1, Lcom/android/launcher3/util/IntArray;->mSize:I

    if-ge v0, v1, :cond_0

    .line 221
    iget-object v1, p1, Lcom/android/launcher3/util/IntArray;->mValues:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public removeIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .line 201
    iget v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/launcher3/util/IntArray;->checkBounds(II)V

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iget v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    .line 204
    return-void
.end method

.method public removeValue(I)V
    .locals 1
    .param p1, "value"    # I

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result v0

    .line 211
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/IntArray;->removeIndex(I)V

    .line 214
    :cond_0
    return-void
.end method

.method public set(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 171
    iget v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/launcher3/util/IntArray;->checkBounds(II)V

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    aput p2, v0, p1

    .line 173
    return-void
.end method

.method public size()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    return v0
.end method

.method public toArray()[I
    .locals 2

    .line 236
    iget v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/IntArray;->EMPTY_INT:[I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toConcatString()Ljava/lang/String;
    .locals 3

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    if-ge v1, v2, :cond_1

    .line 245
    if-lez v1, :cond_0

    .line 246
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
