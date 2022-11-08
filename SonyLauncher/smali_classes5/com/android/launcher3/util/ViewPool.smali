.class public Lcom/android/launcher3/util/ViewPool;
.super Ljava/lang/Object;
.source "ViewPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/ViewPool$Reusable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/launcher3/util/ViewPool$Reusable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCurrentSize:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayoutId:I

.field private final mParent:Landroid/view/ViewGroup;

.field private final mPool:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "layoutId"    # I
    .param p4, "maxSize"    # I
    .param p5, "initialSize"    # I

    .line 45
    .local p0, "this":Lcom/android/launcher3/util/ViewPool;, "Lcom/android/launcher3/util/ViewPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/ViewPool;->mCurrentSize:I

    .line 46
    iput p3, p0, Lcom/android/launcher3/util/ViewPool;->mLayoutId:I

    .line 47
    iput-object p2, p0, Lcom/android/launcher3/util/ViewPool;->mParent:Landroid/view/ViewGroup;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/ViewPool;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    new-array v0, p4, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/launcher3/util/ViewPool;->mPool:[Ljava/lang/Object;

    .line 51
    if-lez p5, :cond_0

    .line 52
    invoke-direct {p0, p5}, Lcom/android/launcher3/util/ViewPool;->initPool(I)V

    .line 54
    :cond_0
    return-void
.end method

.method private addToPool(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lcom/android/launcher3/util/ViewPool;, "Lcom/android/launcher3/util/ViewPool<TT;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 85
    iget v0, p0, Lcom/android/launcher3/util/ViewPool;->mCurrentSize:I

    iget-object v1, p0, Lcom/android/launcher3/util/ViewPool;->mPool:[Ljava/lang/Object;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    aput-object p1, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/util/ViewPool;->mCurrentSize:I

    .line 92
    return-void
.end method

.method private inflateNewView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            ")TT;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/android/launcher3/util/ViewPool;, "Lcom/android/launcher3/util/ViewPool<TT;>;"
    iget v0, p0, Lcom/android/launcher3/util/ViewPool;->mLayoutId:I

    iget-object v1, p0, Lcom/android/launcher3/util/ViewPool;->mParent:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initPool(I)V
    .locals 5
    .param p1, "initialSize"    # I

    .line 58
    .local p0, "this":Lcom/android/launcher3/util/ViewPool;, "Lcom/android/launcher3/util/ViewPool<TT;>;"
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 63
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/launcher3/util/ViewPool;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 67
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/launcher3/util/ViewPool$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/android/launcher3/util/ViewPool$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/ViewPool;ILandroid/view/LayoutInflater;Landroid/os/Handler;)V

    const-string v4, "ViewPool-init"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 73
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/android/launcher3/util/ViewPool;, "Lcom/android/launcher3/util/ViewPool<TT;>;"
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 97
    iget v0, p0, Lcom/android/launcher3/util/ViewPool;->mCurrentSize:I

    if-lez v0, :cond_0

    .line 98
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/util/ViewPool;->mCurrentSize:I

    .line 99
    iget-object v1, p0, Lcom/android/launcher3/util/ViewPool;->mPool:[Ljava/lang/Object;

    aget-object v0, v1, v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/ViewPool;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/ViewPool;->inflateNewView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$initPool$0$com-android-launcher3-util-ViewPool(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 70
    .local p0, "this":Lcom/android/launcher3/util/ViewPool;, "Lcom/android/launcher3/util/ViewPool<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/ViewPool;->addToPool(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$initPool$1$com-android-launcher3-util-ViewPool(ILandroid/view/LayoutInflater;Landroid/os/Handler;)V
    .locals 3
    .param p1, "initialSize"    # I
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 68
    .local p0, "this":Lcom/android/launcher3/util/ViewPool;, "Lcom/android/launcher3/util/ViewPool<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 69
    invoke-direct {p0, p2}, Lcom/android/launcher3/util/ViewPool;->inflateNewView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, "view":Landroid/view/View;, "TT;"
    new-instance v2, Lcom/android/launcher3/util/ViewPool$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/util/ViewPool$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/ViewPool;Landroid/view/View;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    .end local v1    # "view":Landroid/view/View;, "TT;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public recycle(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lcom/android/launcher3/util/ViewPool;, "Lcom/android/launcher3/util/ViewPool<TT;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 78
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/util/ViewPool$Reusable;

    invoke-interface {v0}, Lcom/android/launcher3/util/ViewPool$Reusable;->onRecycle()V

    .line 79
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/ViewPool;->addToPool(Landroid/view/View;)V

    .line 80
    return-void
.end method
