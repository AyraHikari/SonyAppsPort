.class Lcom/android/launcher3/Workspace$9;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->clearDropTargets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Workspace;

    .line 3259
    .local p0, "this":Lcom/android/launcher3/Workspace$9;, "Lcom/android/launcher3/Workspace$9;"
    iput-object p1, p0, Lcom/android/launcher3/Workspace$9;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 3262
    .local p0, "this":Lcom/android/launcher3/Workspace$9;, "Lcom/android/launcher3/Workspace$9;"
    instance-of v0, p2, Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_0

    .line 3263
    iget-object v0, p0, Lcom/android/launcher3/Workspace$9;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 3266
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
