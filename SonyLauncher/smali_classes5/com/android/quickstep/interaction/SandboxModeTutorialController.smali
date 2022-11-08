.class public Lcom/android/quickstep/interaction/SandboxModeTutorialController;
.super Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;
.source "SandboxModeTutorialController.java"


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/SandboxModeTutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/quickstep/interaction/SandboxModeTutorialFragment;
    .param p2, "tutorialType"    # Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic getHotseatIconLeft()I
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->getHotseatIconLeft()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHotseatIconTop()I
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->getHotseatIconTop()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIntroductionSubtitle()I
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->getIntroductionSubtitle()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIntroductionTitle()I
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->getIntroductionTitle()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMockAppIconResId()I
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->getMockAppIconResId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMockWallpaperResId()I
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->getMockWallpaperResId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSpokenIntroductionSubtitle()I
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->getSpokenIntroductionSubtitle()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSuccessFeedbackSubtitle()I
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->getSuccessFeedbackSubtitle()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isGestureCompleted()Z
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->isGestureCompleted()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$onNavBarGestureAttempted$0$com-android-quickstep-interaction-SandboxModeTutorialController()V
    .locals 1

    .line 58
    sget v0, Lcom/android/launcher3/R$string;->sandbox_mode_home_gesture_feedback_successful:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/SandboxModeTutorialController;->showFeedback(I)V

    .line 59
    return-void
.end method

.method synthetic lambda$onNavBarGestureAttempted$1$com-android-quickstep-interaction-SandboxModeTutorialController()V
    .locals 1

    .line 63
    sget v0, Lcom/android/launcher3/R$string;->sandbox_mode_overview_gesture_feedback_successful:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/SandboxModeTutorialController;->showFeedback(I)V

    .line 64
    return-void
.end method

.method public onBackGestureAttempted(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;)V
    .locals 2
    .param p1, "result"    # Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    .line 33
    sget-object v0, Lcom/android/quickstep/interaction/SandboxModeTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult:[I

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 44
    :pswitch_0
    sget v0, Lcom/android/launcher3/R$string;->sandbox_mode_back_gesture_feedback_swipe_too_far_from_edge:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/SandboxModeTutorialController;->showFeedback(I)V

    goto :goto_0

    .line 41
    :pswitch_1
    sget v0, Lcom/android/launcher3/R$string;->back_gesture_feedback_cancelled:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/SandboxModeTutorialController;->showFeedback(I)V

    .line 42
    goto :goto_0

    .line 36
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/SandboxModeTutorialController;->showRippleEffect(Ljava/lang/Runnable;)V

    .line 37
    sget v0, Lcom/android/launcher3/R$string;->sandbox_mode_back_gesture_feedback_successful:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/SandboxModeTutorialController;->showFeedback(I)V

    .line 38
    nop

    .line 47
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onMotionPaused(Z)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->onMotionPaused(Z)V

    return-void
.end method

.method public onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "result"    # Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;
    .param p2, "finalVelocity"    # Landroid/graphics/PointF;

    .line 51
    sget-object v0, Lcom/android/quickstep/interaction/SandboxModeTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult:[I

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 70
    :pswitch_0
    sget v0, Lcom/android/launcher3/R$string;->home_gesture_feedback_swipe_too_far_from_edge:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/SandboxModeTutorialController;->showFeedback(I)V

    goto :goto_0

    .line 62
    :pswitch_1
    new-instance v0, Lcom/android/quickstep/interaction/SandboxModeTutorialController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/interaction/SandboxModeTutorialController$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/interaction/SandboxModeTutorialController;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/quickstep/interaction/SandboxModeTutorialController;->fadeOutFakeTaskView(ZZLjava/lang/Runnable;)V

    .line 65
    goto :goto_0

    .line 57
    :pswitch_2
    new-instance v0, Lcom/android/quickstep/interaction/SandboxModeTutorialController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/interaction/SandboxModeTutorialController$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/interaction/SandboxModeTutorialController;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/interaction/SandboxModeTutorialController;->animateFakeTaskViewHome(Landroid/graphics/PointF;Ljava/lang/Runnable;)V

    .line 60
    goto :goto_0

    .line 53
    :pswitch_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/SandboxModeTutorialController;->showRippleEffect(Ljava/lang/Runnable;)V

    .line 54
    sget v0, Lcom/android/launcher3/R$string;->sandbox_mode_assistant_gesture_feedback_successful:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/SandboxModeTutorialController;->showFeedback(I)V

    .line 55
    nop

    .line 73
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setNavBarGestureProgress(Ljava/lang/Float;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->setNavBarGestureProgress(Ljava/lang/Float;)V

    return-void
.end method
