.class Lcom/android/launcher3/CellLayout$ItemConfiguration;
.super Lcom/android/launcher3/util/CellAndSpan;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemConfiguration"
.end annotation


# instance fields
.field intersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field isSolution:Z

.field final map:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/util/CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field private final savedMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/util/CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field final sortedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2573
    invoke-direct {p0}, Lcom/android/launcher3/util/CellAndSpan;-><init>()V

    .line 2574
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    .line 2575
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Landroid/util/ArrayMap;

    .line 2576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    .line 2578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/CellLayout$ItemConfiguration-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method add(Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "cs"    # Lcom/android/launcher3/util/CellAndSpan;

    .line 2595
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2596
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/launcher3/util/CellAndSpan;

    invoke-direct {v1}, Lcom/android/launcher3/util/CellAndSpan;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2597
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2598
    return-void
.end method

.method area()I
    .locals 2

    .line 2601
    iget v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    iget v1, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    mul-int/2addr v0, v1

    return v0
.end method

.method getBoundingRectForViews(Ljava/util/ArrayList;Landroid/graphics/Rect;)V
    .locals 9
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 2605
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    .line 2606
    .local v0, "first":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2607
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    .line 2608
    .local v3, "c":Lcom/android/launcher3/util/CellAndSpan;
    if-eqz v0, :cond_0

    .line 2609
    iget v4, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v5, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v6, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v7, v3, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v6, v7

    iget v7, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v8, v3, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v7, v8

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2610
    const/4 v0, 0x0

    goto :goto_1

    .line 2612
    :cond_0
    iget v4, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v5, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v6, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v7, v3, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v6, v7

    iget v7, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v8, v3, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v7, v8

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->union(IIII)V

    .line 2614
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "c":Lcom/android/launcher3/util/CellAndSpan;
    :goto_1
    goto :goto_0

    .line 2615
    :cond_1
    return-void
.end method

.method restore()V
    .locals 4

    .line 2589
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2590
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/CellAndSpan;->copyFrom(Lcom/android/launcher3/util/CellAndSpan;)V

    .line 2591
    .end local v1    # "v":Landroid/view/View;
    goto :goto_0

    .line 2592
    :cond_0
    return-void
.end method

.method save()V
    .locals 4

    .line 2582
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2583
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/CellAndSpan;->copyFrom(Lcom/android/launcher3/util/CellAndSpan;)V

    .line 2584
    .end local v1    # "v":Landroid/view/View;
    goto :goto_0

    .line 2585
    :cond_0
    return-void
.end method
