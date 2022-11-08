.class public Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;
.super Ljava/lang/Object;
.source "NavBarToHomeTouchController.java"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;


# static fields
.field private static final OVERVIEW_TO_HOME_SCRIM_MULTIPLIER:F = 0.5f

.field private static final PULLBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private mEndState:Lcom/android/launcher3/LauncherState;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mNoIntercept:Z

.field private final mPullbackDistance:F

.field private mStartState:Lcom/android/launcher3/LauncherState;

.field private final mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;


# direct methods
.method public static synthetic $r8$lambda$xWf4jn6IoSAyy4lgMQPl-rf_V8Y(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->clearState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->PULLBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mEndState:Lcom/android/launcher3/LauncherState;

    .line 75
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 76
    new-instance v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    sget-object v1, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    .line 78
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->home_pullback_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mPullbackDistance:F

    .line 79
    return-void
.end method

.method private canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 103
    .local v0, "cameFromNavBar":Z
    :goto_0
    if-nez v0, :cond_1

    .line 104
    return v2

    .line 106
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget-boolean v3, v3, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    sget-object v4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v3, v4, :cond_2

    goto :goto_2

    .line 109
    :cond_2
    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_EDU:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7fdff

    goto :goto_1

    :cond_3
    const v3, 0x7ffff

    .line 110
    .local v3, "typeToClose":I
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4, v3}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 111
    return v1

    .line 113
    :cond_4
    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->ASSISTANT_GIVES_LAUNCHER_FOCUS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 114
    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v4, v2}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v4

    .line 115
    invoke-virtual {v4}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->isExcludedAssistant()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 116
    return v1

    .line 118
    :cond_5
    return v2

    .line 107
    .end local v3    # "typeToClose":I
    :cond_6
    :goto_2
    return v1
.end method

.method private clearState()V
    .locals 2

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->finishedScrolling()V

    .line 166
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 167
    return-void
.end method

.method private getShiftRange()F
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v0, v0

    return v0
.end method

.method private initCurrentAnimation()V
    .locals 7

    .line 136
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->getShiftRange()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 137
    .local v0, "accuracy":J
    new-instance v2, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v2, v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 138
    .local v2, "builder":Lcom/android/launcher3/anim/PendingAnimation;
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget-boolean v3, v3, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v3, :cond_1

    .line 139
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/views/RecentsView;

    .line 140
    .local v3, "recentsView":Lcom/android/quickstep/views/RecentsView;
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4, v2}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->createRecentsResistanceFromOverviewAnim(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/anim/PendingAnimation;)Lcom/android/launcher3/anim/PendingAnimation;

    .line 143
    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v2, v4}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    .line 147
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v5, 0x800

    invoke-static {v4, v5}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    .end local v3    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    goto :goto_0

    .line 148
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    sget-object v4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v3, v4, :cond_2

    .line 149
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v3

    .line 150
    .local v3, "allAppsController":Lcom/android/launcher3/allapps/AllAppsTransitionController;
    sget-object v4, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_TRANSLATION:Landroid/util/FloatProperty;

    iget v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mPullbackDistance:F

    neg-float v5, v5

    sget-object v6, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->PULLBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 152
    sget-object v4, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_ALPHA:Landroid/util/FloatProperty;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    goto :goto_1

    .line 148
    .end local v3    # "allAppsController":Lcom/android/launcher3/allapps/AllAppsTransitionController;
    :cond_2
    :goto_0
    nop

    .line 155
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v3

    .line 156
    .local v3, "topView":Lcom/android/launcher3/AbstractFloatingView;
    if-eqz v3, :cond_3

    .line 157
    iget v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mPullbackDistance:F

    sget-object v5, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->PULLBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/launcher3/AbstractFloatingView;->addHintCloseAnim(FLandroid/view/animation/Interpolator;Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 159
    :cond_3
    invoke-virtual {v2}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 160
    invoke-virtual {v4}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V

    invoke-static {v5}, Lcom/android/launcher3/LauncherAnimUtils;->newCancelListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 161
    return-void
.end method

.method static synthetic lambda$onDragEnd$0(Lcom/android/quickstep/views/RecentsView;)V
    .locals 2
    .param p0, "recentsView"    # Lcom/android/quickstep/views/RecentsView;

    .line 189
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private logHomeGesture()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    .line 224
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mEndState:Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    .line 225
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOME_GESTURE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 226
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 227
    return-void
.end method

.method private onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V
    .locals 2
    .param p1, "targetState"    # Lcom/android/launcher3/LauncherState;

    .line 217
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->clearState()V

    .line 218
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v1, p1, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {v0, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    .line 220
    return-void
.end method


# virtual methods
.method synthetic lambda$onDragEnd$1$com-android-launcher3-uioverrides-touchcontrollers-NavBarToHomeTouchController()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mEndState:Lcom/android/launcher3/LauncherState;

    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method synthetic lambda$onDragEnd$2$com-android-launcher3-uioverrides-touchcontrollers-NavBarToHomeTouchController()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mEndState:Lcom/android/launcher3/LauncherState;

    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method synthetic lambda$onDragEnd$3$com-android-launcher3-uioverrides-touchcontrollers-NavBarToHomeTouchController()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mNoIntercept:Z

    .line 86
    if-eqz v0, :cond_0

    .line 87
    return v1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 93
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_2

    .line 94
    return v1

    .line 97
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isDraggingOrSettling()Z

    move-result v0

    return v0
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDrag(F)Z
    .locals 2
    .param p1, "displacement"    # F

    .line 172
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 173
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->getShiftRange()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->getProgress(FFF)F

    move-result v0

    .line 174
    .local v0, "progress":F
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 175
    const/4 v1, 0x1

    return v1
.end method

.method public onDragEnd(F)V
    .locals 9
    .param p1, "velocity"    # F

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isFling(F)Z

    move-result v0

    .line 181
    .local v0, "fling":Z
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v1

    .line 182
    .local v1, "progress":F
    sget-object v2, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->PULLBACK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 183
    .local v2, "interpolatedProgress":F
    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v3, :cond_1

    cmpg-float v3, p1, v5

    if-gez v3, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v6

    .line 185
    .local v3, "success":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 186
    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/views/RecentsView;

    .line 188
    .local v4, "recentsView":Lcom/android/quickstep/views/RecentsView;
    const/4 v5, 0x0

    new-instance v7, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda2;

    invoke-direct {v7, v4}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v4, v5, v7}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/util/HashMap;Ljava/lang/Runnable;)V

    .line 191
    .end local v4    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget-boolean v4, v4, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v4, :cond_3

    .line 192
    new-instance v4, Lcom/android/quickstep/util/OverviewToHomeAnim;

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v6, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V

    invoke-direct {v4, v5, v6}, Lcom/android/quickstep/util/OverviewToHomeAnim;-><init>(Lcom/android/launcher3/Launcher;Ljava/lang/Runnable;)V

    .line 193
    invoke-virtual {v4, p1}, Lcom/android/quickstep/util/OverviewToHomeAnim;->animateWithVelocity(F)V

    goto :goto_2

    .line 195
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mEndState:Lcom/android/launcher3/LauncherState;

    new-instance v7, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V

    .line 196
    invoke-static {v7}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v7

    .line 195
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    .line 198
    :goto_2
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mEndState:Lcom/android/launcher3/LauncherState;

    if-eq v4, v5, :cond_4

    .line 199
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->logHomeGesture()V

    .line 201
    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v4

    .line 202
    .local v4, "topOpenView":Lcom/android/launcher3/AbstractFloatingView;
    if-eqz v4, :cond_5

    .line 203
    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 206
    :cond_5
    const-string v5, "recentapps"

    invoke-static {v5}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    .line 207
    .end local v4    # "topOpenView":Lcom/android/launcher3/AbstractFloatingView;
    goto :goto_3

    .line 209
    :cond_6
    iget-object v7, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v7}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 210
    .local v7, "anim":Landroid/animation/ValueAnimator;
    const/4 v8, 0x2

    new-array v8, v8, [F

    aput v1, v8, v4

    aput v5, v8, v6

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 211
    new-instance v4, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V

    invoke-static {v4}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 212
    const-wide/16 v4, 0x50

    invoke-virtual {v7, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 214
    .end local v7    # "anim":Landroid/animation/ValueAnimator;
    :goto_3
    return-void
.end method

.method public onDragStart(ZF)V
    .locals 0
    .param p1, "start"    # Z
    .param p2, "startDisplacement"    # F

    .line 132
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->initCurrentAnimation()V

    .line 133
    return-void
.end method
