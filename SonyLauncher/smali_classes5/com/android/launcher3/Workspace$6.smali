.class Lcom/android/launcher3/Workspace$6;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$finalView:Landroid/view/View;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Workspace;

    .line 3001
    .local p0, "this":Lcom/android/launcher3/Workspace$6;, "Lcom/android/launcher3/Workspace$6;"
    iput-object p1, p0, Lcom/android/launcher3/Workspace$6;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$6;->val$finalView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$6;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3004
    .local p0, "this":Lcom/android/launcher3/Workspace$6;, "Lcom/android/launcher3/Workspace$6;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace$6;->val$finalView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3005
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3007
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace$6;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 3008
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3010
    :cond_1
    return-void
.end method
