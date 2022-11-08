.class public Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;
.super Ljava/lang/Object;
.source "AccessibleDragListenerAdapter.java"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field private final mDelegateFactory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/android/launcher3/CellLayout;",
            "Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/function/Function<",
            "Lcom/android/launcher3/CellLayout;",
            "Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p2, "delegateFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->mViewGroup:Landroid/view/ViewGroup;

    .line 47
    iput-object p2, p0, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->mDelegateFactory:Ljava/util/function/Function;

    .line 48
    return-void
.end method


# virtual methods
.method protected enableAccessibleDrag(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->setEnableForLayout(Lcom/android/launcher3/CellLayout;Z)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->mViewGroup:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_0

    .line 67
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->setEnableForLayout(Lcom/android/launcher3/CellLayout;Z)V

    .line 69
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->mViewGroup:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_0

    .line 74
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->setEnableForLayout(Lcom/android/launcher3/CellLayout;Z)V

    .line 76
    :cond_0
    return-void
.end method

.method public onDragEnd()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->mViewGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->enableAccessibleDrag(Z)V

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 61
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 1
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->enableAccessibleDrag(Z)V

    .line 54
    return-void
.end method

.method protected final setEnableForLayout(Lcom/android/launcher3/CellLayout;Z)V
    .locals 1
    .param p1, "layout"    # Lcom/android/launcher3/CellLayout;
    .param p2, "enable"    # Z

    .line 85
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->mDelegateFactory:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->setDragAndDropAccessibilityDelegate(Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;)V

    .line 86
    return-void
.end method
