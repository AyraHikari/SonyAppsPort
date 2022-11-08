.class public Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;
.super Lcom/android/quickstep/interaction/TutorialFragment;
.source "OverviewGestureTutorialFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method createController(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)Lcom/android/quickstep/interaction/TutorialController;
    .locals 1
    .param p1, "type"    # Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 105
    new-instance v0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;-><init>(Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    return-object v0
.end method

.method protected createGestureAnimation()Landroid/animation/Animator;
    .locals 8

    .line 47
    iget-object v0, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    instance-of v0, v0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/RootSandboxLayout;->getFullscreenHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 51
    .local v0, "fingerDotStartTranslationY":F
    iget-object v1, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    check-cast v1, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;

    .line 54
    .local v1, "controller":Lcom/android/quickstep/interaction/OverviewGestureTutorialController;
    invoke-virtual {v1}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->createFingerDotAppearanceAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 55
    .local v2, "fingerDotAppearanceAnimator":Landroid/animation/AnimatorSet;
    new-instance v3, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment$1;-><init>(Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;F)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 64
    nop

    .line 65
    invoke-virtual {v1}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->createFingerDotDisappearanceAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 66
    .local v3, "fingerDotDisappearanceAnimator":Landroid/animation/AnimatorSet;
    new-instance v4, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment$2;

    invoke-direct {v4, p0, v1}, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment$2;-><init>(Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;Lcom/android/quickstep/interaction/OverviewGestureTutorialController;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    invoke-virtual {v1}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->createAnimationPause()Landroid/animation/Animator;

    move-result-object v4

    .line 75
    .local v4, "animationPause":Landroid/animation/Animator;
    new-instance v5, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment$3;

    invoke-direct {v5, p0, v1}, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment$3;-><init>(Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;Lcom/android/quickstep/interaction/OverviewGestureTutorialController;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 82
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v5, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v1, v0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->createFingerDotOverviewSwipeAnimator(F)Landroid/animation/Animator;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v1}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->createAnimationPause()Landroid/animation/Animator;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 91
    .local v6, "finalAnimation":Landroid/animation/AnimatorSet;
    new-instance v7, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment$4;

    invoke-direct {v7, p0, v1}, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment$4;-><init>(Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;Lcom/android/quickstep/interaction/OverviewGestureTutorialController;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 98
    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 100
    return-object v6
.end method

.method getControllerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/quickstep/interaction/TutorialController;",
            ">;"
        }
    .end annotation

    .line 110
    const-class v0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;

    return-object v0
.end method

.method getEdgeAnimationResId()Ljava/lang/Integer;
    .locals 1

    .line 41
    sget v0, Lcom/android/launcher3/R$drawable;->gesture_tutorial_loop_overview:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isFoldable()Z
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isFoldable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLargeScreen()Z
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v0

    return v0
.end method

.method logTutorialStepCompleted(Lcom/android/launcher3/logging/StatsLogManager;)V
    .locals 2
    .param p1, "statsLogManager"    # Lcom/android/launcher3/logging/StatsLogManager;

    .line 127
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GESTURE_TUTORIAL_OVERVIEW_STEP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 129
    return-void
.end method

.method logTutorialStepShown(Lcom/android/launcher3/logging/StatsLogManager;)V
    .locals 2
    .param p1, "statsLogManager"    # Lcom/android/launcher3/logging/StatsLogManager;

    .line 121
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GESTURE_TUTORIAL_OVERVIEW_STEP_SHOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 123
    return-void
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/android/quickstep/interaction/TutorialFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/interaction/TutorialFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->onResume()V

    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/android/quickstep/interaction/TutorialFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onStop()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->onStop()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 115
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;->releaseFeedbackAnimation()V

    .line 116
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/interaction/TutorialFragment;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
