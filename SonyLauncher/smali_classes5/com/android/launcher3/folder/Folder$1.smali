.class Lcom/android/launcher3/folder/Folder$1;
.super Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/Folder;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Landroid/view/ViewGroup;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/Folder;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 331
    .local p3, "delegateFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;>;"
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$1;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;-><init>(Landroid/view/ViewGroup;Ljava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method protected enableAccessibleDrag(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 334
    invoke-super {p0, p1}, Lcom/android/launcher3/accessibility/AccessibleDragListenerAdapter;->enableAccessibleDrag(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$1;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 336
    const/4 v1, 0x4

    goto :goto_0

    .line 337
    :cond_0
    const/4 v1, 0x0

    .line 335
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 338
    return-void
.end method
