.class public Lcom/android/quickstep/LauncherSwipeHandlerV2;
.super Lcom/android/quickstep/AbsSwipeUpHandler;
.source "LauncherSwipeHandlerV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;,
        Lcom/android/quickstep/LauncherSwipeHandlerV2$FloatingViewHomeAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/AbsSwipeUpHandler<",
        "Lcom/android/launcher3/BaseQuickstepLauncher;",
        "Lcom/android/quickstep/views/RecentsView;",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;
    .param p3, "taskAnimationManager"    # Lcom/android/quickstep/TaskAnimationManager;
    .param p4, "gestureState"    # Lcom/android/quickstep/GestureState;
    .param p5, "touchTimeMs"    # J
    .param p7, "continuingLastGesture"    # Z
    .param p8, "inputConsumer"    # Lcom/android/systemui/shared/system/InputConsumerController;

    .line 65
    invoke-direct/range {p0 .. p8}, Lcom/android/quickstep/AbsSwipeUpHandler;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V

    .line 67
    return-void
.end method

.method private createIconHomeAnimationFactory(Landroid/view/View;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    .locals 11
    .param p1, "workspaceView"    # Landroid/view/View;

    .line 105
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 106
    .local v0, "iconLocation":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v1, Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v0, v3}, Lcom/android/launcher3/views/FloatingIconView;->getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object v8

    .line 111
    .local v8, "floatingIconView":Lcom/android/launcher3/views/FloatingIconView;
    const v9, 0x3f666666    # 0.9f

    .line 113
    .local v9, "windowAlphaThreshold":F
    new-instance v10, Lcom/android/quickstep/LauncherSwipeHandlerV2$2;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v8

    move-object v4, p1

    move-object v5, v0

    move-object v6, v8

    move v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/quickstep/LauncherSwipeHandlerV2$2;-><init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;Lcom/android/launcher3/views/FloatingView;Landroid/view/View;Landroid/graphics/RectF;Lcom/android/launcher3/views/FloatingIconView;F)V

    return-object v10
.end method

.method private createWidgetHomeAnimationFactory(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;ZLcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    .locals 17
    .param p1, "hostView"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .param p2, "isTargetTranslucent"    # Z
    .param p3, "runningTaskTarget"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 147
    move-object/from16 v7, p0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    move v6, v0

    .line 148
    .local v6, "floatingWidgetAlpha":F
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 149
    .local v10, "backgroundLocation":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v15, v0

    .line 152
    .local v15, "crop":Landroid/graphics/Rect;
    iget-object v0, v7, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 153
    new-instance v11, Landroid/util/Size;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v11, v0, v2}, Landroid/util/Size;-><init>(II)V

    .line 154
    .local v11, "windowSize":Landroid/util/Size;
    iget-object v0, v7, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mContext:Landroid/content/Context;

    .line 155
    move-object/from16 v5, p3

    invoke-static {v0, v5}, Lcom/android/quickstep/views/FloatingWidgetView;->getDefaultBackgroundColor(Landroid/content/Context;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v16

    .line 156
    .local v16, "fallbackBackgroundColor":I
    iget-object v0, v7, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    move-object v8, v0

    check-cast v8, Lcom/android/launcher3/Launcher;

    iget-object v0, v7, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v0, v0, v1

    .line 158
    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCornerRadius()F

    move-result v12

    .line 156
    move-object/from16 v9, p1

    move/from16 v13, p2

    move/from16 v14, v16

    invoke-static/range {v8 .. v14}, Lcom/android/quickstep/views/FloatingWidgetView;->getFloatingWidgetView(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/graphics/RectF;Landroid/util/Size;FZI)Lcom/android/quickstep/views/FloatingWidgetView;

    move-result-object v8

    .line 161
    .local v8, "floatingWidgetView":Lcom/android/quickstep/views/FloatingWidgetView;
    new-instance v9, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v3, p1

    move-object v4, v10

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;-><init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;Lcom/android/launcher3/views/FloatingView;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/graphics/RectF;Lcom/android/quickstep/views/FloatingWidgetView;F)V

    return-object v9
.end method

.method private findWorkspaceView(Ljava/util/ArrayList;Lcom/android/quickstep/views/TaskView;)Landroid/view/View;
    .locals 5
    .param p2, "runningTaskView"    # Lcom/android/quickstep/views/TaskView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;",
            "Lcom/android/quickstep/views/TaskView;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 213
    .local p1, "launchCookies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mIsSwipingPipToHome:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 215
    return-object v1

    .line 217
    :cond_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 218
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 225
    :cond_1
    const/high16 v0, -0x80000000

    .line 226
    .local v0, "launchCookieItemId":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 227
    .local v2, "cookie":Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/launcher3/util/ObjectWrapper;->unwrap(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 228
    .local v3, "itemId":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 229
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 230
    goto :goto_1

    .line 232
    .end local v2    # "cookie":Landroid/os/IBinder;
    .end local v3    # "itemId":Ljava/lang/Integer;
    :cond_2
    goto :goto_0

    .line 234
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v1, Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 235
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    .line 234
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/launcher3/BaseQuickstepLauncher;->getFirstMatchForAppClose(ILjava/lang/String;Landroid/os/UserHandle;Z)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 220
    .end local v0    # "launchCookieItemId":I
    :cond_4
    :goto_2
    return-object v1
.end method


# virtual methods
.method protected createHomeAnimationFactory(Ljava/util/ArrayList;JZZLcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    .locals 4
    .param p2, "duration"    # J
    .param p4, "isTargetTranslucent"    # Z
    .param p5, "appCanEnterPip"    # Z
    .param p6, "runningTaskTarget"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;JZZ",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            ")",
            "Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;"
        }
    .end annotation

    .line 74
    .local p1, "launchCookies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/LauncherSwipeHandlerV2;->STATE_LAUNCHER_PRESENT:I

    sget v2, Lcom/android/quickstep/LauncherSwipeHandlerV2;->STATE_HANDLER_INVALIDATED:I

    or-int/2addr v1, v2

    new-instance v2, Lcom/android/quickstep/LauncherSwipeHandlerV2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/quickstep/LauncherSwipeHandlerV2$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/MultiStateCallback;->addChangeListener(ILjava/util/function/Consumer;)V

    .line 77
    new-instance v0, Lcom/android/quickstep/LauncherSwipeHandlerV2$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/quickstep/LauncherSwipeHandlerV2$1;-><init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;J)V

    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 86
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/LauncherSwipeHandlerV2;->findWorkspaceView(Ljava/util/ArrayList;Lcom/android/quickstep/views/TaskView;)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "workspaceView":Landroid/view/View;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 89
    .local v2, "canUseWorkspaceView":Z
    :goto_0
    iget-object v3, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v3, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseQuickstepLauncher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher3/LauncherRootView;->setForceHideBackArrow(Z)V

    .line 90
    sget-boolean v1, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->setHintUserWillBeActive()V

    .line 94
    :cond_2
    if-eqz v2, :cond_5

    if-nez p5, :cond_5

    iget-boolean v1, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mIsSwipeForStagedSplit:Z

    if-eqz v1, :cond_3

    goto :goto_1

    .line 97
    :cond_3
    instance-of v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_4

    .line 98
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {p0, v1, p4, p6}, Lcom/android/quickstep/LauncherSwipeHandlerV2;->createWidgetHomeAnimationFactory(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;ZLcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    move-result-object v1

    return-object v1

    .line 101
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/quickstep/LauncherSwipeHandlerV2;->createIconHomeAnimationFactory(Landroid/view/View;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    move-result-object v1

    return-object v1

    .line 95
    :cond_5
    :goto_1
    new-instance v1, Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;-><init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory-IA;)V

    return-object v1
.end method

.method protected finishRecentsControllerToHome(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 242
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->cleanupRemoteTargets()V

    .line 243
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, v1}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;Z)V

    .line 245
    return-void
.end method

.method synthetic lambda$createHomeAnimationFactory$0$com-android-quickstep-LauncherSwipeHandlerV2(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isPresent"    # Ljava/lang/Boolean;

    .line 76
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    return-void
.end method
