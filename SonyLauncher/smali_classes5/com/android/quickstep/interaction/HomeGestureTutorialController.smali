.class final Lcom/android/quickstep/interaction/HomeGestureTutorialController;
.super Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;
.source "HomeGestureTutorialController.java"


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;
    .param p2, "tutorialType"    # Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getIntroductionSubtitle()I
    .locals 1

    .line 41
    sget v0, Lcom/android/launcher3/R$string;->home_gesture_intro_subtitle:I

    return v0
.end method

.method public getIntroductionTitle()I
    .locals 1

    .line 36
    sget v0, Lcom/android/launcher3/R$string;->home_gesture_intro_title:I

    return v0
.end method

.method protected getMockAppTaskLayoutResId()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget v0, Lcom/android/launcher3/R$layout;->gesture_tutorial_tablet_mock_webpage:I

    goto :goto_0

    .line 60
    :cond_0
    sget v0, Lcom/android/launcher3/R$layout;->gesture_tutorial_mock_webpage:I

    .line 58
    :goto_0
    return v0
.end method

.method public getSpokenIntroductionSubtitle()I
    .locals 1

    .line 46
    sget v0, Lcom/android/launcher3/R$string;->home_gesture_spoken_intro_subtitle:I

    return v0
.end method

.method public getSuccessFeedbackSubtitle()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isAtFinalStep()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget v0, Lcom/android/launcher3/R$string;->home_gesture_feedback_complete_without_follow_up:I

    goto :goto_0

    .line 53
    :cond_0
    sget v0, Lcom/android/launcher3/R$string;->home_gesture_feedback_complete_with_follow_up:I

    .line 51
    :goto_0
    return v0
.end method

.method synthetic lambda$onNavBarGestureAttempted$0$com-android-quickstep-interaction-HomeGestureTutorialController()V
    .locals 1

    .line 108
    sget v0, Lcom/android/launcher3/R$string;->home_gesture_feedback_overview_detected:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->showFeedback(I)V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->showFakeTaskbar(Z)V

    .line 110
    return-void
.end method

.method public onBackGestureAttempted(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;)V
    .locals 2
    .param p1, "result"    # Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    .line 65
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->isGestureCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/android/quickstep/interaction/HomeGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType:[I

    iget-object v1, p0, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 80
    :pswitch_0
    sget-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    if-ne p1, v0, :cond_2

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->closeTutorial()V

    goto :goto_1

    .line 70
    :pswitch_1
    sget-object v0, Lcom/android/quickstep/interaction/HomeGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult:[I

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 75
    :pswitch_2
    sget v0, Lcom/android/launcher3/R$string;->home_gesture_feedback_swipe_too_far_from_edge:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->showFeedback(I)V

    .line 78
    :goto_0
    nop

    .line 86
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

    .line 90
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->isGestureCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    sget-object v0, Lcom/android/quickstep/interaction/HomeGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType:[I

    iget-object v1, p0, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 120
    :pswitch_0
    sget-object v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_GESTURE_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    if-ne p1, v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->closeTutorial()V

    goto :goto_1

    .line 95
    :pswitch_1
    sget-object v0, Lcom/android/quickstep/interaction/HomeGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult:[I

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 114
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->fadeOutFakeTaskView(ZZLjava/lang/Runnable;)V

    .line 115
    sget v0, Lcom/android/launcher3/R$string;->home_gesture_feedback_wrong_swipe_direction:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->showFeedback(I)V

    goto :goto_0

    .line 107
    :pswitch_3
    new-instance v0, Lcom/android/quickstep/interaction/HomeGestureTutorialController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/interaction/HomeGestureTutorialController$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/interaction/HomeGestureTutorialController;)V

    invoke-virtual {p0, v2, v2, v0}, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->fadeOutFakeTaskView(ZZLjava/lang/Runnable;)V

    .line 111
    goto :goto_0

    .line 104
    :pswitch_4
    sget v0, Lcom/android/launcher3/R$string;->home_gesture_feedback_swipe_too_far_from_edge:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->showFeedback(I)V

    .line 105
    goto :goto_0

    .line 97
    :pswitch_5
    iget-object v0, p0, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->releaseFeedbackAnimation()V

    .line 98
    invoke-virtual {p0, p2, v1}, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->animateFakeTaskViewHome(Landroid/graphics/PointF;Ljava/lang/Runnable;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->showSuccessFeedback()V

    .line 100
    nop

    .line 118
    :goto_0
    nop

    .line 125
    :cond_1
    :goto_1
    return-void

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
