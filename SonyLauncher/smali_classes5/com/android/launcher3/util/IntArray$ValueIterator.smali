.class Lcom/android/launcher3/util/IntArray$ValueIterator;
.super Ljava/lang/Object;
.source "IntArray.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/IntArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mNextIndex:I

.field final synthetic this$0:Lcom/android/launcher3/util/IntArray;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/IntArray;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/util/IntArray;

    .line 283
    iput-object p1, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->this$0:Lcom/android/launcher3/util/IntArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->mNextIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 289
    iget v0, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->mNextIndex:I

    iget-object v1, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->this$0:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Integer;
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->this$0:Lcom/android/launcher3/util/IntArray;

    iget v1, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->mNextIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->mNextIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 282
    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray$ValueIterator;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->this$0:Lcom/android/launcher3/util/IntArray;

    iget v1, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->mNextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/launcher3/util/IntArray$ValueIterator;->mNextIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntArray;->removeIndex(I)V

    .line 300
    return-void
.end method
