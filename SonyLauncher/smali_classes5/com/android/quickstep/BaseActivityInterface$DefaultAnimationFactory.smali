.class Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;
.super Ljava/lang/Object;
.source "BaseActivityInterface.java"

# interfaces
.implements Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/BaseActivityInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultAnimationFactory"
.end annotation


# instance fields
.field protected final mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TACTIVITY_TYPE;"
        }
    .end annotation
.end field

.field private final mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/util/AnimatorControllerWithResistance;",
            ">;"
        }
    .end annotation
.end field

.field private mHasEverAttachedToWindow:Z

.field private mIsAttachedToWindow:Z

.field private final mStartState:Lcom/android/launcher3/statemanager/BaseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSTATE_TYPE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/quickstep/BaseActivityInterface;


# direct methods
.method constructor <init>(Lcom/android/quickstep/BaseActivityInterface;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/quickstep/BaseActivityInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/util/AnimatorControllerWithResistance;",
            ">;)V"
        }
    .end annotation

    .line 464
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>.DefaultAnimationFactory;"
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/quickstep/util/AnimatorControllerWithResistance;>;"
    iput-object p1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->this$0:Lcom/android/quickstep/BaseActivityInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p2, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mCallback:Ljava/util/function/Consumer;

    .line 467
    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 468
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mStartState:Lcom/android/launcher3/statemanager/BaseState;

    .line 469
    return-void
.end method


# virtual methods
.method public createActivityInterface(J)V
    .locals 11
    .param p1, "transitionLength"    # J

    .line 484
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>.DefaultAnimationFactory;"
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v1, 0x2

    mul-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 485
    .local v0, "pa":Lcom/android/launcher3/anim/PendingAnimation;
    iget-object v1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p0, v1, v0}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->createBackgroundToOverviewAnim(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 486
    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    .line 487
    .local v1, "controller":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    iget-object v2, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentUserControlledAnimation(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    .line 490
    new-instance v2, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    .line 494
    iget-object v2, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/quickstep/views/RecentsView;

    .line 495
    .local v10, "recentsView":Lcom/android/quickstep/views/RecentsView;
    iget-object v3, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 497
    invoke-virtual {v10}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v4

    iget-object v2, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    sget-object v7, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    sget-object v9, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_TRANSLATION:Landroid/util/FloatProperty;

    .line 496
    move-object v2, v1

    move-object v6, v10

    move-object v8, v10

    invoke-static/range {v2 .. v9}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->createForRecents(Lcom/android/launcher3/anim/AnimatorPlaybackController;Landroid/content/Context;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/DeviceProfile;Ljava/lang/Object;Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/util/FloatProperty;)Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v2

    .line 500
    .local v2, "controllerWithResistance":Lcom/android/quickstep/util/AnimatorControllerWithResistance;
    iget-object v3, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mCallback:Ljava/util/function/Consumer;

    invoke-interface {v3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 505
    iget-object v3, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v3}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v3, v4, :cond_0

    .line 506
    iget-boolean v3, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mIsAttachedToWindow:Z

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->setRecentsAttachedToAppWindow(ZZ)V

    .line 508
    :cond_0
    return-void
.end method

.method protected createBackgroundToOverviewAnim(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 7
    .param p2, "pa"    # Lcom/android/launcher3/anim/PendingAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TACTIVITY_TYPE;",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            ")V"
        }
    .end annotation

    .line 561
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>.DefaultAnimationFactory;"
    .local p1, "activity":Lcom/android/launcher3/statemanager/StatefulActivity;, "TACTIVITY_TYPE;"
    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 562
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    sget-object v3, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    .line 563
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    move-result v4

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 562
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, p2

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    .line 564
    sget-object v3, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    .line 566
    new-instance v1, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$1;-><init>(Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;)V

    invoke-virtual {p2, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 575
    return-void
.end method

.method public hasRecentsEverAttachedToAppWindow()Z
    .locals 1

    .line 551
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>.DefaultAnimationFactory;"
    iget-boolean v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mHasEverAttachedToWindow:Z

    return v0
.end method

.method protected initBackgroundStateUI()Lcom/android/launcher3/statemanager/StatefulActivity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TACTIVITY_TYPE;"
        }
    .end annotation

    .line 472
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>.DefaultAnimationFactory;"
    iget-object v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mStartState:Lcom/android/launcher3/statemanager/BaseState;

    .line 473
    .local v0, "resetState":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    iget-object v1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mStartState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-interface {v1}, Lcom/android/launcher3/statemanager/BaseState;->shouldDisableRestore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getRestState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/statemanager/StateManager;->setRestState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 477
    iget-object v1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->this$0:Lcom/android/quickstep/BaseActivityInterface;

    invoke-static {v2}, Lcom/android/quickstep/BaseActivityInterface;->-$$Nest$fgetmBackgroundState(Lcom/android/quickstep/BaseActivityInterface;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    .line 478
    iget-object v1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->this$0:Lcom/android/quickstep/BaseActivityInterface;

    invoke-static {v1}, Lcom/android/quickstep/BaseActivityInterface;->-$$Nest$monInitBackgroundStateUI(Lcom/android/quickstep/BaseActivityInterface;)V

    .line 479
    iget-object v1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    return-object v1
.end method

.method public isRecentsAttachedToAppWindow()Z
    .locals 1

    .line 546
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>.DefaultAnimationFactory;"
    iget-boolean v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mIsAttachedToWindow:Z

    return v0
.end method

.method synthetic lambda$createActivityInterface$0$com-android-quickstep-BaseActivityInterface$DefaultAnimationFactory(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .locals 5
    .param p1, "controller"    # Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 490
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>.DefaultAnimationFactory;"
    iget-object v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 491
    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getInterpolatedProgress()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->this$0:Lcom/android/quickstep/BaseActivityInterface;

    invoke-static {v1}, Lcom/android/quickstep/BaseActivityInterface;->-$$Nest$fgetmTargetState(Lcom/android/quickstep/BaseActivityInterface;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->this$0:Lcom/android/quickstep/BaseActivityInterface;

    invoke-static {v1}, Lcom/android/quickstep/BaseActivityInterface;->-$$Nest$fgetmBackgroundState(Lcom/android/quickstep/BaseActivityInterface;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    .line 490
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    return-void
.end method

.method public setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .locals 2
    .param p1, "endTarget"    # Lcom/android/quickstep/GestureState$GestureEndTarget;

    .line 556
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>.DefaultAnimationFactory;"
    iget-object v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->this$0:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/BaseActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/quickstep/BaseActivityInterface;->-$$Nest$fputmTargetState(Lcom/android/quickstep/BaseActivityInterface;Lcom/android/launcher3/statemanager/BaseState;)V

    .line 557
    return-void
.end method

.method public setRecentsAttachedToAppWindow(ZZ)V
    .locals 8
    .param p1, "attached"    # Z
    .param p2, "animate"    # Z

    .line 512
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>.DefaultAnimationFactory;"
    iget-boolean v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mIsAttachedToWindow:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    .line 513
    return-void

    .line 515
    :cond_0
    iput-boolean p1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mIsAttachedToWindow:Z

    .line 516
    iget-object v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 517
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 518
    iput-boolean v1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mHasEverAttachedToWindow:Z

    .line 520
    :cond_1
    iget-object v2, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    new-array v3, v1, [F

    .line 521
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    const/4 v7, 0x0

    aput v6, v3, v7

    invoke-virtual {v2, v7, v3}, Lcom/android/launcher3/statemanager/StateManager;->createStateElementAnimation(I[F)Landroid/animation/Animator;

    move-result-object v2

    .line 523
    .local v2, "fadeAnim":Landroid/animation/Animator;
    if-eqz p1, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v5

    .line 524
    .local v3, "fromTranslation":F
    :goto_1
    if-eqz p1, :cond_4

    move v4, v5

    .line 525
    .local v4, "toTranslation":F
    :cond_4
    iget-object v5, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v5

    .line 526
    invoke-virtual {v5, v1}, Lcom/android/launcher3/statemanager/StateManager;->cancelStateElementAnimation(I)V

    .line 527
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->isShown()Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz p2, :cond_5

    .line 528
    sget-object v5, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    goto :goto_2

    .line 530
    :cond_5
    sget-object v5, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    invoke-virtual {v5, v0}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 532
    :goto_2
    if-nez p2, :cond_6

    .line 533
    sget-object v1, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    goto :goto_3

    .line 535
    :cond_6
    iget-object v5, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v3, v6, v7

    aput v4, v6, v1

    invoke-virtual {v5, v1, v6}, Lcom/android/launcher3/statemanager/StateManager;->createStateElementAnimation(I[F)Landroid/animation/Animator;

    move-result-object v1

    .line 537
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 540
    :goto_3
    if-eqz p1, :cond_7

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_7
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    :goto_4
    invoke-virtual {v2, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 541
    if-eqz p2, :cond_8

    const-wide/16 v5, 0x12c

    goto :goto_5

    :cond_8
    const-wide/16 v5, 0x0

    :goto_5
    invoke-virtual {v2, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 542
    return-void
.end method
