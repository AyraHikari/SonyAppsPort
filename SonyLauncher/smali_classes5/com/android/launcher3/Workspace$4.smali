.class Lcom/android/launcher3/Workspace$4;
.super Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Landroid/view/ViewGroup;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Workspace;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 1617
    .local p0, "this":Lcom/android/launcher3/Workspace$4;, "Lcom/android/launcher3/Workspace$4;"
    .local p3, "delegateFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;>;"
    iput-object p1, p0, Lcom/android/launcher3/Workspace$4;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;-><init>(Landroid/view/ViewGroup;Ljava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method protected enableAccessibleDrag(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1620
    .local p0, "this":Lcom/android/launcher3/Workspace$4;, "Lcom/android/launcher3/Workspace$4;"
    invoke-super {p0, p1}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->enableAccessibleDrag(Z)V

    .line 1621
    iget-object v0, p0, Lcom/android/launcher3/Workspace$4;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/Workspace$4;->setEnableForLayout(Lcom/android/launcher3/CellLayout;Z)V

    .line 1622
    return-void
.end method
