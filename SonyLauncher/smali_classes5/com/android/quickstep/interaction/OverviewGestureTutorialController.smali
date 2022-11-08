.class final Lcom/android/quickstep/interaction/OverviewGestureTutorialController;
.super Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;
.source "OverviewGestureTutorialController.java"


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;
    .param p2, "tutorialType"    # Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    .line 42
    return-void
.end method


# virtual methods
.method public animateTaskViewToOverview()V
    .locals 7

    .line 139
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v1, 0x12c

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 140
    .local v0, "anim":Lcom/android/launcher3/anim/PendingAnimation;
    iget-object v3, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->mTaskViewSwipeUpAnimation:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    .line 141
    invoke-virtual {v3}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->getCurrentShift()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v3

    sget-object v4, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    .line 140
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v4, v6, v5}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 143
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v3, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v4, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v4}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    iget-object v4, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {v4}, Lcom/android/quickstep/interaction/AnimatedTaskView;->createAnimationToMultiRowLayout()Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 148
    .local v4, "multiRowAnimation":Landroid/animation/Animator;
    if-eqz v4, :cond_0

    .line 149
    invoke-virtual {v4, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 150
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v4    # "multiRowAnimation":Landroid/animation/Animator;
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 156
    .local v1, "animset":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 157
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->hideFakeTaskbar(Z)V

    .line 158
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 159
    invoke-static {v1}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Landroid/animation/Animator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object v2

    iput-object v2, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    .line 160
    return-void
.end method

.method public getIntroductionSubtitle()I
    .locals 1

    .line 51
    sget v0, Lcom/android/launcher3/R$string;->overview_gesture_intro_subtitle:I

    return v0
.end method

.method public getIntroductionTitle()I
    .locals 1

    .line 46
    sget v0, Lcom/android/launcher3/R$string;->overview_gesture_intro_title:I

    return v0
.end method

.method protected getMockAppTaskLayoutResId()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget v0, Lcom/android/launcher3/R$layout;->gesture_tutorial_tablet_mock_conversation_list:I

    goto :goto_0

    .line 70
    :cond_0
    sget v0, Lcom/android/launcher3/R$layout;->gesture_tutorial_mock_conversation_list:I

    .line 68
    :goto_0
    return v0
.end method

.method public getSpokenIntroductionSubtitle()I
    .locals 1

    .line 56
    sget v0, Lcom/android/launcher3/R$string;->overview_gesture_spoken_intro_subtitle:I

    return v0
.end method

.method public getSuccessFeedbackSubtitle()I
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->getNumSteps()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isAtFinalStep()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget v0, Lcom/android/launcher3/R$string;->overview_gesture_feedback_complete_with_follow_up:I

    goto :goto_0

    .line 63
    :cond_0
    sget v0, Lcom/android/launcher3/R$string;->overview_gesture_feedback_complete_without_follow_up:I

    .line 61
    :goto_0
    return v0
.end method

.method synthetic lambda$onNavBarGestureAttempted$0$com-android-quickstep-interaction-OverviewGestureTutorialController()V
    .locals 1

    .line 108
    sget v0, Lcom/android/launcher3/R$string;->overview_gesture_feedback_home_detected:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->showFeedback(I)V

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->resetFakeTaskView(Z)V

    .line 110
    return-void
.end method

.method public onBackGestureAttempted(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;)V
    .locals 2
    .param p1, "result"    # Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    .line 75
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->isGestureCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    sget-object v0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType:[I

    iget-object v1, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 90
    :pswitch_0
    sget-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    if-ne p1, v0, :cond_2

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->closeTutorial()V

    goto :goto_1

    .line 80
    :pswitch_1
    sget-object v0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult:[I

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 85
    :pswitch_2
    sget v0, Lcom/android/launcher3/R$string;->overview_gesture_feedback_swipe_too_far_from_edge:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->showFeedback(I)V

    .line 88
    :goto_0
    nop

    .line 96
    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "result"    # Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;
    .param p2, "finalVelocity"    # Landroid/graphics/PointF;

    .line 100
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->isGestureCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    sget-object v0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType:[I

    iget-object v1, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 131
    :pswitch_0
    sget-object v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_GESTURE_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    if-ne p1, v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->closeTutorial()V

    goto :goto_1

    .line 105
    :pswitch_1
    sget-object v0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult:[I

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 125
    :pswitch_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->fadeOutFakeTaskView(ZZLjava/lang/Runnable;)V

    .line 126
    sget v0, Lcom/android/launcher3/R$string;->overview_gesture_feedback_wrong_swipe_direction:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->showFeedback(I)V

    goto :goto_0

    .line 118
    :pswitch_3
    iget-object v0, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->releaseFeedbackAnimation()V

    .line 119
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->animateTaskViewToOverview()V

    .line 120
    invoke-virtual {p0, v1}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->onMotionPaused(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->showSuccessFeedback()V

    .line 122
    goto :goto_0

    .line 115
    :pswitch_4
    sget v0, Lcom/android/launcher3/R$string;->overview_gesture_feedback_swipe_too_far_from_edge:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->showFeedback(I)V

    .line 116
    goto :goto_0

    .line 107
    :pswitch_5
    new-instance v0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/interaction/OverviewGestureTutorialController;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->animateFakeTaskViewHome(Landroid/graphics/PointF;Ljava/lang/Runnable;)V

    .line 111
    nop

    .line 129
    :goto_0
    nop

    .line 136
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
