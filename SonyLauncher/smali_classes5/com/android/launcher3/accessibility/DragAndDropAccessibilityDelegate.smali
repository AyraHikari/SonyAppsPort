.class public abstract Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "DragAndDropAccessibilityDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;


# static fields
.field protected static final INVALID_POSITION:I = -0x1


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field protected final mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field protected final mTempCords:[I

.field protected final mTempRect:Landroid/graphics/Rect;

.field protected final mView:Lcom/android/launcher3/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .locals 2
    .param p1, "forView"    # Lcom/android/launcher3/CellLayout;

    .line 54
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempCords:[I

    .line 55
    iput-object p1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    .line 56
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 58
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 59
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 60
    return-void
.end method

.method private getItemBounds(I)Landroid/graphics/Rect;
    .locals 9
    .param p1, "id"    # I

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    rem-int v0, p1, v0

    .line 161
    .local v0, "cellX":I
    iget-object v1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    div-int v7, p1, v1

    .line 162
    .local v7, "cellY":I
    iget-object v1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getDragInfo()Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    move-result-object v8

    .line 163
    .local v8, "dragInfo":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;
    iget-object v1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    iget-object v2, v8, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->info:Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget-object v2, v8, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->info:Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v6, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    move v2, v0

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 164
    iget-object v1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    return-object v1
.end method


# virtual methods
.method protected abstract getConfirmationForIconDrop(I)Ljava/lang/String;
.end method

.method public getHost()Landroid/view/View;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method protected abstract getLocationDescriptionForIconDrop(I)Ljava/lang/String;
.end method

.method public getVirtualViewAt(FF)I
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 64
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_1

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    float-to-int v1, p1

    float-to-int v2, p2

    iget-object v3, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempCords:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/CellLayout;->pointToCellExact(II[I)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempCords:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    iget-object v2, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 71
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->intersectsValidDropTarget(I)I

    move-result v0

    return v0

    .line 65
    .end local v1    # "id":I
    :cond_1
    :goto_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p1, "virtualViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v1

    mul-int/2addr v0, v1

    .line 86
    .local v0, "nCells":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->intersectsValidDropTarget(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected abstract intersectsValidDropTarget(I)I
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->getFocusedVirtualView()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    .line 107
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 145
    invoke-virtual {p0, p2}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "viewId"    # I
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 95
    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->getConfirmationForIconDrop(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "confirmation":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v2, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->getItemBounds(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->handleAccessibleDrop(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x1

    return v1

    .line 100
    .end local v0    # "confirmation":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 111
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/launcher3/R$string;->action_move_here:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid virtual view id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "node"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 119
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->getLocationDescriptionForIconDrop(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->getItemBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 126
    .local v0, "itemBounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 130
    iget-object v1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempCords:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    aput v3, v1, v3

    .line 131
    iget-object v4, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v5, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v4, v5, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v1

    .line 132
    .local v1, "scale":F
    iget-object v4, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempCords:[I

    aget v5, v5, v3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 133
    iget-object v4, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempCords:[I

    aget v3, v5, v3

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    add-int/2addr v3, v5

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 134
    iget-object v3, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempCords:[I

    aget v4, v4, v2

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 135
    iget-object v3, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempCords:[I

    aget v4, v4, v2

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 136
    iget-object v3, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 138
    const/16 v3, 0x10

    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 139
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 140
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 141
    return-void

    .line 120
    .end local v0    # "itemBounds":Landroid/graphics/Rect;
    .end local v1    # "scale":F
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid virtual view id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
