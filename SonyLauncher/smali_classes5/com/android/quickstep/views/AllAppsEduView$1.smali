.class Lcom/android/quickstep/views/AllAppsEduView$1;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source "AllAppsEduView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/AllAppsEduView;->playAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCircleAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mCircleScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mDeltaY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field mGradientAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic this$0:Lcom/android/quickstep/views/AllAppsEduView;

.field final synthetic val$circleBoundsOg:Landroid/graphics/Rect;

.field final synthetic val$firstPart:I

.field final synthetic val$gradientBoundsOg:Landroid/graphics/Rect;

.field final synthetic val$maxAllAppsProgress:F

.field final synthetic val$secondPart:I

.field final synthetic val$stateAnimationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field final synthetic val$temp:Landroid/graphics/Rect;

.field final synthetic val$transY:F


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/AllAppsEduView;IFILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .locals 13
    .param p1, "this$0"    # Lcom/android/quickstep/views/AllAppsEduView;

    .line 194
    move-object v7, p0

    move v8, p2

    move/from16 v9, p4

    move-object v10, p1

    iput-object v10, v7, Lcom/android/quickstep/views/AllAppsEduView$1;->this$0:Lcom/android/quickstep/views/AllAppsEduView;

    iput v8, v7, Lcom/android/quickstep/views/AllAppsEduView$1;->val$firstPart:I

    move/from16 v11, p3

    iput v11, v7, Lcom/android/quickstep/views/AllAppsEduView$1;->val$transY:F

    iput v9, v7, Lcom/android/quickstep/views/AllAppsEduView$1;->val$secondPart:I

    move-object/from16 v0, p5

    iput-object v0, v7, Lcom/android/quickstep/views/AllAppsEduView$1;->val$temp:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    iput-object v0, v7, Lcom/android/quickstep/views/AllAppsEduView$1;->val$circleBoundsOg:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    iput-object v0, v7, Lcom/android/quickstep/views/AllAppsEduView$1;->val$gradientBoundsOg:Landroid/graphics/Rect;

    move/from16 v0, p8

    iput v0, v7, Lcom/android/quickstep/views/AllAppsEduView$1;->val$maxAllAppsProgress:F

    move-object/from16 v0, p9

    iput-object v0, v7, Lcom/android/quickstep/views/AllAppsEduView$1;->val$stateAnimationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    .line 195
    new-instance v12, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    int-to-float v5, v8

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v4, 0x0

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v12, v7, Lcom/android/quickstep/views/AllAppsEduView$1;->mCircleAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 196
    new-instance v12, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    int-to-float v5, v8

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_1_7:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v12, v7, Lcom/android/quickstep/views/AllAppsEduView$1;->mCircleScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 197
    new-instance v12, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    int-to-float v4, v8

    int-to-float v5, v9

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    move-object v0, v12

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v12, v7, Lcom/android/quickstep/views/AllAppsEduView$1;->mDeltaY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 198
    new-instance v0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    int-to-float v1, v8

    int-to-float v2, v9

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/high16 v5, 0x437f0000    # 255.0f

    move-object p2, v0

    move-object/from16 p3, p0

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v1

    move/from16 p7, v2

    move-object/from16 p8, v3

    invoke-direct/range {p2 .. p8}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v0, v7, Lcom/android/quickstep/views/AllAppsEduView$1;->mGradientAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public onUpdate(FZ)V
    .locals 7
    .param p1, "progress"    # F
    .param p2, "initOnly"    # Z

    .line 202
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->val$temp:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->val$circleBoundsOg:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 203
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->val$temp:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->mDeltaY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v1, v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    neg-float v1, v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 204
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->val$temp:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->mCircleScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v1, v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 205
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->this$0:Lcom/android/quickstep/views/AllAppsEduView;

    invoke-static {v0}, Lcom/android/quickstep/views/AllAppsEduView;->-$$Nest$fgetmCircle(Lcom/android/quickstep/views/AllAppsEduView;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->val$temp:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 206
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->this$0:Lcom/android/quickstep/views/AllAppsEduView;

    invoke-static {v0}, Lcom/android/quickstep/views/AllAppsEduView;->-$$Nest$fgetmCircle(Lcom/android/quickstep/views/AllAppsEduView;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->mCircleAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v1, v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 207
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->this$0:Lcom/android/quickstep/views/AllAppsEduView;

    invoke-static {v0}, Lcom/android/quickstep/views/AllAppsEduView;->-$$Nest$fgetmGradient(Lcom/android/quickstep/views/AllAppsEduView;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->mGradientAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v1, v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 209
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->val$temp:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->val$gradientBoundsOg:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 210
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->val$temp:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->mDeltaY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 211
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->this$0:Lcom/android/quickstep/views/AllAppsEduView;

    invoke-static {v0}, Lcom/android/quickstep/views/AllAppsEduView;->-$$Nest$fgetmGradient(Lcom/android/quickstep/views/AllAppsEduView;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->val$temp:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 212
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->this$0:Lcom/android/quickstep/views/AllAppsEduView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/AllAppsEduView;->invalidate()V

    .line 214
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->mDeltaY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v1, v0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget v3, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->val$transY:F

    iget v5, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->val$maxAllAppsProgress:F

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    .line 216
    .local v0, "stateProgress":F
    iget-object v1, p0, Lcom/android/quickstep/views/AllAppsEduView$1;->val$stateAnimationController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 217
    return-void
.end method
