.class Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;
.super Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PageAwareAccessibilityProvider"
.end annotation


# instance fields
.field private final mActionPageBackward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

.field private final mActionPageForward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

.field private mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field final synthetic this$0:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/viewpager2/widget/ViewPager2;

    .line 1389
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/ViewPager2$1;)V

    .line 1390
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;-><init>(Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageForward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    .line 1401
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$2;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$2;-><init>(Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageBackward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    return-void
.end method

.method private addCollectionInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4
    .param p1, "infoCompat"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1605
    const/4 v0, 0x0

    .line 1606
    .local v0, "rowCount":I
    const/4 v1, 0x0

    .line 1607
    .local v1, "colCount":I
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1608
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1609
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 1610
    const/4 v1, 0x1

    goto :goto_0

    .line 1612
    :cond_0
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 1613
    const/4 v0, 0x1

    .line 1616
    :cond_1
    :goto_0
    nop

    .line 1617
    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v2

    .line 1620
    .local v2, "collectionInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    invoke-virtual {p1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 1621
    return-void
.end method

.method private addCollectionItemInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "infoCompat"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1624
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1625
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 1626
    :cond_0
    move v2, v1

    :goto_0
    nop

    .line 1627
    .local v2, "rowIndex":I
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v0

    if-nez v0, :cond_1

    .line 1628
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    move v4, v1

    goto :goto_1

    .line 1629
    :cond_1
    move v4, v1

    :goto_1
    nop

    .line 1630
    .local v4, "colIndex":I
    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1631
    invoke-static/range {v2 .. v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    .line 1633
    .local v0, "collectionItemInfoCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 1634
    return-void
.end method

.method private addScrollActions(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4
    .param p1, "infoCompat"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1637
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 1638
    .local v0, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    if-nez v0, :cond_0

    .line 1639
    return-void

    .line 1641
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 1642
    .local v1, "itemCount":I
    if-eqz v1, :cond_4

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1645
    :cond_1
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget v2, v2, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-lez v2, :cond_2

    .line 1646
    const/16 v2, 0x2000

    invoke-virtual {p1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1648
    :cond_2
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget v2, v2, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_3

    .line 1649
    const/16 v2, 0x1000

    invoke-virtual {p1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1651
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 1652
    return-void

    .line 1643
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public handlesGetAccessibilityClassName()Z
    .locals 1

    .line 1436
    const/4 v0, 0x1

    return v0
.end method

.method public handlesPerformAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1507
    const/16 v0, 0x2000

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAttachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1454
    .local p1, "newAdapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    .line 1455
    if-eqz p1, :cond_0

    .line 1456
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 1458
    :cond_0
    return-void
.end method

.method public onDetachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1462
    .local p1, "oldAdapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    if-eqz p1, :cond_0

    .line 1463
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 1465
    :cond_0
    return-void
.end method

.method public onGetAccessibilityClassName()Ljava/lang/String;
    .locals 1

    .line 1441
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->handlesGetAccessibilityClassName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    const-string v0, "androidx.viewpager.widget.ViewPager"

    return-object v0

    .line 1442
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onInitialize(Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1, "pageChangeEventDispatcher"    # Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;
    .param p2, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 1417
    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1420
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$3;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$3;-><init>(Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 1427
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1429
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1432
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1492
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 1493
    .local v0, "infoCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->addCollectionInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1494
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 1495
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->addScrollActions(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1497
    :cond_0
    return-void
.end method

.method onLmInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1502
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->addCollectionItemInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1503
    return-void
.end method

.method public onPerformAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1513
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->handlesPerformAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1517
    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 1518
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1519
    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    nop

    .line 1520
    .local v0, "nextItem":I
    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->setCurrentItemFromAccessibilityCommand(I)V

    .line 1521
    return v1

    .line 1514
    .end local v0    # "nextItem":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onRestorePendingState()V
    .locals 0

    .line 1449
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    .line 1450
    return-void
.end method

.method public onRvInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1526
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 1527
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->onGetAccessibilityClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1528
    return-void
.end method

.method public onSetLayoutDirection()V
    .locals 0

    .line 1487
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    .line 1488
    return-void
.end method

.method public onSetNewCurrentItem()V
    .locals 0

    .line 1474
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    .line 1475
    return-void
.end method

.method public onSetOrientation()V
    .locals 0

    .line 1469
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    .line 1470
    return-void
.end method

.method public onSetUserInputEnabled()V
    .locals 2

    .line 1479
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    .line 1480
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1481
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->sendAccessibilityEvent(I)V

    .line 1483
    :cond_0
    return-void
.end method

.method setCurrentItemFromAccessibilityCommand(I)V
    .locals 2
    .param p1, "item"    # I

    .line 1536
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1537
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItemInternal(IZ)V

    .line 1539
    :cond_0
    return-void
.end method

.method updatePageAccessibilityActions()V
    .locals 12

    .line 1546
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    .line 1549
    .local v0, "viewPager":Landroidx/viewpager2/widget/ViewPager2;
    const v1, 0x1020048

    .line 1551
    .local v1, "actionIdPageLeft":I
    const v2, 0x1020049

    .line 1553
    .local v2, "actionIdPageRight":I
    const v3, 0x1020046

    .line 1555
    .local v3, "actionIdPageUp":I
    const v4, 0x1020047

    .line 1557
    .local v4, "actionIdPageDown":I
    const v5, 0x1020048

    invoke-static {v0, v5}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 1558
    const v6, 0x1020049

    invoke-static {v0, v6}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 1559
    const v7, 0x1020046

    invoke-static {v0, v7}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 1560
    const v8, 0x1020047

    invoke-static {v0, v8}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 1562
    iget-object v9, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v9}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v9

    if-nez v9, :cond_0

    .line 1563
    return-void

    .line 1566
    :cond_0
    iget-object v9, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v9}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    .line 1567
    .local v9, "itemCount":I
    if-nez v9, :cond_1

    .line 1568
    return-void

    .line 1571
    :cond_1
    iget-object v10, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v10}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1572
    return-void

    .line 1575
    :cond_2
    iget-object v10, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v10}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_7

    .line 1576
    iget-object v7, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v7}, Landroidx/viewpager2/widget/ViewPager2;->isRtl()Z

    move-result v7

    .line 1577
    .local v7, "isLayoutRtl":Z
    if-eqz v7, :cond_3

    move v8, v5

    goto :goto_0

    :cond_3
    move v8, v6

    .line 1578
    .local v8, "actionIdPageForward":I
    :goto_0
    if-eqz v7, :cond_4

    move v5, v6

    .line 1580
    .local v5, "actionIdPageBackward":I
    :cond_4
    iget-object v6, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget v6, v6, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    add-int/lit8 v10, v9, -0x1

    if-ge v6, v10, :cond_5

    .line 1581
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v6, v8, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iget-object v10, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageForward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    invoke-static {v0, v6, v11, v10}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 1585
    :cond_5
    iget-object v6, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget v6, v6, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-lez v6, :cond_6

    .line 1586
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v6, v5, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iget-object v10, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageBackward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    invoke-static {v0, v6, v11, v10}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 1590
    .end local v5    # "actionIdPageBackward":I
    .end local v7    # "isLayoutRtl":Z
    .end local v8    # "actionIdPageForward":I
    :cond_6
    goto :goto_1

    .line 1591
    :cond_7
    iget-object v5, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget v5, v5, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    add-int/lit8 v6, v9, -0x1

    if-ge v5, v6, :cond_8

    .line 1592
    new-instance v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v5, v8, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iget-object v6, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageForward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    invoke-static {v0, v5, v11, v6}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 1596
    :cond_8
    iget-object v5, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget v5, v5, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-lez v5, :cond_9

    .line 1597
    new-instance v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v5, v7, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iget-object v6, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->mActionPageBackward:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    invoke-static {v0, v5, v11, v6}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 1602
    :cond_9
    :goto_1
    return-void
.end method
