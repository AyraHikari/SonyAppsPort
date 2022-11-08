.class public Lcom/android/quickstep/interaction/BackGestureTutorialFragment;
.super Lcom/android/quickstep/interaction/TutorialFragment;
.source "BackGestureTutorialFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method createController(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)Lcom/android/quickstep/interaction/TutorialController;
    .locals 1
    .param p1, "type"    # Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 108
    new-instance v0, Lcom/android/quickstep/interaction/BackGestureTutorialController;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/interaction/BackGestureTutorialController;-><init>(Lcom/android/quickstep/interaction/BackGestureTutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    return-object v0
.end method

.method protected createGestureAnimation()Landroid/animation/Animator;
    .locals 8

    .line 48
    iget-object v0, p0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    instance-of v0, v0, Lcom/android/quickstep/interaction/BackGestureTutorialController;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    check-cast v0, Lcom/android/quickstep/interaction/BackGestureTutorialController;

    .line 53
    .local v0, "controller":Lcom/android/quickstep/interaction/BackGestureTutorialController;
    iget-object v1, p0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    .line 55
    .local v1, "fingerDotStartTranslationX":F
    invoke-virtual {v0}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->createFingerDotAppearanceAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 56
    .local v3, "fingerDotAppearanceAnimator":Landroid/animation/AnimatorSet;
    new-instance v4, Lcom/android/quickstep/interaction/BackGestureTutorialFragment$1;

    invoke-direct {v4, p0, v1}, Lcom/android/quickstep/interaction/BackGestureTutorialFragment$1;-><init>(Lcom/android/quickstep/interaction/BackGestureTutorialFragment;F)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 64
    iget-object v4, p0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;->mFingerDotView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v6, 0x0

    aput v1, v2, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v2, v6

    invoke-static {v4, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 66
    .local v2, "translationAnimator":Landroid/animation/ObjectAnimator;
    new-instance v4, Lcom/android/quickstep/interaction/BackGestureTutorialFragment$2;

    invoke-direct {v4, p0, v0}, Lcom/android/quickstep/interaction/BackGestureTutorialFragment$2;-><init>(Lcom/android/quickstep/interaction/BackGestureTutorialFragment;Lcom/android/quickstep/interaction/BackGestureTutorialController;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 76
    invoke-virtual {v0}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->createAnimationPause()Landroid/animation/Animator;

    move-result-object v4

    .line 77
    .local v4, "animationPause":Landroid/animation/Animator;
    new-instance v5, Lcom/android/quickstep/interaction/BackGestureTutorialFragment$3;

    invoke-direct {v5, p0, v0}, Lcom/android/quickstep/interaction/BackGestureTutorialFragment$3;-><init>(Lcom/android/quickstep/interaction/BackGestureTutorialFragment;Lcom/android/quickstep/interaction/BackGestureTutorialController;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 85
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v5, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v0}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->createFingerDotDisappearanceAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 93
    .local v6, "finalAnimation":Landroid/animation/AnimatorSet;
    new-instance v7, Lcom/android/quickstep/interaction/BackGestureTutorialFragment$4;

    invoke-direct {v7, p0, v0}, Lcom/android/quickstep/interaction/BackGestureTutorialFragment$4;-><init>(Lcom/android/quickstep/interaction/BackGestureTutorialFragment;Lcom/android/quickstep/interaction/BackGestureTutorialController;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 101
    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 103
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

    .line 113
    const-class v0, Lcom/android/quickstep/interaction/BackGestureTutorialController;

    return-object v0
.end method

.method getEdgeAnimationResId()Ljava/lang/Integer;
    .locals 1

    .line 42
    sget v0, Lcom/android/launcher3/R$drawable;->gesture_tutorial_loop_back:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isFoldable()Z
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isFoldable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLargeScreen()Z
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v0

    return v0
.end method

.method logTutorialStepCompleted(Lcom/android/launcher3/logging/StatsLogManager;)V
    .locals 2
    .param p1, "statsLogManager"    # Lcom/android/launcher3/logging/StatsLogManager;

    .line 133
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GESTURE_TUTORIAL_BACK_STEP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 135
    return-void
.end method

.method logTutorialStepShown(Lcom/android/launcher3/logging/StatsLogManager;)V
    .locals 2
    .param p1, "statsLogManager"    # Lcom/android/launcher3/logging/StatsLogManager;

    .line 127
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GESTURE_TUTORIAL_BACK_STEP_SHOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 129
    return-void
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/android/quickstep/interaction/TutorialFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/interaction/TutorialFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->onResume()V

    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/android/quickstep/interaction/TutorialFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onStop()V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->onStop()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 118
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;->releaseFeedbackAnimation()V

    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/interaction/TutorialController;->setRippleHotspot(FF)V

    .line 122
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/interaction/TutorialFragment;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
