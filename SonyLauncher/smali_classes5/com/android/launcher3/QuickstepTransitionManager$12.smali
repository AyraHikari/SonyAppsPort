.class Lcom/android/launcher3/QuickstepTransitionManager$12;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source "QuickstepTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;->getOpeningWindowAnimatorsForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mAppWindowScale:F

.field final mCornerRadiusProgress:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mHeight:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mNavFadeOut:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mPreviewAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mWidgetFallbackBackgroundAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mWidgetForegroundAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mWidth:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mWindowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field final synthetic val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field final synthetic val$appTargetsAreTranslucent:Z

.field final synthetic val$appWindowCrop:Landroid/graphics/Rect;

.field final synthetic val$finalWindowRadius:F

.field final synthetic val$floatingView:Lcom/android/quickstep/views/FloatingWidgetView;

.field final synthetic val$initialWindowRadius:F

.field final synthetic val$matrix:Landroid/graphics/Matrix;

.field final synthetic val$navBarTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field final synthetic val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field final synthetic val$widgetBackgroundBounds:Landroid/graphics/RectF;

.field final synthetic val$windowTargetBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;FFLandroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/views/FloatingWidgetView;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .locals 12
    .param p1, "this$0"    # Lcom/android/launcher3/QuickstepTransitionManager;

    .line 961
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    move v2, p2

    iput v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$initialWindowRadius:F

    move v3, p3

    iput v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$finalWindowRadius:F

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$widgetBackgroundBounds:Landroid/graphics/RectF;

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$windowTargetBounds:Landroid/graphics/Rect;

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$appWindowCrop:Landroid/graphics/Rect;

    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$matrix:Landroid/graphics/Matrix;

    move/from16 v6, p8

    iput-boolean v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$appTargetsAreTranslucent:Z

    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object/from16 v6, p10

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$floatingView:Lcom/android/quickstep/views/FloatingWidgetView;

    move-object/from16 v6, p11

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$navBarTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object/from16 v6, p12

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    .line 962
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mAppWindowScale:F

    .line 963
    new-instance v6, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x42780000    # 62.0f

    move-object/from16 p6, v6

    move-object/from16 p7, p0

    move/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move-object/from16 p12, v7

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mWidgetForegroundAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 966
    new-instance v6, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v11, 0x42960000    # 75.0f

    move-object/from16 p6, v6

    move/from16 p8, v8

    move/from16 p9, v9

    move/from16 p11, v11

    move-object/from16 p12, v7

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mWidgetFallbackBackgroundAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 968
    new-instance v6, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v10, 0x42780000    # 62.0f

    const/high16 v11, 0x42780000    # 62.0f

    move-object/from16 p6, v6

    move/from16 p10, v10

    move/from16 p11, v11

    move-object/from16 p12, v7

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mPreviewAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 971
    new-instance v6, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmOpeningInterpolator(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v7

    const/high16 v9, 0x43fa0000    # 500.0f

    move-object/from16 p6, v6

    move/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, v8

    move/from16 p11, v9

    move-object/from16 p12, v7

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v6, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mWindowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 973
    new-instance v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmOpeningInterpolator(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v3

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 p6, v2

    move/from16 p8, v6

    move/from16 p9, v7

    move-object/from16 p12, v3

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mCornerRadiusProgress:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 977
    new-instance v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    .line 978
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmOpeningXInterpolator(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v7

    move-object/from16 p6, v2

    move/from16 p8, v3

    move/from16 p9, v6

    move-object/from16 p12, v7

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 980
    new-instance v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 981
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmOpeningInterpolator(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v7

    move-object/from16 p6, v2

    move/from16 p8, v3

    move/from16 p9, v6

    move-object/from16 p12, v7

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 983
    new-instance v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 984
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmOpeningInterpolator(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v7

    move-object/from16 p6, v2

    move/from16 p8, v3

    move/from16 p9, v6

    move-object/from16 p12, v7

    invoke-direct/range {p6 .. p12}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mWidth:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 986
    new-instance v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 987
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-static {p1}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmOpeningInterpolator(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/view/animation/Interpolator;

    move-result-object v5

    const/4 v6, 0x0

    const/high16 v7, 0x43fa0000    # 500.0f

    move-object p2, v2

    move-object p3, p0

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v6

    move/from16 p7, v7

    move-object/from16 p8, v5

    invoke-direct/range {p2 .. p8}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mHeight:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 990
    new-instance v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v3, Lcom/android/launcher3/QuickstepTransitionManager;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v7, 0x43050000    # 133.0f

    move-object p2, v2

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p7, v7

    move-object/from16 p8, v3

    invoke-direct/range {p2 .. p8}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mNavFadeOut:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 992
    new-instance v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v3, Lcom/android/launcher3/QuickstepTransitionManager;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x436a0000    # 234.0f

    const/high16 v7, 0x43850000    # 266.0f

    move-object p2, v2

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move-object/from16 p8, v3

    invoke-direct/range {p2 .. p8}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public onUpdate(FZ)V
    .locals 10
    .param p1, "percent"    # F
    .param p2, "initOnly"    # Z

    .line 997
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$widgetBackgroundBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v1, v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mWidth:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mHeight:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v5, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mWidth:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v5, v5, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v5, v5, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v6, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mHeight:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v6, v6, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    div-float/2addr v6, v3

    add-float/2addr v5, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1001
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$widgetBackgroundBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$windowTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mAppWindowScale:F

    .line 1003
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$appWindowCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$windowTargetBounds:Landroid/graphics/Rect;

    .line 1004
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$widgetBackgroundBounds:Landroid/graphics/RectF;

    .line 1005
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mAppWindowScale:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1003
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1006
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$widgetBackgroundBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$widgetBackgroundBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1007
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mAppWindowScale:F

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$widgetBackgroundBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$widgetBackgroundBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1010
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    .local v0, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;>;"
    iget-boolean v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$appTargetsAreTranslucent:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mPreviewAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v1, v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    sub-float/2addr v2, v1

    :cond_0
    move v5, v2

    .line 1012
    .local v5, "floatingViewAlpha":F
    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1013
    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v2, v2, v1

    .line 1014
    .local v2, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    new-instance v3, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v4, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v3, v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    move-object v9, v3

    .line 1015
    .local v9, "builder":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    iget v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v3, :cond_1

    .line 1016
    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$floatingView:Lcom/android/quickstep/views/FloatingWidgetView;

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$widgetBackgroundBounds:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mWidgetForegroundAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v6, v6, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v7, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mWidgetFallbackBackgroundAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v7, v7, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v8, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mCornerRadiusProgress:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v8, v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual/range {v3 .. v8}, Lcom/android/quickstep/views/FloatingWidgetView;->update(Landroid/graphics/RectF;FFFF)V

    .line 1019
    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v3}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$appWindowCrop:Landroid/graphics/Rect;

    .line 1020
    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mPreviewAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    .line 1021
    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mWindowRadius:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v4, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget v6, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mAppWindowScale:F

    div-float/2addr v4, v6

    .line 1022
    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .line 1024
    :cond_1
    invoke-virtual {v9}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    .end local v2    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v9    # "builder":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1027
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$navBarTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz v1, :cond_4

    .line 1028
    new-instance v2, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v1, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v2, v1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    move-object v1, v2

    .line 1030
    .local v1, "navBuilder":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-virtual {v3}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->getStartValue()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 1031
    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$appWindowCrop:Landroid/graphics/Rect;

    .line 1032
    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mNavFadeIn:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v3, v3, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    .line 1033
    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    goto :goto_1

    .line 1035
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->mNavFadeOut:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .line 1037
    :goto_1
    invoke-virtual {v1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    .end local v1    # "navBuilder":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$12;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 1041
    return-void
.end method
