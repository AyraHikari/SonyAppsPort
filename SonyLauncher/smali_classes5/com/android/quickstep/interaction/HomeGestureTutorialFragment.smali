.class public Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;
.super Lcom/android/quickstep/interaction/TutorialFragment;
.source "HomeGestureTutorialFragment.java"


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

    .line 93
    new-instance v0, Lcom/android/quickstep/interaction/HomeGestureTutorialController;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/interaction/HomeGestureTutorialController;-><init>(Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    return-object v0
.end method

.method protected createGestureAnimation()Landroid/animation/Animator;
    .locals 7

    .line 47
    iget-object v0, p0, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    instance-of v0, v0, Lcom/android/quickstep/interaction/HomeGestureTutorialController;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/RootSandboxLayout;->getFullscreenHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 51
    .local v0, "fingerDotStartTranslationY":F
    iget-object v1, p0, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    check-cast v1, Lcom/android/quickstep/interaction/HomeGestureTutorialController;

    .line 54
    .local v1, "controller":Lcom/android/quickstep/interaction/HomeGestureTutorialController;
    invoke-virtual {v1}, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->createFingerDotAppearanceAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 55
    .local v2, "fingerDotAppearanceAnimator":Landroid/animation/AnimatorSet;
    new-instance v3, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment$1;-><init>(Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;F)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 63
    invoke-virtual {v1}, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->createAnimationPause()Landroid/animation/Animator;

    move-result-object v3

    .line 64
    .local v3, "animationPause":Landroid/animation/Animator;
    new-instance v4, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment$2;

    invoke-direct {v4, p0, v1}, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment$2;-><init>(Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;Lcom/android/quickstep/interaction/HomeGestureTutorialController;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 71
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v4, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {v1, v0}, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->createFingerDotHomeSwipeAnimator(F)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v1}, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->createFingerDotDisappearanceAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 79
    .local v5, "finalAnimation":Landroid/animation/AnimatorSet;
    new-instance v6, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment$3;

    invoke-direct {v6, p0, v1}, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment$3;-><init>(Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;Lcom/android/quickstep/interaction/HomeGestureTutorialController;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 86
    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 88
    return-object v5
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

    .line 98
    const-class v0, Lcom/android/quickstep/interaction/HomeGestureTutorialController;

    return-object v0
.end method

.method getEdgeAnimationResId()Ljava/lang/Integer;
    .locals 1

    .line 41
    sget v0, Lcom/android/launcher3/R$drawable;->gesture_tutorial_loop_home:I

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

    .line 115
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GESTURE_TUTORIAL_HOME_STEP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 117
    return-void
.end method

.method logTutorialStepShown(Lcom/android/launcher3/logging/StatsLogManager;)V
    .locals 2
    .param p1, "statsLogManager"    # Lcom/android/launcher3/logging/StatsLogManager;

    .line 109
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_GESTURE_TUTORIAL_HOME_STEP_SHOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 111
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

    .line 103
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;->releaseFeedbackAnimation()V

    .line 104
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/interaction/TutorialFragment;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
