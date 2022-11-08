.class Lcom/android/launcher3/QuickstepTransitionManager$19$1;
.super Ljava/lang/Object;
.source "QuickstepTransitionManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager$19;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHandled:Z

.field final synthetic this$1:Lcom/android/launcher3/QuickstepTransitionManager$19;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager$19;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/launcher3/QuickstepTransitionManager$19;

    .line 1543
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$19$1;->this$1:Lcom/android/launcher3/QuickstepTransitionManager$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$19$1;->mHandled:Z

    return-void
.end method


# virtual methods
.method synthetic lambda$onDraw$0$com-android-launcher3-QuickstepTransitionManager$19$1()V
    .locals 1

    .line 1556
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$19$1;->this$1:Lcom/android/launcher3/QuickstepTransitionManager$19;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager$19;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmDragLayer(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onDraw()V
    .locals 2

    .line 1548
    iget-boolean v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$19$1;->mHandled:Z

    if-eqz v0, :cond_0

    .line 1549
    return-void

    .line 1551
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$19$1;->mHandled:Z

    .line 1553
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$19$1;->this$1:Lcom/android/launcher3/QuickstepTransitionManager$19;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager$19;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmDragLayer(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$19$1;->this$1:Lcom/android/launcher3/QuickstepTransitionManager$19;

    iget v1, v1, Lcom/android/launcher3/QuickstepTransitionManager$19;->val$cuj:I

    invoke-static {v0, v1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;I)V

    .line 1555
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$19$1;->this$1:Lcom/android/launcher3/QuickstepTransitionManager$19;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager$19;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmDragLayer(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$19$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/QuickstepTransitionManager$19$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/QuickstepTransitionManager$19$1;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->post(Ljava/lang/Runnable;)Z

    .line 1558
    return-void
.end method
