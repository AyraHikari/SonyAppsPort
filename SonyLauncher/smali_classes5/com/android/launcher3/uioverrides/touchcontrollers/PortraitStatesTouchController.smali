.class public Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;
.super Lcom/android/launcher3/touch/AbstractStateChangeTouchController;
.source "PortraitStatesTouchController.java"


# static fields
.field public static final ALL_APPS_CONTENT_FADE_MAX_CLAMPING_THRESHOLD:F = 0.8f

.field public static final ALL_APPS_CONTENT_FADE_MIN_CLAMPING_THRESHOLD:F = 0.5f

.field public static final ALL_APPS_FADE:Landroid/view/animation/Interpolator;

.field private static final ALL_APPS_FULL_DEPTH_PROGRESS:F = 0.5f

.field public static final ALL_APPS_SCRIM_OPAQUE_THRESHOLD:F = 0.5f

.field public static final ALL_APPS_SCRIM_VISIBLE_THRESHOLD:F = 0.1f

.field private static final ALL_APPS_STATE_TRANSITION:F = 0.4f

.field public static final ALL_APPS_VERTICAL_PROGRESS:Landroid/view/animation/Interpolator;

.field public static final BLUR:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_FADE:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_SCALE:Landroid/view/animation/Interpolator;

.field public static final HOTSEAT_TRANSLATE:Landroid/view/animation/Interpolator;

.field private static final LINEAR_EARLY:Landroid/view/animation/Interpolator;

.field public static final SCRIM_FADE:Landroid/view/animation/Interpolator;

.field private static final STEP_TRANSITION:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "PortraitStatesTouchCtrl"

.field public static final WORKSPACE_FADE:Landroid/view/animation/Interpolator;

.field public static final WORKSPACE_SCALE:Landroid/view/animation/Interpolator;


# instance fields
.field private final mOverviewPortraitStateTouchHelper:Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 94
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 95
    const/4 v1, 0x0

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->LINEAR_EARLY:Landroid/view/animation/Interpolator;

    .line 96
    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    .line 97
    invoke-static {v3, v1, v2}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v3

    sput-object v3, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->STEP_TRANSITION:Landroid/view/animation/Interpolator;

    .line 99
    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 101
    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v4, v1, v5}, Lcom/android/launcher3/anim/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 100
    invoke-static {v4, v1, v2}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->BLUR:Landroid/view/animation/Interpolator;

    .line 103
    sput-object v3, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->WORKSPACE_FADE:Landroid/view/animation/Interpolator;

    .line 104
    sput-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->WORKSPACE_SCALE:Landroid/view/animation/Interpolator;

    .line 105
    sput-object v3, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->HOTSEAT_FADE:Landroid/view/animation/Interpolator;

    .line 106
    sput-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->HOTSEAT_SCALE:Landroid/view/animation/Interpolator;

    .line 107
    sput-object v3, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->HOTSEAT_TRANSLATE:Landroid/view/animation/Interpolator;

    .line 108
    sput-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->SCRIM_FADE:Landroid/view/animation/Interpolator;

    .line 109
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 110
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->ALL_APPS_FADE:Landroid/view/animation/Interpolator;

    .line 111
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 113
    invoke-static {v0, v2, v1}, Lcom/android/launcher3/anim/Interpolators;->mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 112
    invoke-static {v0, v2, v1}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->ALL_APPS_VERTICAL_PROGRESS:Landroid/view/animation/Interpolator;

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/Launcher;

    .line 119
    sget-object v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    .line 120
    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mOverviewPortraitStateTouchHelper:Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;

    .line 121
    return-void
.end method

.method private getAllAppsToNormalAnimation()Lcom/android/launcher3/states/StateAnimationConfig;
    .locals 5

    .line 198
    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    .line 199
    .local v0, "builder":Lcom/android/launcher3/states/StateAnimationConfig;
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/16 v2, 0xa

    const/16 v3, 0xb

    if-eqz v1, :cond_0

    .line 200
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 201
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f000000    # 0.5f

    const v4, 0x3f666666    # 0.9f

    .line 202
    invoke-static {v1, v2, v4}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 201
    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 209
    :cond_0
    const/16 v1, 0xd

    sget-object v4, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->BLUR:Landroid/view/animation/Interpolator;

    invoke-static {v4}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 210
    const/4 v1, 0x3

    sget-object v4, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->WORKSPACE_FADE:Landroid/view/animation/Interpolator;

    invoke-static {v4}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 211
    const/4 v1, 0x1

    sget-object v4, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->WORKSPACE_SCALE:Landroid/view/animation/Interpolator;

    invoke-static {v4}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 212
    const/16 v1, 0x10

    sget-object v4, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->HOTSEAT_FADE:Landroid/view/animation/Interpolator;

    invoke-static {v4}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 213
    const/4 v1, 0x4

    sget-object v4, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->HOTSEAT_SCALE:Landroid/view/animation/Interpolator;

    invoke-static {v4}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 214
    const/4 v1, 0x5

    sget-object v4, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->HOTSEAT_TRANSLATE:Landroid/view/animation/Interpolator;

    .line 215
    invoke-static {v4}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 214
    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 216
    sget-object v1, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->SCRIM_FADE:Landroid/view/animation/Interpolator;

    invoke-static {v1}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 217
    sget-object v1, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->ALL_APPS_FADE:Landroid/view/animation/Interpolator;

    invoke-static {v1}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 218
    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->ALL_APPS_VERTICAL_PROGRESS:Landroid/view/animation/Interpolator;

    .line 219
    invoke-static {v2}, Lcom/android/launcher3/anim/Interpolators;->reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 221
    :goto_0
    return-object v0
.end method

.method private getNormalToAllAppsAnimation()Lcom/android/launcher3/states/StateAnimationConfig;
    .locals 5

    .line 175
    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    .line 176
    .local v0, "builder":Lcom/android/launcher3/states/StateAnimationConfig;
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/16 v2, 0xa

    const/16 v3, 0xb

    if-eqz v1, :cond_0

    .line 177
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 178
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 179
    invoke-static {v1, v2, v4}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 184
    :cond_0
    const/16 v1, 0xd

    sget-object v4, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->BLUR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 185
    const/4 v1, 0x3

    sget-object v4, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->WORKSPACE_FADE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 186
    const/4 v1, 0x1

    sget-object v4, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->WORKSPACE_SCALE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 187
    const/16 v1, 0x10

    sget-object v4, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->HOTSEAT_FADE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 188
    const/4 v1, 0x4

    sget-object v4, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->HOTSEAT_SCALE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 189
    const/4 v1, 0x5

    sget-object v4, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->HOTSEAT_TRANSLATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 190
    sget-object v1, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->SCRIM_FADE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 191
    sget-object v1, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->ALL_APPS_FADE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 192
    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->ALL_APPS_VERTICAL_PROGRESS:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 194
    :goto_0
    return-object v0
.end method

.method static isTouchOverHotseat(Lcom/android/launcher3/Launcher;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 300
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 301
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 302
    .local v1, "hotseatHeight":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    .line 127
    .local v0, "interceptAnywhere":Z
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v1

    .line 129
    .local v1, "allAppsController":Lcom/android/launcher3/allapps/AllAppsTransitionController;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result v5

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getProgress()F

    move-result v6

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-gez v4, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    return v3

    .line 133
    :cond_1
    :goto_0
    return v2

    .line 138
    .end local v1    # "allAppsController":Lcom/android/launcher3/allapps/AllAppsTransitionController;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 141
    return v3

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v4, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mOverviewPortraitStateTouchHelper:Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 145
    return v3

    .line 149
    :cond_4
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->isTouchOverHotseat(Lcom/android/launcher3/Launcher;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 150
    return v3

    .line 152
    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1, v1}, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;->isTouchFromBothEdge(Landroid/view/MotionEvent;Lcom/android/launcher3/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 153
    return v3

    .line 156
    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7febf

    invoke-static {v1, v4}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 157
    return v3

    .line 159
    :cond_7
    return v2
.end method

.method protected clearState()V
    .locals 1

    .line 341
    invoke-super {p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->clearState()V

    .line 342
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->cancel(I)V

    .line 343
    return-void
.end method

.method protected getConfigForStates(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/states/StateAnimationConfig;
    .locals 1
    .param p1, "fromState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 228
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p2, v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->getNormalToAllAppsAnimation()Lcom/android/launcher3/states/StateAnimationConfig;

    move-result-object v0

    .local v0, "config":Lcom/android/launcher3/states/StateAnimationConfig;
    goto :goto_0

    .line 230
    .end local v0    # "config":Lcom/android/launcher3/states/StateAnimationConfig;
    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p2, v0, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->getAllAppsToNormalAnimation()Lcom/android/launcher3/states/StateAnimationConfig;

    move-result-object v0

    .restart local v0    # "config":Lcom/android/launcher3/states/StateAnimationConfig;
    goto :goto_0

    .line 233
    .end local v0    # "config":Lcom/android/launcher3/states/StateAnimationConfig;
    :cond_1
    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    .line 235
    .restart local v0    # "config":Lcom/android/launcher3/states/StateAnimationConfig;
    :goto_0
    return-object v0
.end method

.method protected getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;
    .locals 1
    .param p1, "fromState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "isDragTowardPositive"    # Z

    .line 164
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 165
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    return-object v0

    .line 166
    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_2

    .line 167
    if-eqz p2, :cond_1

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    :goto_0
    return-object v0

    .line 168
    :cond_2
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_3

    .line 169
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    return-object v0

    .line 171
    :cond_3
    return-object p1
.end method

.method protected initCurrentAnimation()F
    .locals 12

    .line 240
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->getShiftRange()F

    move-result v0

    .line 241
    .local v0, "range":F
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-long v1, v1

    .line 243
    .local v1, "maxAccuracy":J
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v3

    mul-float/2addr v3, v0

    .line 244
    .local v3, "startVerticalShift":F
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v4

    mul-float/2addr v4, v0

    .line 246
    .local v4, "endVerticalShift":F
    sub-float v5, v4, v3

    .line 248
    .local v5, "totalShift":F
    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-nez v7, :cond_0

    new-instance v7, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v7}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v7, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v7, v8}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->getConfigForStates(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/states/StateAnimationConfig;

    move-result-object v7

    :goto_0
    nop

    .line 250
    .local v7, "config":Lcom/android/launcher3/states/StateAnimationConfig;
    iput-wide v1, v7, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    .line 252
    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v8, :cond_1

    .line 253
    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v8}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 254
    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v8}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 257
    :cond_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mGoingBetweenStates:Z

    .line 258
    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    sget-object v9, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object v9, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mOverviewPortraitStateTouchHelper:Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;

    .line 259
    invoke-virtual {v8}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->shouldSwipeDownReturnToApp()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 261
    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    .line 262
    iput-boolean v10, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mGoingBetweenStates:Z

    .line 263
    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mOverviewPortraitStateTouchHelper:Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;

    sget-object v9, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 264
    invoke-virtual {v8, v1, v2, v9}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->createSwipeDownToTaskAppAnimation(JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v8

    .line 265
    invoke-virtual {v8}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 266
    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentUserControlledAnimation(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    .line 267
    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/quickstep/views/RecentsView;

    .line 268
    .local v8, "recentsView":Lcom/android/quickstep/views/RecentsView;
    iget-object v9, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v10, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 269
    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v11

    .line 268
    invoke-static {v9, v10, v11}, Lcom/android/quickstep/util/LayoutUtils;->getShelfTrackingDistance(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/touch/PagedOrientationHandler;)I

    move-result v9

    int-to-float v5, v9

    .line 270
    .end local v8    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    goto :goto_1

    .line 271
    :cond_2
    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    .line 272
    invoke-virtual {v8, v9, v7}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 274
    :goto_1
    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v8}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 276
    cmpl-float v6, v5, v6

    if-nez v6, :cond_3

    .line 277
    iget-object v6, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    iget v6, v6, Lcom/android/launcher3/LauncherState;->ordinal:I

    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    iget v8, v8, Lcom/android/launcher3/LauncherState;->ordinal:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 278
    invoke-static {v8}, Lcom/android/launcher3/uioverrides/states/OverviewState;->getDefaultSwipeHeight(Lcom/android/launcher3/Launcher;)F

    move-result v8

    mul-float v5, v6, v8

    .line 280
    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v5

    return v6
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x19

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 315
    :pswitch_1
    invoke-static {v1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->cancel(I)V

    goto :goto_0

    .line 309
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 310
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    .line 309
    invoke-static {v0, v1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;I)V

    .line 311
    nop

    .line 319
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReachedFinalState(Lcom/android/launcher3/LauncherState;)V
    .locals 1
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 333
    invoke-super {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onReachedFinalState(Lcom/android/launcher3/LauncherState;)V

    .line 334
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_0

    .line 335
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    .line 337
    :cond_0
    return-void
.end method

.method protected onReinitToState(Lcom/android/launcher3/LauncherState;)V
    .locals 1
    .param p1, "newToState"    # Lcom/android/launcher3/LauncherState;

    .line 325
    invoke-super {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onReinitToState(Lcom/android/launcher3/LauncherState;)V

    .line 326
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_0

    .line 327
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->cancel(I)V

    .line 329
    :cond_0
    return-void
.end method

.method protected onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V
    .locals 3
    .param p1, "targetState"    # Lcom/android/launcher3/LauncherState;

    .line 285
    invoke-super {p0, p1}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->onSwipeInteractionCompleted(Lcom/android/launcher3/LauncherState;)V

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_0

    .line 287
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    const/4 v1, 0x1

    const-string v2, "PortraitStatesTouchCtrl"

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/SystemUiProxy;->onOverviewShown(ZLjava/lang/String;)V

    .line 289
    :cond_0
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->getInstance()Lcom/sonymobile/launcher/idd/Idd$AppLaunch;

    move-result-object v0

    const-string v1, "home_button"

    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->setAppTrayFrom(Ljava/lang/String;)V

    .line 290
    return-void
.end method
