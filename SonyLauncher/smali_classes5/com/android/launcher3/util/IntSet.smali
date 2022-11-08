.class public Lcom/android/launcher3/util/IntSet;
.super Ljava/lang/Object;
.source "IntSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final mArray:Lcom/android/launcher3/util/IntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    return-void
.end method

.method public static wrap(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;
    .locals 4
    .param p0, "array"    # Lcom/android/launcher3/util/IntArray;

    .line 100
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 101
    .local v0, "set":Lcom/android/launcher3/util/IntSet;
    iget-object v1, v0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/IntArray;->addAll(Lcom/android/launcher3/util/IntArray;)V

    .line 102
    iget-object v1, v0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget-object v1, v1, Lcom/android/launcher3/util/IntArray;->mValues:[I

    iget-object v2, v0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget v2, v2, Lcom/android/launcher3/util/IntArray;->mSize:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->sort([III)V

    .line 103
    return-object v0
.end method

.method public static wrap(Ljava/lang/Iterable;)Lcom/android/launcher3/util/IntSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/launcher3/util/IntSet;"
        }
    .end annotation

    .line 117
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 118
    .local v0, "set":Lcom/android/launcher3/util/IntSet;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/util/IntSet$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/launcher3/util/IntSet$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/IntSet;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 119
    return-object v0
.end method

.method public static varargs wrap([I)Lcom/android/launcher3/util/IntSet;
    .locals 1
    .param p0, "array"    # [I

    .line 110
    invoke-static {p0}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/IntSet;->wrap(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 3
    .param p1, "value"    # I

    .line 33
    iget-object v0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget-object v0, v0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    iget-object v1, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget v1, v1, Lcom/android/launcher3/util/IntArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 34
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 35
    iget-object v1, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/util/IntArray;->add(II)V

    .line 37
    :cond_0
    return-void
.end method

.method public addAll(Lcom/android/launcher3/util/IntSet;)Lcom/android/launcher3/util/IntSet;
    .locals 1
    .param p1, "other"    # Lcom/android/launcher3/util/IntSet;

    .line 44
    new-instance v0, Lcom/android/launcher3/util/IntSet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/IntSet$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/IntSet;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/IntSet;->forEach(Ljava/util/function/Consumer;)V

    .line 45
    return-object p0
.end method

.method public clear()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->clear()V

    .line 75
    return-void
.end method

.method public contains(I)Z
    .locals 3
    .param p1, "value"    # I

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget-object v0, v0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    iget-object v1, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget v1, v1, Lcom/android/launcher3/util/IntArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public copyFrom(Lcom/android/launcher3/util/IntSet;)V
    .locals 2
    .param p1, "other"    # Lcom/android/launcher3/util/IntSet;

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget-object v1, p1, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntArray;->copyFrom(Lcom/android/launcher3/util/IntArray;)V

    .line 97
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 79
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 80
    return v0

    .line 82
    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/util/IntSet;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/util/IntSet;

    iget-object v1, v1, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget-object v2, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/IntArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getArray()Lcom/android/launcher3/util/IntArray;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v0

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

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)V
    .locals 3
    .param p1, "value"    # I

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget-object v0, v0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    iget-object v1, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget v1, v1, Lcom/android/launcher3/util/IntArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 53
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/IntArray;->removeIndex(I)V

    .line 56
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntSet{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
