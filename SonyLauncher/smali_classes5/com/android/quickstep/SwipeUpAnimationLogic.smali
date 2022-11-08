.class public abstract Lcom/android/quickstep/SwipeUpAnimationLogic;
.super Ljava/lang/Object;
.source "SwipeUpAnimationLogic.java"

# interfaces
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;,
        Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;,
        Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    }
.end annotation


# static fields
.field protected static final TEMP_RECT:Landroid/graphics/Rect;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

.field protected final mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field protected mDp:Lcom/android/launcher3/DeviceProfile;

.field protected mDragLengthFactor:F

.field protected final mGestureState:Lcom/android/quickstep/GestureState;

.field protected mIsSwipeForStagedSplit:Z

.field protected mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

.field protected final mTargetGluer:Lcom/android/quickstep/RemoteTargetGluer;

.field protected mTransitionDragLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->TEMP_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/GestureState;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;
    .param p3, "gestureState"    # Lcom/android/quickstep/GestureState;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/quickstep/SwipeUpAnimationLogic$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/SwipeUpAnimationLogic$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/SwipeUpAnimationLogic;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    .line 79
    iput-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 81
    iput-object p3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    .line 83
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_SELECT:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 84
    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker;->getRunningSplitTaskIds()[I

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mIsSwipeForStagedSplit:Z

    .line 86
    new-instance v0, Lcom/android/quickstep/RemoteTargetGluer;

    invoke-virtual {p3}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/quickstep/RemoteTargetGluer;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V

    iput-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTargetGluer:Lcom/android/quickstep/RemoteTargetGluer;

    .line 87
    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer;->getRemoteTargetHandles()[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 88
    new-instance v0, Lcom/android/quickstep/SwipeUpAnimationLogic$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/quickstep/SwipeUpAnimationLogic$$ExternalSyntheticLambda3;-><init>(Lcom/android/quickstep/SwipeUpAnimationLogic;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 93
    return-void
.end method

.method private getWindowAnimationToHomeInternal(Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Landroid/graphics/RectF;Lcom/android/quickstep/util/TransformParams;Lcom/android/quickstep/util/TaskViewSimulator;Landroid/graphics/RectF;Landroid/graphics/Matrix;)Lcom/android/quickstep/util/RectFSpringAnim;
    .locals 15
    .param p1, "homeAnimationFactory"    # Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    .param p2, "targetRect"    # Landroid/graphics/RectF;
    .param p3, "transformParams"    # Lcom/android/quickstep/util/TransformParams;
    .param p4, "taskViewSimulator"    # Lcom/android/quickstep/util/TaskViewSimulator;
    .param p5, "startRect"    # Landroid/graphics/RectF;
    .param p6, "homeToWindowPositionMap"    # Landroid/graphics/Matrix;

    .line 266
    move-object v7, p0

    move-object/from16 v8, p5

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual/range {p4 .. p4}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 268
    .local v3, "cropRectF":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v9, v0

    .line 273
    .local v9, "windowToHomePositionMap":Landroid/graphics/Matrix;
    iget-object v0, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object v1, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    .line 274
    invoke-interface {v0, v8, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->fixBoundsForHomeAnimStartRect(Landroid/graphics/RectF;Lcom/android/launcher3/DeviceProfile;)V

    .line 276
    move-object/from16 v10, p6

    invoke-virtual {v10, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 277
    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 279
    new-instance v0, Lcom/android/quickstep/util/RectFSpringAnim;

    iget-object v1, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    move-object/from16 v11, p2

    invoke-direct {v0, v8, v11, v1, v2}, Lcom/android/quickstep/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)V

    move-object v12, v0

    .line 280
    .local v12, "anim":Lcom/android/quickstep/util/RectFSpringAnim;
    move-object/from16 v13, p1

    invoke-virtual {v13, v12}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->setAnimation(Lcom/android/quickstep/util/RectFSpringAnim;)V

    .line 282
    new-instance v14, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;-><init>(Lcom/android/quickstep/SwipeUpAnimationLogic;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Landroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/android/quickstep/util/TransformParams;Lcom/android/quickstep/util/TaskViewSimulator;)V

    .line 285
    .local v0, "runner":Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;
    invoke-virtual {v12, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 286
    invoke-virtual {v12, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->addOnUpdateListener(Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;)V

    .line 287
    return-object v12
.end method

.method static synthetic lambda$getRemoteTaskViewSimulators$1(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TaskViewSimulator;
    .locals 1
    .param p0, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 236
    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getRemoteTaskViewSimulators$2(I)[Lcom/android/quickstep/util/TaskViewSimulator;
    .locals 1
    .param p0, "x$0"    # I

    .line 237
    new-array v0, p0, [Lcom/android/quickstep/util/TaskViewSimulator;

    return-object v0
.end method


# virtual methods
.method protected createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;
    .locals 16
    .param p1, "startProgress"    # F
    .param p2, "homeAnimationFactory"    # Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    .line 248
    move-object/from16 v7, p0

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->getWindowTargetRect()Landroid/graphics/RectF;

    move-result-object v8

    .line 249
    .local v8, "targetRect":Landroid/graphics/RectF;
    iget-object v0, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v1, v0

    new-array v9, v1, [Lcom/android/quickstep/util/RectFSpringAnim;

    .line 250
    .local v9, "out":[Lcom/android/quickstep/util/RectFSpringAnim;
    array-length v0, v0

    new-array v10, v0, [Landroid/graphics/Matrix;

    .line 251
    .local v10, "homeToWindowPositionMap":[Landroid/graphics/Matrix;
    move/from16 v11, p1

    invoke-virtual {v7, v10, v11}, Lcom/android/quickstep/SwipeUpAnimationLogic;->updateProgressForStartRect([Landroid/graphics/Matrix;F)[Landroid/graphics/RectF;

    move-result-object v12

    .line 252
    .local v12, "startRects":[Landroid/graphics/RectF;
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v13, v1

    move v14, v0

    .line 253
    .end local v0    # "i":I
    .local v13, "mRemoteTargetHandlesLength":I
    .local v14, "i":I
    :goto_0
    if-ge v14, v13, :cond_0

    .line 254
    iget-object v0, v7, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v15, v0, v14

    .line 255
    .local v15, "remoteHandle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    nop

    .line 256
    invoke-virtual {v15}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v3

    .line 257
    invoke-virtual {v15}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v4

    aget-object v5, v12, v14

    aget-object v6, v10, v14

    .line 255
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/SwipeUpAnimationLogic;->getWindowAnimationToHomeInternal(Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Landroid/graphics/RectF;Lcom/android/quickstep/util/TransformParams;Lcom/android/quickstep/util/TaskViewSimulator;Landroid/graphics/RectF;Landroid/graphics/Matrix;)Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object v0

    aput-object v0, v9, v14

    .line 253
    .end local v15    # "remoteHandle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 259
    .end local v13    # "mRemoteTargetHandlesLength":I
    .end local v14    # "i":I
    :cond_0
    return-object v9
.end method

.method protected getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    .line 141
    return-object v0
.end method

.method protected getRemoteTaskViewSimulators()[Lcom/android/quickstep/util/TaskViewSimulator;
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/SwipeUpAnimationLogic$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/quickstep/SwipeUpAnimationLogic$$ExternalSyntheticLambda0;-><init>()V

    .line 236
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/SwipeUpAnimationLogic$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/quickstep/SwipeUpAnimationLogic$$ExternalSyntheticLambda1;-><init>()V

    .line 237
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/quickstep/util/TaskViewSimulator;

    .line 235
    return-object v0
.end method

.method protected initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V
    .locals 17
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    .line 97
    iget-object v2, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v2

    iget-object v3, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/quickstep/SwipeUpAnimationLogic;->TEMP_RECT:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 98
    invoke-virtual {v5}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v5

    .line 99
    invoke-virtual {v5}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v5

    .line 97
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/quickstep/BaseActivityInterface;->getSwipeUpDestinationAndLength(Lcom/android/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)I

    move-result v2

    iput v2, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    .line 100
    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v2, v2

    iget v3, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    .line 102
    iget-object v2, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v3, v2

    :goto_0
    if-ge v6, v3, :cond_0

    aget-object v4, v2, v6

    .line 103
    .local v4, "remoteHandle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    new-instance v5, Lcom/android/launcher3/anim/PendingAnimation;

    iget v7, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    mul-int/lit8 v7, v7, 0x2

    int-to-long v7, v7

    invoke-direct {v5, v7, v8}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 104
    .local v5, "pendingAnimation":Lcom/android/launcher3/anim/PendingAnimation;
    invoke-virtual {v4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v7

    .line 105
    .local v7, "taskViewSimulator":Lcom/android/quickstep/util/TaskViewSimulator;
    invoke-virtual {v7, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    .line 106
    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v5, v8}, Lcom/android/quickstep/util/TaskViewSimulator;->addAppToOverviewAnim(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/TimeInterpolator;)V

    .line 107
    nop

    .line 108
    invoke-virtual {v5}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v8

    .line 110
    .local v8, "playbackController":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    iget-object v10, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {v7}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v11

    iget-object v12, v0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-object v13, v7, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    sget-object v14, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    iget-object v15, v7, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewSecondaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    sget-object v16, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    .line 110
    move-object v9, v8

    invoke-static/range {v9 .. v16}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->createForRecents(Lcom/android/launcher3/anim/AnimatorPlaybackController;Landroid/content/Context;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/DeviceProfile;Ljava/lang/Object;Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/util/FloatProperty;)Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->setPlaybackController(Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V

    .line 102
    .end local v4    # "remoteHandle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .end local v5    # "pendingAnimation":Lcom/android/launcher3/anim/PendingAnimation;
    .end local v7    # "taskViewSimulator":Lcom/android/quickstep/util/TaskViewSimulator;
    .end local v8    # "playbackController":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method synthetic lambda$new$0$com-android-quickstep-SwipeUpAnimationLogic(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 3
    .param p1, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 89
    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 90
    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RotationTouchHelper;->getCurrentActiveRotation()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 91
    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v2

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/util/RecentsOrientedState;->update(II)Z

    return-void
.end method

.method protected runActionOnRemoteHandles(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;",
            ">;)V"
        }
    .end annotation

    .line 228
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;>;"
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 229
    .local v3, "handle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 228
    .end local v3    # "handle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method public updateDisplacement(F)V
    .locals 3
    .param p1, "displacement"    # F

    .line 121
    neg-float p1, p1

    .line 123
    iget v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    mul-float/2addr v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 124
    iget v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDragLengthFactor:F

    .local v0, "shift":F
    goto :goto_0

    .line 126
    .end local v0    # "shift":F
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 127
    .local v1, "translation":F
    iget v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mTransitionDragLength:I

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-float v0, v2

    div-float v0, v1, v0

    .line 130
    .end local v1    # "translation":F
    .restart local v0    # "shift":F
    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .line 131
    return-void
.end method

.method public abstract updateFinalShift()V
.end method

.method protected updateProgressForStartRect([Landroid/graphics/Matrix;F)[Landroid/graphics/RectF;
    .locals 7
    .param p1, "outMatrix"    # [Landroid/graphics/Matrix;
    .param p2, "startProgress"    # F

    .line 210
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v0, p2}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .line 211
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v1, v0

    new-array v1, v1, [Landroid/graphics/RectF;

    .line 212
    .local v1, "startRects":[Landroid/graphics/RectF;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v0

    .line 213
    .local v0, "mRemoteTargetHandlesLength":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 214
    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v3, v3, v2

    .line 215
    .local v3, "remoteHandle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    invoke-virtual {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v4

    .line 216
    .local v4, "tvs":Lcom/android/quickstep/util/TaskViewSimulator;
    invoke-virtual {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/quickstep/util/TransformParams;->setProgress(F)Lcom/android/quickstep/util/TransformParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    .line 218
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v5, v1, v2

    .line 219
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    aput-object v5, p1, v2

    .line 220
    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    .line 221
    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 213
    .end local v3    # "remoteHandle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .end local v4    # "tvs":Lcom/android/quickstep/util/TaskViewSimulator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "mRemoteTargetHandlesLength":I
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method
