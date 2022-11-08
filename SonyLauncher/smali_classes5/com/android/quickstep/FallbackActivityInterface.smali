.class public final Lcom/android/quickstep/FallbackActivityInterface;
.super Lcom/android/quickstep/BaseActivityInterface;
.source "FallbackActivityInterface.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/BaseActivityInterface<",
        "Lcom/android/quickstep/fallback/RecentsState;",
        "Lcom/android/quickstep/RecentsActivity;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/FallbackActivityInterface;


# direct methods
.method static bridge synthetic -$$Nest$mnotifyRecentsOfOrientation(Lcom/android/quickstep/FallbackActivityInterface;Lcom/android/quickstep/RotationTouchHelper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/FallbackActivityInterface;->notifyRecentsOfOrientation(Lcom/android/quickstep/RotationTouchHelper;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/android/quickstep/FallbackActivityInterface;

    invoke-direct {v0}, Lcom/android/quickstep/FallbackActivityInterface;-><init>()V

    sput-object v0, Lcom/android/quickstep/FallbackActivityInterface;->INSTANCE:Lcom/android/quickstep/FallbackActivityInterface;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 58
    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    sget-object v1, Lcom/android/quickstep/fallback/RecentsState;->BACKGROUND_APP:Lcom/android/quickstep/fallback/RecentsState;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/quickstep/BaseActivityInterface;-><init>(ZLcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;)V

    .line 59
    return-void
.end method

.method static synthetic lambda$createActivityInitListener$0(Ljava/util/function/Predicate;Lcom/android/quickstep/RecentsActivity;Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "onInitListener"    # Ljava/util/function/Predicate;
    .param p1, "activity"    # Lcom/android/quickstep/RecentsActivity;
    .param p2, "alreadyOnHome"    # Ljava/lang/Boolean;

    .line 100
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private notifyRecentsOfOrientation(Lcom/android/quickstep/RotationTouchHelper;)V
    .locals 3
    .param p1, "rotationTouchHelper"    # Lcom/android/quickstep/RotationTouchHelper;

    .line 213
    invoke-virtual {p0}, Lcom/android/quickstep/FallbackActivityInterface;->getCreatedActivity()Lcom/android/quickstep/RecentsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 214
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    invoke-virtual {p1}, Lcom/android/quickstep/RotationTouchHelper;->getCurrentActiveRotation()I

    move-result v1

    .line 215
    invoke-virtual {p1}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v2

    .line 214
    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->setLayoutRotation(II)V

    .line 216
    return-void
.end method


# virtual methods
.method public allowMinimizeSplitScreen()Z
    .locals 1

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public createActivityInitListener(Ljava/util/function/Predicate;)Lcom/android/quickstep/util/ActivityInitListener;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/android/quickstep/util/ActivityInitListener;"
        }
    .end annotation

    .line 99
    .local p1, "onInitListener":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/android/quickstep/util/ActivityInitListener;

    new-instance v1, Lcom/android/quickstep/FallbackActivityInterface$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/quickstep/FallbackActivityInterface$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Predicate;)V

    sget-object v2, Lcom/android/quickstep/RecentsActivity;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/util/ActivityInitListener;-><init>(Ljava/util/function/BiPredicate;Lcom/android/launcher3/util/ActivityTracker;)V

    return-object v0
.end method

.method public deferStartingActivity(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 153
    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/BaseActivityInterface;->deferStartingActivity(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 153
    :goto_1
    return v0
.end method

.method public bridge synthetic getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/android/quickstep/FallbackActivityInterface;->getCreatedActivity()Lcom/android/quickstep/RecentsActivity;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedActivity()Lcom/android/quickstep/RecentsActivity;
    .locals 1

    .line 106
    sget-object v0, Lcom/android/quickstep/RecentsActivity;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    return-object v0
.end method

.method protected bridge synthetic getOverviewScrimColorForState(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;)I
    .locals 0

    .line 52
    check-cast p1, Lcom/android/quickstep/RecentsActivity;

    check-cast p2, Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/FallbackActivityInterface;->getOverviewScrimColorForState(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/fallback/RecentsState;)I

    move-result p1

    return p1
.end method

.method protected getOverviewScrimColorForState(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/fallback/RecentsState;)I
    .locals 1
    .param p1, "activity"    # Lcom/android/quickstep/RecentsActivity;
    .param p2, "state"    # Lcom/android/quickstep/fallback/RecentsState;

    .line 242
    invoke-virtual {p2, p1}, Lcom/android/quickstep/fallback/RecentsState;->getScrimColor(Lcom/android/quickstep/RecentsActivity;)I

    move-result v0

    return v0
.end method

.method public getOverviewWindowBounds(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "homeBounds"    # Landroid/graphics/Rect;
    .param p2, "target"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 139
    iget-object v0, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getParallelAnimationToLauncher(Lcom/android/quickstep/GestureState$GestureEndTarget;JLcom/android/quickstep/RecentsAnimationCallbacks;)Landroid/animation/Animator;
    .locals 7
    .param p1, "endTarget"    # Lcom/android/quickstep/GestureState$GestureEndTarget;
    .param p2, "duration"    # J
    .param p4, "callbacks"    # Lcom/android/quickstep/RecentsAnimationCallbacks;

    .line 221
    invoke-virtual {p0}, Lcom/android/quickstep/FallbackActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    move-result-object v0

    .line 222
    .local v0, "uiController":Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/quickstep/BaseActivityInterface;->getParallelAnimationToLauncher(Lcom/android/quickstep/GestureState$GestureEndTarget;JLcom/android/quickstep/RecentsAnimationCallbacks;)Landroid/animation/Animator;

    move-result-object v1

    .line 224
    .local v1, "superAnimator":Landroid/animation/Animator;
    if-nez v0, :cond_0

    .line 225
    return-object v1

    .line 227
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/FallbackActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/quickstep/fallback/RecentsState;

    move-result-object v2

    .line 228
    .local v2, "toState":Lcom/android/quickstep/fallback/RecentsState;
    invoke-virtual {v0, v2, p2, p3}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->createAnimToRecentsState(Lcom/android/quickstep/fallback/RecentsState;J)Landroid/animation/Animator;

    move-result-object v3

    .line 229
    .local v3, "taskbarAnimator":Landroid/animation/Animator;
    if-nez v3, :cond_1

    .line 230
    return-object v1

    .line 232
    :cond_1
    if-nez v1, :cond_2

    .line 233
    return-object v3

    .line 235
    :cond_2
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 236
    .local v4, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 237
    return-object v4
.end method

.method public getSwipeUpDestinationAndLength(Lcom/android/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)I
    .locals 2
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "outRect"    # Landroid/graphics/Rect;
    .param p4, "orientationHandler"    # Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 65
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/quickstep/FallbackActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 66
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq v0, v1, :cond_1

    .line 67
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

    .line 69
    :cond_1
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTaskbarController()Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/android/quickstep/FallbackActivityInterface;->getCreatedActivity()Lcom/android/quickstep/RecentsActivity;

    move-result-object v0

    .line 112
    .local v0, "activity":Lcom/android/quickstep/RecentsActivity;
    if-nez v0, :cond_0

    .line 113
    const/4 v1, 0x0

    return-object v1

    .line 115
    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getTaskbarUIController()Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/android/quickstep/FallbackActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/android/quickstep/FallbackActivityInterface;->getCreatedActivity()Lcom/android/quickstep/RecentsActivity;

    move-result-object v0

    .line 122
    .local v0, "activity":Lcom/android/quickstep/RecentsActivity;
    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->hasBeenResumed()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 124
    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/FallbackActivityInterface;->isInLiveTileMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    return-object v1

    .line 128
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public isInLiveTileMode()Z
    .locals 3

    .line 182
    invoke-virtual {p0}, Lcom/android/quickstep/FallbackActivityInterface;->getCreatedActivity()Lcom/android/quickstep/RecentsActivity;

    move-result-object v0

    .line 183
    .local v0, "activity":Lcom/android/quickstep/RecentsActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    if-ne v1, v2, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 183
    :goto_0
    return v1
.end method

.method public onAssistantVisibilityChanged(F)V
    .locals 0
    .param p1, "visibility"    # F

    .line 79
    return-void
.end method

.method public onExitOverview(Lcom/android/quickstep/RotationTouchHelper;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "deviceState"    # Lcom/android/quickstep/RotationTouchHelper;
    .param p2, "exitRunnable"    # Ljava/lang/Runnable;

    .line 159
    invoke-virtual {p0}, Lcom/android/quickstep/FallbackActivityInterface;->getCreatedActivity()Lcom/android/quickstep/RecentsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 160
    .local v0, "stateManager":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<Lcom/android/quickstep/fallback/RecentsState;>;"
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/fallback/RecentsState;->HOME:Lcom/android/quickstep/fallback/RecentsState;

    if-ne v1, v2, :cond_0

    .line 161
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 162
    invoke-direct {p0, p1}, Lcom/android/quickstep/FallbackActivityInterface;->notifyRecentsOfOrientation(Lcom/android/quickstep/RotationTouchHelper;)V

    .line 163
    return-void

    .line 166
    :cond_0
    new-instance v1, Lcom/android/quickstep/FallbackActivityInterface$1;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/android/quickstep/FallbackActivityInterface$1;-><init>(Lcom/android/quickstep/FallbackActivityInterface;Ljava/lang/Runnable;Lcom/android/quickstep/RotationTouchHelper;Lcom/android/launcher3/statemanager/StateManager;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 178
    return-void
.end method

.method public onLaunchTaskFailed()V
    .locals 2

    .line 190
    invoke-virtual {p0}, Lcom/android/quickstep/FallbackActivityInterface;->getCreatedActivity()Lcom/android/quickstep/RecentsActivity;

    move-result-object v0

    .line 191
    .local v0, "activity":Lcom/android/quickstep/RecentsActivity;
    if-nez v0, :cond_0

    .line 192
    return-void

    .line 194
    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    .line 195
    return-void
.end method

.method public onOneHandedModeStateChanged(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .line 84
    return-void
.end method

.method public prepareRecentsUI(Lcom/android/quickstep/RecentsAnimationDeviceState;ZLjava/util/function/Consumer;)Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;
    .locals 1
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

    .line 90
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/quickstep/util/AnimatorControllerWithResistance;>;"
    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/FallbackActivityInterface;->notifyRecentsOfOrientation(Lcom/android/quickstep/RotationTouchHelper;)V

    .line 91
    new-instance v0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;

    invoke-direct {v0, p0, p3}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;-><init>(Lcom/android/quickstep/BaseActivityInterface;Ljava/util/function/Consumer;)V

    .line 92
    .local v0, "factory":Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;, "Lcom/android/quickstep/BaseActivityInterface<Lcom/android/quickstep/fallback/RecentsState;Lcom/android/quickstep/RecentsActivity;>.DefaultAnimationFactory;"
    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->initBackgroundStateUI()Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 93
    return-object v0
.end method

.method public bridge synthetic stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/quickstep/FallbackActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/quickstep/fallback/RecentsState;

    move-result-object p1

    return-object p1
.end method

.method public stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/quickstep/fallback/RecentsState;
    .locals 2
    .param p1, "endTarget"    # Lcom/android/quickstep/GestureState$GestureEndTarget;

    .line 199
    sget-object v0, Lcom/android/quickstep/FallbackActivityInterface$2;->$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget:[I

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState$GestureEndTarget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 207
    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->HOME:Lcom/android/quickstep/fallback/RecentsState;

    return-object v0

    .line 204
    :pswitch_0
    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->BACKGROUND_APP:Lcom/android/quickstep/fallback/RecentsState;

    return-object v0

    .line 201
    :pswitch_1
    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public switchToRecentsIfVisible(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "onCompleteCallback"    # Ljava/lang/Runnable;

    .line 133
    const/4 v0, 0x0

    return v0
.end method
