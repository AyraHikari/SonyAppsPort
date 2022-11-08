.class Lcom/android/launcher3/statehandlers/DepthController$2;
.super Ljava/lang/Object;
.source "DepthController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/statehandlers/DepthController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/statehandlers/DepthController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/statehandlers/DepthController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/statehandlers/DepthController;

    .line 96
    iput-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController$2;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onDraw$0$com-android-launcher3-statehandlers-DepthController$2(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onDraw()V
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController$2;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v0}, Lcom/android/launcher3/statehandlers/DepthController;->-$$Nest$fgetmLauncher(Lcom/android/launcher3/statehandlers/DepthController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 100
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 101
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    iget-object v2, p0, Lcom/android/launcher3/statehandlers/DepthController$2;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    .line 102
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 101
    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/launcher3/statehandlers/DepthController;->setSurface(Landroid/view/SurfaceControl;)Z

    move-result v2

    .line 103
    .local v2, "applied":Z
    if-nez v2, :cond_1

    .line 104
    iget-object v3, p0, Lcom/android/launcher3/statehandlers/DepthController$2;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v3}, Lcom/android/launcher3/statehandlers/DepthController;->-$$Nest$fgetmDepth(Lcom/android/launcher3/statehandlers/DepthController;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/launcher3/statehandlers/DepthController;->-$$Nest$mdispatchTransactionSurface(Lcom/android/launcher3/statehandlers/DepthController;F)Z

    .line 106
    :cond_1
    new-instance v3, Lcom/android/launcher3/statehandlers/DepthController$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/statehandlers/DepthController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/statehandlers/DepthController$2;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method
