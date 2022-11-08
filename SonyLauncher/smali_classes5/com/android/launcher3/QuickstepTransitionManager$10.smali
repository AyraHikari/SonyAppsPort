.class Lcom/android/launcher3/QuickstepTransitionManager$10;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source "QuickstepTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;->getOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZI)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCropRectCenterX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mCropRectCenterY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mCropRectHeight:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mCropRectWidth:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mIconAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mIconScaleToFitScreen:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mNavFadeOut:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mShadowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mWindowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field final synthetic val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field final synthetic val$crop:Landroid/graphics/Rect;

.field final synthetic val$dragLayerBounds:[I

.field final synthetic val$finalShadowRadius:F

.field final synthetic val$finalWindowRadius:F

.field final synthetic val$floatingIconBounds:Landroid/graphics/RectF;

.field final synthetic val$floatingView:Lcom/android/launcher3/views/FloatingIconView;

.field final synthetic val$initialWindowRadius:F

.field final synthetic val$launcherIconBounds:Landroid/graphics/RectF;

.field final synthetic val$matrix:Landroid/graphics/Matrix;

.field final synthetic val$navBarTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field final synthetic val$prop:Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;

.field final synthetic val$rotationChange:I

.field final synthetic val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field final synthetic val$tmpPos:Landroid/graphics/Point;

.field final synthetic val$tmpRectF:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;FFFLandroid/graphics/RectF;Landroid/graphics/Rect;ILandroid/graphics/RectF;[ILandroid/graphics/RectF;Lcom/android/launcher3/views/FloatingIconView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Matrix;Landroid/graphics/Point;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .locals 12
    .param p1, "this$0"    # Lcom/android/launcher3/QuickstepTransitionManager;

    .line 741
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    iput-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$prop:Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;

    move v3, p3

    iput v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$initialWindowRadius:F

    move/from16 v4, p4

    iput v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$finalWindowRadius:F

    move/from16 v5, p5

    iput v5, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$finalShadowRadius:F

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$launcherIconBounds:Landroid/graphics/RectF;

    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$crop:Landroid/graphics/Rect;

    move/from16 v6, p8

    iput v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$rotationChange:I

    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$tmpRectF:Landroid/graphics/RectF;

    move-object/from16 v6, p10

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$dragLayerBounds:[I

    move-object/from16 v6, p11

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$floatingIconBounds:Landroid/graphics/RectF;

    move-object/from16 v6, p12

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$floatingView:Lcom/android/launcher3/views/FloatingIconView;

    move-object/from16 v6, p13

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object/from16 v6, p14

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$matrix:Landroid/graphics/Matrix;

    move-object/from16 v6, p15

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$tmpPos:Landroid/graphics/Point;

    move-object/from16 v6, p16

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$navBarTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object/from16 v6, p17

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    .line 742
    new-instance v6, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->dX:F

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmOpeningXInterpolator(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x43fa0000    # 500.0f

    move-object/from16 p6, v6

    move-object/from16 p7, p0

    move/from16 p8, v9

    move/from16 p9, v7

    move/from16 p10, v10

    move/from16 p11, v11

    move-object/from16 p12, v8

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 744
    new-instance v6, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->dY:F

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmOpeningInterpolator(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v8

    move-object/from16 p6, v6

    move/from16 p9, v7

    move-object/from16 p12, v8

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 747
    new-instance v6, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->initialAppIconScale:F

    iget v8, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->finalAppIconScale:F

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmOpeningInterpolator(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v9

    move-object/from16 p6, v6

    move/from16 p8, v7

    move/from16 p9, v8

    move-object/from16 p12, v9

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mIconScaleToFitScreen:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 749
    new-instance v6, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->iconAlphaStart:F

    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v9, 0x0

    const/high16 v10, 0x41c80000    # 25.0f

    const/high16 v11, 0x42480000    # 50.0f

    move-object/from16 p6, v6

    move/from16 p8, v7

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move-object/from16 p12, v8

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mIconAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 752
    new-instance v6, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmOpeningInterpolator(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v7

    const/4 v8, 0x0

    const/high16 v9, 0x43fa0000    # 500.0f

    move-object/from16 p6, v6

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v8

    move/from16 p11, v9

    move-object/from16 p12, v7

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mWindowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 754
    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmOpeningInterpolator(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x43fa0000    # 500.0f

    move-object/from16 p6, v3

    move/from16 p8, v6

    move/from16 p9, p5

    move/from16 p10, v7

    move/from16 p11, v8

    move-object/from16 p12, v4

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mShadowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 757
    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterXStart:I

    int-to-float v4, v4

    iget v5, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterXEnd:I

    int-to-float v5, v5

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmOpeningInterpolator(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object p3, v3

    move-object/from16 p4, p0

    move/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, v7

    move/from16 p8, v8

    move-object/from16 p9, v6

    invoke-direct/range {p3 .. p9}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mCropRectCenterX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 759
    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterYStart:I

    int-to-float v4, v4

    iget v5, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterYEnd:I

    int-to-float v5, v5

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmOpeningInterpolator(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object p3, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move-object/from16 p9, v6

    invoke-direct/range {p3 .. p9}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mCropRectCenterY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 761
    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropWidthStart:I

    int-to-float v4, v4

    iget v5, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropWidthEnd:I

    int-to-float v5, v5

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmOpeningInterpolator(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object p3, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move-object/from16 p9, v6

    invoke-direct/range {p3 .. p9}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mCropRectWidth:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 763
    new-instance v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropHeightStart:I

    int-to-float v4, v4

    iget v1, v1, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropHeightEnd:I

    int-to-float v1, v1

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmOpeningInterpolator(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v5

    const/4 v6, 0x0

    const/high16 v7, 0x43fa0000    # 500.0f

    move-object p2, v3

    move-object p3, p0

    move/from16 p4, v4

    move/from16 p5, v1

    move/from16 p6, v6

    move/from16 p7, v7

    move-object/from16 p8, v5

    invoke-direct/range {p2 .. p8}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mCropRectHeight:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 766
    new-instance v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v3, Lcom/android/launcher3/QuickstepTransitionManager;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v7, 0x43050000    # 133.0f

    move-object p2, v1

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p7, v7

    move-object/from16 p8, v3

    invoke-direct/range {p2 .. p8}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mNavFadeOut:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 768
    new-instance v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v3, Lcom/android/launcher3/QuickstepTransitionManager;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x436a0000    # 234.0f

    const/high16 v7, 0x43850000    # 266.0f

    move-object p2, v1

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move-object/from16 p8, v3

    invoke-direct/range {p2 .. p8}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public onUpdate(FZ)V
    .locals 35
    .param p1, "percent"    # F
    .param p2, "initOnly"    # Z

    .line 774
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$launcherIconBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mIconScaleToFitScreen:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    mul-float/2addr v1, v2

    .line 775
    .local v1, "iconWidth":F
    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$launcherIconBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mIconScaleToFitScreen:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v3, v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    mul-float/2addr v2, v3

    .line 777
    .local v2, "iconHeight":F
    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mCropRectCenterX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v3, v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mCropRectWidth:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 778
    .local v3, "left":I
    iget-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mCropRectCenterY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mCropRectHeight:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v6, v6, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    float-to-int v4, v4

    .line 779
    .local v4, "top":I
    int-to-float v6, v3

    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mCropRectWidth:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 780
    .local v6, "right":I
    int-to-float v7, v4

    iget-object v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mCropRectHeight:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v8, v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 781
    .local v7, "bottom":I
    iget-object v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$crop:Landroid/graphics/Rect;

    invoke-virtual {v8, v3, v4, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 783
    iget-object v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$crop:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 784
    .local v8, "windowCropWidth":I
    iget-object v9, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$crop:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 785
    .local v9, "windowCropHeight":I
    iget v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$rotationChange:I

    if-eqz v10, :cond_0

    .line 786
    iget-object v10, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$crop:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v11}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmDeviceProfile(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v11

    iget v11, v11, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v12, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v12}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmDeviceProfile(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v12

    iget v12, v12, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v13, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$rotationChange:I

    invoke-static {v10, v11, v12, v13}, Lcom/android/launcher3/Utilities;->rotateBounds(Landroid/graphics/Rect;III)V

    .line 791
    :cond_0
    int-to-float v10, v8

    div-float v10, v1, v10

    .line 792
    .local v10, "scaleX":F
    int-to-float v11, v9

    div-float v11, v2, v11

    .line 793
    .local v11, "scaleY":F
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 795
    .local v12, "scale":F
    int-to-float v14, v8

    mul-float/2addr v14, v12

    .line 796
    .local v14, "scaledCropWidth":F
    int-to-float v15, v9

    mul-float/2addr v15, v12

    .line 797
    .local v15, "scaledCropHeight":F
    sub-float v16, v14, v1

    div-float v16, v16, v5

    .line 798
    .local v16, "offsetX":F
    sub-float v17, v15, v2

    div-float v17, v17, v5

    .line 801
    .local v17, "offsetY":F
    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$tmpRectF:Landroid/graphics/RectF;

    iget-object v13, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$launcherIconBounds:Landroid/graphics/RectF;

    invoke-virtual {v5, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 802
    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$tmpRectF:Landroid/graphics/RectF;

    iget-object v13, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$dragLayerBounds:[I

    move/from16 v18, v1

    .end local v1    # "iconWidth":F
    .local v18, "iconWidth":F
    const/4 v1, 0x0

    move/from16 v19, v2

    .end local v2    # "iconHeight":F
    .local v19, "iconHeight":F
    aget v2, v13, v1

    int-to-float v2, v2

    const/4 v1, 0x1

    aget v13, v13, v1

    int-to-float v13, v13

    invoke-virtual {v5, v2, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 803
    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$tmpRectF:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v5, v5, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v13, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v13, v13, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v2, v5, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 804
    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$tmpRectF:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mIconScaleToFitScreen:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v5, v5, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-static {v2, v5}, Lcom/android/launcher3/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;F)V

    .line 805
    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$tmpRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float v2, v2, v16

    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$crop:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v12

    sub-float/2addr v2, v5

    .line 806
    .local v2, "windowTransX0":F
    iget-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$tmpRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float v5, v5, v17

    iget-object v13, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$crop:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    mul-float/2addr v13, v12

    sub-float/2addr v5, v13

    .line 809
    .local v5, "windowTransY0":F
    iget-object v13, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$floatingIconBounds:Landroid/graphics/RectF;

    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$launcherIconBounds:Landroid/graphics/RectF;

    invoke-virtual {v13, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 810
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$floatingIconBounds:Landroid/graphics/RectF;

    iget-object v13, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v13, v13, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    move/from16 v20, v3

    .end local v3    # "left":I
    .local v20, "left":I
    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v3, v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v1, v13, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 811
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$floatingIconBounds:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mIconScaleToFitScreen:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v3, v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-static {v1, v3}, Lcom/android/launcher3/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;F)V

    .line 812
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$floatingIconBounds:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float v3, v3, v16

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 813
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$floatingIconBounds:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    sub-float v3, v3, v17

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 814
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$floatingIconBounds:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->right:F

    add-float v3, v3, v16

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 815
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$floatingIconBounds:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    add-float v3, v3, v17

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 817
    if-eqz p2, :cond_1

    .line 819
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$floatingView:Lcom/android/launcher3/views/FloatingIconView;

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0xff

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$floatingIconBounds:Landroid/graphics/RectF;

    const/16 v26, 0x0

    iget-object v13, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mWindowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v13, v13, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    mul-float v27, v13, v12

    const/16 v28, 0x1

    move-object/from16 v21, v1

    move-object/from16 v24, v3

    move/from16 v25, p1

    invoke-virtual/range {v21 .. v28}, Lcom/android/launcher3/views/FloatingIconView;->update(FILandroid/graphics/RectF;FFFZ)V

    .line 821
    return-void

    .line 824
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;>;"
    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v3, v3

    const/4 v13, 0x1

    sub-int/2addr v3, v13

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_9

    .line 826
    iget-object v13, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v13, v13, v3

    .line 827
    .local v13, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    move/from16 v21, v4

    .end local v4    # "top":I
    .local v21, "top":I
    new-instance v4, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move/from16 v22, v6

    .end local v6    # "right":I
    .local v22, "right":I
    iget-object v6, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v4, v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 829
    .local v4, "builder":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    iget v6, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    move/from16 v23, v7

    .end local v7    # "bottom":I
    .local v23, "bottom":I
    if-nez v6, :cond_5

    .line 830
    iget-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v12, v12}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 831
    iget v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$rotationChange:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 832
    iget-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$matrix:Landroid/graphics/Matrix;

    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v7}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmDeviceProfile(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    iget v7, v7, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v7, v7

    add-float v24, v2, v14

    sub-float v7, v7, v24

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move/from16 v25, v8

    goto :goto_1

    .line 834
    :cond_2
    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 835
    iget-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$matrix:Landroid/graphics/Matrix;

    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v7}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmDeviceProfile(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    iget v7, v7, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v7, v7

    add-float v24, v2, v14

    sub-float v7, v7, v24

    move/from16 v25, v8

    .end local v8    # "windowCropWidth":I
    .local v25, "windowCropWidth":I
    iget-object v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v8}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmDeviceProfile(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v8

    iget v8, v8, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v8, v8

    add-float v24, v5, v15

    sub-float v8, v8, v24

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 838
    .end local v25    # "windowCropWidth":I
    .restart local v8    # "windowCropWidth":I
    :cond_3
    move/from16 v25, v8

    .end local v8    # "windowCropWidth":I
    .restart local v25    # "windowCropWidth":I
    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 839
    iget-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$matrix:Landroid/graphics/Matrix;

    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v7}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmDeviceProfile(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    iget v7, v7, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v7, v7

    add-float v8, v5, v15

    sub-float/2addr v7, v8

    invoke-virtual {v6, v7, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 843
    :cond_4
    iget-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 846
    :goto_1
    iget-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$floatingView:Lcom/android/launcher3/views/FloatingIconView;

    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mIconAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    const/16 v28, 0xff

    iget-object v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$floatingIconBounds:Landroid/graphics/RectF;

    const/16 v31, 0x0

    move/from16 v34, v9

    .end local v9    # "windowCropHeight":I
    .local v34, "windowCropHeight":I
    iget-object v9, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mWindowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v9, v9, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    mul-float v32, v9, v12

    const/16 v33, 0x1

    move-object/from16 v26, v6

    move/from16 v27, v7

    move-object/from16 v29, v8

    move/from16 v30, p1

    invoke-virtual/range {v26 .. v33}, Lcom/android/launcher3/views/FloatingIconView;->update(FILandroid/graphics/RectF;FFFZ)V

    .line 848
    iget-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$crop:Landroid/graphics/Rect;

    .line 849
    invoke-virtual {v6, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mIconAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    .line 850
    invoke-virtual {v6, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mWindowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    .line 851
    invoke-virtual {v6, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mShadowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    .line 852
    invoke-virtual {v6, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withShadowRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_3

    .line 853
    .end local v25    # "windowCropWidth":I
    .end local v34    # "windowCropHeight":I
    .restart local v8    # "windowCropWidth":I
    .restart local v9    # "windowCropHeight":I
    :cond_5
    move/from16 v25, v8

    move/from16 v34, v9

    .end local v8    # "windowCropWidth":I
    .end local v9    # "windowCropHeight":I
    .restart local v25    # "windowCropWidth":I
    .restart local v34    # "windowCropHeight":I
    iget v6, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 854
    iget-object v6, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_6

    .line 855
    iget-object v6, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    .line 856
    .local v6, "localBounds":Landroid/graphics/Rect;
    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$tmpPos:Landroid/graphics/Point;

    iget-object v8, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Point;->set(II)V

    .line 857
    .end local v6    # "localBounds":Landroid/graphics/Rect;
    goto :goto_2

    .line 858
    :cond_6
    iget-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$tmpPos:Landroid/graphics/Point;

    iget-object v7, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 860
    :goto_2
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, v13, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 861
    .local v6, "crop":Landroid/graphics/Rect;
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 863
    iget v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$rotationChange:I

    const/4 v9, 0x2

    rem-int/2addr v8, v9

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 864
    iget v8, v6, Landroid/graphics/Rect;->right:I

    .line 865
    .local v8, "tmp":I
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 866
    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 867
    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$tmpPos:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    .line 868
    .end local v8    # "tmp":I
    .local v7, "tmp":I
    iget-object v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$tmpPos:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->y:I

    iput v9, v8, Landroid/graphics/Point;->x:I

    .line 869
    iget-object v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$tmpPos:Landroid/graphics/Point;

    iput v7, v8, Landroid/graphics/Point;->y:I

    .line 871
    .end local v7    # "tmp":I
    :cond_7
    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$matrix:Landroid/graphics/Matrix;

    iget-object v8, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$tmpPos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget-object v9, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$tmpPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 872
    iget-object v7, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v7

    .line 873
    invoke-virtual {v7, v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v7

    .line 874
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    goto :goto_3

    .line 853
    .end local v6    # "crop":Landroid/graphics/Rect;
    :cond_8
    const/high16 v8, 0x3f800000    # 1.0f

    .line 876
    :goto_3
    invoke-virtual {v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    .end local v4    # "builder":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    .end local v13    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    add-int/lit8 v3, v3, -0x1

    move/from16 v4, v21

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v25

    move/from16 v9, v34

    goto/16 :goto_0

    .end local v21    # "top":I
    .end local v22    # "right":I
    .end local v23    # "bottom":I
    .end local v25    # "windowCropWidth":I
    .end local v34    # "windowCropHeight":I
    .local v4, "top":I
    .local v6, "right":I
    .local v7, "bottom":I
    .local v8, "windowCropWidth":I
    .restart local v9    # "windowCropHeight":I
    :cond_9
    move/from16 v21, v4

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v25, v8

    move/from16 v34, v9

    .line 879
    .end local v3    # "i":I
    .end local v4    # "top":I
    .end local v6    # "right":I
    .end local v7    # "bottom":I
    .end local v8    # "windowCropWidth":I
    .end local v9    # "windowCropHeight":I
    .restart local v21    # "top":I
    .restart local v22    # "right":I
    .restart local v23    # "bottom":I
    .restart local v25    # "windowCropWidth":I
    .restart local v34    # "windowCropHeight":I
    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$navBarTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz v3, :cond_b

    .line 880
    new-instance v4, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v4, v3}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    move-object v3, v4

    .line 882
    .local v3, "navBuilder":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    iget-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-virtual {v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->getStartValue()F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_a

    .line 883
    iget-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v12, v12}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 884
    iget-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 885
    iget-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$crop:Landroid/graphics/Rect;

    .line 886
    invoke-virtual {v4, v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v6, v6, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    .line 887
    invoke-virtual {v4, v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    goto :goto_4

    .line 889
    :cond_a
    iget-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->mNavFadeOut:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .line 891
    :goto_4
    invoke-virtual {v3}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    .end local v3    # "navBuilder":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    :cond_b
    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 895
    return-void
.end method
