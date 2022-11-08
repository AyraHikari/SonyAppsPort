.class public Lcom/android/quickstep/interaction/NavBarGestureHandler;
.super Ljava/lang/Object;
.source "NavBarGestureHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;
.implements Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener;,
        Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;,
        Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NavBarGestureHandler"

.field private static final RETRACT_GESTURE_ANIMATION_DURATION_MS:J = 0x12cL


# instance fields
.field private final mAssistantAngleThreshold:I

.field private mAssistantDistance:F

.field private final mAssistantDragDistThreshold:F

.field private mAssistantDragStartTime:J

.field private final mAssistantFlingDistThreshold:F

.field private mAssistantGestureActive:Z

.field private final mAssistantGestureDetector:Landroid/view/GestureDetector;

.field private mAssistantLastProgress:F

.field private final mAssistantLeftRegion:Landroid/graphics/RectF;

.field private final mAssistantRightRegion:Landroid/graphics/RectF;

.field private final mAssistantSquaredSlop:F

.field private final mAssistantStartDragPos:Landroid/graphics/PointF;

.field private mAssistantTimeFraction:F

.field private final mAssistantTimeThreshold:J

.field private final mBottomGestureHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mDownPos:Landroid/graphics/PointF;

.field private mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

.field private final mLastPos:Landroid/graphics/PointF;

.field private mLaunchedAssistant:Z

.field private final mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

.field private mPassedAssistantSlop:Z

.field private final mSwipeUpTouchTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

.field private mTouchCameFromAssistantCorner:Z

.field private mTouchCameFromNavBar:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAssistantDistance(Lcom/android/quickstep/interaction/NavBarGestureHandler;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantDistance:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAssistantFlingDistThreshold(Lcom/android/quickstep/interaction/NavBarGestureHandler;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantFlingDistThreshold:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGestureCallback(Lcom/android/quickstep/interaction/NavBarGestureHandler;)Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLaunchedAssistant(Lcom/android/quickstep/interaction/NavBarGestureHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLaunchedAssistant:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchCameFromAssistantCorner(Lcom/android/quickstep/interaction/NavBarGestureHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mTouchCameFromAssistantCorner:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAssistantLastProgress(Lcom/android/quickstep/interaction/NavBarGestureHandler;F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantLastProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$misValidAssistantGestureAngle(Lcom/android/quickstep/interaction/NavBarGestureHandler;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->isValidAssistantGestureAngle(FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartAssistant(Lcom/android/quickstep/interaction/NavBarGestureHandler;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->startAssistant(Landroid/graphics/PointF;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iput-object v8, v6, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 70
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, v6, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantLeftRegion:Landroid/graphics/RectF;

    .line 71
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    iput-object v10, v6, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantRightRegion:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, v6, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantStartDragPos:Landroid/graphics/PointF;

    .line 77
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, v6, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDownPos:Landroid/graphics/PointF;

    .line 78
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, v6, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    .line 93
    iput-object v7, v6, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v11

    .line 95
    .local v11, "display":Landroid/view/Display;
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v12

    .line 96
    .local v12, "displayInfo":Lcom/android/launcher3/util/DisplayController$Info;
    iget v13, v12, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    .line 97
    .local v13, "displayRotation":I
    iget-object v14, v12, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    .line 98
    .local v14, "currentSize":Landroid/graphics/Point;
    iget v0, v14, Landroid/graphics/Point;->x:I

    iget v1, v14, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 99
    new-instance v15, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    new-instance v3, Lcom/android/quickstep/util/NavBarPosition;

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    invoke-direct {v3, v0, v13}, Lcom/android/quickstep/util/NavBarPosition;-><init>(Lcom/android/launcher3/util/DisplayController$NavigationMode;I)V

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;-><init>(Landroid/content/Context;ZLcom/android/quickstep/util/NavBarPosition;Ljava/lang/Runnable;Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;)V

    iput-object v15, v6, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mSwipeUpTouchTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    .line 103
    new-instance v0, Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-direct {v0, v7}, Lcom/android/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    .local v0, "resources":Landroid/content/res/Resources;
    nop

    .line 107
    const-string v1, "navigation_bar_gesture_height"

    invoke-static {v1, v0}, Lcom/android/launcher3/ResourceUtils;->getNavbarSize(Ljava/lang/String;Landroid/content/res/Resources;)I

    move-result v1

    iput v1, v6, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mBottomGestureHeight:I

    .line 108
    sget v2, Lcom/android/launcher3/R$dimen;->gestures_assistant_drag_threshold:I

    .line 109
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, v6, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantDragDistThreshold:F

    .line 110
    sget v2, Lcom/android/launcher3/R$dimen;->gestures_assistant_fling_threshold:I

    .line 111
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, v6, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantFlingDistThreshold:F

    .line 112
    sget v2, Lcom/android/launcher3/R$integer;->assistant_gesture_min_time_threshold:I

    .line 113
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v6, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantTimeThreshold:J

    .line 114
    sget v2, Lcom/android/launcher3/R$integer;->assistant_gesture_corner_deg_threshold:I

    .line 115
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v6, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantAngleThreshold:I

    .line 117
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener;

    invoke-direct {v3, v6, v4}, Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener;-><init>(Lcom/android/quickstep/interaction/NavBarGestureHandler;Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener-IA;)V

    invoke-direct {v2, v7, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, v6, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantGestureDetector:Landroid/view/GestureDetector;

    .line 118
    sget v2, Lcom/android/launcher3/R$dimen;->gestures_assistant_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 119
    .local v2, "assistantWidth":I
    int-to-float v1, v1

    .line 120
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v3

    .line 119
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 121
    .local v1, "assistantHeight":F
    iget v3, v8, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iput v3, v10, Landroid/graphics/RectF;->bottom:F

    iput v3, v9, Landroid/graphics/RectF;->bottom:F

    .line 122
    iget v3, v8, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iput v3, v10, Landroid/graphics/RectF;->top:F

    iput v3, v9, Landroid/graphics/RectF;->top:F

    .line 123
    const/4 v3, 0x0

    iput v3, v9, Landroid/graphics/RectF;->left:F

    .line 124
    int-to-float v3, v2

    iput v3, v9, Landroid/graphics/RectF;->right:F

    .line 125
    iget v3, v8, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iput v3, v10, Landroid/graphics/RectF;->right:F

    .line 126
    iget v3, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    iput v3, v10, Landroid/graphics/RectF;->left:F

    .line 127
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    .line 128
    .local v3, "slop":F
    mul-float v4, v3, v3

    iput v4, v6, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantSquaredSlop:F

    .line 129
    return-void
.end method

.method private isValidAssistantGestureAngle(FF)Z
    .locals 4
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 270
    float-to-double v0, p2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 274
    .local v0, "angle":F
    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    const/high16 v2, 0x43340000    # 180.0f

    sub-float/2addr v2, v0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    move v0, v2

    .line 275
    iget v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantAngleThreshold:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private startAssistant(Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "velocity"    # Landroid/graphics/PointF;

    .line 292
    iget-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    if-eqz v0, :cond_0

    .line 293
    sget-object v1, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ASSISTANT_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    invoke-interface {v0, v1, p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V

    .line 295
    :cond_0
    sget-object v0, Lcom/android/quickstep/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/VibratorWrapper;

    sget-object v1, Lcom/android/quickstep/util/VibratorWrapper;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLaunchedAssistant:Z

    .line 297
    return-void
.end method

.method private updateAssistantProgress()V
    .locals 5

    .line 279
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLaunchedAssistant:Z

    if-nez v0, :cond_1

    .line 280
    iget v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantDistance:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantDragDistThreshold:F

    div-float/2addr v0, v2

    .line 281
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantTimeFraction:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantLastProgress:F

    .line 283
    iget v3, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantDistance:F

    iget v4, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantDragDistThreshold:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_0

    .line 284
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->startAssistant(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    if-eqz v1, :cond_1

    .line 286
    invoke-interface {v1, v0}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->setAssistantProgress(F)V

    .line 289
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onTouch$0$com-android-quickstep-interaction-NavBarGestureHandler(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 231
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 232
    .local v0, "progress":F
    iget-object v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    invoke-interface {v1, v0}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->setAssistantProgress(F)V

    .line 233
    return-void
.end method

.method onInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 251
    iget-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantLeftRegion:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantRightRegion:Landroid/graphics/RectF;

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mBottomGestureHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 251
    :goto_1
    return v0
.end method

.method public onMotionPauseChanged(Z)V
    .locals 1
    .param p1, "isPaused"    # Z

    .line 258
    iget-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    invoke-interface {v0, p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->onMotionPaused(Z)V

    .line 259
    return-void
.end method

.method public onMotionPauseDetected()V
    .locals 2

    .line 263
    sget-object v0, Lcom/android/quickstep/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/VibratorWrapper;

    sget-object v1, Lcom/android/quickstep/util/VibratorWrapper;->OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 264
    return-void
.end method

.method public onSwipeUp(ZLandroid/graphics/PointF;)V
    .locals 2
    .param p1, "wasFling"    # Z
    .param p2, "finalVelocity"    # Landroid/graphics/PointF;

    .line 141
    iget-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantGestureActive:Z

    if-eqz v1, :cond_0

    goto :goto_3

    .line 144
    :cond_0
    iget-boolean v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mTouchCameFromNavBar:Z

    if-eqz v1, :cond_2

    .line 145
    if-eqz p1, :cond_1

    .line 146
    sget-object v1, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_GESTURE_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->OVERVIEW_GESTURE_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    .line 145
    :goto_0
    invoke-interface {v0, v1, p2}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V

    goto :goto_2

    .line 148
    :cond_2
    if-eqz p1, :cond_3

    .line 149
    sget-object v1, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->OVERVIEW_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    .line 148
    :goto_1
    invoke-interface {v0, v1, p2}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V

    .line 152
    :goto_2
    return-void

    .line 142
    :cond_4
    :goto_3
    return-void
.end method

.method public onSwipeUpCancelled()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantGestureActive:Z

    if-nez v1, :cond_0

    .line 157
    sget-object v1, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_OR_OVERVIEW_CANCELLED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V

    .line 159
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 163
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 164
    .local v0, "action":I
    iget-object v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mSwipeUpTouchTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    invoke-virtual {v1}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->interceptedTouch()Z

    move-result v1

    .line 165
    .local v1, "intercepted":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 184
    :pswitch_0
    iget-object v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 185
    iget-boolean v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantGestureActive:Z

    if-nez v5, :cond_0

    .line 186
    goto/16 :goto_3

    .line 189
    :cond_0
    iget-boolean v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mPassedAssistantSlop:Z

    if-nez v5, :cond_1

    .line 191
    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDownPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v5

    iget-object v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDownPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-static {v2, v5}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v2

    iget v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantSquaredSlop:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_8

    .line 194
    iput-boolean v3, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mPassedAssistantSlop:Z

    .line 195
    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantStartDragPos:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantDragStartTime:J

    .line 198
    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDownPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v5

    iget-object v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDownPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-direct {p0, v2, v5}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->isValidAssistantGestureAngle(FF)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantGestureActive:Z

    .line 200
    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    if-eqz v2, :cond_8

    .line 201
    sget-object v5, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ASSISTANT_NOT_STARTED_BAD_ANGLE:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    invoke-interface {v2, v5, v6}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V

    goto/16 :goto_3

    .line 207
    :cond_1
    iget-object v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantStartDragPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    iget-object v7, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantStartDragPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantDistance:F

    .line 209
    cmpl-float v2, v5, v2

    if-ltz v2, :cond_8

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantDragStartTime:J

    sub-long/2addr v5, v7

    .line 211
    .local v5, "diff":J
    long-to-float v2, v5

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v2, v7

    iget-wide v8, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantTimeThreshold:J

    long-to-float v8, v8

    div-float/2addr v2, v8

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantTimeFraction:F

    .line 212
    invoke-direct {p0}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->updateAssistantProgress()V

    .line 213
    .end local v5    # "diff":J
    goto/16 :goto_3

    .line 218
    :pswitch_1
    iget-object v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v5}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    .line 219
    iget-object v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    if-eqz v5, :cond_2

    if-nez v1, :cond_2

    iget-boolean v6, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mTouchCameFromNavBar:Z

    if-eqz v6, :cond_2

    .line 220
    sget-object v2, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_OR_OVERVIEW_NOT_STARTED_WRONG_SWIPE_DIRECTION:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    invoke-interface {v5, v2, v6}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V

    .line 222
    const/4 v1, 0x1

    .line 223
    goto/16 :goto_3

    .line 225
    :cond_2
    iget-boolean v6, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantGestureActive:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLaunchedAssistant:Z

    if-nez v6, :cond_3

    if-eqz v5, :cond_3

    .line 226
    sget-object v6, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ASSISTANT_NOT_STARTED_SWIPE_TOO_SHORT:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    invoke-interface {v5, v6, v7}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V

    .line 228
    const/4 v5, 0x2

    new-array v5, v5, [F

    iget v6, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantLastProgress:F

    aput v6, v5, v4

    aput v2, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v5, 0x12c

    .line 229
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 230
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v5, Lcom/android/quickstep/interaction/NavBarGestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/quickstep/interaction/NavBarGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/interaction/NavBarGestureHandler;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 234
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 235
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 237
    .end local v2    # "animator":Landroid/animation/ValueAnimator;
    :cond_3
    iput-boolean v4, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mPassedAssistantSlop:Z

    goto/16 :goto_3

    .line 167
    :pswitch_2
    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 168
    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v2, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 169
    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantLeftRegion:Landroid/graphics/RectF;

    .line 170
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantRightRegion:Landroid/graphics/RectF;

    .line 171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    :goto_0
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mTouchCameFromAssistantCorner:Z

    .line 172
    iput-boolean v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantGestureActive:Z

    .line 173
    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDownPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mBottomGestureHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_6

    move v2, v3

    goto :goto_2

    :cond_6
    move v2, v4

    :goto_2
    iput-boolean v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mTouchCameFromNavBar:Z

    .line 175
    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    if-eqz v2, :cond_7

    .line 176
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->setNavBarGestureProgress(Ljava/lang/Float;)V

    .line 178
    :cond_7
    iput-boolean v4, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLaunchedAssistant:Z

    .line 179
    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mSwipeUpTouchTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    invoke-virtual {v2}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->init()V

    .line 180
    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v2}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    .line 181
    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v2, p0}, Lcom/android/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    .line 182
    nop

    .line 240
    :cond_8
    :goto_3
    iget-boolean v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mTouchCameFromNavBar:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    if-eqz v2, :cond_9

    .line 241
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDownPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->setNavBarGestureProgress(Ljava/lang/Float;)V

    .line 243
    :cond_9
    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mSwipeUpTouchTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    invoke-virtual {v2, p2}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 244
    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 245
    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v2, p2}, Lcom/android/quickstep/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;)V

    .line 246
    iget-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    iget-object v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mBottomGestureHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_a

    goto :goto_4

    :cond_a
    move v3, v4

    :goto_4
    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/MotionPauseDetector;->setDisallowPause(Z)V

    .line 247
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method registerNavBarGestureAttemptCallback(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    .line 132
    iput-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    .line 133
    return-void
.end method

.method unregisterNavBarGestureAttemptCallback()V
    .locals 1

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    .line 137
    return-void
.end method
