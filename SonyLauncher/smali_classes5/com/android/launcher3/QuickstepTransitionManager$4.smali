.class Lcom/android/launcher3/QuickstepTransitionManager$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;->composeIconLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/QuickstepTransitionManager;

    .line 383
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$4;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAnimationStart$0$com-android-launcher3-QuickstepTransitionManager$4()V
    .locals 5

    .line 387
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$4;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/statehandlers/DepthController;->DEPTH:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$4;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v3, v3, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 388
    invoke-virtual {v3}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/LauncherState;

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$4;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v4, v4, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 387
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 387
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 386
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$4;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/QuickstepTransitionManager$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/QuickstepTransitionManager$4;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->addOnResumeCallback(Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method
