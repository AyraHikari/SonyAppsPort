.class public final Lcom/android/quickstep/LauncherActivityInterface;
.super Lcom/android/quickstep/BaseActivityInterface;
.source "LauncherActivityInterface.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/BaseActivityInterface<",
        "Lcom/android/launcher3/LauncherState;",
        "Lcom/android/launcher3/BaseQuickstepLauncher;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;


# direct methods
.method static bridge synthetic -$$Nest$mnotifyRecentsOfOrientation(Lcom/android/quickstep/LauncherActivityInterface;Lcom/android/quickstep/RotationTouchHelper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherActivityInterface;->notifyRecentsOfOrientation(Lcom/android/quickstep/RotationTouchHelper;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/android/quickstep/LauncherActivityInterface;

    invoke-direct {v0}, Lcom/android/quickstep/LauncherActivityInterface;-><init>()V

    sput-object v0, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 69
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/quickstep/BaseActivityInterface;-><init>(ZLcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;)V

    .line 70
    return-void
.end method

.method private getVisibleLauncher()Lcom/android/launcher3/Launcher;
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    .line 206
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    if-eqz v0, :cond_2

    .line 205
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 206
    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->isInLiveTileMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->hasBeenResumed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 205
    :goto_0
    return-object v1
.end method

.method static synthetic lambda$createActivityInitListener$0(Ljava/util/function/Predicate;Lcom/android/launcher3/Launcher;Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "onInitListener"    # Ljava/util/function/Predicate;
    .param p1, "activity"    # Lcom/android/launcher3/Launcher;
    .param p2, "alreadyOnHome"    # Ljava/lang/Boolean;

    .line 148
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private notifyRecentsOfOrientation(Lcom/android/quickstep/RotationTouchHelper;)V
    .locals 3
    .param p1, "rotationTouchHelper"    # Lcom/android/quickstep/RotationTouchHelper;

    .line 250
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 251
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    invoke-virtual {p1}, Lcom/android/quickstep/RotationTouchHelper;->getCurrentActiveRotation()I

    move-result v1

    .line 252
    invoke-virtual {p1}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v2

    .line 251
    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->setLayoutRotation(II)V

    .line 253
    return-void
.end method


# virtual methods
.method public allowMinimizeSplitScreen()Z
    .locals 1

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public closeOverlay()V
    .locals 3

    .line 283
    invoke-super {p0}, Lcom/android/quickstep/BaseActivityInterface;->closeOverlay()V

    .line 284
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    .line 285
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    if-nez v0, :cond_0

    .line 286
    return-void

    .line 288
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v1

    .line 289
    .local v1, "om":Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isForceInvisible()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 292
    :cond_1
    const/16 v2, 0x96

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(I)V

    goto :goto_1

    .line 290
    :cond_2
    :goto_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(Z)V

    .line 294
    :goto_1
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v2

    .line 295
    .local v2, "taskbarController":Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    if-eqz v2, :cond_3

    .line 296
    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->hideEdu()V

    .line 298
    :cond_3
    return-void
.end method

.method public createActivityInitListener(Ljava/util/function/Predicate;)Lcom/android/quickstep/util/ActivityInitListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/android/quickstep/util/ActivityInitListener;"
        }
    .end annotation

    .line 147
    .local p1, "onInitListener":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/android/launcher3/LauncherInitListener;

    new-instance v1, Lcom/android/quickstep/LauncherActivityInterface$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/quickstep/LauncherActivityInterface$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Predicate;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherInitListener;-><init>(Ljava/util/function/BiPredicate;)V

    return-object v0
.end method

.method public deferStartingActivity(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 328
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    .line 329
    .local v0, "uiController":Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    if-nez v0, :cond_0

    .line 330
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/BaseActivityInterface;->deferStartingActivity(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 332
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->isEventOverAnyTaskbarItem(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 333
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/BaseActivityInterface;->deferStartingActivity(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 332
    :goto_1
    return v1
.end method

.method public getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;
    .locals 1

    .line 163
    sget-object v0, Lcom/android/launcher3/BaseQuickstepLauncher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    return-object v0
.end method

.method public bridge synthetic getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    return-object v0
.end method

.method public getDepthController()Lcom/android/launcher3/statehandlers/DepthController;
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    .line 170
    .local v0, "launcher":Lcom/android/launcher3/BaseQuickstepLauncher;
    if-nez v0, :cond_0

    .line 171
    const/4 v1, 0x0

    return-object v1

    .line 173
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v1

    return-object v1
.end method

.method protected getOverviewScrimColorForState(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/LauncherState;)I
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/BaseQuickstepLauncher;
    .param p2, "state"    # Lcom/android/launcher3/LauncherState;

    .line 323
    invoke-virtual {p2, p1}, Lcom/android/launcher3/LauncherState;->getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic getOverviewScrimColorForState(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;)I
    .locals 0

    .line 63
    check-cast p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast p2, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/LauncherActivityInterface;->getOverviewScrimColorForState(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/LauncherState;)I

    move-result p1

    return p1
.end method

.method public getOverviewWindowBounds(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/Rect;
    .locals 0
    .param p1, "homeBounds"    # Landroid/graphics/Rect;
    .param p2, "target"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 257
    return-object p1
.end method

.method public getParallelAnimationToLauncher(Lcom/android/quickstep/GestureState$GestureEndTarget;JLcom/android/quickstep/RecentsAnimationCallbacks;)Landroid/animation/Animator;
    .locals 7
    .param p1, "endTarget"    # Lcom/android/quickstep/GestureState$GestureEndTarget;
    .param p2, "duration"    # J
    .param p4, "callbacks"    # Lcom/android/quickstep/RecentsAnimationCallbacks;

    .line 303
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    .line 304
    .local v0, "uiController":Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/quickstep/BaseActivityInterface;->getParallelAnimationToLauncher(Lcom/android/quickstep/GestureState$GestureEndTarget;JLcom/android/quickstep/RecentsAnimationCallbacks;)Landroid/animation/Animator;

    move-result-object v1

    .line 306
    .local v1, "superAnimator":Landroid/animation/Animator;
    if-eqz v0, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/LauncherActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/LauncherState;

    move-result-object v2

    .line 310
    .local v2, "toState":Lcom/android/launcher3/LauncherState;
    invoke-virtual {v0, v2, p4, p2, p3}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->createAnimToLauncher(Lcom/android/launcher3/LauncherState;Lcom/android/quickstep/RecentsAnimationCallbacks;J)Landroid/animation/Animator;

    move-result-object v3

    .line 311
    .local v3, "taskbarAnimator":Landroid/animation/Animator;
    if-nez v1, :cond_1

    .line 312
    return-object v3

    .line 314
    :cond_1
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 315
    .local v4, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 316
    return-object v4

    .line 307
    .end local v2    # "toState":Lcom/android/launcher3/LauncherState;
    .end local v3    # "taskbarAnimator":Landroid/animation/Animator;
    .end local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getSwipeUpDestinationAndLength(Lcom/android/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)I
    .locals 2
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "outRect"    # Landroid/graphics/Rect;
    .param p4, "orientationHandler"    # Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 75
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/quickstep/LauncherActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 76
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {p2}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq v0, v1, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    .line 80
    :cond_1
    invoke-static {p2, p1, p4}, Lcom/android/quickstep/util/LayoutUtils;->getShelfTrackingDistance(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/touch/PagedOrientationHandler;)I

    move-result v0

    return v0
.end method

.method public getTaskbarController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    .line 180
    .local v0, "launcher":Lcom/android/launcher3/BaseQuickstepLauncher;
    if-nez v0, :cond_0

    .line 181
    const/4 v1, 0x0

    return-object v1

    .line 183
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;
    .locals 5

    .line 189
    invoke-direct {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getVisibleLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 191
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    iget-boolean v2, v2, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/RecentsView;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 193
    .local v2, "recentsView":Lcom/android/quickstep/views/RecentsView;
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->hasBeenResumed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskViewId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 198
    :cond_1
    return-object v2

    .line 196
    :cond_2
    :goto_1
    return-object v1
.end method

.method public isInLiveTileMode()Z
    .locals 3

    .line 267
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    .line 268
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v1, v2, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 268
    :goto_0
    return v1
.end method

.method public onAssistantVisibilityChanged(F)V
    .locals 1
    .param p1, "visibility"    # F

    .line 103
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    .line 104
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    if-nez v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->onAssistantVisibilityChanged(F)V

    .line 108
    return-void
.end method

.method public onExitOverview(Lcom/android/quickstep/RotationTouchHelper;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "deviceState"    # Lcom/android/quickstep/RotationTouchHelper;
    .param p2, "exitRunnable"    # Ljava/lang/Runnable;

    .line 233
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 234
    .local v0, "stateManager":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<Lcom/android/launcher3/LauncherState;>;"
    new-instance v1, Lcom/android/quickstep/LauncherActivityInterface$2;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/android/quickstep/LauncherActivityInterface$2;-><init>(Lcom/android/quickstep/LauncherActivityInterface;Ljava/lang/Runnable;Lcom/android/quickstep/RotationTouchHelper;Lcom/android/launcher3/statemanager/StateManager;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 246
    return-void
.end method

.method public onLaunchTaskFailed()V
    .locals 3

    .line 274
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    .line 275
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    if-nez v0, :cond_0

    .line 276
    return-void

    .line 278
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 279
    return-void
.end method

.method public onOneHandedModeStateChanged(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .line 112
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    .line 113
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    if-nez v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->onOneHandedStateChanged(Z)V

    .line 117
    return-void
.end method

.method public onSwipeUpToHomeComplete(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .locals 4
    .param p1, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 86
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    .line 87
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    if-nez v0, :cond_0

    .line 88
    return-void

    .line 95
    :cond_0
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/quickstep/LauncherActivityInterface$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/quickstep/LauncherActivityInterface$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/statemanager/StateManager;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherRootView;->setForceHideBackArrow(Z)V

    .line 98
    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/quickstep/LauncherActivityInterface;->notifyRecentsOfOrientation(Lcom/android/quickstep/RotationTouchHelper;)V

    .line 99
    return-void
.end method

.method public prepareRecentsUI(Lcom/android/quickstep/RecentsAnimationDeviceState;ZLjava/util/function/Consumer;)Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;
    .locals 4
    .param p1, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;
    .param p2, "activityVisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/RecentsAnimationDeviceState;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/util/AnimatorControllerWithResistance;",
            ">;)",
            "Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;"
        }
    .end annotation

    .line 122
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/quickstep/util/AnimatorControllerWithResistance;>;"
    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/LauncherActivityInterface;->notifyRecentsOfOrientation(Lcom/android/quickstep/RotationTouchHelper;)V

    .line 123
    new-instance v0, Lcom/android/quickstep/LauncherActivityInterface$1;

    invoke-direct {v0, p0, p3}, Lcom/android/quickstep/LauncherActivityInterface$1;-><init>(Lcom/android/quickstep/LauncherActivityInterface;Ljava/util/function/Consumer;)V

    .line 138
    .local v0, "factory":Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;, "Lcom/android/quickstep/BaseActivityInterface<Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/BaseQuickstepLauncher;>.DefaultAnimationFactory;"
    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->initBackgroundStateUI()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 141
    .local v1, "launcher":Lcom/android/launcher3/BaseQuickstepLauncher;
    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(Z)V

    .line 142
    return-object v0
.end method

.method public setOnDeferredActivityLaunchCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 153
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    .line 154
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    if-nez v0, :cond_0

    .line 155
    return-void

    .line 157
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->setOnDeferredActivityLaunchCallback(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public shouldCancelCurrentGesture()Z
    .locals 2

    .line 338
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    .line 339
    .local v0, "uiController":Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    if-nez v0, :cond_0

    .line 340
    invoke-super {p0}, Lcom/android/quickstep/BaseActivityInterface;->shouldCancelCurrentGesture()Z

    move-result v1

    return v1

    .line 342
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->isDraggingItem()Z

    move-result v1

    return v1
.end method

.method public stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/LauncherState;
    .locals 2
    .param p1, "endTarget"    # Lcom/android/quickstep/GestureState$GestureEndTarget;

    .line 347
    sget-object v0, Lcom/android/quickstep/LauncherActivityInterface$3;->$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget:[I

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState$GestureEndTarget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 355
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    return-object v0

    .line 352
    :pswitch_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    return-object v0

    .line 349
    :pswitch_1
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/quickstep/LauncherActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/LauncherState;

    move-result-object p1

    return-object p1
.end method

.method public switchToRecentsIfVisible(Ljava/lang/Runnable;)Z
    .locals 5
    .param p1, "onCompleteCallback"    # Ljava/lang/Runnable;

    .line 212
    invoke-direct {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getVisibleLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 213
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 214
    return v1

    .line 216
    :cond_0
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->isInLiveTileMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    .line 218
    .local v2, "recentsView":Lcom/android/quickstep/views/RecentsView;
    if-nez v2, :cond_1

    .line 219
    return v1

    .line 223
    .end local v2    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->closeOverlay()V

    .line 224
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 225
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->shouldAnimateStateChange()Z

    move-result v3

    .line 226
    if-nez p1, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    .line 224
    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    .line 227
    const/4 v1, 0x1

    return v1
.end method
