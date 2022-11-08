.class Lcom/android/launcher3/util/IntSparseArrayMap$ValueIterator;
.super Ljava/lang/Object;
.source "IntSparseArrayMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/IntSparseArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private mNextIndex:I

.field final synthetic this$0:Lcom/android/launcher3/util/IntSparseArrayMap;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/IntSparseArrayMap;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/util/IntSparseArrayMap;

    .line 46
    .local p0, "this":Lcom/android/launcher3/util/IntSparseArrayMap$ValueIterator;, "Lcom/android/launcher3/util/IntSparseArrayMap<TE;>.ValueIterator;"
    iput-object p1, p0, Lcom/android/launcher3/util/IntSparseArrayMap$ValueIterator;->this$0:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/IntSparseArrayMap$ValueIterator;->mNextIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 52
    .local p0, "this":Lcom/android/launcher3/util/IntSparseArrayMap$ValueIterator;, "Lcom/android/launcher3/util/IntSparseArrayMap<TE;>.ValueIterator;"
    iget v0, p0, Lcom/android/launcher3/util/IntSparseArrayMap$ValueIterator;->mNextIndex:I

    iget-object v1, p0, Lcom/android/launcher3/util/IntSparseArrayMap$ValueIterator;->this$0:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/android/launcher3/util/IntSparseArrayMap$ValueIterator;, "Lcom/android/launcher3/util/IntSparseArrayMap<TE;>.ValueIterator;"
    iget-object v0, p0, Lcom/android/launcher3/util/IntSparseArrayMap$ValueIterator;->this$0:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v1, p0, Lcom/android/launcher3/util/IntSparseArrayMap$ValueIterator;->mNextIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/launcher3/util/IntSparseArrayMap$ValueIterator;->mNextIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 62
    .local p0, "this":Lcom/android/launcher3/util/IntSparseArrayMap$ValueIterator;, "Lcom/android/launcher3/util/IntSparseArrayMap<TE;>.ValueIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
