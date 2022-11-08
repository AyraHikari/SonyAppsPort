.class Lcom/android/launcher3/QuickstepTransitionManager$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;->getBackgroundAnimator()Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field final synthetic val$depthController:Lcom/android/launcher3/statehandlers/DepthController;

.field final synthetic val$dimLayer:Landroid/view/SurfaceControl;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/launcher3/statehandlers/DepthController;Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/QuickstepTransitionManager;

    .line 1090
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$depthController:Lcom/android/launcher3/statehandlers/DepthController;

    iput-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$dimLayer:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1098
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$depthController:Lcom/android/launcher3/statehandlers/DepthController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statehandlers/DepthController;->setIsInLaunchTransition(Z)V

    .line 1099
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$depthController:Lcom/android/launcher3/statehandlers/DepthController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statehandlers/DepthController;->setSurface(Landroid/view/SurfaceControl;)Z

    .line 1100
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$dimLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 1101
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$dimLayer:Landroid/view/SurfaceControl;

    .line 1102
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 1103
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1105
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1093
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$13;->val$depthController:Lcom/android/launcher3/statehandlers/DepthController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statehandlers/DepthController;->setIsInLaunchTransition(Z)V

    .line 1094
    return-void
.end method
