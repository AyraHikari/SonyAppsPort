.class public abstract Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskViewTouchController.java"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        ">",
        "Landroid/animation/AnimatorListenerAdapter;",
        "Lcom/android/launcher3/util/TouchController;",
        "Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;"
    }
.end annotation


# static fields
.field private static final ANIMATION_PROGRESS_FRACTION_MIDPOINT:F = 0.5f

.field private static final MAX_TASK_DISMISS_ANIMATION_DURATION:J = 0x258L

.field private static final MIN_TASK_DISMISS_ANIMATION_DURATION:J = 0x12cL

.field public static final TASK_DISMISS_VIBRATION_FALLBACK:Landroid/os/VibrationEffect;

.field public static final TASK_DISMISS_VIBRATION_PRIMITIVE:I

.field public static final TASK_DISMISS_VIBRATION_PRIMITIVE_SCALE:F = 1.0f


# instance fields
.field protected final mActivity:Lcom/android/launcher3/BaseDraggingActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mAllowGoingDown:Z

.field private mAllowGoingUp:Z

.field private mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private mCurrentAnimationIsGoingUp:Z

.field private final mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

.field private mDisplacementShift:F

.field private mEndDisplacement:F

.field private mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

.field private mIsDismissHapticRunning:Z

.field private final mIsRtl:Z

.field private mNoIntercept:Z

.field private mOverrideVelocity:Ljava/lang/Float;

.field private mProgressMultiplier:F

.field private final mRecentsView:Lcom/android/quickstep/views/RecentsView;

.field private mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

.field private final mTempCords:[I


# direct methods
.method public static synthetic $r8$lambda$Ja_Yqyl9PP4YeC53fimSUxLy-74(Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->clearState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    sput v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->TASK_DISMISS_VIBRATION_PRIMITIVE:I

    .line 63
    sget-object v0, Lcom/android/quickstep/util/VibratorWrapper;->EFFECT_TEXTURE_TICK:Landroid/os/VibrationEffect;

    sput-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->TASK_DISMISS_VIBRATION_FALLBACK:Landroid/os/VibrationEffect;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;, "Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController<TT;>;"
    .local p1, "activity":Lcom/android/launcher3/BaseDraggingActivity;, "TT;"
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTempCords:[I

    .line 82
    new-instance v0, Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-direct {v0}, Lcom/android/launcher3/util/FlingBlockCheck;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mOverrideVelocity:Ljava/lang/Float;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsDismissHapticRunning:Z

    .line 90
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 91
    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 92
    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsRtl:Z

    .line 93
    nop

    .line 94
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getUpDownSwipeDirection()Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    move-result-object v0

    .line 95
    .local v0, "dir":Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;
    new-instance v1, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-direct {v1, p1, p0, v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    .line 96
    return-void
.end method

.method private canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 99
    .local p0, "this":Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;, "Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 105
    :cond_0
    return v1

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->forceFinishIfCloseToEnd()V

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_3

    .line 112
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    const v2, 0x7fcbf

    invoke-static {v0, v2}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 115
    return v1

    .line 117
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->isRecentsInteractive()Z

    move-result v0

    return v0
.end method

.method private clearState()V
    .locals 2

    .line 378
    .local p0, "this":Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;, "Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->finishedScrolling()V

    .line 379
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    .line 381
    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 382
    iput-boolean v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsDismissHapticRunning:Z

    .line 383
    return-void
.end method

.method private reInitAnimationController(Z)V
    .locals 18
    .param p1, "goingUp"    # Z

    .line 212
    .local p0, "this":Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;, "Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v2, :cond_0

    iget-boolean v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    if-ne v3, v1, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    if-eqz v1, :cond_1

    iget-boolean v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mAllowGoingUp:Z

    if-eqz v3, :cond_2

    :cond_1
    if-nez v1, :cond_3

    iget-boolean v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mAllowGoingDown:Z

    if-nez v3, :cond_3

    .line 218
    :cond_2
    return-void

    .line 220
    :cond_3
    if-eqz v2, :cond_4

    .line 221
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 222
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 223
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 226
    :cond_4
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    .line 227
    .local v2, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    iput-boolean v1, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    .line 228
    iget-object v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    .line 229
    .local v3, "dl":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-interface {v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryDimension(Landroid/view/View;)I

    move-result v4

    .line 230
    .local v4, "secondaryLayerDimension":I
    mul-int/lit8 v5, v4, 0x2

    int-to-long v13, v5

    .line 231
    .local v13, "maxDuration":J
    iget-boolean v5, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsRtl:Z

    invoke-interface {v2, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getTaskDragDisplacementFactor(Z)I

    move-result v5

    .line 232
    .local v5, "verticalFactor":I
    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-interface {v2, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryDimension(Landroid/view/View;)I

    move-result v15

    .line 237
    .local v15, "secondaryTaskDimension":I
    if-eqz v1, :cond_5

    .line 238
    sget-object v16, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 239
    .local v16, "currentInterpolator":Landroid/view/animation/Interpolator;
    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v12, 0x0

    move-wide v10, v13

    invoke-virtual/range {v6 .. v12}, Lcom/android/quickstep/views/RecentsView;->createTaskDismissAnimation(Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v6

    .line 243
    .local v6, "pa":Lcom/android/launcher3/anim/PendingAnimation;
    neg-int v7, v15

    int-to-float v7, v7

    iput v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mEndDisplacement:F

    move-object/from16 v7, v16

    goto :goto_0

    .line 245
    .end local v6    # "pa":Lcom/android/launcher3/anim/PendingAnimation;
    .end local v16    # "currentInterpolator":Landroid/view/animation/Interpolator;
    :cond_5
    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->ZOOM_IN:Landroid/view/animation/Interpolator;

    .line 246
    .local v6, "currentInterpolator":Landroid/view/animation/Interpolator;
    iget-object v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v8, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v7, v8, v13, v14, v6}, Lcom/android/quickstep/views/RecentsView;->createTaskLaunchAnimation(Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v7

    .line 250
    .local v7, "pa":Lcom/android/launcher3/anim/PendingAnimation;
    iget-object v8, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v8}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v8

    .line 251
    .local v8, "thumbnailView":Landroid/view/View;
    iget-object v9, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTempCords:[I

    invoke-interface {v2, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryDimension(Landroid/view/View;)I

    move-result v10

    const/4 v11, 0x1

    aput v10, v9, v11

    .line 252
    iget-object v9, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTempCords:[I

    invoke-virtual {v3, v8, v9}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 253
    iget-object v9, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTempCords:[I

    aget v9, v9, v11

    sub-int v9, v4, v9

    int-to-float v9, v9

    iput v9, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mEndDisplacement:F

    move-object/from16 v17, v7

    move-object v7, v6

    move-object/from16 v6, v17

    .line 255
    .end local v8    # "thumbnailView":Landroid/view/View;
    .local v6, "pa":Lcom/android/launcher3/anim/PendingAnimation;
    .local v7, "currentInterpolator":Landroid/view/animation/Interpolator;
    :goto_0
    iget v8, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mEndDisplacement:F

    int-to-float v9, v5

    mul-float/2addr v8, v9

    iput v8, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mEndDisplacement:F

    .line 256
    invoke-virtual {v6}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v8

    iput-object v8, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 260
    invoke-virtual {v8}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 261
    iget-object v8, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->onUserControlledAnimationCreated(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    .line 262
    iget-object v8, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v8}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 263
    iget-object v8, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v8}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 264
    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mEndDisplacement:F

    div-float/2addr v8, v9

    iput v8, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mProgressMultiplier:F

    .line 265
    return-void
.end method


# virtual methods
.method protected abstract isRecentsInteractive()Z
.end method

.method protected abstract isRecentsModal()Z
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 130
    .local p0, "this":Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;, "Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->clearState()V

    .line 133
    :cond_0
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 137
    .local p0, "this":Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;, "Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v0, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->clearState()V

    .line 141
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_b

    .line 142
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mNoIntercept:Z

    .line 143
    if-eqz v0, :cond_2

    .line 144
    return v3

    .line 149
    :cond_2
    const/4 v0, 0x0

    .line 150
    .local v0, "directionsToDetectScroll":I
    const/4 v4, 0x0

    .line 151
    .local v4, "ignoreSlopWhenSettling":Z
    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v5, :cond_3

    .line 152
    const/4 v0, 0x3

    .line 153
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 155
    :cond_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    .line 157
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v7}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 158
    iget-object v7, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v7, v6}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v7

    .line 160
    .local v7, "view":Lcom/android/quickstep/views/TaskView;
    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v8, v7}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v8}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v8

    .line 161
    invoke-virtual {v8, v7, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 163
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->isRecentsModal()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 164
    iput-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    .line 165
    goto :goto_3

    .line 167
    :cond_4
    iput-object v7, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    .line 168
    iget-object v5, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v5

    iget-boolean v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsRtl:Z

    .line 169
    invoke-interface {v5, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getUpDirection(Z)I

    move-result v5

    .line 172
    .local v5, "upDirection":I
    iput-boolean v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mAllowGoingUp:Z

    .line 179
    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v8}, Lcom/android/quickstep/views/RecentsView;->getCurrentPage()I

    move-result v8

    if-ne v6, v8, :cond_6

    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 180
    invoke-static {v8}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 181
    invoke-virtual {v8}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v8}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    iget-object v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 182
    invoke-virtual {v8, v6}, Lcom/android/quickstep/views/RecentsView;->isTaskInExpectedScrollPosition(I)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v2

    goto :goto_1

    :cond_6
    move v8, v3

    :goto_1
    iput-boolean v8, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mAllowGoingDown:Z

    .line 184
    if-eqz v8, :cond_7

    goto :goto_2

    :cond_7
    move v1, v5

    :goto_2
    move v0, v1

    .line 185
    goto :goto_3

    .line 157
    .end local v5    # "upDirection":I
    .end local v7    # "view":Lcom/android/quickstep/views/TaskView;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 188
    .end local v6    # "i":I
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    if-nez v1, :cond_a

    .line 189
    iput-boolean v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mNoIntercept:Z

    .line 190
    return v3

    .line 194
    :cond_a
    :goto_4
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v1, v0, v4}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 198
    .end local v0    # "directionsToDetectScroll":I
    .end local v4    # "ignoreSlopWhenSettling":Z
    :cond_b
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_c

    .line 199
    return v3

    .line 202
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isDraggingOrSettling()Z

    move-result v0

    return v0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 208
    .local p0, "this":Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;, "Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDrag(F)Z
    .locals 16
    .param p1, "displacement"    # F

    .line 283
    .local p0, "this":Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;, "Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    .line 284
    .local v1, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    iget v2, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDisplacementShift:F

    add-float v2, p1, v2

    .line 285
    .local v2, "totalDisplacement":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_0

    iget-boolean v4, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    goto :goto_0

    .line 286
    :cond_0
    iget-boolean v4, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsRtl:Z

    invoke-interface {v1, v2, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->isGoingUp(FZ)Z

    move-result v4

    :goto_0
    nop

    .line 287
    .local v4, "isGoingUp":Z
    iget-boolean v5, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    if-eq v4, v5, :cond_1

    .line 288
    invoke-direct {v0, v4}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->reInitAnimationController(Z)V

    .line 289
    iget-object v5, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {v5}, Lcom/android/launcher3/util/FlingBlockCheck;->blockFling()V

    goto :goto_1

    .line 291
    :cond_1
    iget-object v5, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {v5}, Lcom/android/launcher3/util/FlingBlockCheck;->onEvent()V

    .line 294
    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_5

    .line 295
    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v6}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 298
    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mProgressMultiplier:F

    mul-float/2addr v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 299
    invoke-static {v7, v3, v5}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v3

    .line 298
    invoke-virtual {v6, v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    goto :goto_3

    .line 302
    :cond_2
    sget v3, Lcom/android/launcher3/R$dimen;->default_task_dismiss_drag_velocity:I

    .line 303
    .local v3, "velocityDimenId":I
    iget-object v5, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 304
    iget-object v5, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 305
    sget v3, Lcom/android/launcher3/R$dimen;->default_task_dismiss_drag_velocity_grid_focus_task:I

    goto :goto_2

    .line 308
    :cond_3
    sget v3, Lcom/android/launcher3/R$dimen;->default_task_dismiss_drag_velocity_grid:I

    .line 311
    :cond_4
    :goto_2
    iget-object v5, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    neg-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mOverrideVelocity:Ljava/lang/Float;

    .line 315
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 316
    .local v14, "now":J
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v6, v14

    move-wide v8, v14

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 318
    .local v5, "upAction":Landroid/view/MotionEvent;
    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v6, v5}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 319
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 320
    .end local v3    # "velocityDimenId":I
    .end local v5    # "upAction":Landroid/view/MotionEvent;
    .end local v14    # "now":J
    goto :goto_3

    .line 322
    :cond_5
    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mProgressMultiplier:F

    mul-float/2addr v7, v2

    .line 323
    invoke-static {v7, v3, v5}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v3

    .line 322
    invoke-virtual {v6, v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 326
    :goto_3
    const/4 v3, 0x1

    return v3
.end method

.method public onDragEnd(F)V
    .locals 22
    .param p1, "velocity"    # F

    .line 331
    .local p0, "this":Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;, "Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mOverrideVelocity:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 333
    .end local p1    # "velocity":F
    .local v1, "velocity":F
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mOverrideVelocity:Ljava/lang/Float;

    goto :goto_0

    .line 331
    .end local v1    # "velocity":F
    .restart local p1    # "velocity":F
    :cond_0
    move/from16 v1, p1

    .line 336
    .end local p1    # "velocity":F
    .restart local v1    # "velocity":F
    :goto_0
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mTaskBeingDragged:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$dimen;->max_task_dismiss_drag_velocity:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 338
    .local v2, "maxTaskDismissDragVelocity":F
    neg-float v3, v2

    invoke-static {v1, v3, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v1

    .line 340
    iget-object v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isFling(F)Z

    move-result v3

    .line 342
    .local v3, "fling":Z
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {v6}, Lcom/android/launcher3/util/FlingBlockCheck;->isBlocked()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v4

    .line 343
    .local v6, "blockedFling":Z
    :goto_1
    if-eqz v6, :cond_2

    .line 344
    const/4 v3, 0x0

    .line 346
    :cond_2
    iget-object v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v7}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v7

    .line 347
    .local v7, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    iget-boolean v8, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsRtl:Z

    invoke-interface {v7, v1, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->isGoingUp(FZ)Z

    move-result v8

    .line 348
    .local v8, "goingUp":Z
    iget-object v9, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v9}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v9

    .line 349
    .local v9, "progress":F
    iget-object v10, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v10}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getInterpolatedProgress()F

    move-result v10

    .line 350
    .local v10, "interpolatedProgress":F
    if-eqz v3, :cond_4

    .line 351
    iget-boolean v11, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimationIsGoingUp:Z

    if-ne v8, v11, :cond_3

    const/4 v4, 0x1

    .local v4, "goingToEnd":Z
    :cond_3
    goto :goto_2

    .line 353
    .end local v4    # "goingToEnd":Z
    :cond_4
    const/high16 v11, 0x3f000000    # 0.5f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_5

    const/4 v4, 0x1

    .line 355
    .restart local v4    # "goingToEnd":Z
    :cond_5
    :goto_2
    nop

    .line 356
    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v4, :cond_6

    sub-float v11, v15, v9

    goto :goto_3

    :cond_6
    move v11, v9

    .line 355
    :goto_3
    invoke-static {v1, v11}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v11

    .line 357
    .local v11, "animationDuration":J
    if-eqz v6, :cond_7

    if-nez v4, :cond_7

    .line 358
    invoke-static {v1}, Lcom/android/launcher3/LauncherAnimUtils;->blockedFlingDurationFactor(F)I

    move-result v13

    int-to-long v13, v13

    mul-long/2addr v11, v13

    .line 363
    :cond_7
    const-wide/16 v18, 0x12c

    const-wide/16 v20, 0x258

    move-wide/from16 v16, v11

    invoke-static/range {v16 .. v21}, Lcom/android/launcher3/Utilities;->boundToRange(JJJ)J

    move-result-wide v18

    .line 366
    .end local v11    # "animationDuration":J
    .local v18, "animationDuration":J
    iget-object v11, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    new-instance v12, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    .line 367
    iget-object v11, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object v12, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 368
    invoke-interface {v7}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryTranslationDirectionFactor()I

    move-result v13

    int-to-float v13, v13

    mul-float v14, v1, v13

    iget v13, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mEndDisplacement:F

    .line 367
    move/from16 v16, v13

    move v13, v4

    move v5, v15

    move/from16 v15, v16

    move-wide/from16 v16, v18

    invoke-virtual/range {v11 .. v17}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->startWithVelocity(Landroid/content/Context;ZFFJ)V

    .line 370
    if-eqz v8, :cond_8

    if-eqz v4, :cond_8

    iget-boolean v11, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsDismissHapticRunning:Z

    if-nez v11, :cond_8

    .line 371
    sget-object v11, Lcom/android/quickstep/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v12, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v11, v12}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/quickstep/util/VibratorWrapper;

    sget v12, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->TASK_DISMISS_VIBRATION_PRIMITIVE:I

    sget-object v13, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->TASK_DISMISS_VIBRATION_FALLBACK:Landroid/os/VibrationEffect;

    invoke-virtual {v11, v12, v5, v13}, Lcom/android/quickstep/util/VibratorWrapper;->vibrate(IFLandroid/os/VibrationEffect;)V

    .line 373
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsDismissHapticRunning:Z

    .line 375
    :cond_8
    return-void
.end method

.method public onDragStart(ZF)V
    .locals 3
    .param p1, "start"    # Z
    .param p2, "startDisplacement"    # F

    .line 269
    .local p0, "this":Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;, "Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    .line 270
    .local v0, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v1, :cond_0

    .line 271
    iget-boolean v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mIsRtl:Z

    invoke-interface {v0, p2, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->isGoingUp(FZ)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->reInitAnimationController(Z)V

    .line 272
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDisplacementShift:F

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mProgressMultiplier:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mDisplacementShift:F

    .line 275
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->pause()V

    .line 277
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mFlingBlockCheck:Lcom/android/launcher3/util/FlingBlockCheck;

    invoke-virtual {v1}, Lcom/android/launcher3/util/FlingBlockCheck;->unblockFling()V

    .line 278
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mOverrideVelocity:Ljava/lang/Float;

    .line 279
    return-void
.end method

.method protected onUserControlledAnimationCreated(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .locals 0
    .param p1, "animController"    # Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 126
    .local p0, "this":Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;, "Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController<TT;>;"
    return-void
.end method
