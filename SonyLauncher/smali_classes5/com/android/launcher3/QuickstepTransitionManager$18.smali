.class Lcom/android/launcher3/QuickstepTransitionManager$18;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source "QuickstepTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;->getFallbackClosingWindowAnimators([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mShadowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field final synthetic val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field final synthetic val$duration:I

.field final synthetic val$matrix:Landroid/graphics/Matrix;

.field final synthetic val$rotationChange:I

.field final synthetic val$startShadowRadius:F

.field final synthetic val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field final synthetic val$tmpPos:Landroid/graphics/Point;

.field final synthetic val$tmpRect:Landroid/graphics/Rect;

.field final synthetic val$windowCornerRadius:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;IF[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Point;Landroid/graphics/Rect;ILandroid/graphics/Matrix;FLcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/launcher3/QuickstepTransitionManager;

    .line 1470
    move-object v0, p0

    move v1, p2

    move-object v2, p1

    iput-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$18;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$duration:I

    move v3, p3

    iput v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$startShadowRadius:F

    move-object v4, p4

    iput-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object v4, p5

    iput-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$tmpPos:Landroid/graphics/Point;

    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$tmpRect:Landroid/graphics/Rect;

    move/from16 v4, p7

    iput v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$rotationChange:I

    move-object/from16 v4, p8

    iput-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$matrix:Landroid/graphics/Matrix;

    move/from16 v4, p9

    iput v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$windowCornerRadius:F

    move-object/from16 v4, p10

    iput-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    .line 1471
    new-instance v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmClosingWindowTransY(Lcom/android/launcher3/QuickstepTransitionManager;)F

    move-result v5

    int-to-float v6, v1

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_7:Landroid/view/animation/Interpolator;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object p4, v4

    move-object p5, p0

    move/from16 p6, v8

    move/from16 p7, v5

    move/from16 p8, v9

    move/from16 p9, v6

    move-object/from16 p10, v7

    invoke-direct/range {p4 .. p10}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$18;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 1472
    new-instance v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    int-to-float v5, v1

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_7:Landroid/view/animation/Interpolator;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object p4, v4

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p9, v5

    move-object/from16 p10, v6

    invoke-direct/range {p4 .. p10}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$18;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 1473
    new-instance v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x41c80000    # 25.0f

    const/high16 v9, 0x42fa0000    # 125.0f

    move-object p4, v4

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move/from16 p9, v9

    move-object/from16 p10, v5

    invoke-direct/range {p4 .. p10}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$18;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 1474
    new-instance v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    int-to-float v1, v1

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_7:Landroid/view/animation/Interpolator;

    const/4 v6, 0x0

    move-object p4, v4

    move/from16 p6, p3

    move/from16 p7, v6

    move/from16 p8, v7

    move/from16 p9, v1

    move-object/from16 p10, v5

    invoke-direct/range {p4 .. p10}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$18;->mShadowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public onUpdate(FZ)V
    .locals 11
    .param p1, "percent"    # F
    .param p2, "initOnly"    # Z

    .line 1479
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    .line 1480
    .local v1, "params":[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 1481
    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v3, v3, v0

    .line 1482
    .local v3, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    new-instance v4, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v4, v5}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 1484
    .local v4, "builder":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    iget-object v5, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_0

    .line 1485
    iget-object v5, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$tmpPos:Landroid/graphics/Point;

    iget-object v6, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    .line 1487
    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$tmpPos:Landroid/graphics/Point;

    iget-object v6, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Point;->set(II)V

    .line 1490
    :goto_1
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1491
    .local v5, "crop":Landroid/graphics/Rect;
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1492
    iget v6, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v6, v2, :cond_2

    .line 1493
    iget-object v6, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$tmpRect:Landroid/graphics/Rect;

    iget-object v7, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1494
    iget v6, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$rotationChange:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    .line 1495
    iget v6, v5, Landroid/graphics/Rect;->right:I

    .line 1496
    .local v6, "right":I
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 1497
    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1499
    .end local v6    # "right":I
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$matrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v8, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v8, v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v9, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$tmpRect:Landroid/graphics/Rect;

    .line 1500
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$tmpRect:Landroid/graphics/Rect;

    .line 1501
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    .line 1499
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1502
    iget-object v6, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$matrix:Landroid/graphics/Matrix;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v8, v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1503
    iget-object v6, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$matrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$tmpPos:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$tmpPos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1504
    iget-object v6, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v6

    .line 1505
    invoke-virtual {v6, v5}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    .line 1506
    invoke-virtual {v6, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v6

    iget v7, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$windowCornerRadius:F

    .line 1507
    invoke-virtual {v6, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->mShadowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    .line 1508
    invoke-virtual {v6, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withShadowRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    goto :goto_2

    .line 1509
    :cond_2
    iget v6, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v6, :cond_3

    .line 1510
    iget-object v6, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$matrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$tmpPos:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$tmpPos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1511
    iget-object v6, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v6

    .line 1512
    invoke-virtual {v6, v5}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1513
    invoke-virtual {v6, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .line 1515
    :cond_3
    :goto_2
    invoke-virtual {v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v6

    aput-object v6, v1, v0

    .line 1480
    .end local v3    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v4    # "builder":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .end local v5    # "crop":Landroid/graphics/Rect;
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 1517
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$18;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 1518
    return-void
.end method
