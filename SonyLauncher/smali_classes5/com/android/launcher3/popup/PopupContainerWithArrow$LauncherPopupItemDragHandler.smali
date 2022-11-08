.class public Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;
.super Ljava/lang/Object;
.source "PopupContainerWithArrow.java"

# interfaces
.implements Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/PopupContainerWithArrow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LauncherPopupItemDragHandler"
.end annotation


# instance fields
.field private final mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

.field protected final mIconLastTouchPos:Landroid/graphics/Point;

.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "container"    # Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mIconLastTouchPos:Landroid/graphics/Point;

    .line 567
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 568
    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 569
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .line 586
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/touch/ItemLongClickListener;->canStartDrag(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 588
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-nez v0, :cond_1

    return v1

    .line 591
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 592
    .local v0, "sv":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    invoke-virtual {v0, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setWillDrawIcon(Z)V

    .line 595
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 596
    .local v2, "iconShift":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconCenter()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 597
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 599
    invoke-static {v1}, Lcom/android/launcher3/dragndrop/DraggableView;->ofType(I)Lcom/android/launcher3/dragndrop/DraggableView;

    move-result-object v3

    .line 600
    .local v3, "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getFinalInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v11

    .line 601
    .local v11, "itemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const/16 v4, -0x6b

    iput v4, v11, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->container:I

    .line 602
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v5

    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    new-instance v9, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;

    .line 604
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v6

    invoke-direct {v9, v6, v2}, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;-><init>(Landroid/view/View;Landroid/graphics/Point;)V

    new-instance v10, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v10}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    .line 602
    move-object v6, v3

    move-object v8, v11

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v4

    .line 606
    .local v4, "dv":Lcom/android/launcher3/dragndrop/DragView;
    iget v5, v2, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    iget v6, v2, Landroid/graphics/Point;->y:I

    neg-int v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/dragndrop/DragView;->animateShift(II)V

    .line 609
    iget-object v5, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    .line 610
    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 575
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 578
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;->mIconLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 581
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
