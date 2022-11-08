.class public Lcom/android/launcher3/util/IntSparseArrayMap;
.super Landroid/util/SparseArray;
.source "IntSparseArrayMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/IntSparseArrayMap$ValueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/SparseArray<",
        "TE;>;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    .local p0, "this":Lcom/android/launcher3/util/IntSparseArrayMap;, "Lcom/android/launcher3/util/IntSparseArrayMap<TE;>;"
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/util/SparseArray;
    .locals 1

    .line 26
    .local p0, "this":Lcom/android/launcher3/util/IntSparseArrayMap;, "Lcom/android/launcher3/util/IntSparseArrayMap<TE;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSparseArrayMap;->clone()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/launcher3/util/IntSparseArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "TE;>;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/android/launcher3/util/IntSparseArrayMap;, "Lcom/android/launcher3/util/IntSparseArrayMap<TE;>;"
    invoke-super {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/IntSparseArrayMap;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    .local p0, "this":Lcom/android/launcher3/util/IntSparseArrayMap;, "Lcom/android/launcher3/util/IntSparseArrayMap<TE;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSparseArrayMap;->clone()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(I)Z
    .locals 1
    .param p1, "key"    # I

    .line 29
    .local p0, "this":Lcom/android/launcher3/util/IntSparseArrayMap;, "Lcom/android/launcher3/util/IntSparseArrayMap<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 33
    .local p0, "this":Lcom/android/launcher3/util/IntSparseArrayMap;, "Lcom/android/launcher3/util/IntSparseArrayMap<TE;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSparseArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

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
            "TE;>;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/android/launcher3/util/IntSparseArrayMap;, "Lcom/android/launcher3/util/IntSparseArrayMap<TE;>;"
    new-instance v0, Lcom/android/launcher3/util/IntSparseArrayMap$ValueIterator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/IntSparseArrayMap$ValueIterator;-><init>(Lcom/android/launcher3/util/IntSparseArrayMap;)V

    return-object v0
.end method
