.class Lcom/android/launcher3/CellLayout$ViewCluster;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewCluster"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;
    }
.end annotation


# static fields
.field static final BOTTOM:I = 0x8

.field static final LEFT:I = 0x1

.field static final RIGHT:I = 0x4

.field static final TOP:I = 0x2


# instance fields
.field final bottomEdge:[I

.field final boundingRect:Landroid/graphics/Rect;

.field boundingRectDirty:Z

.field final comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

.field final config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

.field dirtyEdges:I

.field final leftEdge:[I

.field final rightEdge:[I

.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field final topEdge:[I

.field final views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;)V
    .locals 1
    .param p3, "config"    # Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            ")V"
        }
    .end annotation

    .line 1505
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1495
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    .line 1497
    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->-$$Nest$fgetmCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    .line 1498
    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->-$$Nest$fgetmCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    .line 1499
    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->-$$Nest$fgetmCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    .line 1500
    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->-$$Nest$fgetmCountX(Lcom/android/launcher3/CellLayout;)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    .line 1640
    new-instance p1, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    invoke-direct {p1, p0}, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;-><init>(Lcom/android/launcher3/CellLayout$ViewCluster;)V

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    .line 1506
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    .line 1507
    iput-object p3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    .line 1508
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ViewCluster;->resetEdges()V

    .line 1509
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1629
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1630
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ViewCluster;->resetEdges()V

    .line 1631
    return-void
.end method

.method computeEdge(I)V
    .locals 7
    .param p1, "which"    # I

    .line 1525
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1526
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_a

    .line 1527
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    .line 1528
    .local v2, "cs":Lcom/android/launcher3/util/CellAndSpan;
    sparse-switch p1, :sswitch_data_0

    goto :goto_5

    .line 1554
    :sswitch_0
    iget v3, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v3, v4

    .line 1555
    .local v3, "bottom":I
    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .local v4, "j":I
    :goto_1
    iget v5, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v6, v2, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_9

    .line 1556
    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    aget v6, v5, v4

    if-le v3, v6, :cond_0

    .line 1557
    aput v3, v5, v4

    .line 1555
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1538
    .end local v3    # "bottom":I
    .end local v4    # "j":I
    :sswitch_1
    iget v3, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v3, v4

    .line 1539
    .local v3, "right":I
    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .restart local v4    # "j":I
    :goto_2
    iget v5, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v6, v2, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_2

    .line 1540
    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    aget v6, v5, v4

    if-le v3, v6, :cond_1

    .line 1541
    aput v3, v5, v4

    .line 1539
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1544
    .end local v4    # "j":I
    :cond_2
    goto :goto_5

    .line 1546
    .end local v3    # "right":I
    :sswitch_2
    iget v3, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .line 1547
    .local v3, "top":I
    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .restart local v4    # "j":I
    :goto_3
    iget v5, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v6, v2, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_5

    .line 1548
    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aget v6, v5, v4

    if-lt v3, v6, :cond_3

    if-gez v6, :cond_4

    .line 1549
    :cond_3
    aput v3, v5, v4

    .line 1547
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1552
    .end local v4    # "j":I
    :cond_5
    goto :goto_5

    .line 1530
    .end local v3    # "top":I
    :sswitch_3
    iget v3, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 1531
    .local v3, "left":I
    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .restart local v4    # "j":I
    :goto_4
    iget v5, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v6, v2, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_8

    .line 1532
    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aget v6, v5, v4

    if-lt v3, v6, :cond_6

    if-gez v6, :cond_7

    .line 1533
    :cond_6
    aput v3, v5, v4

    .line 1531
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1536
    .end local v4    # "j":I
    :cond_8
    nop

    .line 1526
    .end local v2    # "cs":Lcom/android/launcher3/util/CellAndSpan;
    .end local v3    # "left":I
    :cond_9
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1563
    .end local v1    # "i":I
    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBoundingRect()Landroid/graphics/Rect;
    .locals 3

    .line 1634
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRectDirty:Z

    if-eqz v0, :cond_0

    .line 1635
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->getBoundingRectForViews(Ljava/util/ArrayList;Landroid/graphics/Rect;)V

    .line 1637
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method isViewTouchingEdge(Landroid/view/View;I)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "whichEdge"    # I

    .line 1566
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    .line 1568
    .local v0, "cs":Lcom/android/launcher3/util/CellAndSpan;
    iget v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->dirtyEdges:I

    and-int/2addr v1, p2

    if-ne v1, p2, :cond_0

    .line 1569
    invoke-virtual {p0, p2}, Lcom/android/launcher3/CellLayout$ViewCluster;->computeEdge(I)V

    .line 1570
    iget v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->dirtyEdges:I

    not-int v2, p2

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->dirtyEdges:I

    .line 1573
    :cond_0
    const/4 v1, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_4

    .line 1596
    :sswitch_0
    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .local v2, "i":I
    :goto_0
    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_8

    .line 1597
    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    aget v3, v3, v2

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-ne v3, v4, :cond_1

    .line 1598
    return v1

    .line 1596
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1582
    .end local v2    # "i":I
    :sswitch_1
    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .restart local v2    # "i":I
    :goto_1
    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    .line 1583
    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    aget v3, v3, v2

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    if-ne v3, v4, :cond_2

    .line 1584
    return v1

    .line 1582
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1587
    .end local v2    # "i":I
    :cond_3
    goto :goto_4

    .line 1589
    :sswitch_2
    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .restart local v2    # "i":I
    :goto_2
    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_5

    .line 1590
    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aget v3, v3, v2

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v5, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v4, v5

    if-ne v3, v4, :cond_4

    .line 1591
    return v1

    .line 1589
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1594
    .end local v2    # "i":I
    :cond_5
    goto :goto_4

    .line 1575
    :sswitch_3
    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .restart local v2    # "i":I
    :goto_3
    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_7

    .line 1576
    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aget v3, v3, v2

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v5, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    if-ne v3, v4, :cond_6

    .line 1577
    return v1

    .line 1575
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1580
    .end local v2    # "i":I
    :cond_7
    nop

    .line 1603
    :cond_8
    :goto_4
    const/4 v1, 0x0

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method resetEdges()V
    .locals 3

    .line 1512
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-static {v1}, Lcom/android/launcher3/CellLayout;->-$$Nest$fgetmCountX(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    .line 1513
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aput v2, v1, v0

    .line 1514
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    aput v2, v1, v0

    .line 1512
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1516
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-static {v1}, Lcom/android/launcher3/CellLayout;->-$$Nest$fgetmCountY(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1517
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aput v2, v1, v0

    .line 1518
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    aput v2, v1, v0

    .line 1516
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1520
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->dirtyEdges:I

    .line 1521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRectDirty:Z

    .line 1522
    return-void
.end method

.method shift(II)V
    .locals 4
    .param p1, "whichEdge"    # I
    .param p2, "delta"    # I

    .line 1607
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1608
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    .line 1609
    .local v2, "c":Lcom/android/launcher3/util/CellAndSpan;
    packed-switch p1, :pswitch_data_0

    .line 1621
    :pswitch_0
    iget v3, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    add-int/2addr v3, p2

    iput v3, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    goto :goto_1

    .line 1614
    :pswitch_1
    iget v3, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    add-int/2addr v3, p2

    iput v3, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 1615
    goto :goto_1

    .line 1617
    :pswitch_2
    iget v3, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    sub-int/2addr v3, p2

    iput v3, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .line 1618
    goto :goto_1

    .line 1611
    :pswitch_3
    iget v3, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    sub-int/2addr v3, p2

    iput v3, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 1612
    nop

    .line 1624
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "c":Lcom/android/launcher3/util/CellAndSpan;
    :goto_1
    goto :goto_0

    .line 1625
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ViewCluster;->resetEdges()V

    .line 1626
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sortConfigurationForEdgePush(I)V
    .locals 2
    .param p1, "edge"    # I

    .line 1661
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    iput p1, v0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    .line 1662
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1663
    return-void
.end method
