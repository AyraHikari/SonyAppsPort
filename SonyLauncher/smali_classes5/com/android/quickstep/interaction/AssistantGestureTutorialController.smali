.class final Lcom/android/quickstep/interaction/AssistantGestureTutorialController;
.super Lcom/android/quickstep/interaction/TutorialController;
.source "AssistantGestureTutorialController.java"


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/AssistantGestureTutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/quickstep/interaction/AssistantGestureTutorialFragment;
    .param p2, "tutorialType"    # Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/interaction/TutorialController;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onBackGestureAttempted(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;)V
    .locals 2
    .param p1, "result"    # Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    .line 36
    sget-object v0, Lcom/android/quickstep/interaction/AssistantGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType:[I

    iget-object v1, p0, Lcom/android/quickstep/interaction/AssistantGestureTutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 48
    :pswitch_0
    sget-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    if-ne p1, v0, :cond_1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/AssistantGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->closeTutorial()V

    goto :goto_1

    .line 38
    :pswitch_1
    sget-object v0, Lcom/android/quickstep/interaction/AssistantGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult:[I

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 43
    :pswitch_2
    sget v0, Lcom/android/launcher3/R$string;->assistant_gesture_feedback_swipe_too_far_from_corner:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AssistantGestureTutorialController;->showFeedback(I)V

    .line 46
    :goto_0
    nop

    .line 54
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "result"    # Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;
    .param p2, "finalVelocity"    # Landroid/graphics/PointF;

    .line 59
    sget-object v0, Lcom/android/quickstep/interaction/AssistantGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType:[I

    iget-object v1, p0, Lcom/android/quickstep/interaction/AssistantGestureTutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 83
    :pswitch_0
    sget-object v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_GESTURE_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    if-ne p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/quickstep/interaction/AssistantGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->closeTutorial()V

    goto :goto_1

    .line 61
    :pswitch_1
    sget-object v0, Lcom/android/quickstep/interaction/AssistantGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult:[I

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 78
    :pswitch_2
    sget v0, Lcom/android/launcher3/R$string;->assistant_gesture_feedback_swipe_not_long_enough:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AssistantGestureTutorialController;->showFeedback(I)V

    goto :goto_0

    .line 75
    :pswitch_3
    sget v0, Lcom/android/launcher3/R$string;->assistant_gesture_feedback_swipe_not_diagonal:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AssistantGestureTutorialController;->showFeedback(I)V

    .line 76
    goto :goto_0

    .line 71
    :pswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AssistantGestureTutorialController;->showRippleEffect(Ljava/lang/Runnable;)V

    .line 72
    sget v0, Lcom/android/launcher3/R$string;->assistant_gesture_tutorial_playground_subtitle:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AssistantGestureTutorialController;->showFeedback(I)V

    .line 73
    goto :goto_0

    .line 68
    :pswitch_5
    sget v0, Lcom/android/launcher3/R$string;->assistant_gesture_feedback_swipe_too_far_from_corner:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AssistantGestureTutorialController;->showFeedback(I)V

    .line 69
    nop

    .line 81
    :goto_0
    nop

    .line 88
    :cond_0
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setAssistantProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .line 93
    return-void
.end method
