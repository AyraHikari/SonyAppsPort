.class public Lcom/android/launcher3/QuickstepTransitionManager;
.super Ljava/lang/Object;
.source "QuickstepTransitionManager.java"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;,
        Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;,
        Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;,
        Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;,
        Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;
    }
.end annotation


# static fields
.field public static final ANIMATION_DELAY_NAV_FADE_IN:J = 0xeaL

.field public static final ANIMATION_NAV_FADE_IN_DURATION:I = 0x10a

.field public static final ANIMATION_NAV_FADE_OUT_DURATION:I = 0x85

.field private static final APP_LAUNCH_ALPHA_DURATION:J = 0x32L

.field private static final APP_LAUNCH_ALPHA_START_DELAY:J = 0x19L

.field private static final APP_LAUNCH_DURATION:J = 0x1f4L

.field private static final CLOSING_TRANSITION_DURATION_MS:I = 0xfa

.field public static final CONTENT_ALPHA_DURATION:I = 0xd9

.field protected static final CONTENT_SCALE_DURATION:I = 0x15e

.field protected static final CONTENT_SCRIM_DURATION:I = 0x15e

.field private static final CONTROL_REMOTE_APP_TRANSITION_PERMISSION:Ljava/lang/String; = "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

.field private static final ENABLE_SHELL_STARTING_SURFACE:Z

.field private static final LAUNCHER_RESUME_START_DELAY:I = 0x64

.field private static final MAX_NUM_TASKS:I = 0x5

.field public static final NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final RECENTS_LAUNCH_DURATION:I = 0x150

.field public static final SPLIT_DIVIDER_ANIM_DURATION:I = 0x64

.field public static final SPLIT_LAUNCH_DURATION:I = 0x172

.field public static final STATUS_BAR_TRANSITION_DURATION:I = 0x78

.field public static final STATUS_BAR_TRANSITION_PRE_DELAY:I = 0x60

.field private static final TAG:Ljava/lang/String; = "QuickstepTransition"

.field private static final WIDGET_CROSSFADE_DURATION_MILLIS:I = 0x7d


# instance fields
.field private mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

.field private mBackAnimationController:Lcom/android/quickstep/LauncherBackAnimationController;

.field private final mClosingWindowTransY:F

.field private final mContentScale:F

.field private mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private final mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private final mForceInvisibleListener:Landroid/animation/AnimatorListenerAdapter;

.field final mHandler:Landroid/os/Handler;

.field private mKeyguardGoingAwayRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

.field protected final mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

.field private mLauncherOpenTransition:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

.field private final mMaxShadowRadius:F

.field private final mOpeningInterpolator:Landroid/view/animation/Interpolator;

.field private final mOpeningXInterpolator:Landroid/view/animation/Interpolator;

.field private mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

.field private final mStartingWindowListener:Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;

.field private mTaskStartParams:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWallpaperOpenRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

.field private mWallpaperOpenTransitionRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# direct methods
.method static bridge synthetic -$$Nest$fgetmClosingWindowTransY(Lcom/android/launcher3/QuickstepTransitionManager;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mClosingWindowTransY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceProfile(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/DeviceProfile;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDragLayer(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/dragndrop/DragLayer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmForceInvisibleListener(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/animation/AnimatorListenerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mForceInvisibleListener:Landroid/animation/AnimatorListenerAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpeningInterpolator(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mOpeningInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpeningXInterpolator(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mOpeningXInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskStartParams(Lcom/android/launcher3/QuickstepTransitionManager;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddCujInstrumentation(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/Animator;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/QuickstepTransitionManager;->addCujInstrumentation(Landroid/animation/Animator;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcomposeIconLaunchAnimator(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/QuickstepTransitionManager;->composeIconLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcomposeWidgetLaunchAnimator(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/QuickstepTransitionManager;->composeWidgetLaunchAnimator(Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetFallbackClosingWindowAnimators(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/Animator;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->getFallbackClosingWindowAnimators([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlauncherIsATargetWithMode(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/QuickstepTransitionManager;->launcherIsATargetWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 151
    nop

    .line 152
    const-string v0, "persist.debug.shell_starting_surface"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/QuickstepTransitionManager;->ENABLE_SHELL_STARTING_SURFACE:Z

    .line 175
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/QuickstepTransitionManager;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 177
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/QuickstepTransitionManager;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;-><init>(Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener-IA;)V

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mStartingWindowListener:Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;

    .line 218
    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/QuickstepTransitionManager$1;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;)V

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mForceInvisibleListener:Landroid/animation/AnimatorListenerAdapter;

    .line 238
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BaseQuickstepLauncher;

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 239
    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 240
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    .line 241
    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 242
    new-instance v2, Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-direct {v2, v1, p0}, Lcom/android/quickstep/LauncherBackAnimationController;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/QuickstepTransitionManager;)V

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mBackAnimationController:Lcom/android/quickstep/LauncherBackAnimationController;

    .line 244
    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 245
    .local v2, "res":Landroid/content/res/Resources;
    sget v3, Lcom/android/launcher3/R$dimen;->content_scale:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mContentScale:F

    .line 246
    sget v3, Lcom/android/launcher3/R$dimen;->closing_window_trans_y:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mClosingWindowTransY:F

    .line 247
    sget v3, Lcom/android/launcher3/R$dimen;->max_shadow_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mMaxShadowRadius:F

    .line 249
    invoke-virtual {v1, p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 251
    invoke-direct {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->supportsSSplashScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    new-instance v3, Lcom/android/launcher3/QuickstepTransitionManager$2;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Lcom/android/launcher3/QuickstepTransitionManager$2;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;I)V

    iput-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    .line 259
    invoke-virtual {v0, p0}, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;->setTransitionManager(Lcom/android/launcher3/QuickstepTransitionManager;)V

    .line 260
    sget-object v3, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/SystemUiProxy;->setStartingWindowListener(Lcom/android/wm/shell/startingsurface/IStartingWindowListener;)V

    .line 264
    :cond_0
    sget v0, Lcom/android/launcher3/R$interpolator;->app_open_x:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mOpeningXInterpolator:Landroid/view/animation/Interpolator;

    .line 265
    sget v0, Lcom/android/launcher3/R$interpolator;->three_point_fast_out_extra_slow_in:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mOpeningInterpolator:Landroid/view/animation/Interpolator;

    .line 267
    return-void
.end method

.method private addCujInstrumentation(Landroid/animation/Animator;I)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;
    .param p2, "cuj"    # I

    .line 1539
    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$19;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/QuickstepTransitionManager$19;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1574
    return-void
.end method

.method private areAllTargetsTranslucent([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .locals 4
    .param p1, "targets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 334
    const/4 v0, 0x1

    .line 335
    .local v0, "isAllOpeningTargetTrs":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 336
    aget-object v2, p1, v1

    .line 337
    .local v2, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v3, :cond_0

    .line 338
    iget-boolean v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    and-int/2addr v0, v3

    .line 340
    :cond_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 335
    .end local v2    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return v0
.end method

.method private composeIconLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V
    .locals 15
    .param p1, "anim"    # Landroid/animation/AnimatorSet;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p5, "nonAppTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p6, "launcherClosing"    # Z

    .line 360
    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    iget-object v0, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    const/4 v11, 0x0

    new-array v1, v11, [Landroid/animation/Animator;

    invoke-virtual {v0, v9, v1}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    .line 362
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v12

    .line 364
    .local v12, "rotationChange":I
    iget-object v0, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v13

    .line 365
    .local v13, "startDelay":I
    invoke-direct {p0, v10, v12}, Lcom/android/launcher3/QuickstepTransitionManager;->getWindowTargetBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v14

    .line 366
    .local v14, "windowTargetBounds":Landroid/graphics/Rect;
    nop

    .line 367
    invoke-direct {p0, v10}, Lcom/android/launcher3/QuickstepTransitionManager;->areAllTargetsTranslucent([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v6

    .line 366
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, v14

    move v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/QuickstepTransitionManager;->getOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZI)Landroid/animation/Animator;

    move-result-object v0

    .line 369
    .local v0, "windowAnimator":Landroid/animation/Animator;
    int-to-long v1, v13

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 370
    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 371
    if-eqz p6, :cond_0

    .line 373
    const/4 v1, 0x1

    .line 374
    invoke-direct {p0, v1, v13, v11}, Lcom/android/launcher3/QuickstepTransitionManager;->getLauncherContentAnimator(ZIZ)Landroid/util/Pair;

    move-result-object v1

    .line 375
    .local v1, "launcherContentAnimator":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/animation/AnimatorSet;Ljava/lang/Runnable;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 376
    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$3;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/QuickstepTransitionManager$3;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/util/Pair;)V

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 382
    .end local v1    # "launcherContentAnimator":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/animation/AnimatorSet;Ljava/lang/Runnable;>;"
    goto :goto_0

    .line 383
    :cond_0
    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/QuickstepTransitionManager$4;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;)V

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 393
    :goto_0
    return-void
.end method

.method private composeWidgetLaunchAnimator(Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 8
    .param p1, "anim"    # Landroid/animation/AnimatorSet;
    .param p2, "v"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .param p3, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p5, "nonAppTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 401
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/animation/Animator;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    .line 403
    invoke-static {p3}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->getWindowTargetBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 404
    .local v0, "windowTargetBounds":Landroid/graphics/Rect;
    nop

    .line 405
    invoke-direct {p0, p3}, Lcom/android/launcher3/QuickstepTransitionManager;->areAllTargetsTranslucent([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v7

    .line 404
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/QuickstepTransitionManager;->getOpeningWindowAnimatorsForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 407
    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/QuickstepTransitionManager$5;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 416
    return-void
.end method

.method private findLauncherView(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/View;
    .locals 8
    .param p1, "runningTaskTarget"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 1296
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-object v1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 1300
    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->origActivity:Landroid/content/ComponentName;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v5, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v5, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    aput-object v5, v1, v2

    .line 1306
    .local v1, "taskInfoActivities":[Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 1307
    .local v2, "packageName":Ljava/lang/String;
    array-length v5, v1

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, v1, v3

    .line 1308
    .local v6, "component":Landroid/content/ComponentName;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1309
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1310
    goto :goto_1

    .line 1307
    .end local v6    # "component":Landroid/content/ComponentName;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1314
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 1315
    return-object v0

    .line 1320
    :cond_3
    iget-object v0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 1321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 1322
    :cond_4
    iget-object v0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    :goto_2
    nop

    .line 1324
    .local v0, "launchCookies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    const/high16 v3, -0x80000000

    .line 1325
    .local v3, "launchCookieItemId":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    .line 1326
    .local v6, "cookie":Landroid/os/IBinder;
    invoke-static {v6}, Lcom/android/launcher3/util/ObjectWrapper;->unwrap(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1327
    .local v7, "itemId":Ljava/lang/Integer;
    if-eqz v7, :cond_5

    .line 1328
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1329
    goto :goto_4

    .line 1331
    .end local v6    # "cookie":Landroid/os/IBinder;
    .end local v7    # "itemId":Ljava/lang/Integer;
    :cond_5
    goto :goto_3

    .line 1333
    :cond_6
    :goto_4
    iget-object v5, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object v6, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 1334
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 1333
    invoke-virtual {v5, v3, v2, v6, v4}, Lcom/android/launcher3/BaseQuickstepLauncher;->getFirstMatchForAppClose(ILjava/lang/String;Landroid/os/UserHandle;Z)Landroid/view/View;

    move-result-object v4

    return-object v4

    .line 1297
    .end local v0    # "launchCookies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v1    # "taskInfoActivities":[Landroid/content/ComponentName;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "launchCookieItemId":I
    :cond_7
    :goto_5
    return-object v0
.end method

.method private findLauncherView([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/View;
    .locals 5
    .param p1, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 1281
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1282
    .local v2, "appTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1283
    invoke-direct {p0, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->findLauncherView(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/View;

    move-result-object v3

    .line 1284
    .local v3, "launcherView":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1285
    return-object v3

    .line 1281
    .end local v2    # "appTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v3    # "launcherView":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1289
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getBackgroundAnimator()Landroid/animation/ObjectAnimator;
    .locals 8

    .line 1060
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1061
    .local v0, "allowBlurringLauncher":Z
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v1

    .line 1062
    .local v1, "depthController":Lcom/android/launcher3/statehandlers/DepthController;
    sget-object v4, Lcom/android/launcher3/statehandlers/DepthController;->DEPTH:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    sget-object v5, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    iget-object v6, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 1063
    invoke-virtual {v5, v6}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v5

    aput v5, v2, v3

    .line 1062
    invoke-static {v1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    .line 1064
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1065
    .local v2, "backgroundRadiusAnim":Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_3

    .line 1067
    invoke-static {}, Lcom/android/systemui/shared/system/BlurUtils;->supportsBlursOnWindows()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1074
    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    .line 1075
    .local v4, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v4, :cond_1

    .line 1076
    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    goto :goto_1

    .line 1077
    :cond_1
    const/4 v5, 0x0

    :goto_1
    nop

    .line 1078
    .local v5, "parent":Landroid/view/SurfaceControl;
    new-instance v6, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v6}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 1079
    const-string v7, "Blur layer"

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 1080
    invoke-virtual {v6, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 1081
    invoke-virtual {v6, v3}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 1082
    invoke-virtual {v6, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 1083
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 1084
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 1085
    .end local v4    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v5    # "parent":Landroid/view/SurfaceControl;
    .local v3, "dimLayer":Landroid/view/SurfaceControl;
    goto :goto_2

    .line 1086
    .end local v3    # "dimLayer":Landroid/view/SurfaceControl;
    :cond_2
    const/4 v3, 0x0

    .line 1089
    .restart local v3    # "dimLayer":Landroid/view/SurfaceControl;
    :goto_2
    invoke-virtual {v1, v3}, Lcom/android/launcher3/statehandlers/DepthController;->setSurface(Landroid/view/SurfaceControl;)Z

    .line 1090
    new-instance v4, Lcom/android/launcher3/QuickstepTransitionManager$13;

    invoke-direct {v4, p0, v1, v3}, Lcom/android/launcher3/QuickstepTransitionManager$13;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/launcher3/statehandlers/DepthController;Landroid/view/SurfaceControl;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1108
    .end local v3    # "dimLayer":Landroid/view/SurfaceControl;
    :cond_3
    return-object v2
.end method

.method private getClosingWindowAnimators(Landroid/animation/AnimatorSet;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/RectF;F)Lcom/android/quickstep/util/RectFSpringAnim;
    .locals 21
    .param p1, "animation"    # Landroid/animation/AnimatorSet;
    .param p2, "targets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "launcherView"    # Landroid/view/View;
    .param p4, "velocityPxPerS"    # Landroid/graphics/PointF;
    .param p5, "closingWindowStartRect"    # Landroid/graphics/RectF;
    .param p6, "startWindowCornerRadius"    # F

    .line 1358
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const/4 v0, 0x0

    .line 1359
    .local v0, "floatingIconView":Lcom/android/launcher3/views/FloatingIconView;
    const/4 v1, 0x0

    .line 1360
    .local v1, "floatingWidget":Lcom/android/quickstep/views/FloatingWidgetView;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    move-object v7, v2

    .line 1362
    .local v7, "targetRect":Landroid/graphics/RectF;
    const/4 v2, 0x0

    .line 1363
    .local v2, "runningTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    const/4 v3, 0x0

    .line 1364
    .local v3, "isTransluscent":Z
    array-length v4, v9

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v11, 0x1

    if-ge v6, v4, :cond_1

    aget-object v12, v9, v6

    .line 1365
    .local v12, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget v13, v12, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v13, v11, :cond_0

    .line 1366
    move-object v2, v12

    .line 1367
    iget-boolean v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    .line 1368
    move-object v4, v2

    move/from16 v18, v3

    goto :goto_1

    .line 1364
    .end local v12    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v2

    move/from16 v18, v3

    .line 1373
    .end local v2    # "runningTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v3    # "isTransluscent":Z
    .local v4, "runningTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .local v18, "isTransluscent":Z
    :goto_1
    instance-of v2, v10, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 1374
    new-instance v14, Landroid/util/Size;

    iget-object v2, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget-object v5, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-direct {v14, v2, v5}, Landroid/util/Size;-><init>(II)V

    .line 1376
    .local v14, "windowSize":Landroid/util/Size;
    iget-object v2, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 1377
    invoke-static {v2, v4}, Lcom/android/quickstep/views/FloatingWidgetView;->getDefaultBackgroundColor(Landroid/content/Context;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v2

    .line 1378
    .local v2, "fallbackBackgroundColor":I
    iget-object v11, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    move-object v12, v10

    check-cast v12, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 1380
    iget-object v5, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v5, v5, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v5, :cond_2

    move v15, v3

    goto :goto_2

    :cond_2
    iget-object v5, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v5}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v5

    move v15, v5

    .line 1378
    :goto_2
    move-object v13, v7

    move/from16 v16, v18

    move/from16 v17, v2

    invoke-static/range {v11 .. v17}, Lcom/android/quickstep/views/FloatingWidgetView;->getFloatingWidgetView(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/graphics/RectF;Landroid/util/Size;FZI)Lcom/android/quickstep/views/FloatingWidgetView;

    move-result-object v1

    .line 1382
    .end local v2    # "fallbackBackgroundColor":I
    .end local v14    # "windowSize":Landroid/util/Size;
    move-object v11, v0

    move-object v12, v1

    goto :goto_3

    :cond_3
    if-eqz v10, :cond_4

    .line 1383
    iget-object v2, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v2, v10, v11, v7, v5}, Lcom/android/launcher3/views/FloatingIconView;->getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object v0

    move-object v11, v0

    move-object v12, v1

    goto :goto_3

    .line 1386
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/QuickstepTransitionManager;->getDefaultWindowTargetRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object v11, v0

    move-object v12, v1

    .line 1389
    .end local v0    # "floatingIconView":Lcom/android/launcher3/views/FloatingIconView;
    .end local v1    # "floatingWidget":Lcom/android/quickstep/views/FloatingWidgetView;
    .local v11, "floatingIconView":Lcom/android/launcher3/views/FloatingIconView;
    .local v12, "floatingWidget":Lcom/android/quickstep/views/FloatingWidgetView;
    :goto_3
    new-instance v0, Lcom/android/quickstep/util/RectFSpringAnim;

    iget-object v1, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object v2, v8, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    move-object/from16 v13, p5

    invoke-direct {v0, v13, v7, v1, v2}, Lcom/android/quickstep/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)V

    move-object v14, v0

    .line 1393
    .local v14, "anim":Lcom/android/quickstep/util/RectFSpringAnim;
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v15

    .line 1394
    .local v15, "rotationChange":I
    invoke-direct {v8, v9, v15}, Lcom/android/launcher3/QuickstepTransitionManager;->getWindowTargetBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v16

    .line 1395
    .local v16, "windowTargetBounds":Landroid/graphics/Rect;
    if-eqz v11, :cond_5

    .line 1396
    invoke-virtual {v14, v11}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1397
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, v14}, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v11, v0}, Lcom/android/launcher3/views/FloatingIconView;->setOnTargetChangeListener(Ljava/lang/Runnable;)V

    .line 1398
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, v14}, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v11, v0}, Lcom/android/launcher3/views/FloatingIconView;->setFastFinishRunnable(Ljava/lang/Runnable;)V

    .line 1399
    move-object v6, v11

    .line 1403
    .local v6, "finalFloatingIconView":Lcom/android/launcher3/views/FloatingIconView;
    const v17, 0x3f666666    # 0.9f

    .line 1405
    .local v17, "windowAlphaThreshold":F
    new-instance v19, Lcom/android/launcher3/QuickstepTransitionManager$15;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v7

    move-object/from16 v20, v4

    .end local v4    # "runningTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .local v20, "runningTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    move-object/from16 v4, v16

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/QuickstepTransitionManager$15;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Landroid/graphics/Rect;FLcom/android/launcher3/views/FloatingIconView;)V

    .line 1415
    .local v0, "runner":Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;
    invoke-virtual {v14, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    .line 1416
    .end local v0    # "runner":Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;
    .end local v6    # "finalFloatingIconView":Lcom/android/launcher3/views/FloatingIconView;
    .end local v17    # "windowAlphaThreshold":F
    move-object/from16 v17, v7

    goto :goto_5

    .end local v20    # "runningTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .restart local v4    # "runningTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_5
    move-object/from16 v20, v4

    .end local v4    # "runningTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .restart local v20    # "runningTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    if-eqz v12, :cond_7

    .line 1417
    invoke-virtual {v14, v12}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1418
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, v14}, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v12, v0}, Lcom/android/quickstep/views/FloatingWidgetView;->setOnTargetChangeListener(Ljava/lang/Runnable;)V

    .line 1419
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, v14}, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v12, v0}, Lcom/android/quickstep/views/FloatingWidgetView;->setFastFinishRunnable(Ljava/lang/Runnable;)V

    .line 1421
    if-eqz v18, :cond_6

    move v0, v3

    goto :goto_4

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_4
    move-object/from16 v17, v7

    .end local v7    # "targetRect":Landroid/graphics/RectF;
    .local v17, "targetRect":Landroid/graphics/RectF;
    move v7, v0

    .line 1422
    .local v7, "floatingWidgetAlpha":F
    move-object v6, v12

    .line 1423
    .local v6, "finalFloatingWidget":Lcom/android/quickstep/views/FloatingWidgetView;
    new-instance v19, Lcom/android/launcher3/QuickstepTransitionManager$16;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move-object/from16 v4, v16

    move/from16 v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/QuickstepTransitionManager$16;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Landroid/graphics/Rect;FLcom/android/quickstep/views/FloatingWidgetView;F)V

    .line 1437
    .restart local v0    # "runner":Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;
    invoke-virtual {v14, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    .line 1438
    .end local v0    # "runner":Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;
    .end local v6    # "finalFloatingWidget":Lcom/android/quickstep/views/FloatingWidgetView;
    .end local v7    # "floatingWidgetAlpha":F
    goto :goto_5

    .line 1441
    .end local v17    # "targetRect":Landroid/graphics/RectF;
    .local v7, "targetRect":Landroid/graphics/RectF;
    :cond_7
    move-object/from16 v17, v7

    .end local v7    # "targetRect":Landroid/graphics/RectF;
    .restart local v17    # "targetRect":Landroid/graphics/RectF;
    new-instance v6, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move-object/from16 v4, v16

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Landroid/graphics/Rect;F)V

    invoke-virtual {v14, v6}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    .line 1446
    :goto_5
    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$17;

    move-object/from16 v1, p4

    invoke-direct {v0, v8, v14, v1}, Lcom/android/launcher3/QuickstepTransitionManager$17;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/util/RectFSpringAnim;Landroid/graphics/PointF;)V

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1452
    return-object v14
.end method

.method private getDefaultWindowTargetRect()Landroid/graphics/RectF;
    .locals 13

    .line 1338
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 1339
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    .line 1340
    .local v1, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 1341
    .local v2, "dp":Lcom/android/launcher3/DeviceProfile;
    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    div-int/lit8 v3, v3, 0x2

    .line 1342
    .local v3, "halfIconSize":I
    iget v4, v2, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v5, v2, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    .line 1343
    invoke-interface {v1, v4, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v4

    int-to-float v4, v4

    .line 1344
    .local v4, "primaryDimension":F
    iget v5, v2, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v6, v2, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    .line 1345
    invoke-interface {v1, v5, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v5

    int-to-float v5, v5

    .line 1346
    .local v5, "secondaryDimension":F
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v4, v6

    .line 1347
    .local v6, "targetX":F
    iget v7, v2, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    int-to-float v7, v7

    sub-float v7, v5, v7

    .line 1348
    .local v7, "targetY":F
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v9, v3

    sub-float v9, v6, v9

    int-to-float v10, v3

    sub-float v10, v7, v10

    int-to-float v11, v3

    add-float/2addr v11, v6

    int-to-float v12, v3

    add-float/2addr v12, v7

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v8
.end method

.method private getFallbackClosingWindowAnimators([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/Animator;
    .locals 16
    .param p1, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 1459
    move-object/from16 v11, p0

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/QuickstepTransitionManager;->getRotationChange([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v12

    .line 1460
    .local v12, "rotationChange":I
    new-instance v10, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object v0, v11, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-direct {v10, v0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    .line 1461
    .local v10, "surfaceApplier":Lcom/android/quickstep/util/SurfaceTransactionApplier;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1462
    .local v8, "matrix":Landroid/graphics/Matrix;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 1463
    .local v5, "tmpPos":Landroid/graphics/Point;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1464
    .local v6, "tmpRect":Landroid/graphics/Rect;
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 1465
    .local v13, "closingAnimator":Landroid/animation/ValueAnimator;
    const/16 v14, 0xfa

    .line 1466
    .local v14, "duration":I
    iget-object v0, v11, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1467
    move v9, v1

    goto :goto_0

    :cond_0
    iget-object v0, v11, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    move v9, v0

    .line 1468
    .local v9, "windowCornerRadius":F
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/QuickstepTransitionManager;->areAllTargetsTranslucent([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget v0, v11, Lcom/android/launcher3/QuickstepTransitionManager;->mMaxShadowRadius:F

    move v3, v0

    .line 1469
    .local v3, "startShadowRadius":F
    :goto_1
    int-to-long v0, v14

    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1470
    new-instance v15, Lcom/android/launcher3/QuickstepTransitionManager$18;

    move-object v0, v15

    move-object/from16 v1, p0

    move v2, v14

    move-object/from16 v4, p1

    move v7, v12

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/QuickstepTransitionManager$18;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;IF[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/graphics/Rect;ILandroid/graphics/Matrix;FLcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {v13, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1521
    return-object v13

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getLauncherContentAnimator(ZIZ)Landroid/util/Pair;
    .locals 16
    .param p1, "isAppOpening"    # Z
    .param p2, "startDelay"    # I
    .param p3, "skipAllAppsScale"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ)",
            "Landroid/util/Pair<",
            "Landroid/animation/AnimatorSet;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 475
    move-object/from16 v0, p0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 478
    .local v1, "launcherAnimator":Landroid/animation/AnimatorSet;
    const/4 v2, 0x2

    if-eqz p1, :cond_0

    .line 479
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    goto :goto_0

    .line 480
    :cond_0
    new-array v3, v2, [F

    fill-array-data v3, :array_1

    :goto_0
    nop

    .line 482
    .local v3, "alphas":[F
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    .line 483
    new-array v7, v2, [F

    aput v4, v7, v6

    iget v4, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mContentScale:F

    aput v4, v7, v5

    goto :goto_1

    .line 484
    :cond_1
    new-array v7, v2, [F

    iget v8, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mContentScale:F

    aput v8, v7, v6

    aput v4, v7, v5

    :goto_1
    move-object v4, v7

    .line 487
    .local v4, "scales":[F
    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v7}, Lcom/android/launcher3/BaseQuickstepLauncher;->pauseExpensiveViewUpdates()V

    .line 489
    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v8, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/BaseQuickstepLauncher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v7

    const-wide/16 v8, 0x15e

    if-eqz v7, :cond_3

    .line 491
    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v5

    .line 492
    .local v5, "appsView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v7

    .line 493
    .local v7, "startAlpha":F
    sget-object v10, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {v10, v5}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 494
    .local v10, "startScale":F
    aget v11, v3, v6

    invoke-virtual {v5, v11}, Landroid/view/View;->setAlpha(F)V

    .line 496
    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v5, v11, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 497
    .local v11, "alpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v12, 0xd9

    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 498
    sget-object v12, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 499
    const/4 v12, 0x0

    invoke-virtual {v5, v2, v12}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 500
    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$6;

    invoke-direct {v2, v0, v5}, Lcom/android/launcher3/QuickstepTransitionManager$6;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/view/View;)V

    invoke-virtual {v11, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 507
    if-nez p3, :cond_2

    .line 508
    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    aget v6, v4, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 509
    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {v5, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 510
    .local v2, "scale":Landroid/animation/ObjectAnimator;
    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 511
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 512
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 515
    .end local v2    # "scale":Landroid/animation/ObjectAnimator;
    :cond_2
    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 517
    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, v5, v7, v10}, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda6;-><init>(Landroid/view/View;FF)V

    .line 522
    .end local v5    # "appsView":Landroid/view/View;
    .end local v7    # "startAlpha":F
    .end local v10    # "startScale":F
    .end local v11    # "alpha":Landroid/animation/ObjectAnimator;
    .local v2, "endListener":Ljava/lang/Runnable;
    goto/16 :goto_4

    .end local v2    # "endListener":Ljava/lang/Runnable;
    :cond_3
    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v10, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v7, v10}, Lcom/android/launcher3/BaseQuickstepLauncher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 523
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/launcher3/QuickstepTransitionManager;->composeViewContentAnimator(Landroid/animation/AnimatorSet;[F[F)Ljava/lang/Runnable;

    move-result-object v2

    .restart local v2    # "endListener":Ljava/lang/Runnable;
    goto/16 :goto_4

    .line 525
    .end local v2    # "endListener":Ljava/lang/Runnable;
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v7, "viewsToAnimate":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v10}, Lcom/android/launcher3/BaseQuickstepLauncher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v10

    .line 527
    .local v10, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    new-instance v11, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda7;

    invoke-direct {v11, v7}, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda7;-><init>(Ljava/util/List;)V

    invoke-virtual {v10, v11}, Lcom/android/launcher3/Workspace;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    .line 530
    iget-object v11, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v11}, Lcom/android/launcher3/BaseQuickstepLauncher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v11, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda8;

    invoke-direct {v11, v4, v1}, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda8;-><init>([FLandroid/animation/AnimatorSet;)V

    invoke-interface {v7, v11}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 541
    sget-object v11, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SCRIM_FOR_APP_LAUNCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v11}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v11

    .line 542
    .local v11, "scrimEnabled":Z
    if-eqz v11, :cond_8

    .line 543
    iget-object v12, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v12, v12, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    .line 544
    .local v12, "useTaskbarColor":Z
    if-eqz v12, :cond_5

    .line 545
    iget-object v13, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v13}, Lcom/android/launcher3/BaseQuickstepLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/android/launcher3/R$color;->taskbar_background:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    goto :goto_2

    .line 546
    :cond_5
    iget-object v13, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget v14, Lcom/android/launcher3/R$attr;->overviewScrimColor:I

    invoke-static {v13, v14}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v13

    :goto_2
    nop

    .line 547
    .local v13, "scrimColor":I
    invoke-static {v13, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v14

    .line 548
    .local v14, "scrimColorTrans":I
    if-eqz p1, :cond_6

    .line 549
    new-array v2, v2, [I

    aput v14, v2, v6

    aput v13, v2, v5

    goto :goto_3

    .line 550
    :cond_6
    new-array v2, v2, [I

    aput v13, v2, v6

    aput v14, v2, v5

    :goto_3
    nop

    .line 551
    .local v2, "colors":[I
    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseQuickstepLauncher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v5

    .line 552
    .local v5, "scrimView":Lcom/android/launcher3/views/ScrimView;
    invoke-virtual {v5}, Lcom/android/launcher3/views/ScrimView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    instance-of v15, v15, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v15, :cond_8

    .line 553
    aget v6, v2, v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/views/ScrimView;->setBackgroundColor(I)V

    .line 555
    sget-object v6, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_BACKGROUND_COLOR:Landroid/util/IntProperty;

    invoke-static {v5, v6, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 557
    .local v6, "scrim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 558
    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 560
    if-eqz v12, :cond_7

    .line 562
    new-instance v8, Lcom/android/launcher3/QuickstepTransitionManager$7;

    invoke-direct {v8, v0}, Lcom/android/launcher3/QuickstepTransitionManager$7;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;)V

    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 583
    :cond_7
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 587
    .end local v2    # "colors":[I
    .end local v5    # "scrimView":Lcom/android/launcher3/views/ScrimView;
    .end local v6    # "scrim":Landroid/animation/ObjectAnimator;
    .end local v12    # "useTaskbarColor":Z
    .end local v13    # "scrimColor":I
    .end local v14    # "scrimColorTrans":I
    :cond_8
    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0, v7, v11}, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Ljava/util/List;Z)V

    .line 599
    .end local v7    # "viewsToAnimate":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v10    # "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    .end local v11    # "scrimEnabled":Z
    .local v2, "endListener":Ljava/lang/Runnable;
    :goto_4
    move/from16 v5, p2

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 600
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZI)Landroid/animation/Animator;
    .locals 39
    .param p1, "v"    # Landroid/view/View;
    .param p2, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "nonAppTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p5, "windowTargetBounds"    # Landroid/graphics/Rect;
    .param p6, "appTargetsAreTranslucent"    # Z
    .param p7, "rotationChange"    # I

    .line 661
    move-object/from16 v13, p0

    move-object/from16 v12, p1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    move-object v10, v0

    .line 662
    .local v10, "launcherIconBounds":Landroid/graphics/RectF;
    iget-object v0, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    xor-int/lit8 v1, p6, 0x1

    const/4 v15, 0x1

    invoke-static {v0, v12, v1, v10, v15}, Lcom/android/launcher3/views/FloatingIconView;->getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object v11

    .line 664
    .local v11, "floatingView":Lcom/android/launcher3/views/FloatingIconView;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v0

    .line 665
    .local v9, "crop":Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 667
    .local v14, "matrix":Landroid/graphics/Matrix;
    new-instance v0, Lcom/android/quickstep/RemoteAnimationTargets;

    const/4 v8, 0x0

    move-object/from16 v7, p2

    move-object/from16 v6, p3

    move-object/from16 v5, p4

    invoke-direct {v0, v7, v6, v5, v8}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    move-object v4, v0

    .line 669
    .local v4, "openingTargets":Lcom/android/quickstep/RemoteAnimationTargets;
    new-instance v0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v0, v11}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    move-object v3, v0

    .line 671
    .local v3, "surfaceApplier":Lcom/android/quickstep/util/SurfaceTransactionApplier;
    invoke-virtual {v4, v3}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    .line 672
    invoke-virtual {v4}, Lcom/android/quickstep/RemoteAnimationTargets;->getNavBarRemoteAnimationTarget()Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v18

    .line 674
    .local v18, "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 675
    .local v1, "dragLayerBounds":[I
    iget-object v0, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getLocationOnScreen([I)V

    .line 678
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/QuickstepTransitionManager;->supportsSSplashScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {v4}, Lcom/android/quickstep/RemoteAnimationTargets;->getFirstAppTargetTaskId()I

    move-result v0

    .line 680
    .local v0, "taskId":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v2, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 681
    .local v2, "defaultParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v15, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    .line 682
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v15, v8, v2}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 683
    .local v8, "taskParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v15, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    move-object/from16 v20, v2

    .end local v2    # "defaultParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v20, "defaultParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    iget-object v2, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v15, 0x1

    if-ne v2, v15, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    move v0, v15

    .line 685
    .end local v8    # "taskParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v20    # "defaultParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v0, "hasSplashScreen":Z
    move/from16 v20, v0

    goto :goto_1

    .line 686
    .end local v0    # "hasSplashScreen":Z
    :cond_1
    const/4 v0, 0x0

    move/from16 v20, v0

    .line 689
    .local v20, "hasSplashScreen":Z
    :goto_1
    new-instance v15, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;

    iget-object v0, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v8, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    const/16 v19, 0x0

    aget v21, v1, v19

    const/16 v17, 0x1

    aget v22, v1, v17

    .line 691
    invoke-virtual {v11}, Lcom/android/launcher3/views/FloatingIconView;->isDifferentFromAppIcon()Z

    move-result v23

    move-object v0, v15

    move-object/from16 v24, v1

    .end local v1    # "dragLayerBounds":[I
    .local v24, "dragLayerBounds":[I
    move-object v1, v2

    move-object/from16 v25, v14

    const/4 v14, 0x2

    .end local v14    # "matrix":Landroid/graphics/Matrix;
    .local v25, "matrix":Landroid/graphics/Matrix;
    move-object v2, v8

    move-object/from16 v26, v3

    .end local v3    # "surfaceApplier":Lcom/android/quickstep/util/SurfaceTransactionApplier;
    .local v26, "surfaceApplier":Lcom/android/quickstep/util/SurfaceTransactionApplier;
    move-object/from16 v3, p5

    move-object v8, v4

    .end local v4    # "openingTargets":Lcom/android/quickstep/RemoteAnimationTargets;
    .local v8, "openingTargets":Lcom/android/quickstep/RemoteAnimationTargets;
    move-object v4, v10

    move-object/from16 v5, p1

    move/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v27, v8

    .end local v8    # "openingTargets":Lcom/android/quickstep/RemoteAnimationTargets;
    .local v27, "openingTargets":Lcom/android/quickstep/RemoteAnimationTargets;
    move/from16 v8, v20

    move-object/from16 v28, v9

    .end local v9    # "crop":Landroid/graphics/Rect;
    .local v28, "crop":Landroid/graphics/Rect;
    move/from16 v9, v23

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;-><init>(Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/view/View;IIZZ)V

    move-object v8, v15

    .line 692
    .local v8, "prop":Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;
    iget v0, v8, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterXStart:I

    iget v1, v8, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropWidthStart:I

    div-int/2addr v1, v14

    sub-int v7, v0, v1

    .line 693
    .local v7, "left":I
    iget v0, v8, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterYStart:I

    iget v1, v8, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropHeightStart:I

    div-int/2addr v1, v14

    sub-int v6, v0, v1

    .line 694
    .local v6, "top":I
    iget v0, v8, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropWidthStart:I

    add-int v2, v7, v0

    .line 695
    .local v2, "right":I
    iget v0, v8, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropHeightStart:I

    add-int v1, v6, v0

    .line 697
    .local v1, "bottom":I
    move-object/from16 v0, v28

    .end local v28    # "crop":Landroid/graphics/Rect;
    .local v0, "crop":Landroid/graphics/Rect;
    invoke-virtual {v0, v7, v6, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 699
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    move-object v5, v11

    .end local v11    # "floatingView":Lcom/android/launcher3/views/FloatingIconView;
    .local v5, "floatingView":Lcom/android/launcher3/views/FloatingIconView;
    move-object v11, v3

    .line 700
    .local v11, "floatingIconBounds":Landroid/graphics/RectF;
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 701
    .local v9, "tmpRectF":Landroid/graphics/RectF;
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    move/from16 v4, v17

    .line 703
    .local v15, "tmpPos":Landroid/graphics/Point;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 704
    .local v3, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v4, v14, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 705
    .local v4, "appAnimator":Landroid/animation/ValueAnimator;
    move-object/from16 v22, v15

    .end local v15    # "tmpPos":Landroid/graphics/Point;
    .local v22, "tmpPos":Landroid/graphics/Point;
    const-wide/16 v14, 0x1f4

    invoke-virtual {v4, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 706
    sget-object v14, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 707
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 708
    new-instance v14, Lcom/android/launcher3/QuickstepTransitionManager$9;

    move-object/from16 v15, v27

    .end local v27    # "openingTargets":Lcom/android/quickstep/RemoteAnimationTargets;
    .local v15, "openingTargets":Lcom/android/quickstep/RemoteAnimationTargets;
    invoke-direct {v14, v13, v12, v15}, Lcom/android/launcher3/QuickstepTransitionManager$9;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/view/View;Lcom/android/quickstep/RemoteAnimationTargets;)V

    invoke-virtual {v4, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 734
    iget-object v14, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v14}, Lcom/android/launcher3/BaseQuickstepLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-static {v14}, Lcom/android/systemui/shared/system/QuickStepContract;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v14

    move-object/from16 v23, v9

    .end local v9    # "tmpRectF":Landroid/graphics/RectF;
    .local v23, "tmpRectF":Landroid/graphics/RectF;
    if-eqz v14, :cond_2

    .line 735
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v9, v14

    goto :goto_2

    .line 736
    :cond_2
    const/4 v9, 0x0

    :goto_2
    move-object v14, v3

    .end local v3    # "animatorSet":Landroid/animation/AnimatorSet;
    .local v14, "animatorSet":Landroid/animation/AnimatorSet;
    move v3, v9

    .line 737
    .local v3, "initialWindowRadius":F
    iget-object v9, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v9, v9, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v9, :cond_3

    .line 738
    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    iget-object v9, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v9}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v9

    :goto_3
    move-object/from16 v29, v4

    .end local v4    # "appAnimator":Landroid/animation/ValueAnimator;
    .local v29, "appAnimator":Landroid/animation/ValueAnimator;
    move v4, v9

    .line 739
    .local v4, "finalWindowRadius":F
    if-eqz p6, :cond_4

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    iget v9, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mMaxShadowRadius:F

    :goto_4
    move-object/from16 v28, v5

    .end local v5    # "floatingView":Lcom/android/launcher3/views/FloatingIconView;
    .local v28, "floatingView":Lcom/android/launcher3/views/FloatingIconView;
    move v5, v9

    .line 741
    .local v5, "finalShadowRadius":F
    new-instance v30, Lcom/android/launcher3/QuickstepTransitionManager$10;

    move-object/from16 v31, v0

    .end local v0    # "crop":Landroid/graphics/Rect;
    .local v31, "crop":Landroid/graphics/Rect;
    move-object/from16 v0, v30

    move/from16 v32, v1

    .end local v1    # "bottom":I
    .local v32, "bottom":I
    move-object/from16 v1, p0

    move/from16 v33, v2

    .end local v2    # "right":I
    .local v33, "right":I
    move-object v2, v8

    move/from16 v34, v6

    .end local v6    # "top":I
    .local v34, "top":I
    move-object v6, v10

    move/from16 v35, v7

    .end local v7    # "left":I
    .local v35, "left":I
    move-object/from16 v7, v31

    move-object/from16 v36, v8

    .end local v8    # "prop":Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;
    .local v36, "prop":Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;
    move/from16 v8, p7

    move-object/from16 v37, v10

    .end local v10    # "launcherIconBounds":Landroid/graphics/RectF;
    .local v37, "launcherIconBounds":Landroid/graphics/RectF;
    move-object/from16 v10, v24

    move-object/from16 v12, v28

    move-object/from16 v13, p2

    move-object/from16 v16, v18

    move-object/from16 v17, v26

    move-object/from16 v38, v14

    move-object/from16 v21, v15

    move-object/from16 v15, v22

    move-object/from16 v9, v23

    move-object/from16 v14, v25

    .end local v22    # "tmpPos":Landroid/graphics/Point;
    .end local v23    # "tmpRectF":Landroid/graphics/RectF;
    .end local v25    # "matrix":Landroid/graphics/Matrix;
    .restart local v9    # "tmpRectF":Landroid/graphics/RectF;
    .local v14, "matrix":Landroid/graphics/Matrix;
    .local v15, "tmpPos":Landroid/graphics/Point;
    .local v21, "openingTargets":Lcom/android/quickstep/RemoteAnimationTargets;
    .local v38, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-direct/range {v0 .. v17}, Lcom/android/launcher3/QuickstepTransitionManager$10;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;FFFLandroid/graphics/RectF;Landroid/graphics/Rect;ILandroid/graphics/RectF;[ILandroid/graphics/RectF;Lcom/android/launcher3/views/FloatingIconView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Matrix;Landroid/graphics/Point;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    .line 897
    .local v0, "listener":Lcom/android/quickstep/util/MultiValueUpdateListener;
    move-object/from16 v1, v29

    .end local v29    # "appAnimator":Landroid/animation/ValueAnimator;
    .local v1, "appAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 899
    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v2, v6}, Lcom/android/quickstep/util/MultiValueUpdateListener;->onUpdate(FZ)V

    .line 903
    if-eqz p6, :cond_5

    .line 904
    move-object/from16 v2, v38

    .end local v38    # "animatorSet":Landroid/animation/AnimatorSet;
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_5

    .line 906
    .end local v2    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v38    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_5
    move-object/from16 v2, v38

    .end local v38    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v2    # "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v1, v7, v19

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/QuickstepTransitionManager;->getBackgroundAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 908
    :goto_5
    return-object v2

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getOpeningWindowAnimatorsForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;
    .locals 25
    .param p1, "v"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .param p2, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "nonAppTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p5, "windowTargetBounds"    # Landroid/graphics/Rect;
    .param p6, "appTargetsAreTranslucent"    # Z

    .line 916
    move-object/from16 v13, p0

    new-instance v16, Landroid/graphics/RectF;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/RectF;-><init>()V

    .line 917
    .local v16, "widgetBackgroundBounds":Landroid/graphics/RectF;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 918
    .local v6, "appWindowCrop":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 919
    .local v7, "matrix":Landroid/graphics/Matrix;
    new-instance v0, Lcom/android/quickstep/RemoteAnimationTargets;

    const/4 v12, 0x0

    move-object/from16 v11, p2

    move-object/from16 v10, p3

    move-object/from16 v9, p4

    invoke-direct {v0, v11, v10, v9, v12}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    move-object v8, v0

    .line 922
    .local v8, "openingTargets":Lcom/android/quickstep/RemoteAnimationTargets;
    invoke-virtual {v8}, Lcom/android/quickstep/RemoteAnimationTargets;->getFirstAppTarget()Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v5

    .line 923
    .local v5, "openingTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    const/4 v0, 0x0

    .line 924
    .local v0, "fallbackBackgroundColor":I
    if-eqz v5, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/QuickstepTransitionManager;->supportsSSplashScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 925
    iget-object v1, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    iget v2, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    iget-object v1, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    iget v2, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v12

    :goto_0
    move v0, v1

    .line 927
    iget-object v1, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mTaskStartParams:Ljava/util/LinkedHashMap;

    iget v2, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    :cond_1
    if-nez v0, :cond_2

    .line 930
    iget-object v1, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 931
    invoke-static {v1, v5}, Lcom/android/quickstep/views/FloatingWidgetView;->getDefaultBackgroundColor(Landroid/content/Context;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I

    move-result v0

    move/from16 v21, v0

    goto :goto_1

    .line 929
    :cond_2
    move/from16 v21, v0

    .line 934
    .end local v0    # "fallbackBackgroundColor":I
    .local v21, "fallbackBackgroundColor":I
    :goto_1
    iget-object v0, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 935
    move/from16 v18, v1

    goto :goto_2

    :cond_3
    iget-object v0, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    move/from16 v18, v0

    .line 936
    .local v18, "finalWindowRadius":F
    :goto_2
    iget-object v14, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    new-instance v0, Landroid/util/Size;

    .line 938
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 936
    move-object/from16 v15, p1

    move-object/from16 v17, v0

    move/from16 v19, p6

    move/from16 v20, v21

    invoke-static/range {v14 .. v20}, Lcom/android/quickstep/views/FloatingWidgetView;->getFloatingWidgetView(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/graphics/RectF;Landroid/util/Size;FZI)Lcom/android/quickstep/views/FloatingWidgetView;

    move-result-object v14

    .line 940
    .local v14, "floatingView":Lcom/android/quickstep/views/FloatingWidgetView;
    iget-object v0, v13, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 941
    invoke-virtual {v14}, Lcom/android/quickstep/views/FloatingWidgetView;->getInitialCornerRadius()F

    move-result v0

    move v2, v0

    goto :goto_3

    :cond_4
    move v2, v1

    .line 943
    .local v2, "initialWindowRadius":F
    :goto_3
    new-instance v0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v0, v14}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    move-object v15, v0

    .line 944
    .local v15, "surfaceApplier":Lcom/android/quickstep/util/SurfaceTransactionApplier;
    invoke-virtual {v8, v15}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    .line 946
    invoke-virtual {v8}, Lcom/android/quickstep/RemoteAnimationTargets;->getNavBarRemoteAnimationTarget()Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v17

    .line 948
    .local v17, "navBarTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v4, v0

    .line 949
    .local v4, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v3, 0x2

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 950
    .local v1, "appAnimator":Landroid/animation/ValueAnimator;
    move-object/from16 v19, v4

    .end local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    .local v19, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 951
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 952
    invoke-virtual {v1, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 953
    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$11;

    invoke-direct {v0, v13, v8}, Lcom/android/launcher3/QuickstepTransitionManager$11;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/RemoteAnimationTargets;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 959
    invoke-static/range {v19 .. v19}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda4;

    move-object/from16 v4, v19

    .end local v19    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    invoke-direct {v0, v4}, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda4;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {v14, v0}, Lcom/android/quickstep/views/FloatingWidgetView;->setFastFinishRunnable(Ljava/lang/Runnable;)V

    .line 961
    new-instance v3, Lcom/android/launcher3/QuickstepTransitionManager$12;

    move-object v0, v3

    move-object v13, v1

    .end local v1    # "appAnimator":Landroid/animation/ValueAnimator;
    .local v13, "appAnimator":Landroid/animation/ValueAnimator;
    move-object/from16 v1, p0

    move-object/from16 v22, v3

    move/from16 v3, v18

    move-object/from16 v23, v4

    .end local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    .local v23, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v4, v16

    move-object/from16 v19, v5

    .end local v5    # "openingTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .local v19, "openingTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    move-object/from16 v5, p5

    move-object/from16 v20, v8

    .end local v8    # "openingTargets":Lcom/android/quickstep/RemoteAnimationTargets;
    .local v20, "openingTargets":Lcom/android/quickstep/RemoteAnimationTargets;
    move/from16 v8, p6

    move-object/from16 v9, p2

    move-object v10, v14

    move-object/from16 v11, v17

    move/from16 v24, v12

    move-object v12, v15

    invoke-direct/range {v0 .. v12}, Lcom/android/launcher3/QuickstepTransitionManager$12;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;FFLandroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/views/FloatingWidgetView;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1046
    if-eqz p6, :cond_5

    .line 1047
    move-object/from16 v0, v23

    .end local v23    # "animatorSet":Landroid/animation/AnimatorSet;
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_4

    .line 1049
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v23    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_5
    move-object/from16 v0, v23

    .end local v23    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v13, v1, v24

    const/4 v3, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/QuickstepTransitionManager;->getBackgroundAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1051
    :goto_4
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static getRotationChange([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I
    .locals 6
    .param p0, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 1268
    const/4 v0, 0x0

    .line 1269
    .local v0, "rotationChange":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 1270
    .local v3, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->rotationChange:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1271
    iget v0, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->rotationChange:I

    .line 1269
    .end local v3    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1274
    :cond_1
    return v0
.end method

.method private getUnlockWindowAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/Animator;
    .locals 4
    .param p1, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 1244
    new-instance v0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    .line 1245
    .local v0, "surfaceApplier":Lcom/android/quickstep/util/SurfaceTransactionApplier;
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1246
    .local v1, "unlockAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1247
    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 1248
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v2}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v2

    :goto_0
    nop

    .line 1249
    .local v2, "cornerRadius":F
    new-instance v3, Lcom/android/launcher3/QuickstepTransitionManager$14;

    invoke-direct {v3, p0, p1, v2, v0}, Lcom/android/launcher3/QuickstepTransitionManager$14;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FLcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1264
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getWindowTargetBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;
    .locals 6
    .param p1, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "rotationChange"    # I

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 427
    .local v4, "t":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-eqz v5, :cond_0

    .line 426
    .end local v4    # "t":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 428
    .restart local v4    # "t":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_0
    move-object v0, v4

    .line 429
    nop

    .line 431
    .end local v4    # "t":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_1
    if-nez v0, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    .line 432
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 433
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-object v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    .line 434
    iget-object v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 436
    :cond_3
    iget-object v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 438
    :goto_1
    if-eqz p2, :cond_5

    .line 439
    rem-int/lit8 v2, p2, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 441
    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    rsub-int/lit8 v4, p2, 0x4

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher3/Utilities;->rotateBounds(Landroid/graphics/Rect;III)V

    goto :goto_2

    .line 444
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    rsub-int/lit8 v4, p2, 0x4

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher3/Utilities;->rotateBounds(Landroid/graphics/Rect;III)V

    .line 448
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    if-eqz v2, :cond_6

    .line 450
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 452
    :cond_6
    return-object v1
.end method

.method private hasMultipleTargetsWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z
    .locals 6
    .param p1, "targets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "mode"    # I

    .line 1219
    const/4 v0, 0x0

    .line 1220
    .local v0, "numTargets":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 1221
    .local v4, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v5, p2, :cond_0

    .line 1222
    add-int/lit8 v0, v0, 0x1

    .line 1224
    :cond_0
    const/4 v5, 0x1

    if-le v0, v5, :cond_1

    .line 1225
    return v5

    .line 1220
    .end local v4    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1228
    :cond_2
    return v2
.end method

.method static synthetic lambda$getLauncherContentAnimator$1(Landroid/view/View;FF)V
    .locals 2
    .param p0, "appsView"    # Landroid/view/View;
    .param p1, "startAlpha"    # F
    .param p2, "startScale"    # F

    .line 518
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 519
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 520
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 521
    return-void
.end method

.method static synthetic lambda$getLauncherContentAnimator$2(Ljava/util/List;Landroid/view/View;)V
    .locals 1
    .param p0, "viewsToAnimate"    # Ljava/util/List;
    .param p1, "view"    # Landroid/view/View;

    .line 528
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$getLauncherContentAnimator$3([FLandroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 3
    .param p0, "scales"    # [F
    .param p1, "launcherAnimator"    # Landroid/animation/AnimatorSet;
    .param p2, "view"    # Landroid/view/View;

    .line 533
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 535
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {p2, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 536
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 537
    .local v0, "scaleAnim":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 538
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 539
    return-void
.end method

.method static synthetic lambda$getLauncherContentAnimator$4(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 589
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 590
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 591
    return-void
.end method

.method private launcherIsATargetWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z
    .locals 6
    .param p1, "targets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "mode"    # I

    .line 1206
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1207
    .local v3, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v4, p2, :cond_0

    iget-object v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 1211
    invoke-virtual {v5}, Lcom/android/launcher3/BaseQuickstepLauncher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1212
    const/4 v0, 0x1

    return v0

    .line 1206
    .end local v3    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1215
    :cond_1
    return v1
.end method

.method private supportsSSplashScreen()Z
    .locals 1

    .line 1525
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher3/QuickstepTransitionManager;->ENABLE_SHELL_STARTING_SURFACE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private unregisterRemoteAnimations()V
    .locals 2

    .line 1174
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    return-void

    .line 1177
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1178
    new-instance v0, Lcom/android/systemui/shared/system/ActivityCompat;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/ActivityCompat;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityCompat;->unregisterRemoteAnimations()V

    .line 1182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    .line 1183
    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    .line 1184
    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mKeyguardGoingAwayRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    .line 1186
    :cond_1
    return-void
.end method

.method private unregisterRemoteTransitions()V
    .locals 3

    .line 1189
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    return-void

    .line 1192
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1193
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTransition:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    if-nez v0, :cond_1

    return-void

    .line 1194
    :cond_1
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTransition:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/SystemUiProxy;->unregisterRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    .line 1196
    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTransition:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    .line 1197
    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenTransitionRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    .line 1199
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mBackAnimationController:Lcom/android/quickstep/LauncherBackAnimationController;

    if-eqz v0, :cond_3

    .line 1200
    invoke-virtual {v0}, Lcom/android/quickstep/LauncherBackAnimationController;->unregisterBackCallbacks()V

    .line 1201
    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mBackAnimationController:Lcom/android/quickstep/LauncherBackAnimationController;

    .line 1203
    :cond_3
    return-void
.end method


# virtual methods
.method protected composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V
    .locals 11
    .param p1, "anim"    # Landroid/animation/AnimatorSet;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p5, "nonAppTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p6, "launcherClosing"    # Z

    .line 328
    move-object v0, p0

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 329
    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v8

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 330
    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/quickstep/views/RecentsView;

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v10

    .line 328
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v2 .. v10}, Lcom/android/quickstep/TaskViewUtils;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V

    .line 331
    return-void
.end method

.method protected composeViewContentAnimator(Landroid/animation/AnimatorSet;[F[F)Ljava/lang/Runnable;
    .locals 6
    .param p1, "anim"    # Landroid/animation/AnimatorSet;
    .param p2, "alphas"    # [F
    .param p3, "scales"    # [F

    .line 613
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 614
    .local v0, "overview":Lcom/android/quickstep/views/RecentsView;
    sget-object v1, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    invoke-static {v0, v1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 616
    .local v1, "alpha":Landroid/animation/ObjectAnimator;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QTM composeViewContentAnimator alphas="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "b/223498680"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$8;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/QuickstepTransitionManager$8;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 634
    const-wide/16 v4, 0xd9

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 635
    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 636
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 637
    const-string v2, "QTM composeViewContentAnimator setFreezeVisibility=true"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/RecentsView;->setFreezeViewVisibility(Z)V

    .line 640
    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {v0, v2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 641
    .local v2, "scaleAnim":Landroid/animation/ObjectAnimator;
    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 642
    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 643
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 645
    new-instance v3, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/views/RecentsView;)V

    return-object v3
.end method

.method public createWallpaperOpenAnimations([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLandroid/graphics/RectF;F)Landroid/util/Pair;
    .locals 21
    .param p1, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "fromUnlock"    # Z
    .param p4, "startRect"    # Landroid/graphics/RectF;
    .param p5, "startWindowCornerRadius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Z",
            "Landroid/graphics/RectF;",
            "F)",
            "Landroid/util/Pair<",
            "Lcom/android/quickstep/util/RectFSpringAnim;",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation

    .line 1586
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v0, 0x0

    .line 1587
    .local v0, "anim":Landroid/animation/AnimatorSet;
    const/4 v9, 0x0

    .line 1589
    .local v9, "rectFSpringAnim":Lcom/android/quickstep/util/RectFSpringAnim;
    iget-object v10, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    .line 1590
    .local v10, "provider":Lcom/android/quickstep/util/RemoteAnimationProvider;
    if-eqz v10, :cond_0

    .line 1591
    move-object/from16 v11, p2

    invoke-virtual {v10, v8, v11}, Lcom/android/quickstep/util/RemoteAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_0

    .line 1590
    :cond_0
    move-object/from16 v11, p2

    .line 1594
    :goto_0
    if-nez v0, :cond_c

    .line 1595
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v12, v1

    .line 1597
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    .local v12, "anim":Landroid/animation/AnimatorSet;
    iget-object v0, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->isForceInvisible()Z

    move-result v0

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v0, :cond_2

    .line 1598
    invoke-direct {v7, v8, v14}, Lcom/android/launcher3/QuickstepTransitionManager;->launcherIsATargetWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v14

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v13

    :goto_2
    move v15, v0

    .line 1600
    .local v15, "launcherIsForceInvisibleOrOpening":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/QuickstepTransitionManager;->findLauncherView([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/View;

    move-result-object v6

    .line 1601
    .local v6, "launcherView":Landroid/view/View;
    if-nez v6, :cond_3

    if-nez v15, :cond_5

    :cond_3
    iget-object v0, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 1603
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1604
    invoke-direct {v7, v8, v13}, Lcom/android/launcher3/QuickstepTransitionManager;->hasMultipleTargetsWithMode([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v14

    goto :goto_4

    :cond_5
    :goto_3
    move v0, v13

    :goto_4
    move/from16 v16, v0

    .line 1606
    .local v16, "playFallBackAnimation":Z
    const/16 v17, 0x1

    .line 1607
    .local v17, "playWorkspaceReveal":Z
    const/16 v18, 0x0

    .line 1608
    .local v18, "skipAllAppsScale":Z
    if-eqz p3, :cond_6

    .line 1609
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/QuickstepTransitionManager;->getUnlockWindowAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object v14, v6

    goto/16 :goto_6

    .line 1610
    :cond_6
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BACK_SWIPE_HOME_ANIMATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v16, :cond_9

    .line 1613
    iget-object v0, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->unlock_staggered_velocity_dp_per_s:I

    .line 1614
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getDimension(I)F

    move-result v5

    .line 1615
    .local v5, "velocityPxPerS":F
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    neg-float v2, v5

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v4, v0

    .line 1616
    .local v4, "velocity":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v6

    move-object/from16 v19, v4

    .end local v4    # "velocity":Landroid/graphics/PointF;
    .local v19, "velocity":Landroid/graphics/PointF;
    move/from16 v20, v5

    .end local v5    # "velocityPxPerS":F
    .local v20, "velocityPxPerS":F
    move-object/from16 v5, p4

    move-object v14, v6

    .end local v6    # "launcherView":Landroid/view/View;
    .local v14, "launcherView":Landroid/view/View;
    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/QuickstepTransitionManager;->getClosingWindowAnimators(Landroid/animation/AnimatorSet;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/RectF;F)Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object v9

    .line 1619
    iget-object v0, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1620
    new-instance v0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

    iget-object v1, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    move-object/from16 v2, v19

    .end local v19    # "velocity":Landroid/graphics/PointF;
    .local v2, "velocity":Landroid/graphics/PointF;
    iget v3, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v3, v13, v14}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;-><init>(Lcom/android/launcher3/Launcher;FZLandroid/view/View;)V

    .line 1621
    invoke-virtual {v0}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->getAnimators()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 1620
    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1623
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/QuickstepTransitionManager;->areAllTargetsTranslucent([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1624
    iget-object v0, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/statehandlers/DepthController;->DEPTH:Landroid/util/FloatProperty;

    const/4 v3, 0x2

    new-array v3, v3, [F

    sget-object v4, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    iget-object v5, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 1625
    invoke-virtual {v4, v5}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iget-object v5, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v4

    aput v4, v3, v13

    .line 1624
    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1629
    :cond_7
    const/4 v0, 0x0

    move/from16 v17, v0

    .end local v17    # "playWorkspaceReveal":Z
    .local v0, "playWorkspaceReveal":Z
    goto :goto_5

    .line 1633
    .end local v0    # "playWorkspaceReveal":Z
    .end local v2    # "velocity":Landroid/graphics/PointF;
    .restart local v17    # "playWorkspaceReveal":Z
    .restart local v19    # "velocity":Landroid/graphics/PointF;
    :cond_8
    move-object/from16 v2, v19

    .end local v19    # "velocity":Landroid/graphics/PointF;
    .restart local v2    # "velocity":Landroid/graphics/PointF;
    const/4 v0, 0x1

    move/from16 v18, v0

    .line 1635
    .end local v2    # "velocity":Landroid/graphics/PointF;
    .end local v20    # "velocityPxPerS":F
    :goto_5
    move/from16 v0, v18

    goto :goto_7

    .line 1610
    .end local v14    # "launcherView":Landroid/view/View;
    .restart local v6    # "launcherView":Landroid/view/View;
    :cond_9
    move-object v14, v6

    .line 1636
    .end local v6    # "launcherView":Landroid/view/View;
    .restart local v14    # "launcherView":Landroid/view/View;
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/QuickstepTransitionManager;->getFallbackClosingWindowAnimators([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1647
    .end local v14    # "launcherView":Landroid/view/View;
    .restart local v6    # "launcherView":Landroid/view/View;
    :goto_6
    move/from16 v0, v18

    .end local v6    # "launcherView":Landroid/view/View;
    .end local v18    # "skipAllAppsScale":Z
    .local v0, "skipAllAppsScale":Z
    .restart local v14    # "launcherView":Landroid/view/View;
    :goto_7
    if-eqz v15, :cond_b

    .line 1648
    const/16 v1, 0x9

    invoke-direct {v7, v12, v1}, Lcom/android/launcher3/QuickstepTransitionManager;->addCujInstrumentation(Landroid/animation/Animator;I)V

    .line 1651
    iget-object v1, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/animation/Animator;

    invoke-virtual {v1, v12, v3}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    .line 1653
    iget-object v1, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/BaseQuickstepLauncher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1654
    const/16 v1, 0x64

    .line 1655
    invoke-direct {v7, v2, v1, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->getLauncherContentAnimator(ZIZ)Landroid/util/Pair;

    move-result-object v1

    .line 1657
    .local v1, "contentAnimator":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/animation/AnimatorSet;Ljava/lang/Runnable;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1658
    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$20;

    invoke-direct {v2, v7, v1}, Lcom/android/launcher3/QuickstepTransitionManager$20;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/util/Pair;)V

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1664
    .end local v1    # "contentAnimator":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/animation/AnimatorSet;Ljava/lang/Runnable;>;"
    goto :goto_8

    .line 1665
    :cond_a
    if-eqz v17, :cond_b

    .line 1666
    new-instance v1, Lcom/android/quickstep/util/WorkspaceRevealAnim;

    iget-object v2, v7, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/quickstep/util/WorkspaceRevealAnim;-><init>(Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {v1}, Lcom/android/quickstep/util/WorkspaceRevealAnim;->getAnimators()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1672
    .end local v0    # "skipAllAppsScale":Z
    .end local v14    # "launcherView":Landroid/view/View;
    .end local v15    # "launcherIsForceInvisibleOrOpening":Z
    .end local v16    # "playFallBackAnimation":Z
    .end local v17    # "playWorkspaceReveal":Z
    :cond_b
    :goto_8
    move-object v0, v12

    .end local v12    # "anim":Landroid/animation/AnimatorSet;
    .local v0, "anim":Landroid/animation/AnimatorSet;
    :cond_c
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v9, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method createWallpaperOpenRunner(Z)Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;
    .locals 2
    .param p1, "fromUnlock"    # Z

    .line 1236
    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/os/Handler;Z)V

    return-object v0
.end method

.method public getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v0

    .line 280
    .local v0, "fromRecents":Z
    new-instance v1, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v1}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    .line 281
    .local v1, "onEndCallback":Lcom/android/launcher3/util/RunnableList;
    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/view/View;Lcom/android/launcher3/util/RunnableList;)V

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    .line 282
    new-instance v4, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mAppLaunchRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v3, v5}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    .line 287
    .local v4, "runner":Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;
    if-eqz v0, :cond_0

    .line 288
    const-wide/16 v2, 0x150

    goto :goto_0

    .line 289
    :cond_0
    const-wide/16 v2, 0x1f4

    :goto_0
    move-wide v10, v2

    .line 291
    .local v10, "duration":J
    const-wide/16 v2, 0x78

    sub-long v2, v10, v2

    const-wide/16 v5, 0x60

    sub-long v12, v2, v5

    .line 293
    .local v12, "statusBarTransitionDelay":J
    new-instance v2, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 295
    invoke-virtual {v3}, Lcom/android/launcher3/BaseQuickstepLauncher;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v9

    move-object v3, v2

    move-wide v5, v10

    move-wide v7, v12

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;JJLandroid/app/IApplicationThread;)V

    .line 296
    .local v2, "adapterCompat":Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;
    new-instance v3, Lcom/android/launcher3/util/ActivityOptionsWrapper;

    .line 297
    invoke-static {v2}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-direct {v3, v5, v1}, Lcom/android/launcher3/util/ActivityOptionsWrapper;-><init>(Landroid/app/ActivityOptions;Lcom/android/launcher3/util/RunnableList;)V

    .line 296
    return-object v3
.end method

.method public hasControlRemoteAppTransitionPermission()Z
    .locals 2

    .line 1534
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "targets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 313
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0, p1, p2}, Lcom/android/quickstep/TaskViewUtils;->findTaskViewToLaunch(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0
.end method

.method synthetic lambda$composeViewContentAnimator$6$com-android-launcher3-QuickstepTransitionManager(Lcom/android/quickstep/views/RecentsView;)V
    .locals 2
    .param p1, "overview"    # Lcom/android/quickstep/views/RecentsView;

    .line 646
    const-string v0, "b/223498680"

    const-string v1, "QTM composeViewContentAnimator onEnd setFreezeVisibility=false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/RecentsView;->setFreezeViewVisibility(Z)V

    .line 648
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 649
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    .line 650
    return-void
.end method

.method synthetic lambda$getLauncherContentAnimator$5$com-android-launcher3-QuickstepTransitionManager(Ljava/util/List;Z)V
    .locals 2
    .param p1, "viewsToAnimate"    # Ljava/util/List;
    .param p2, "scrimEnabled"    # Z

    .line 588
    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 592
    if-eqz p2, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ScrimView;->setBackgroundColor(I)V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->resumeExpensiveViewUpdates()V

    .line 596
    return-void
.end method

.method synthetic lambda$setRemoteAnimationProvider$0$com-android-launcher3-QuickstepTransitionManager(Lcom/android/quickstep/util/RemoteAnimationProvider;)V
    .locals 1
    .param p1, "animationProvider"    # Lcom/android/quickstep/util/RemoteAnimationProvider;

    .line 459
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    if-ne p1, v0, :cond_0

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    .line 462
    :cond_0
    return-void
.end method

.method public onActivityDestroyed()V
    .locals 3

    .line 1167
    invoke-direct {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->unregisterRemoteAnimations()V

    .line 1168
    invoke-direct {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->unregisterRemoteTransitions()V

    .line 1169
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mStartingWindowListener:Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;->setTransitionManager(Lcom/android/launcher3/QuickstepTransitionManager;)V

    .line 1170
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->setStartingWindowListener(Lcom/android/wm/shell/startingsurface/IStartingWindowListener;)V

    .line 1171
    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 271
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 272
    return-void
.end method

.method public registerRemoteAnimations()V
    .locals 11

    .line 1115
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    return-void

    .line 1118
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->createWallpaperOpenRunner(Z)Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    .line 1121
    new-instance v1, Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;

    invoke-direct {v1}, Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;-><init>()V

    .line 1122
    .local v1, "definition":Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;
    const/16 v2, 0xd

    new-instance v10, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;

    new-instance v4, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    invoke-direct {v4, v3, v5, v0}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    const-wide/16 v5, 0xfa

    const-wide/16 v7, 0x0

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 1128
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;JJLandroid/app/IApplicationThread;)V

    .line 1122
    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0, v10}, Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;->addRemoteAnimation(IILcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;)V

    .line 1130
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->KEYGUARD_ANIMATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1131
    invoke-virtual {p0, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->createWallpaperOpenRunner(Z)Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mKeyguardGoingAwayRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    .line 1132
    const/16 v2, 0x15

    new-instance v10, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;

    new-instance v4, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mKeyguardGoingAwayRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    invoke-direct {v4, v3, v5, v0}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    const-wide/16 v5, 0xfa

    const-wide/16 v7, 0x0

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 1139
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;JJLandroid/app/IApplicationThread;)V

    .line 1132
    invoke-virtual {v1, v2, v10}, Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;->addRemoteAnimation(ILcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;)V

    .line 1142
    :cond_1
    new-instance v0, Lcom/android/systemui/shared/system/ActivityCompat;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-direct {v0, v2}, Lcom/android/systemui/shared/system/ActivityCompat;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityCompat;->registerRemoteAnimations(Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;)V

    .line 1144
    .end local v1    # "definition":Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;
    :cond_2
    return-void
.end method

.method public registerRemoteTransitions()V
    .locals 4

    .line 1150
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    return-void

    .line 1153
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/QuickstepTransitionManager;->createWallpaperOpenRunner(Z)Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenTransitionRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    .line 1155
    new-instance v1, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mWallpaperOpenTransitionRunner:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 1157
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v0

    .line 1155
    invoke-static {v1, v0}, Lcom/android/systemui/shared/system/RemoteAnimationAdapterCompat;->buildRemoteTransition(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;Landroid/app/IApplicationThread;)Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTransition:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    .line 1158
    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->addHomeOpenCheck(Landroid/content/ComponentName;)V

    .line 1159
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncherOpenTransition:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->registerRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mBackAnimationController:Lcom/android/quickstep/LauncherBackAnimationController;

    if-eqz v0, :cond_2

    .line 1162
    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/LauncherBackAnimationController;->registerBackCallbacks(Landroid/os/Handler;)V

    .line 1164
    :cond_2
    return-void
.end method

.method public setRemoteAnimationProvider(Lcom/android/quickstep/util/RemoteAnimationProvider;Landroid/os/CancellationSignal;)V
    .locals 1
    .param p1, "animationProvider"    # Lcom/android/quickstep/util/RemoteAnimationProvider;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 457
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    .line 458
    new-instance v0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/util/RemoteAnimationProvider;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 463
    return-void
.end method
