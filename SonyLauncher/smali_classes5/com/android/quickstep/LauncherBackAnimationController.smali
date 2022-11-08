.class public Lcom/android/quickstep/LauncherBackAnimationController;
.super Ljava/lang/Object;
.source "LauncherBackAnimationController.java"


# static fields
.field private static final CANCEL_TRANSITION_DURATION:I = 0xe9

.field private static final MIN_WINDOW_SCALE:F = 0.7f


# instance fields
.field private mAnimatorSetInProgress:Z

.field private mBackCallback:Landroid/window/IOnBackInvokedCallback;

.field private mBackInProgress:Z

.field private mBackProgress:F

.field private mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field private final mCancelInterpolator:Landroid/view/animation/Interpolator;

.field private final mCancelRect:Landroid/graphics/RectF;

.field private final mCurrentRect:Landroid/graphics/RectF;

.field private final mInitialTouchPos:Landroid/graphics/PointF;

.field private final mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

.field private final mQuickstepTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

.field private mSpringAnimationInProgress:Z

.field private final mStartRect:Landroid/graphics/Rect;

.field private mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mTransformMatrix:Landroid/graphics/Matrix;

.field private final mWindowMaxDeltaY:I

.field private final mWindowScaleEndCornerRadius:F

.field private final mWindowScaleMarginX:I

.field private final mWindowScaleStartCornerRadius:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmBackInProgress(Lcom/android/quickstep/LauncherBackAnimationController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackProgress(Lcom/android/quickstep/LauncherBackAnimationController;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAnimatorSetInProgress(Lcom/android/quickstep/LauncherBackAnimationController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimatorSetInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBackProgress(Lcom/android/quickstep/LauncherBackAnimationController;F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSpringAnimationInProgress(Lcom/android/quickstep/LauncherBackAnimationController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mSpringAnimationInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishAnimation(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->finishAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetPositionAnimated(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->resetPositionAnimated()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartBack(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/window/BackEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->startBack(Landroid/window/BackEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartTransition(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->startTransition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryFinishBackAnimation(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->tryFinishBackAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBackProgress(Lcom/android/quickstep/LauncherBackAnimationController;FLandroid/window/BackEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/LauncherBackAnimationController;->updateBackProgress(FLandroid/window/BackEvent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/QuickstepTransitionManager;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/BaseQuickstepLauncher;
    .param p2, "quickstepTransitionManager"    # Lcom/android/launcher3/QuickstepTransitionManager;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelRect:Landroid/graphics/RectF;

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    .line 85
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mInitialTouchPos:Landroid/graphics/PointF;

    .line 88
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mSpringAnimationInProgress:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimatorSetInProgress:Z

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackProgress:F

    .line 92
    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackInProgress:Z

    .line 98
    iput-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 99
    iput-object p2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mQuickstepTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    .line 100
    nop

    .line 101
    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->swipe_back_window_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v1, v0

    goto :goto_0

    .line 104
    :cond_0
    nop

    :goto_0
    iput v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleEndCornerRadius:F

    .line 105
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleStartCornerRadius:F

    .line 106
    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->swipe_back_window_scale_x_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleMarginX:I

    .line 108
    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->swipe_back_window_max_delta_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowMaxDeltaY:I

    .line 110
    sget v0, Lcom/android/launcher3/R$interpolator;->back_cancel:I

    .line 111
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelInterpolator:Landroid/view/animation/Interpolator;

    .line 112
    return-void
.end method

.method private applyTransform(Landroid/graphics/RectF;F)V
    .locals 5
    .param p1, "targetRect"    # Landroid/graphics/RectF;
    .param p2, "cornerRadius"    # F

    .line 245
    new-instance v0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v1, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 247
    .local v0, "builder":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 248
    .local v1, "scale":F
    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 249
    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 250
    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransformMatrix:Landroid/graphics/Matrix;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 251
    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    .line 252
    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v2

    .line 253
    invoke-virtual {v2, p2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .line 254
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v2

    .line 256
    .local v2, "surfaceParams":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    iget-object v3, v2, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->applyTo(Landroid/view/SurfaceControl$Transaction;)V

    .line 259
    :cond_0
    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 260
    return-void
.end method

.method private finishAnimation()V
    .locals 3

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackInProgress:Z

    .line 299
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackProgress:F

    .line 300
    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 301
    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    .line 302
    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    .line 303
    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 304
    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mInitialTouchPos:Landroid/graphics/PointF;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 305
    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimatorSetInProgress:Z

    .line 306
    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mSpringAnimationInProgress:Z

    .line 307
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->onBackToLauncherAnimationFinished()V

    .line 308
    return-void
.end method

.method private resetPositionAnimated()V
    .locals 3

    .line 151
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 152
    .local v0, "cancelAnimator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 153
    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 154
    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 155
    new-instance v1, Lcom/android/quickstep/LauncherBackAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/LauncherBackAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 159
    new-instance v1, Lcom/android/quickstep/LauncherBackAnimationController$2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/LauncherBackAnimationController$2;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 165
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 166
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startBack(Landroid/window/BackEvent;)V
    .locals 4
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackInProgress:Z

    .line 178
    invoke-virtual {p1}, Landroid/window/BackEvent;->getDepartingAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    .line 180
    .local v0, "appTarget":Landroid/view/RemoteAnimationTarget;
    if-nez v0, :cond_0

    .line 181
    return-void

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 185
    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 186
    new-instance v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-direct {v1, v0}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;-><init>(Landroid/view/RemoteAnimationTarget;)V

    iput-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 187
    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mInitialTouchPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    move-result v2

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 190
    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 191
    return-void
.end method

.method private startTransition()V
    .locals 10

    .line 263
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-nez v0, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->finishAnimation()V

    .line 266
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->hasSomeInvisibleFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->addForceInvisibleFlag(I)V

    .line 276
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const v1, 0x7a274

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 283
    iget v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackProgress:F

    iget v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleStartCornerRadius:F

    iget v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleEndCornerRadius:F

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    .line 285
    .local v0, "cornerRadius":F
    iget-object v4, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mQuickstepTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    const/4 v1, 0x1

    new-array v5, v1, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aput-object v1, v5, v2

    new-array v6, v2, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    .line 286
    move v9, v0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/QuickstepTransitionManager;->createWallpaperOpenAnimations([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLandroid/graphics/RectF;F)Landroid/util/Pair;

    move-result-object v1

    .line 292
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/quickstep/util/RectFSpringAnim;Landroid/animation/AnimatorSet;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/quickstep/util/RectFSpringAnim;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/animation/AnimatorSet;

    invoke-direct {p0, v2, v3}, Lcom/android/quickstep/LauncherBackAnimationController;->startTransitionAnimations(Lcom/android/quickstep/util/RectFSpringAnim;Landroid/animation/AnimatorSet;)V

    .line 293
    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/launcher3/BaseQuickstepLauncher;->clearForceInvisibleFlag(I)V

    .line 294
    return-void
.end method

.method private startTransitionAnimations(Lcom/android/quickstep/util/RectFSpringAnim;Landroid/animation/AnimatorSet;)V
    .locals 3
    .param p1, "springAnim"    # Lcom/android/quickstep/util/RectFSpringAnim;
    .param p2, "anim"    # Landroid/animation/AnimatorSet;

    .line 311
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimatorSetInProgress:Z

    .line 312
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mSpringAnimationInProgress:Z

    .line 313
    if-eqz p1, :cond_2

    .line 314
    new-instance v0, Lcom/android/quickstep/LauncherBackAnimationController$3;

    invoke-direct {v0, p0}, Lcom/android/quickstep/LauncherBackAnimationController$3;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 324
    :cond_2
    new-instance v0, Lcom/android/quickstep/LauncherBackAnimationController$4;

    invoke-direct {v0, p0}, Lcom/android/quickstep/LauncherBackAnimationController$4;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 331
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 332
    return-void
.end method

.method private tryFinishBackAnimation()V
    .locals 1

    .line 335
    iget-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mSpringAnimationInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mAnimatorSetInProgress:Z

    if-nez v0, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/android/quickstep/LauncherBackAnimationController;->finishAnimation()V

    .line 338
    :cond_0
    return-void
.end method

.method private updateBackProgress(FLandroid/window/BackEvent;)V
    .locals 16
    .param p1, "progress"    # F
    .param p2, "event"    # Landroid/window/BackEvent;

    .line 194
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-nez v2, :cond_0

    .line 195
    return-void

    .line 197
    :cond_0
    iget-object v2, v0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 198
    .local v2, "screenWidth":F
    iget-object v3, v0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 199
    .local v3, "screenHeight":F
    invoke-virtual/range {p2 .. p2}, Landroid/window/BackEvent;->getTouchX()F

    move-result v4

    iget-object v5, v0, Lcom/android/quickstep/LauncherBackAnimationController;->mInitialTouchPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 202
    .local v4, "dX":F
    sub-float v5, v2, v4

    .line 205
    .local v5, "followWidth":F
    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f333333    # 0.7f

    invoke-static {v1, v6, v7}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v6

    mul-float/2addr v6, v2

    .line 208
    .local v6, "progressWidth":F
    invoke-static {v1, v5, v6}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v7

    .line 209
    .local v7, "width":F
    div-float v8, v3, v2

    mul-float/2addr v8, v7

    .line 210
    .local v8, "height":F
    invoke-virtual/range {p2 .. p2}, Landroid/window/BackEvent;->getTouchY()F

    move-result v9

    iget-object v10, v0, Lcom/android/quickstep/LauncherBackAnimationController;->mInitialTouchPos:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    div-float/2addr v9, v3

    .line 212
    .local v9, "deltaYRatio":F
    float-to-double v10, v9

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    iget v11, v0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowMaxDeltaY:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    .line 214
    .local v10, "deltaY":F
    sub-float v11, v3, v8

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    add-float/2addr v11, v10

    .line 216
    .local v11, "top":F
    invoke-virtual/range {p2 .. p2}, Landroid/window/BackEvent;->getSwipeEdge()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 217
    iget v12, v0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleMarginX:I

    int-to-float v12, v12

    mul-float/2addr v12, v1

    goto :goto_0

    .line 218
    :cond_1
    iget v12, v0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleMarginX:I

    int-to-float v12, v12

    mul-float/2addr v12, v1

    sub-float v12, v2, v12

    sub-float/2addr v12, v7

    :goto_0
    nop

    .line 220
    .local v12, "left":F
    iget-object v13, v0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    add-float v14, v12, v7

    add-float v15, v11, v8

    invoke-virtual {v13, v12, v11, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 221
    iget v13, v0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleStartCornerRadius:F

    iget v14, v0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleEndCornerRadius:F

    invoke-static {v1, v13, v14}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v13

    .line 223
    .local v13, "cornerRadius":F
    iget-object v14, v0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    invoke-direct {v0, v14, v13}, Lcom/android/quickstep/LauncherBackAnimationController;->applyTransform(Landroid/graphics/RectF;F)V

    .line 224
    return-void
.end method

.method private updateCancelProgress(F)V
    .locals 6
    .param p1, "progress"    # F

    .line 227
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-nez v0, :cond_0

    .line 228
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 231
    invoke-static {p1, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 232
    invoke-static {p1, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    .line 233
    invoke-static {p1, v3, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCancelRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mStartRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    .line 234
    invoke-static {p1, v4, v5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v4

    .line 230
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 236
    iget v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackProgress:F

    iget v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleStartCornerRadius:F

    iget v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleEndCornerRadius:F

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    .line 238
    .local v0, "endCornerRadius":F
    iget v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mWindowScaleStartCornerRadius:F

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    .line 240
    .local v1, "cornerRadius":F
    iget-object v2, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mCurrentRect:Landroid/graphics/RectF;

    invoke-direct {p0, v2, v1}, Lcom/android/quickstep/LauncherBackAnimationController;->applyTransform(Landroid/graphics/RectF;F)V

    .line 241
    return-void
.end method


# virtual methods
.method synthetic lambda$resetPositionAnimated$0$com-android-quickstep-LauncherBackAnimationController(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 157
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/LauncherBackAnimationController;->updateCancelProgress(F)V

    .line 158
    return-void
.end method

.method public registerBackCallbacks(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/android/quickstep/LauncherBackAnimationController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController$1;-><init>(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    .line 147
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->setBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;)V

    .line 148
    return-void
.end method

.method public unregisterBackCallbacks()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v1, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->clearBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;)V

    .line 173
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController;->mBackCallback:Landroid/window/IOnBackInvokedCallback;

    .line 174
    return-void
.end method
