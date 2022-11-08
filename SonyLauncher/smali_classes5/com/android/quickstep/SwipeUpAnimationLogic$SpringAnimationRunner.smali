.class public Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SwipeUpAnimationLogic.java"

# interfaces
.implements Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;
.implements Lcom/android/quickstep/util/TransformParams$BuilderProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/SwipeUpAnimationLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SpringAnimationRunner"
.end annotation


# instance fields
.field final mAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

.field final mCropRect:Landroid/graphics/Rect;

.field final mCropRectF:Landroid/graphics/RectF;

.field final mEndRadius:F

.field final mHomeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field final mHomeToWindowPositionMap:Landroid/graphics/Matrix;

.field private final mLocalTransformParams:Lcom/android/quickstep/util/TransformParams;

.field final mMatrix:Landroid/graphics/Matrix;

.field final mStartRadius:F

.field final mWindowCurrentRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/quickstep/SwipeUpAnimationLogic;


# direct methods
.method constructor <init>(Lcom/android/quickstep/SwipeUpAnimationLogic;Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Landroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/android/quickstep/util/TransformParams;Lcom/android/quickstep/util/TaskViewSimulator;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/quickstep/SwipeUpAnimationLogic;
    .param p2, "factory"    # Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    .param p3, "cropRectF"    # Landroid/graphics/RectF;
    .param p4, "homeToWindowPositionMap"    # Landroid/graphics/Matrix;
    .param p5, "transformParams"    # Lcom/android/quickstep/util/TransformParams;
    .param p6, "taskViewSimulator"    # Lcom/android/quickstep/util/TaskViewSimulator;

    .line 309
    iput-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->this$0:Lcom/android/quickstep/SwipeUpAnimationLogic;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    .line 293
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mCropRect:Landroid/graphics/Rect;

    .line 294
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mMatrix:Landroid/graphics/Matrix;

    .line 296
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mWindowCurrentRect:Landroid/graphics/RectF;

    .line 310
    iput-object p2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    .line 311
    invoke-virtual {p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mHomeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 312
    iput-object p3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mCropRectF:Landroid/graphics/RectF;

    .line 313
    iput-object p4, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mHomeToWindowPositionMap:Landroid/graphics/Matrix;

    .line 314
    iput-object p5, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mLocalTransformParams:Lcom/android/quickstep/util/TransformParams;

    .line 316
    invoke-virtual {p3, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 320
    invoke-virtual {p6}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCornerRadius()F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mStartRadius:F

    .line 321
    invoke-virtual {p2, p3}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->getEndRadius(Landroid/graphics/RectF;)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mEndRadius:F

    .line 322
    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 355
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mHomeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 356
    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 360
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mHomeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 361
    return-void
.end method

.method public onBuildTargetParams(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/TransformParams;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .param p2, "app"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "params"    # Lcom/android/quickstep/util/TransformParams;

    .line 343
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mCropRect:Landroid/graphics/Rect;

    .line 344
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v0

    .line 345
    invoke-virtual {p3}, Lcom/android/quickstep/util/TransformParams;->getCornerRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .line 346
    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {v0}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->onCancel()V

    .line 351
    return-void
.end method

.method public onUpdate(Landroid/graphics/RectF;F)V
    .locals 4
    .param p1, "currentRect"    # Landroid/graphics/RectF;
    .param p2, "progress"    # F

    .line 326
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mHomeAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 327
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mHomeToWindowPositionMap:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mWindowCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 329
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mCropRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mWindowCurrentRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 330
    iget v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mStartRadius:F

    iget v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mEndRadius:F

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    .line 331
    .local v0, "cornerRadius":F
    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    invoke-virtual {v1, p2}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->getWindowAlpha(F)F

    move-result v1

    .line 332
    .local v1, "alpha":F
    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mLocalTransformParams:Lcom/android/quickstep/util/TransformParams;

    .line 333
    invoke-virtual {v2, v1}, Lcom/android/quickstep/util/TransformParams;->setTargetAlpha(F)Lcom/android/quickstep/util/TransformParams;

    move-result-object v2

    .line 334
    invoke-virtual {v2, v0}, Lcom/android/quickstep/util/TransformParams;->setCornerRadius(F)Lcom/android/quickstep/util/TransformParams;

    .line 335
    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mLocalTransformParams:Lcom/android/quickstep/util/TransformParams;

    .line 336
    invoke-virtual {v2, p0}, Lcom/android/quickstep/util/TransformParams;->createSurfaceParams(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v3

    .line 335
    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/TransformParams;->applySurfaceParams([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 337
    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mAnimationFactory:Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    iget-object v3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$SpringAnimationRunner;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->update(Landroid/graphics/RectF;FF)V

    .line 338
    return-void
.end method
