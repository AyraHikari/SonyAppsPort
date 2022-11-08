.class public final Lcom/android/quickstep/TaskViewUtils;
.super Ljava/lang/Object;
.source "TaskViewUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static animateSplitRoot(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V
    .locals 2
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "splitRoot"    # Landroid/window/TransitionInfo$Change;

    .line 439
    if-eqz p1, :cond_0

    .line 440
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 441
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 443
    :cond_0
    return-void
.end method

.method public static composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V
    .locals 17
    .param p0, "anim"    # Landroid/animation/AnimatorSet;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "nonAppTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p5, "launcherClosing"    # Z
    .param p6, "stateManager"    # Lcom/android/launcher3/statemanager/StateManager;
    .param p7, "recentsView"    # Lcom/android/quickstep/views/RecentsView;
    .param p8, "depthController"    # Lcom/android/launcher3/statehandlers/DepthController;

    .line 546
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    xor-int/lit8 v4, p5, 0x1

    .line 548
    .local v4, "skipLauncherChanges":Z
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-static {v2, v10, v11}, Lcom/android/quickstep/TaskViewUtils;->findTaskViewToLaunch(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/views/TaskView;

    move-result-object v12

    .line 549
    .local v12, "taskView":Lcom/android/quickstep/views/TaskView;
    new-instance v3, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v13, 0x150

    invoke-direct {v3, v13, v14}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    move-object v15, v3

    .line 550
    .local v15, "pa":Lcom/android/launcher3/anim/PendingAnimation;
    move-object v3, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p8

    move-object v9, v15

    invoke-static/range {v3 .. v9}, Lcom/android/quickstep/TaskViewUtils;->createRecentsWindowAnimator(Lcom/android/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 552
    const/4 v3, 0x1

    if-eqz p5, :cond_0

    .line 554
    new-instance v5, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda1;

    invoke-direct {v5, v15}, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/anim/PendingAnimation;)V

    move-object/from16 v6, p4

    invoke-static {v6, v3, v5}, Lcom/android/quickstep/TaskViewUtils;->createSplitAuxiliarySurfacesAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLjava/util/function/Consumer;)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 552
    :cond_0
    move-object/from16 v6, p4

    .line 566
    :goto_0
    const/4 v5, 0x0

    .line 570
    .local v5, "childStateAnimation":Landroid/animation/Animator;
    const/4 v7, 0x0

    if-eqz p5, :cond_3

    .line 571
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 572
    .local v8, "context":Landroid/content/Context;
    invoke-static {v8}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v9

    .line 573
    .local v9, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v13, v9, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v13, :cond_1

    .line 574
    sget-object v13, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    new-array v14, v3, [F

    const/16 v16, 0x0

    aput v16, v14, v7

    invoke-static {v2, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    goto :goto_1

    .line 575
    :cond_1
    invoke-virtual {v2, v12}, Lcom/android/quickstep/views/RecentsView;->createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;

    move-result-object v13

    :goto_1
    nop

    .line 576
    .local v13, "launcherAnim":Landroid/animation/Animator;
    iget-boolean v14, v9, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v14, :cond_2

    .line 577
    const-string v14, "b/223498680"

    const-string v7, "TVU composeRecentsLaunchAnimator alpha=0"

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v7, Lcom/android/quickstep/TaskViewUtils$6;

    invoke-direct {v7, v2}, Lcom/android/quickstep/TaskViewUtils$6;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v13, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 599
    :cond_2
    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 600
    move v7, v4

    const-wide/16 v3, 0x150

    .end local v4    # "skipLauncherChanges":Z
    .local v7, "skipLauncherChanges":Z
    invoke-virtual {v13, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 603
    new-instance v3, Lcom/android/quickstep/TaskViewUtils$7;

    invoke-direct {v3, v2, v1}, Lcom/android/quickstep/TaskViewUtils$7;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statemanager/StateManager;)V

    .line 614
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "dp":Lcom/android/launcher3/DeviceProfile;
    .local v3, "windowAnimEndListener":Landroid/animation/AnimatorListenerAdapter;
    goto :goto_2

    .line 615
    .end local v3    # "windowAnimEndListener":Landroid/animation/AnimatorListenerAdapter;
    .end local v7    # "skipLauncherChanges":Z
    .end local v13    # "launcherAnim":Landroid/animation/Animator;
    .restart local v4    # "skipLauncherChanges":Z
    :cond_3
    move v7, v4

    move-wide v3, v13

    .end local v4    # "skipLauncherChanges":Z
    .restart local v7    # "skipLauncherChanges":Z
    sget-object v8, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 616
    invoke-virtual {v1, v8, v3, v4}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v8

    .line 617
    .local v8, "controller":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    invoke-virtual {v8}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 618
    invoke-virtual {v8}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v5

    .line 619
    invoke-virtual {v8}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 620
    .restart local v13    # "launcherAnim":Landroid/animation/Animator;
    new-instance v3, Lcom/android/quickstep/TaskViewUtils$8;

    invoke-direct {v3, v2, v1}, Lcom/android/quickstep/TaskViewUtils$8;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statemanager/StateManager;)V

    .line 628
    .end local v8    # "controller":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .restart local v3    # "windowAnimEndListener":Landroid/animation/AnimatorListenerAdapter;
    :goto_2
    invoke-virtual {v15, v13}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    .line 629
    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {p7 .. p7}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_4

    .line 630
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v15, v4}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    .line 632
    :cond_4
    invoke-virtual {v15}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 637
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    invoke-virtual {v1, v0, v4}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    .line 638
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 639
    return-void
.end method

.method public static composeRecentsSplitLaunchAnimator(ILandroid/app/PendingIntent;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .locals 9
    .param p0, "initialTaskId"    # I
    .param p1, "initialTaskPendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "secondTaskId"    # I
    .param p3, "transitionInfo"    # Landroid/window/TransitionInfo;
    .param p4, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p5, "finishCallback"    # Ljava/lang/Runnable;

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "splitRoot1":Landroid/window/TransitionInfo$Change;
    const/4 v1, 0x0

    .line 401
    .local v1, "splitRoot2":Landroid/window/TransitionInfo$Change;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 402
    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 403
    .local v3, "change":Landroid/window/TransitionInfo$Change;
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_1

    :cond_0
    move v4, v5

    .line 404
    .local v4, "taskId":I
    :goto_1
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    .line 407
    .local v6, "mode":I
    if-eq v4, p0, :cond_1

    if-ne v4, p2, :cond_4

    .line 408
    :cond_1
    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    goto :goto_2

    .line 409
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected task to be showing, but it is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 412
    :cond_3
    :goto_2
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 417
    :cond_4
    if-ne v4, p0, :cond_5

    if-eq p0, v5, :cond_5

    .line 418
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v0

    .line 420
    :cond_5
    if-ne v4, p2, :cond_6

    .line 421
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v1

    .line 401
    .end local v3    # "change":Landroid/window/TransitionInfo$Change;
    .end local v4    # "taskId":I
    .end local v6    # "mode":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .restart local v3    # "change":Landroid/window/TransitionInfo$Change;
    .restart local v4    # "taskId":I
    .restart local v6    # "mode":I
    :cond_7
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initiating multi-split launch but the splitroot of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is already visible or has broken hierarchy."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 426
    .end local v2    # "i":I
    .end local v3    # "change":Landroid/window/TransitionInfo$Change;
    .end local v4    # "taskId":I
    .end local v6    # "mode":I
    :cond_8
    invoke-static {p4, v0}, Lcom/android/quickstep/TaskViewUtils;->animateSplitRoot(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V

    .line 427
    invoke-static {p4, v1}, Lcom/android/quickstep/TaskViewUtils;->animateSplitRoot(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V

    .line 431
    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 434
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 435
    return-void
.end method

.method public static composeRecentsSplitLaunchAnimatorLegacy(Lcom/android/quickstep/views/GroupedTaskView;ILandroid/app/PendingIntent;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statehandlers/DepthController;Ljava/lang/Runnable;)V
    .locals 14
    .param p0, "launchingTaskView"    # Lcom/android/quickstep/views/GroupedTaskView;
    .param p1, "initialTaskId"    # I
    .param p2, "initialTaskPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "secondTaskId"    # I
    .param p4, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p5, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p6, "nonAppTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p7, "stateManager"    # Lcom/android/launcher3/statemanager/StateManager;
    .param p8, "depthController"    # Lcom/android/launcher3/statehandlers/DepthController;
    .param p9, "finishCallback"    # Ljava/lang/Runnable;

    .line 465
    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p9

    if-eqz p0, :cond_0

    .line 466
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v12, v0

    .line 467
    .local v12, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v13

    .line 468
    .local v13, "recentsView":Lcom/android/quickstep/views/RecentsView;
    new-instance v0, Lcom/android/quickstep/TaskViewUtils$4;

    invoke-direct {v0, v11}, Lcom/android/quickstep/TaskViewUtils$4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 475
    const/4 v5, 0x1

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    move-object v7, v13

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/android/quickstep/TaskViewUtils;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V

    .line 479
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 480
    return-void

    .line 483
    .end local v12    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v13    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v0, "openingTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SurfaceControl;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v1, "closingTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SurfaceControl;>;"
    array-length v2, v9

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    aget-object v4, v9, v3

    .line 486
    .local v4, "appTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    .line 487
    .local v5, "taskId":I
    :goto_1
    iget v6, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    .line 488
    .local v6, "mode":I
    iget-object v7, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    .line 489
    .local v7, "leash":Landroid/view/SurfaceControl;
    if-nez v7, :cond_2

    .line 490
    move v8, p1

    move/from16 v12, p3

    goto :goto_2

    .line 493
    :cond_2
    if-nez v6, :cond_3

    .line 494
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, p1

    move/from16 v12, p3

    goto :goto_2

    .line 495
    :cond_3
    move v8, p1

    if-eq v5, v8, :cond_5

    move/from16 v12, p3

    if-eq v5, v12, :cond_6

    .line 497
    const/4 v13, 0x1

    if-ne v6, v13, :cond_4

    .line 498
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    .end local v4    # "appTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v5    # "taskId":I
    .end local v6    # "mode":I
    .end local v7    # "leash":Landroid/view/SurfaceControl;
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 495
    .restart local v4    # "appTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .restart local v5    # "taskId":I
    .restart local v6    # "mode":I
    .restart local v7    # "leash":Landroid/view/SurfaceControl;
    :cond_5
    move/from16 v12, p3

    .line 496
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Expected task to be opening, but it is "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 502
    .end local v4    # "appTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v5    # "taskId":I
    .end local v6    # "mode":I
    .end local v7    # "leash":Landroid/view/SurfaceControl;
    :cond_7
    move v8, p1

    move/from16 v12, p3

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v3, v10

    if-ge v2, v3, :cond_9

    .line 503
    aget-object v3, v10, v2

    iget-object v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    .line 504
    .local v3, "leash":Landroid/view/SurfaceControl;
    aget-object v4, v10, v2

    iget v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v5, 0x7f2

    if-ne v4, v5, :cond_8

    if-eqz v3, :cond_8

    .line 505
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    .end local v3    # "leash":Landroid/view/SurfaceControl;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 509
    .end local v2    # "i":I
    :cond_9
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 510
    .local v2, "t":Landroid/view/SurfaceControl$Transaction;
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 511
    .local v3, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x172

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 512
    new-instance v4, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v2}, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 519
    new-instance v4, Lcom/android/quickstep/TaskViewUtils$5;

    invoke-direct {v4, v0, v2, v1, v11}, Lcom/android/quickstep/TaskViewUtils$5;-><init>(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 537
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 538
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static createRecentsWindowAnimator(Lcom/android/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 46
    .param p0, "v"    # Lcom/android/quickstep/views/TaskView;
    .param p1, "skipViewChanges"    # Z
    .param p2, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "nonAppTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p5, "depthController"    # Lcom/android/launcher3/statehandlers/DepthController;
    .param p6, "out"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 168
    move-object/from16 v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v9

    .line 169
    .local v9, "recentsView":Lcom/android/quickstep/views/RecentsView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->isEndQuickswitchCuj()Z

    move-result v10

    .line 170
    .local v10, "isQuickSwitch":Z
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/android/quickstep/views/TaskView;->setEndQuickswitchCuj(Z)V

    .line 172
    new-instance v0, Lcom/android/quickstep/RemoteAnimationTargets;

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct {v0, v12, v13, v14, v11}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    move-object v15, v0

    .line 175
    .local v15, "targets":Lcom/android/quickstep/RemoteAnimationTargets;
    invoke-virtual {v15}, Lcom/android/quickstep/RemoteAnimationTargets;->getNavBarRemoteAnimationTarget()Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v5

    .line 177
    .local v5, "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    new-instance v0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v0, v6}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    move-object v4, v0

    .line 178
    .local v4, "applier":Lcom/android/quickstep/util/SurfaceTransactionApplier;
    invoke-virtual {v15, v4}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    .line 181
    invoke-virtual {v9}, Lcom/android/quickstep/views/RecentsView;->getRemoteTargetHandles()[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v16

    .line 182
    .local v16, "recentsViewHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v16, :cond_0

    .line 184
    move-object/from16 v0, v16

    move-object v3, v0

    .local v0, "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    goto :goto_0

    .line 186
    .end local v0    # "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    :cond_0
    new-instance v0, Lcom/android/quickstep/RemoteTargetGluer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 187
    invoke-virtual {v9}, Lcom/android/quickstep/views/RecentsView;->getSizeStrategy()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v2

    invoke-direct {v0, v1, v2, v15}, Lcom/android/quickstep/RemoteTargetGluer;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/RemoteAnimationTargets;)V

    .line 188
    .local v0, "gluer":Lcom/android/quickstep/RemoteTargetGluer;
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->containsMultipleTasks()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargetsForSplitScreen(Lcom/android/quickstep/RemoteAnimationTargets;[I)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v1

    move-object v3, v1

    .local v1, "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    goto :goto_0

    .line 191
    .end local v1    # "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    :cond_1
    invoke-virtual {v0, v15}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargets(Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v1

    move-object v3, v1

    .line 194
    .end local v0    # "gluer":Lcom/android/quickstep/RemoteTargetGluer;
    .local v3, "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    :goto_0
    array-length v0, v3

    move v1, v11

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, v3, v1

    .line 195
    .local v2, "remoteTargetGluer":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/android/quickstep/util/TransformParams;->setSyncTransactionApplier(Lcom/android/quickstep/util/SurfaceTransactionApplier;)Lcom/android/quickstep/util/TransformParams;

    .line 194
    .end local v2    # "remoteTargetGluer":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    add-int/lit8 v1, v1, 0x1

    const/4 v11, 0x0

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {v9, v6}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v11

    .line 199
    .local v11, "taskIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 200
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 201
    .local v1, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v0, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    .line 202
    .local v0, "showAsGrid":Z
    nop

    .line 203
    move-object/from16 v18, v4

    .end local v4    # "applier":Lcom/android/quickstep/util/SurfaceTransactionApplier;
    .local v18, "applier":Lcom/android/quickstep/util/SurfaceTransactionApplier;
    invoke-virtual {v9}, Lcom/android/quickstep/views/RecentsView;->getCurrentPage()I

    move-result v4

    const/16 v19, 0x1

    if-eq v11, v4, :cond_3

    if-nez v0, :cond_3

    move/from16 v4, v19

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    move/from16 v20, v4

    .line 204
    .local v20, "parallaxCenterAndAdjacentTask":Z
    invoke-virtual {v9, v11}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v4

    .line 205
    .local v4, "taskRectTranslationPrimary":I
    if-eqz v0, :cond_4

    move/from16 v21, v0

    .end local v0    # "showAsGrid":Z
    .local v21, "showAsGrid":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->getGridTranslationY()F

    move-result v0

    float-to-int v0, v0

    goto :goto_3

    .end local v21    # "showAsGrid":Z
    .restart local v0    # "showAsGrid":Z
    :cond_4
    move/from16 v21, v0

    .end local v0    # "showAsGrid":Z
    .restart local v21    # "showAsGrid":Z
    const/4 v0, 0x0

    .line 207
    .local v0, "taskRectTranslationSecondary":I
    :goto_3
    const/16 v22, 0x0

    .line 209
    .local v22, "topMostSimulators":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v23

    if-nez v23, :cond_6

    .line 211
    array-length v6, v3

    move/from16 v26, v11

    const/4 v11, 0x0

    .end local v11    # "taskIndex":I
    .local v26, "taskIndex":I
    :goto_4
    if-ge v11, v6, :cond_5

    aget-object v27, v3, v11

    .line 212
    .local v27, "targetHandle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    move-object/from16 v28, v3

    .end local v3    # "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .local v28, "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    invoke-virtual/range {v27 .. v27}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v3

    .line 213
    .local v3, "tvsLocal":Lcom/android/quickstep/util/TaskViewSimulator;
    invoke-virtual {v3, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    .line 217
    move-object/from16 v29, v1

    .end local v1    # "dp":Lcom/android/launcher3/DeviceProfile;
    .local v29, "dp":Lcom/android/launcher3/DeviceProfile;
    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    .line 218
    .local v1, "displayRotation":I
    move-object/from16 v30, v2

    .end local v2    # "context":Landroid/content/Context;
    .local v30, "context":Landroid/content/Context;
    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lcom/android/quickstep/util/RecentsOrientedState;->update(II)Z

    .line 220
    iget-object v2, v3, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/quickstep/AnimatedFloat;

    move/from16 v31, v1

    const/4 v1, 0x0

    .end local v1    # "displayRotation":I
    .local v31, "displayRotation":I
    iput v1, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 221
    iget-object v1, v3, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->isGridTask()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setIsGridTask(Z)V

    .line 223
    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    new-instance v2, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v3, v2, v4, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->set(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;II)V

    .line 228
    invoke-virtual/range {v27 .. v27}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/util/TransformParams;->TARGET_ALPHA:Landroid/util/FloatProperty;

    const/16 v32, 0x0

    const/high16 v33, 0x3f800000    # 1.0f

    move/from16 v34, v0

    .end local v0    # "taskRectTranslationSecondary":I
    .local v34, "taskRectTranslationSecondary":I
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 229
    move-object/from16 v35, v3

    move/from16 v36, v4

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    .end local v3    # "tvsLocal":Lcom/android/quickstep/util/TaskViewSimulator;
    .end local v4    # "taskRectTranslationPrimary":I
    .local v35, "tvsLocal":Lcom/android/quickstep/util/TaskViewSimulator;
    .local v36, "taskRectTranslationPrimary":I
    invoke-static {v0, v4, v3}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v37

    .line 228
    move-object/from16 v0, p6

    move-object/from16 v4, v30

    .end local v30    # "context":Landroid/content/Context;
    .local v4, "context":Landroid/content/Context;
    move/from16 v30, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v35

    .end local v35    # "tvsLocal":Lcom/android/quickstep/util/TaskViewSimulator;
    .local v6, "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .local v28, "tvsLocal":Lcom/android/quickstep/util/TaskViewSimulator;
    move/from16 v3, v32

    move-object/from16 v38, v4

    move/from16 v32, v36

    .end local v4    # "context":Landroid/content/Context;
    .end local v36    # "taskRectTranslationPrimary":I
    .local v32, "taskRectTranslationPrimary":I
    .local v38, "context":Landroid/content/Context;
    move/from16 v4, v33

    move-object v12, v5

    .end local v5    # "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .local v12, "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    move-object/from16 v5, v37

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    .line 211
    .end local v27    # "targetHandle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .end local v28    # "tvsLocal":Lcom/android/quickstep/util/TaskViewSimulator;
    .end local v31    # "displayRotation":I
    add-int/lit8 v11, v11, 0x1

    move-object v3, v6

    move-object v5, v12

    move-object/from16 v1, v29

    move/from16 v6, v30

    move/from16 v4, v32

    move/from16 v0, v34

    move-object/from16 v2, v38

    move-object/from16 v12, p2

    goto/16 :goto_4

    .end local v6    # "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .end local v12    # "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v29    # "dp":Lcom/android/launcher3/DeviceProfile;
    .end local v32    # "taskRectTranslationPrimary":I
    .end local v34    # "taskRectTranslationSecondary":I
    .end local v38    # "context":Landroid/content/Context;
    .restart local v0    # "taskRectTranslationSecondary":I
    .local v1, "dp":Lcom/android/launcher3/DeviceProfile;
    .restart local v2    # "context":Landroid/content/Context;
    .local v3, "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .local v4, "taskRectTranslationPrimary":I
    .restart local v5    # "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_5
    move/from16 v34, v0

    move-object/from16 v29, v1

    move-object/from16 v38, v2

    move-object v6, v3

    move/from16 v32, v4

    move-object v12, v5

    .end local v0    # "taskRectTranslationSecondary":I
    .end local v1    # "dp":Lcom/android/launcher3/DeviceProfile;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .end local v4    # "taskRectTranslationPrimary":I
    .end local v5    # "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .restart local v6    # "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .restart local v12    # "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .restart local v29    # "dp":Lcom/android/launcher3/DeviceProfile;
    .restart local v32    # "taskRectTranslationPrimary":I
    .restart local v34    # "taskRectTranslationSecondary":I
    .restart local v38    # "context":Landroid/content/Context;
    goto :goto_5

    .line 209
    .end local v6    # "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .end local v12    # "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v26    # "taskIndex":I
    .end local v29    # "dp":Lcom/android/launcher3/DeviceProfile;
    .end local v32    # "taskRectTranslationPrimary":I
    .end local v34    # "taskRectTranslationSecondary":I
    .end local v38    # "context":Landroid/content/Context;
    .restart local v0    # "taskRectTranslationSecondary":I
    .restart local v1    # "dp":Lcom/android/launcher3/DeviceProfile;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .restart local v4    # "taskRectTranslationPrimary":I
    .restart local v5    # "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .restart local v11    # "taskIndex":I
    :cond_6
    move/from16 v34, v0

    move-object/from16 v29, v1

    move-object/from16 v38, v2

    move-object v6, v3

    move/from16 v32, v4

    move-object v12, v5

    move/from16 v26, v11

    .line 233
    .end local v0    # "taskRectTranslationSecondary":I
    .end local v1    # "dp":Lcom/android/launcher3/DeviceProfile;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .end local v4    # "taskRectTranslationPrimary":I
    .end local v5    # "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v11    # "taskIndex":I
    .restart local v6    # "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .restart local v12    # "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .restart local v26    # "taskIndex":I
    .restart local v29    # "dp":Lcom/android/launcher3/DeviceProfile;
    .restart local v32    # "taskRectTranslationPrimary":I
    .restart local v34    # "taskRectTranslationSecondary":I
    .restart local v38    # "context":Landroid/content/Context;
    :goto_5
    array-length v0, v6

    move-object/from16 v11, v22

    const/4 v1, 0x0

    .end local v22    # "topMostSimulators":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .local v11, "topMostSimulators":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    :goto_6
    if-ge v1, v0, :cond_9

    aget-object v2, v6, v1

    .line 234
    .local v2, "targetHandle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v3

    .line 235
    .local v3, "tvsLocal":Lcom/android/quickstep/util/TaskViewSimulator;
    iget-object v4, v3, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/quickstep/AnimatedFloat;

    sget-object v5, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    move/from16 v22, v0

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v27, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .end local v2    # "targetHandle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .restart local v27    # "targetHandle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    invoke-virtual {v8, v4, v5, v2, v0}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 237
    iget-object v0, v3, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    sget-object v4, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    .line 238
    invoke-virtual {v3}, Lcom/android/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result v5

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 237
    invoke-virtual {v8, v0, v4, v5, v2}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 240
    iget-object v0, v3, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/android/quickstep/AnimatedFloat;

    sget-object v2, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v5, 0x0

    invoke-virtual {v8, v0, v2, v5, v4}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 243
    new-instance v0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda4;

    invoke-direct {v0, v6}, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda4;-><init>([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    invoke-virtual {v8, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    .line 248
    if-eqz v12, :cond_7

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 250
    .local v0, "cropRect":Landroid/graphics/Rect;
    new-instance v2, Lcom/android/quickstep/TaskViewUtils$1;

    invoke-direct {v2, v12, v6, v0}, Lcom/android/quickstep/TaskViewUtils$1;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/graphics/Rect;)V

    invoke-virtual {v8, v2}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 276
    .end local v0    # "cropRect":Landroid/graphics/Rect;
    goto :goto_7

    .line 279
    :cond_7
    nop

    .line 280
    invoke-virtual {v9}, Lcom/android/quickstep/views/RecentsView;->getRecentsAnimationController()Lcom/android/quickstep/RecentsAnimationController;

    move-result-object v0

    .line 281
    .local v0, "controller":Lcom/android/quickstep/RecentsAnimationController;
    if-eqz v0, :cond_8

    .line 282
    const-wide/16 v4, 0x150

    invoke-virtual {v0, v4, v5}, Lcom/android/quickstep/RecentsAnimationController;->animateNavigationBarToApp(J)V

    .line 285
    .end local v0    # "controller":Lcom/android/quickstep/RecentsAnimationController;
    :cond_8
    :goto_7
    move-object v11, v6

    .line 233
    .end local v3    # "tvsLocal":Lcom/android/quickstep/util/TaskViewSimulator;
    .end local v27    # "targetHandle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v22

    goto :goto_6

    .line 288
    :cond_9
    if-nez p1, :cond_d

    if-eqz v20, :cond_d

    if-eqz v11, :cond_d

    array-length v0, v11

    if-lez v0, :cond_d

    .line 290
    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v5, v1}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v5

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    .line 292
    move-object v0, v11

    .line 293
    .local v0, "simulatorCopies":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_a

    aget-object v3, v0, v2

    .line 294
    .local v3, "handle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    invoke-virtual {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    .line 293
    .end local v3    # "handle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 309
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/TaskView;->getThumbnails()[Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v1

    .line 310
    .local v1, "thumbnails":[Lcom/android/quickstep/views/TaskThumbnailView;
    array-length v2, v0

    new-array v2, v2, [Landroid/graphics/Matrix;

    .line 311
    .local v2, "mt":[Landroid/graphics/Matrix;
    array-length v3, v0

    new-array v3, v3, [Landroid/graphics/Matrix;

    .line 312
    .local v3, "mti":[Landroid/graphics/Matrix;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    array-length v5, v1

    if-ge v4, v5, :cond_b

    .line 313
    aget-object v5, v1, v4

    .line 314
    .local v5, "ttv":Lcom/android/quickstep/views/TaskThumbnailView;
    move-object/from16 v28, v6

    .end local v6    # "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .local v28, "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    new-instance v6, Landroid/graphics/RectF;

    move-object/from16 v22, v9

    .end local v9    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    .local v22, "recentsView":Lcom/android/quickstep/views/RecentsView;
    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskThumbnailView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v24, v11

    .end local v11    # "topMostSimulators":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .local v24, "topMostSimulators":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskThumbnailView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    move-object/from16 v25, v12

    const/4 v12, 0x0

    .end local v12    # "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .local v25, "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    invoke-direct {v6, v12, v12, v9, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 315
    .local v6, "localBounds":Landroid/graphics/RectF;
    const/4 v9, 0x4

    new-array v9, v9, [F

    const/4 v11, 0x0

    aput v12, v9, v11

    aput v12, v9, v19

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskThumbnailView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const/16 v23, 0x2

    aput v11, v9, v23

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskThumbnailView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    const/16 v27, 0x3

    aput v11, v9, v27

    .line 316
    .local v9, "tvBoundsMapped":[F
    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskThumbnailView;->getRootView()Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v5, v11, v9, v12}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    .line 317
    new-instance v11, Landroid/graphics/RectF;

    move-object/from16 v17, v5

    .end local v5    # "ttv":Lcom/android/quickstep/views/TaskThumbnailView;
    .local v17, "ttv":Lcom/android/quickstep/views/TaskThumbnailView;
    aget v5, v9, v12

    aget v12, v9, v19

    aget v13, v9, v23

    aget v14, v9, v27

    invoke-direct {v11, v5, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v5, v11

    .line 320
    .local v5, "localBoundsInRoot":Landroid/graphics/RectF;
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 321
    .local v11, "localMt":Landroid/graphics/Matrix;
    sget-object v12, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v11, v6, v5, v12}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 322
    aput-object v11, v2, v4

    .line 324
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 325
    .local v12, "localMti":Landroid/graphics/Matrix;
    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 326
    aput-object v12, v3, v4

    .line 312
    .end local v5    # "localBoundsInRoot":Landroid/graphics/RectF;
    .end local v6    # "localBounds":Landroid/graphics/RectF;
    .end local v9    # "tvBoundsMapped":[F
    .end local v11    # "localMt":Landroid/graphics/Matrix;
    .end local v12    # "localMti":Landroid/graphics/Matrix;
    .end local v17    # "ttv":Lcom/android/quickstep/views/TaskThumbnailView;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v9, v22

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v6, v28

    goto :goto_9

    .end local v22    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    .end local v24    # "topMostSimulators":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .end local v25    # "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v28    # "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .local v6, "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .local v9, "recentsView":Lcom/android/quickstep/views/RecentsView;
    .local v11, "topMostSimulators":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .local v12, "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_b
    move-object/from16 v28, v6

    move-object/from16 v22, v9

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    .line 329
    .end local v4    # "i":I
    .end local v6    # "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .end local v9    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    .end local v11    # "topMostSimulators":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .end local v12    # "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .restart local v22    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    .restart local v24    # "topMostSimulators":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .restart local v25    # "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .restart local v28    # "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    array-length v4, v0

    new-array v4, v4, [Landroid/graphics/Matrix;

    .line 330
    .local v4, "k0i":[Landroid/graphics/Matrix;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a
    array-length v6, v0

    if-ge v5, v6, :cond_c

    .line 331
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    aput-object v6, v4, v5

    .line 332
    aget-object v6, v0, v5

    invoke-virtual {v6}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    aget-object v9, v4, v5

    invoke-virtual {v6, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 330
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 334
    .end local v5    # "i":I
    :cond_c
    new-instance v41, Landroid/graphics/Matrix;

    invoke-direct/range {v41 .. v41}, Landroid/graphics/Matrix;-><init>()V

    .line 335
    .local v41, "animationMatrix":Landroid/graphics/Matrix;
    new-instance v5, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda5;

    move-object/from16 v39, v5

    move-object/from16 v40, v0

    move-object/from16 v42, v2

    move-object/from16 v43, v4

    move-object/from16 v44, v3

    move-object/from16 v45, v1

    invoke-direct/range {v39 .. v45}, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda5;-><init>([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/android/quickstep/views/TaskThumbnailView;)V

    invoke-virtual {v8, v5}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    .line 346
    new-instance v5, Lcom/android/quickstep/TaskViewUtils$2;

    invoke-direct {v5, v1}, Lcom/android/quickstep/TaskViewUtils$2;-><init>([Lcom/android/quickstep/views/TaskThumbnailView;)V

    invoke-virtual {v8, v5}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_b

    .line 288
    .end local v0    # "simulatorCopies":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .end local v1    # "thumbnails":[Lcom/android/quickstep/views/TaskThumbnailView;
    .end local v2    # "mt":[Landroid/graphics/Matrix;
    .end local v3    # "mti":[Landroid/graphics/Matrix;
    .end local v4    # "k0i":[Landroid/graphics/Matrix;
    .end local v22    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    .end local v24    # "topMostSimulators":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .end local v25    # "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v28    # "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .end local v41    # "animationMatrix":Landroid/graphics/Matrix;
    .restart local v6    # "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .restart local v9    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    .restart local v11    # "topMostSimulators":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .restart local v12    # "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_d
    move-object/from16 v28, v6

    move-object/from16 v22, v9

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    .line 356
    .end local v6    # "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .end local v9    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    .end local v11    # "topMostSimulators":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .end local v12    # "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .restart local v22    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    .restart local v24    # "topMostSimulators":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .restart local v25    # "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .restart local v28    # "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    :goto_b
    new-instance v0, Lcom/android/quickstep/TaskViewUtils$3;

    invoke-direct {v0, v10, v15}, Lcom/android/quickstep/TaskViewUtils$3;-><init>(ZLcom/android/quickstep/RemoteAnimationTargets;)V

    invoke-virtual {v8, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 372
    if-eqz v7, :cond_e

    .line 373
    sget-object v0, Lcom/android/launcher3/statehandlers/DepthController;->DEPTH:Landroid/util/FloatProperty;

    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    move-object/from16 v2, v38

    .end local v38    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v1

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v7, v0, v1, v3}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    goto :goto_c

    .line 372
    .end local v2    # "context":Landroid/content/Context;
    .restart local v38    # "context":Landroid/content/Context;
    :cond_e
    move-object/from16 v2, v38

    .line 376
    .end local v38    # "context":Landroid/content/Context;
    .restart local v2    # "context":Landroid/content/Context;
    :goto_c
    return-void
.end method

.method public static createSplitAuxiliarySurfacesAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLjava/util/function/Consumer;)Landroid/animation/ValueAnimator;
    .locals 9
    .param p0, "nonApps"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p1, "shown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Landroid/animation/ValueAnimator;",
            ">;)",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    .line 650
    .local p2, "animatorHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/animation/ValueAnimator;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 654
    :cond_0
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 655
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 656
    .local v2, "auxiliarySurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/SurfaceControl;>;"
    const/4 v3, 0x0

    .line 657
    .local v3, "hasSurfaceToAnimate":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_2

    .line 658
    aget-object v5, p0, v4

    .line 659
    .local v5, "targ":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget-object v6, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    .line 660
    .local v6, "leash":Landroid/view/SurfaceControl;
    iget v7, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v8, 0x7f2

    if-ne v7, v8, :cond_1

    if-eqz v6, :cond_1

    .line 661
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    const/4 v3, 0x1

    .line 657
    .end local v5    # "targ":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v6    # "leash":Landroid/view/SurfaceControl;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 665
    .end local v4    # "i":I
    :cond_2
    if-nez v3, :cond_3

    .line 666
    return-object v0

    .line 669
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 670
    .local v0, "dockFadeAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, v1, p1}, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 677
    new-instance v4, Lcom/android/quickstep/TaskViewUtils$9;

    invoke-direct {v4, p1, v2, v1}, Lcom/android/quickstep/TaskViewUtils$9;-><init>(ZLjava/util/List;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 702
    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 703
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 704
    return-object v0

    .line 651
    .end local v0    # "dockFadeAnimator":Landroid/animation/ValueAnimator;
    .end local v1    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v2    # "auxiliarySurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/SurfaceControl;>;"
    .end local v3    # "hasSurfaceToAnimate":Z
    :cond_4
    :goto_1
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static findTaskViewToLaunch(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/views/TaskView;
    .locals 8
    .param p0, "recentsView"    # Lcom/android/quickstep/views/RecentsView;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "targets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 111
    instance-of v0, p1, Lcom/android/quickstep/views/TaskView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 112
    move-object v0, p1

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    .line 113
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1

    .line 118
    .end local v0    # "taskView":Lcom/android/quickstep/views/TaskView;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_3

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 120
    .local v0, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 121
    .local v2, "componentName":Landroid/content/ComponentName;
    iget-object v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 122
    .local v3, "userId":I
    if-eqz v2, :cond_3

    .line 123
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 124
    invoke-virtual {p0, v4}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    .line 125
    .local v5, "taskView":Lcom/android/quickstep/views/TaskView;
    invoke-virtual {p0, v5}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 126
    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 127
    .local v6, "key":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-ne v3, v7, :cond_2

    .line 128
    return-object v5

    .line 123
    .end local v5    # "taskView":Lcom/android/quickstep/views/TaskView;
    .end local v6    # "key":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "userId":I
    .end local v4    # "i":I
    :cond_3
    if-nez p2, :cond_4

    .line 136
    return-object v1

    .line 139
    :cond_4
    const/4 v0, -0x1

    .line 140
    .local v0, "openingTaskId":I
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v4, p2, v3

    .line 141
    .local v4, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v5, :cond_5

    .line 142
    iget v0, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    .line 143
    goto :goto_2

    .line 140
    .end local v4    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 148
    :cond_6
    :goto_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 149
    return-object v1

    .line 154
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    .line 155
    .local v2, "taskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v2, :cond_9

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    .line 158
    :cond_8
    return-object v2

    .line 156
    :cond_9
    :goto_3
    return-object v1
.end method

.method static synthetic lambda$composeRecentsLaunchAnimator$3(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p0, "pa"    # Lcom/android/launcher3/anim/PendingAnimation;
    .param p1, "dividerAnimator"    # Landroid/animation/ValueAnimator;

    .line 560
    invoke-virtual {p0}, Lcom/android/launcher3/anim/PendingAnimation;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 562
    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    .line 563
    return-void
.end method

.method static synthetic lambda$composeRecentsSplitLaunchAnimatorLegacy$2(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p0, "openingTargets"    # Ljava/util/ArrayList;
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 513
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 514
    .local v0, "progress":F
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    .line 515
    .local v2, "leash":Landroid/view/SurfaceControl;
    invoke-virtual {p1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 516
    .end local v2    # "leash":Landroid/view/SurfaceControl;
    goto :goto_0

    .line 517
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 518
    return-void
.end method

.method static synthetic lambda$createRecentsWindowAnimator$0([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 5
    .param p0, "remoteTargetHandles"    # [Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 244
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 245
    .local v2, "handle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    .line 244
    .end local v2    # "handle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_0
    return-void
.end method

.method static synthetic lambda$createRecentsWindowAnimator$1([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/android/quickstep/views/TaskThumbnailView;)V
    .locals 2
    .param p0, "simulatorCopies"    # [Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .param p1, "animationMatrix"    # Landroid/graphics/Matrix;
    .param p2, "mt"    # [Landroid/graphics/Matrix;
    .param p3, "k0i"    # [Landroid/graphics/Matrix;
    .param p4, "mti"    # [Landroid/graphics/Matrix;
    .param p5, "thumbnails"    # [Lcom/android/quickstep/views/TaskThumbnailView;

    .line 336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 337
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 338
    aget-object v1, p3, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 339
    aget-object v1, p0, v0

    .line 340
    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 339
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 341
    aget-object v1, p4, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 342
    aget-object v1, p5, v0

    invoke-virtual {v1, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$createSplitAuxiliarySurfacesAnimator$4(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;ZLandroid/animation/ValueAnimator;)V
    .locals 4
    .param p0, "auxiliarySurfaces"    # Ljava/util/List;
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "shown"    # Z
    .param p3, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 671
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 672
    .local v0, "progress":F
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    .line 673
    .local v2, "leash":Landroid/view/SurfaceControl;
    if-eqz p2, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 674
    .end local v2    # "leash":Landroid/view/SurfaceControl;
    goto :goto_0

    .line 675
    :cond_1
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 676
    return-void
.end method
