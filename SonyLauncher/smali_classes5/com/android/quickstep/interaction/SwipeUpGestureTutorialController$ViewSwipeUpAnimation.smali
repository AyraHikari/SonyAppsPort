.class Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;
.super Lcom/android/quickstep/SwipeUpAnimationLogic;
.source "SwipeUpGestureTutorialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewSwipeUpAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/GestureState;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;
    .param p4, "gestureState"    # Lcom/android/quickstep/GestureState;

    .line 279
    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    .line 280
    invoke-direct {p0, p2, p3, p4}, Lcom/android/quickstep/SwipeUpAnimationLogic;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/GestureState;)V

    .line 281
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    new-instance v1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    iget-object v2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 282
    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    new-instance v4, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$FakeTransformParams-IA;)V

    invoke-direct {v1, v2, v4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;-><init>(Lcom/android/quickstep/util/TaskViewSimulator;Lcom/android/quickstep/util/TransformParams;)V

    aput-object v1, v0, v3

    .line 285
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->mTargetGluer:Lcom/android/quickstep/RemoteTargetGluer;

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer;->getRemoteTargetHandles()[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 288
    .local v2, "handle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    invoke-virtual {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v4

    .line 289
    invoke-virtual {v4}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v4

    .line 290
    invoke-virtual {v4}, Lcom/android/quickstep/util/RecentsOrientedState;->ignoreAllowHomeRotationPreference()V

    .line 285
    .end local v2    # "handle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;)Lcom/android/launcher3/DeviceProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    .line 276
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->mDp:Lcom/android/launcher3/DeviceProfile;

    return-object v0
.end method


# virtual methods
.method getCurrentShift()Lcom/android/quickstep/AnimatedFloat;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    return-object v0
.end method

.method handleSwipeUpToHome(Landroid/graphics/PointF;)Lcom/android/quickstep/util/RectFSpringAnim;
    .locals 11
    .param p1, "velocity"    # Landroid/graphics/PointF;

    .line 313
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 314
    .local v0, "velocityPxPerMs":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 315
    .local v1, "currentShift":F
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->mContext:Landroid/content/Context;

    .line 316
    invoke-static {v3}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->mTransitionDragLength:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    iget v3, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->mDragLengthFactor:F

    .line 315
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    .line 317
    .local v2, "startShift":F
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->mTransitionDragLength:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    .line 322
    .local v3, "distanceToTravel":F
    iget v4, v0, Landroid/graphics/PointF;->y:F

    div-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-long v4, v4

    .line 323
    .local v4, "baseDuration":J
    const-wide/16 v6, 0x2

    mul-long/2addr v6, v4

    const-wide/16 v8, 0x15e

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 324
    .local v6, "duration":J
    new-instance v8, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;

    invoke-direct {v8, p0, v6, v7}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;J)V

    .line 359
    .local v8, "homeAnimFactory":Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    invoke-virtual {p0, v2, v8}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->createWindowAnimationToHome(FLcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;)[Lcom/android/quickstep/util/RectFSpringAnim;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    .line 361
    .local v9, "windowAnim":Lcom/android/quickstep/util/RectFSpringAnim;
    iget-object v10, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->start(Landroid/content/Context;Landroid/graphics/PointF;)V

    .line 362
    return-object v9
.end method

.method initDp(Lcom/android/launcher3/DeviceProfile;)V
    .locals 5
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    .line 296
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v4, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 297
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    .line 296
    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreviewBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 298
    return-void
.end method

.method public updateFinalShift()V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getPlaybackController()Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->mCurrentShift:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget v3, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->mDragLengthFactor:F

    .line 303
    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->setProgress(FF)V

    .line 304
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v2, v1

    .line 305
    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    .line 304
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    .line 306
    return-void
.end method
