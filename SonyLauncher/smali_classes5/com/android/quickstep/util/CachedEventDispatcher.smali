.class public Lcom/android/quickstep/util/CachedEventDispatcher;
.super Ljava/lang/Object;
.source "CachedEventDispatcher.java"


# instance fields
.field private mCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastEvent:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 37
    iget-object v0, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mLastEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Lcom/android/systemui/shared/system/InputChannelCompat;->mergeMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mCache:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mCache:Ljava/util/ArrayList;

    .line 45
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mLastEvent:Landroid/view/MotionEvent;

    .line 46
    iget-object v1, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_3
    :goto_0
    return-void
.end method

.method public hasConsumer()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setConsumer(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/MotionEvent;>;"
    if-nez p1, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mConsumer:Ljava/util/function/Consumer;

    .line 56
    iget-object v0, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mCache:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 57
    .local v0, "cacheCount":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 58
    iget-object v2, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 59
    .local v2, "ev":Landroid/view/MotionEvent;
    iget-object v3, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {v3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 57
    .end local v2    # "ev":Landroid/view/MotionEvent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mCache:Ljava/util/ArrayList;

    .line 63
    iput-object v1, p0, Lcom/android/quickstep/util/CachedEventDispatcher;->mLastEvent:Landroid/view/MotionEvent;

    .line 64
    return-void
.end method
