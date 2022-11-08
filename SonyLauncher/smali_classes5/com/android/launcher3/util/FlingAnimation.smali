.class public Lcom/android/launcher3/util/FlingAnimation;
.super Ljava/lang/Object;
.source "FlingAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static final DRAG_END_DELAY:I = 0x12c

.field private static final MAX_ACCELERATION:F = 0.5f


# instance fields
.field protected mAX:F

.field protected mAY:F

.field protected final mAlphaInterpolator:Landroid/animation/TimeInterpolator;

.field protected mAnimationTimeFraction:F

.field protected final mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field protected final mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field protected final mDragOptions:Lcom/android/launcher3/dragndrop/DragOptions;

.field private final mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

.field protected mDuration:I

.field protected mFrom:Landroid/graphics/RectF;

.field protected mIconRect:Landroid/graphics/Rect;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field protected final mUX:F

.field protected final mUY:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 2
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "vel"    # Landroid/graphics/PointF;
    .param p3, "dropTarget"    # Lcom/android/launcher3/ButtonDropTarget;
    .param p4, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p5, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    .line 48
    iput-object p3, p0, Lcom/android/launcher3/util/FlingAnimation;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    .line 49
    iput-object p4, p0, Lcom/android/launcher3/util/FlingAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 50
    iput-object p1, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 51
    iget v0, p2, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    .line 52
    iget v0, p2, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    .line 53
    invoke-virtual {p4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 54
    iput-object p5, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    .line 55
    return-void
.end method


# virtual methods
.method protected initFlingLeftDuration()I
    .locals 9

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    neg-float v0, v0

    .line 149
    .local v0, "sX":F
    iget v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    mul-float v2, v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v0, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 150
    .local v2, "d":F
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    .line 152
    iput v5, p0, Lcom/android/launcher3/util/FlingAnimation;->mAX:F

    goto :goto_0

    .line 155
    :cond_0
    const/4 v2, 0x0

    .line 156
    mul-float v4, v1, v1

    neg-float v5, v0

    mul-float/2addr v5, v3

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/util/FlingAnimation;->mAX:F

    .line 158
    :goto_0
    neg-float v1, v1

    float-to-double v3, v1

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    iget v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mAX:F

    float-to-double v5, v1

    div-double/2addr v3, v5

    .line 160
    .local v3, "t":D
    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    neg-float v1, v1

    iget-object v5, p0, Lcom/android/launcher3/util/FlingAnimation;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    add-float/2addr v1, v5

    .line 163
    .local v1, "sY":F
    float-to-double v5, v1

    iget v7, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    float-to-double v7, v7

    mul-double/2addr v7, v3

    sub-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    mul-double v7, v3, v3

    div-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, p0, Lcom/android/launcher3/util/FlingAnimation;->mAY:F

    .line 164
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    return v5
.end method

.method protected initFlingUpDuration()I
    .locals 9

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    neg-float v0, v0

    .line 121
    .local v0, "sY":F
    iget v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    mul-float v2, v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v0, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 122
    .local v2, "d":F
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    .line 124
    iput v5, p0, Lcom/android/launcher3/util/FlingAnimation;->mAY:F

    goto :goto_0

    .line 127
    :cond_0
    const/4 v2, 0x0

    .line 128
    mul-float v4, v1, v1

    neg-float v5, v0

    mul-float/2addr v5, v3

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/util/FlingAnimation;->mAY:F

    .line 130
    :goto_0
    neg-float v1, v1

    float-to-double v3, v1

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    iget v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mAY:F

    float-to-double v5, v1

    div-double/2addr v3, v5

    .line 132
    .local v3, "t":D
    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    neg-float v1, v1

    iget-object v5, p0, Lcom/android/launcher3/util/FlingAnimation;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    add-float/2addr v1, v5

    .line 135
    .local v1, "sX":F
    float-to-double v5, v1

    iget v7, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    float-to-double v7, v7

    mul-double/2addr v7, v3

    sub-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    mul-double v7, v3, v3

    div-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, p0, Lcom/android/launcher3/util/FlingAnimation;->mAX:F

    .line 136
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    return v5
.end method

.method synthetic lambda$run$0$com-android-launcher3-util-FlingAnimation()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 107
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 169
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 170
    .local v0, "t":F
    iget v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mAnimationTimeFraction:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 171
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 173
    :cond_0
    div-float/2addr v0, v1

    .line 175
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dragndrop/DragView;

    .line 176
    .local v1, "dragView":Lcom/android/launcher3/dragndrop/DragView;
    iget v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mDuration:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    .line 177
    .local v2, "time":F
    iget v3, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/util/FlingAnimation;->mAX:F

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/android/launcher3/dragndrop/DragView;->setTranslationX(F)V

    .line 178
    iget v3, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/util/FlingAnimation;->mAY:F

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/android/launcher3/dragndrop/DragView;->setTranslationY(F)V

    .line 179
    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/android/launcher3/util/FlingAnimation;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v4, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/android/launcher3/dragndrop/DragView;->setAlpha(F)V

    .line 180
    return-void
.end method

.method public run()V
    .locals 9

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->getIconRect(Lcom/android/launcher3/DropTarget$DragObject;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mIconRect:Landroid/graphics/Rect;

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->cancelAnimation()V

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->requestLayout()V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 65
    .local v0, "from":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 67
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/RectF;

    .line 68
    iget-object v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 69
    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->getScaleX()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget-object v5, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 70
    invoke-virtual {v5}, Lcom/android/launcher3/dragndrop/DragView;->getScaleY()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    div-float/2addr v3, v4

    .line 68
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 71
    iget v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/util/FlingAnimation;->initFlingUpDuration()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/util/FlingAnimation;->initFlingLeftDuration()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mDuration:I

    .line 73
    int-to-float v2, v1

    add-int/lit16 v3, v1, 0x12c

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mAnimationTimeFraction:F

    .line 75
    add-int/lit16 v1, v1, 0x12c

    .line 76
    .local v1, "duration":I
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 83
    .local v2, "startTime":J
    new-instance v4, Lcom/android/launcher3/util/FlingAnimation$1;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/android/launcher3/util/FlingAnimation$1;-><init>(Lcom/android/launcher3/util/FlingAnimation;JI)V

    .line 100
    .local v4, "tInterpolator":Landroid/animation/TimeInterpolator;
    iget-object v5, p0, Lcom/android/launcher3/util/FlingAnimation;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v6, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v7, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/ButtonDropTarget;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 101
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 102
    .local v5, "anim":Landroid/animation/ValueAnimator;
    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    invoke-virtual {v5, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 104
    new-instance v6, Lcom/android/launcher3/util/FlingAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/launcher3/util/FlingAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/FlingAnimation;)V

    invoke-static {v6}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 108
    iget-object v6, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v7, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Lcom/android/launcher3/dragndrop/DragLayer;->playDropAnimation(Lcom/android/launcher3/dragndrop/DragView;Landroid/animation/Animator;I)V

    .line 109
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
