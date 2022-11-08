.class Lcom/android/launcher3/QuickstepTransitionManager$19;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "QuickstepTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;->addCujInstrumentation(Landroid/animation/Animator;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field final synthetic val$cuj:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/QuickstepTransitionManager;

    .line 1539
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$19;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$19;->val$cuj:I

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1565
    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1566
    iget v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$19;->val$cuj:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->cancel(I)V

    .line 1567
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1542
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$19;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmDragLayer(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$19$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/QuickstepTransitionManager$19$1;-><init>(Lcom/android/launcher3/QuickstepTransitionManager$19;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 1560
    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1561
    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 1571
    iget v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$19;->val$cuj:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    .line 1572
    return-void
.end method
