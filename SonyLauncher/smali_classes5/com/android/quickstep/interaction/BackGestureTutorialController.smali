.class final Lcom/android/quickstep/interaction/BackGestureTutorialController;
.super Lcom/android/quickstep/interaction/TutorialController;
.source "BackGestureTutorialController.java"


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/BackGestureTutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/quickstep/interaction/BackGestureTutorialFragment;
    .param p2, "tutorialType"    # Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/interaction/TutorialController;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    .line 33
    return-void
.end method

.method private handleBackAttempt(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;)V
    .locals 2
    .param p1, "result"    # Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    .line 95
    sget-object v0, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult:[I

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    sget v0, Lcom/android/launcher3/R$string;->back_gesture_feedback_swipe_in_nav_bar:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->showFeedback(I)V

    goto :goto_0

    .line 107
    :pswitch_1
    sget v0, Lcom/android/launcher3/R$string;->back_gesture_feedback_swipe_too_far_from_edge:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->showFeedback(I)V

    .line 108
    goto :goto_0

    .line 104
    :pswitch_2
    sget v0, Lcom/android/launcher3/R$string;->back_gesture_feedback_cancelled:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->showFeedback(I)V

    .line 105
    goto :goto_0

    .line 98
    :pswitch_3
    iget-object v0, p0, Lcom/android/quickstep/interaction/BackGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->releaseFeedbackAnimation()V

    .line 99
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->getMockAppTaskPreviousPageLayoutResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->updateFakeAppTaskViewLayout(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->showSuccessFeedback()V

    .line 101
    nop

    .line 113
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getIntroductionSubtitle()I
    .locals 1

    .line 42
    sget v0, Lcom/android/launcher3/R$string;->back_gesture_intro_subtitle:I

    return v0
.end method

.method public getIntroductionTitle()I
    .locals 1

    .line 37
    sget v0, Lcom/android/launcher3/R$string;->back_gesture_intro_title:I

    return v0
.end method

.method getMockAppTaskCurrentPageLayoutResId()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/quickstep/interaction/BackGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget v0, Lcom/android/launcher3/R$layout;->gesture_tutorial_tablet_mock_conversation:I

    goto :goto_0

    .line 66
    :cond_0
    sget v0, Lcom/android/launcher3/R$layout;->gesture_tutorial_mock_conversation:I

    .line 64
    :goto_0
    return v0
.end method

.method protected getMockAppTaskLayoutResId()I
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->getMockAppTaskCurrentPageLayoutResId()I

    move-result v0

    return v0
.end method

.method getMockAppTaskPreviousPageLayoutResId()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/quickstep/interaction/BackGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget v0, Lcom/android/launcher3/R$layout;->gesture_tutorial_tablet_mock_conversation_list:I

    goto :goto_0

    .line 73
    :cond_0
    sget v0, Lcom/android/launcher3/R$layout;->gesture_tutorial_mock_conversation_list:I

    .line 71
    :goto_0
    return v0
.end method

.method public getSpokenIntroductionSubtitle()I
    .locals 1

    .line 47
    sget v0, Lcom/android/launcher3/R$string;->back_gesture_spoken_intro_subtitle:I

    return v0
.end method

.method public getSuccessFeedbackSubtitle()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/quickstep/interaction/BackGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isAtFinalStep()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget v0, Lcom/android/launcher3/R$string;->back_gesture_feedback_complete_without_follow_up:I

    goto :goto_0

    .line 54
    :cond_0
    sget v0, Lcom/android/launcher3/R$string;->back_gesture_feedback_complete_with_overview_follow_up:I

    .line 52
    :goto_0
    return v0
.end method

.method public onBackGestureAttempted(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;)V
    .locals 2
    .param p1, "result"    # Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    .line 78
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->isGestureCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType:[I

    iget-object v1, p0, Lcom/android/quickstep/interaction/BackGestureTutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    sget-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    if-ne p1, v0, :cond_2

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/interaction/BackGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->closeTutorial()V

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->handleBackAttempt(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;)V

    .line 84
    nop

    .line 92
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "result"    # Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;
    .param p2, "finalVelocity"    # Landroid/graphics/PointF;

    .line 117
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->isGestureCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/BackGestureTutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    sget-object v1, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->BACK_NAVIGATION_COMPLETE:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    if-ne v0, v1, :cond_1

    .line 121
    sget-object v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_GESTURE_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    if-ne p1, v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/android/quickstep/interaction/BackGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->closeTutorial()V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/interaction/BackGestureTutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    sget-object v1, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->BACK_NAVIGATION:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    if-ne v0, v1, :cond_2

    .line 125
    sget-object v0, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult:[I

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 138
    sget v0, Lcom/android/launcher3/R$string;->back_gesture_feedback_swipe_in_nav_bar:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->showFeedback(I)V

    goto :goto_0

    .line 129
    :pswitch_0
    sget v0, Lcom/android/launcher3/R$string;->back_gesture_feedback_swipe_too_far_from_edge:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->showFeedback(I)V

    .line 142
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
