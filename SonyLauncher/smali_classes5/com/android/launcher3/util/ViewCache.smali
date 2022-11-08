.class public Lcom/android/launcher3/util/ViewCache;
.super Ljava/lang/Object;
.source "ViewCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/ViewCache$CacheEntry;
    }
.end annotation


# instance fields
.field protected final mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/util/ViewCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/ViewCache;->mCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "layoutId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            ")TT;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/android/launcher3/util/ViewCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ViewCache$CacheEntry;

    .line 39
    .local v0, "entry":Lcom/android/launcher3/util/ViewCache$CacheEntry;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 40
    new-instance v2, Lcom/android/launcher3/util/ViewCache$CacheEntry;

    invoke-direct {v2, v1}, Lcom/android/launcher3/util/ViewCache$CacheEntry;-><init>(I)V

    move-object v0, v2

    .line 41
    iget-object v2, p0, Lcom/android/launcher3/util/ViewCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    :cond_0
    iget v2, v0, Lcom/android/launcher3/util/ViewCache$CacheEntry;->mCurrentSize:I

    if-lez v2, :cond_1

    .line 46
    iget v2, v0, Lcom/android/launcher3/util/ViewCache$CacheEntry;->mCurrentSize:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/android/launcher3/util/ViewCache$CacheEntry;->mCurrentSize:I

    .line 47
    iget-object v1, v0, Lcom/android/launcher3/util/ViewCache$CacheEntry;->mViews:[Landroid/view/View;

    iget v2, v0, Lcom/android/launcher3/util/ViewCache$CacheEntry;->mCurrentSize:I

    aget-object v1, v1, v2

    .line 48
    .local v1, "result":Landroid/view/View;, "TT;"
    iget-object v2, v0, Lcom/android/launcher3/util/ViewCache$CacheEntry;->mViews:[Landroid/view/View;

    iget v3, v0, Lcom/android/launcher3/util/ViewCache$CacheEntry;->mCurrentSize:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    goto :goto_0

    .line 50
    .end local v1    # "result":Landroid/view/View;, "TT;"
    :cond_1
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 51
    .restart local v1    # "result":Landroid/view/View;, "TT;"
    sget v2, Lcom/android/launcher3/R$id;->cache_entry_tag_id:I

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 53
    :goto_0
    return-object v1
.end method

.method public recycleView(ILandroid/view/View;)V
    .locals 3
    .param p1, "layoutId"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/util/ViewCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ViewCache$CacheEntry;

    .line 58
    .local v0, "entry":Lcom/android/launcher3/util/ViewCache$CacheEntry;
    sget v1, Lcom/android/launcher3/R$id;->cache_entry_tag_id:I

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/launcher3/util/ViewCache$CacheEntry;->mCurrentSize:I

    iget v2, v0, Lcom/android/launcher3/util/ViewCache$CacheEntry;->mMaxSize:I

    if-ge v1, v2, :cond_1

    .line 65
    iget-object v1, v0, Lcom/android/launcher3/util/ViewCache$CacheEntry;->mViews:[Landroid/view/View;

    iget v2, v0, Lcom/android/launcher3/util/ViewCache$CacheEntry;->mCurrentSize:I

    aput-object p2, v1, v2

    .line 66
    iget v1, v0, Lcom/android/launcher3/util/ViewCache$CacheEntry;->mCurrentSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/launcher3/util/ViewCache$CacheEntry;->mCurrentSize:I

    .line 68
    :cond_1
    return-void
.end method

.method public setCacheSize(II)V
    .locals 2
    .param p1, "layoutId"    # I
    .param p2, "size"    # I

    .line 34
    iget-object v0, p0, Lcom/android/launcher3/util/ViewCache;->mCache:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/launcher3/util/ViewCache$CacheEntry;

    invoke-direct {v1, p2}, Lcom/android/launcher3/util/ViewCache$CacheEntry;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    return-void
.end method
