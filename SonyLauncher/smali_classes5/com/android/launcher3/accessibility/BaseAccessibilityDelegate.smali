.class public abstract Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "BaseAccessibilityDelegate.java"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;,
        Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;,
        Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Landroid/view/View$AccessibilityDelegate;",
        "Lcom/android/launcher3/dragndrop/DragController$DragListener;"
    }
.end annotation


# instance fields
.field protected final mActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<",
            "TT;>.",
            "LauncherAction;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mDragInfo:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;, "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<TT;>;"
    .local p1, "context":Landroid/content/Context;, "TT;"
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    .line 63
    iput-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method private itemSupportsLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "host"    # Landroid/view/View;

    .line 89
    .local p0, "this":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;, "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<TT;>;"
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    .line 90
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->canShowLongPressPopup()Z

    move-result v0

    return v0

    .line 91
    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/views/BubbleTextHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 92
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/views/BubbleTextHolder;

    .line 93
    .local v0, "holder":Lcom/android/launcher3/views/BubbleTextHolder;
    invoke-interface {v0}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->canShowLongPressPopup()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 95
    .end local v0    # "holder":Lcom/android/launcher3/views/BubbleTextHolder;
    :cond_2
    return v1
.end method

.method static synthetic lambda$onInitializeAccessibilityNodeInfo$0(Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;)V
    .locals 1
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "la"    # Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    .line 74
    iget-object v0, p1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;->accessibilityAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method


# virtual methods
.method protected announceConfirmation(Ljava/lang/String;)V
    .locals 1
    .param p1, "confirmation"    # Ljava/lang/String;

    .line 123
    .local p0, "this":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;, "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method

.method protected abstract beginAccessibleDrag(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z
.end method

.method public getDragInfo()Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;
    .locals 1

    .line 131
    .local p0, "this":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;, "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    return-object v0
.end method

.method protected abstract getSupportedActions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<",
            "TT;>.",
            "LauncherAction;",
            ">;)V"
        }
    .end annotation
.end method

.method public handleAccessibleDrop(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 5
    .param p1, "clickedTarget"    # Landroid/view/View;
    .param p2, "dropLocation"    # Landroid/graphics/Rect;
    .param p3, "confirmation"    # Ljava/lang/String;

    .line 141
    .local p0, "this":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;, "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 144
    .local v1, "loc":[I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_1

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    aput v4, v1, v3

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    aput v3, v1, v2

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    aput v0, v1, v3

    .line 149
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    aput v0, v1, v2

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->completeAccessibleDrag([I)V

    .line 155
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    invoke-virtual {p0, p3}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    .line 158
    :cond_2
    return-void
.end method

.method public isInAccessibleDrag()Z
    .locals 1

    .line 127
    .local p0, "this":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;, "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected itemSupportsAccessibleDrag(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 100
    .local p0, "this":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;, "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<TT;>;"
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 102
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x67

    if-eq v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 105
    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public onDragEnd()V
    .locals 1

    .line 165
    .local p0, "this":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;, "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    .line 167
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 172
    .local p0, "this":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;, "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<TT;>;"
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 68
    .local p0, "this":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;, "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 72
    .local v0, "item":Lcom/android/launcher3/model/data/ItemInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<TT;>.LauncherAction;>;"
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->getSupportedActions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V

    .line 74
    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->itemSupportsLongClick(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 78
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 81
    .end local v0    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v1    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<TT;>.LauncherAction;>;"
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 111
    .local p0, "this":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;, "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method protected abstract performAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;IZ)Z
.end method
