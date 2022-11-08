.class public Lcom/android/launcher3/touch/AllAppsSwipeController;
.super Lcom/android/launcher3/touch/AbstractStateChangeTouchController;
.source "AllAppsSwipeController.java"


# static fields
.field public static final ALLAPPS_STAGGERED_FADE_EARLY_RESPONDER:Landroid/view/animation/Interpolator;

.field public static final ALLAPPS_STAGGERED_FADE_LATE_RESPONDER:Landroid/view/animation/Interpolator;

.field private static final ALLAPPS_STAGGERED_FADE_THRESHOLD:F = 0.5f

.field public static final ALL_APPS_FADE:Landroid/view/animation/Interpolator;

.field private static final ALL_APPS_FADE_END:F = 0.4717f

.field private static final ALL_APPS_FULL_DEPTH_PROGRESS:F = 0.5f

.field private static final ALL_APPS_STATE_TRANSITION:F = 0.305f

.field public static final ALL_APPS_VERTICAL_PROGRESS:Landroid/view/animation/Interpolator;

.field public static final BLUR:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_FADE:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_SCALE:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_TRANSLATE:Landroid/view/animation/Interpolator;

.field public static final SCRIM_FADE:Landroid/view/animation/Interpolator;

.field public static final WORKSPACE_FADE:Landroid/view/animation/Interpolator;

.field private static final WORKSPACE_MOTION_START:F = 0.1667f

.field public static final WORKSPACE_SCALE:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 58
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 59
    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALLAPPS_STAGGERED_FADE_EARLY_RESPONDER:Landroid/view/animation/Interpolator;

    .line 60
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 61
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALLAPPS_STAGGERED_FADE_LATE_RESPONDER:Landroid/view/animation/Interpolator;

    .line 65
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/anim/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 66
    const v2, 0x3e2ab368    # 0.1667f

    const v4, 0x3e9c28f6    # 0.305f

    invoke-static {v0, v2, v4}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR:Landroid/view/animation/Interpolator;

    .line 70
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    .line 71
    invoke-static {v0, v1, v4}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE:Landroid/view/animation/Interpolator;

    .line 72
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    .line 73
    invoke-static {v5, v2, v4}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v5

    sput-object v5, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_SCALE:Landroid/view/animation/Interpolator;

    .line 75
    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE:Landroid/view/animation/Interpolator;

    .line 76
    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_SCALE:Landroid/view/animation/Interpolator;

    .line 77
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    .line 78
    invoke-static {v0, v2, v4}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE:Landroid/view/animation/Interpolator;

    .line 80
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 82
    const v5, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1, v5}, Lcom/android/launcher3/anim/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 81
    invoke-static {v0, v2, v4}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE:Landroid/view/animation/Interpolator;

    .line 84
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DECELERATED_EASE:Landroid/view/animation/Interpolator;

    .line 86
    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/anim/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 85
    const v1, 0x3ef182aa    # 0.4717f

    invoke-static {v0, v4, v1}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_FADE:Landroid/view/animation/Interpolator;

    .line 88
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    .line 90
    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/anim/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 89
    invoke-static {v0, v4, v3}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_VERTICAL_PROGRESS:Landroid/view/animation/Interpolator;

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/Launcher;

    .line 94
    sget-object v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    .line 95
    return-void
.end method

.method public static applyAllAppsToNormalConfig(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 3
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    .line 157
    .local v0, "isTablet":Z
    sget-object v1, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALLAPPS_STAGGERED_FADE_LATE_RESPONDER:Landroid/view/animation/Interpolator;

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 158
    if-eqz v0, :cond_0

    .line 159
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALLAPPS_STAGGERED_FADE_EARLY_RESPONDER:Landroid/view/animation/Interpolator;

    .line 158
    :goto_0
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 160
    if-nez v0, :cond_1

    .line 161
    const/4 v1, 0x3

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 163
    :cond_1
    return-void
.end method

.method public static applyNormalToAllAppsAnimConfig(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 4
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/16 v1, 0xa

    const/16 v2, 0xb

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALLAPPS_STAGGERED_FADE_EARLY_RESPONDER:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 172
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 174
    :cond_0
    const/16 v0, 0xd

    sget-object v3, Lcom/android/launcher3/touch/AllAppsSwipeController;->BLUR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v3}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 175
    const/4 v0, 0x3

    sget-object v3, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_FADE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v3}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 176
    const/4 v0, 0x1

    sget-object v3, Lcom/android/launcher3/touch/AllAppsSwipeController;->WORKSPACE_SCALE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v3}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 177
    const/16 v0, 0x10

    sget-object v3, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_FADE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v3}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 178
    const/4 v0, 0x4

    sget-object v3, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_SCALE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v3}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 179
    const/4 v0, 0x5

    sget-object v3, Lcom/android/launcher3/touch/AllAppsSwipeController;->HOTSEAT_TRANSLATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v3}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 180
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->SCRIM_FADE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 181
    sget-object v0, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_FADE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 182
    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher3/touch/AllAppsSwipeController;->ALL_APPS_VERTICAL_PROGRESS:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 184
    :goto_0
    return-void
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 101
    return v1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 104
    return v2

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    return v2

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    return v2

    .line 113
    :cond_3
    return v1
.end method

.method protected getConfigForStates(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/states/StateAnimationConfig;
    .locals 2
    .param p1, "fromState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 143
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->getConfigForStates(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/states/StateAnimationConfig;

    move-result-object v0

    .line 144
    .local v0, "config":Lcom/android/launcher3/states/StateAnimationConfig;
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p2, v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/touch/AllAppsSwipeController;->applyNormalToAllAppsAnimConfig(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/states/StateAnimationConfig;)V

    goto :goto_0

    .line 146
    :cond_0
    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_1

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p2, v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/touch/AllAppsSwipeController;->applyAllAppsToNormalConfig(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 149
    :cond_1
    :goto_0
    return-object v0
.end method

.method protected getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;
    .locals 1
    .param p1, "fromState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "isDragTowardPositive"    # Z

    .line 118
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 119
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    return-object v0

    .line 120
    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 121
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    return-object v0

    .line 123
    :cond_1
    return-object p1
.end method

.method protected initCurrentAnimation()F
    .locals 6

    .line 128
    invoke-virtual {p0}, Lcom/android/launcher3/touch/AllAppsSwipeController;->getShiftRange()F

    move-result v0

    .line 129
    .local v0, "range":F
    iget-object v1, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mFromState:Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mToState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/touch/AllAppsSwipeController;->getConfigForStates(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/states/StateAnimationConfig;

    move-result-object v1

    .line 130
    .local v1, "config":Lcom/android/launcher3/states/StateAnimationConfig;
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    float-to-long v2, v2

    iput-wide v2, v1, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    .line 132
    iget-object v2, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mToState:Lcom/android/launcher3/LauncherState;

    .line 133
    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 134
    iget-object v2, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mFromState:Lcom/android/launcher3/LauncherState;

    iget-object v3, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v2

    mul-float/2addr v2, v0

    .line 135
    .local v2, "startVerticalShift":F
    iget-object v3, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mToState:Lcom/android/launcher3/LauncherState;

    iget-object v4, p0, Lcom/android/launcher3/touch/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v3

    mul-float/2addr v3, v0

    .line 136
    .local v3, "endVerticalShift":F
    sub-float v4, v3, v2

    .line 137
    .local v4, "totalShift":F
    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    return v5
.end method
