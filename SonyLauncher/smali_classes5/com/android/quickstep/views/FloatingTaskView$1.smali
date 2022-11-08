.class Lcom/android/quickstep/views/FloatingTaskView$1;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source "FloatingTaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/FloatingTaskView;->addAnimation(Lcom/android/launcher3/anim/PendingAnimation;Landroid/graphics/RectF;Landroid/graphics/Rect;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mTaskViewScaleX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final mTaskViewScaleY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic this$0:Lcom/android/quickstep/views/FloatingTaskView;

.field final synthetic val$animDuration:J

.field final synthetic val$floatingTaskViewBounds:Landroid/graphics/RectF;

.field final synthetic val$prop:Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;

.field final synthetic val$startingBounds:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/FloatingTaskView;Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;JLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 13
    .param p1, "this$0"    # Lcom/android/quickstep/views/FloatingTaskView;

    .line 208
    move-object v7, p0

    move-wide/from16 v8, p3

    move-object v10, p1

    iput-object v10, v7, Lcom/android/quickstep/views/FloatingTaskView$1;->this$0:Lcom/android/quickstep/views/FloatingTaskView;

    move-object v11, p2

    iput-object v11, v7, Lcom/android/quickstep/views/FloatingTaskView$1;->val$prop:Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;

    iput-wide v8, v7, Lcom/android/quickstep/views/FloatingTaskView$1;->val$animDuration:J

    move-object/from16 v0, p5

    iput-object v0, v7, Lcom/android/quickstep/views/FloatingTaskView$1;->val$floatingTaskViewBounds:Landroid/graphics/RectF;

    move-object/from16 v0, p6

    iput-object v0, v7, Lcom/android/quickstep/views/FloatingTaskView$1;->val$startingBounds:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    .line 209
    new-instance v12, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-static {p2}, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->-$$Nest$fgetdX(Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;)F

    move-result v3

    long-to-float v5, v8

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v12, v7, Lcom/android/quickstep/views/FloatingTaskView$1;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 210
    new-instance v12, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-static {p2}, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->-$$Nest$fgetdY(Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;)F

    move-result v3

    long-to-float v5, v8

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v12, v7, Lcom/android/quickstep/views/FloatingTaskView$1;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 211
    new-instance v12, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-static {p2}, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->-$$Nest$fgetfinalTaskViewScaleX(Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;)F

    move-result v3

    long-to-float v5, v8

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v12, v7, Lcom/android/quickstep/views/FloatingTaskView$1;->mTaskViewScaleX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    .line 213
    new-instance v12, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    invoke-static {p2}, Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;->-$$Nest$fgetfinalTaskViewScaleY(Lcom/android/quickstep/views/FloatingTaskView$SplitOverlayProperties;)F

    move-result v3

    long-to-float v5, v8

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v12, v7, Lcom/android/quickstep/views/FloatingTaskView$1;->mTaskViewScaleY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public onUpdate(FZ)V
    .locals 3
    .param p1, "percent"    # F
    .param p2, "initOnly"    # Z

    .line 218
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView$1;->val$floatingTaskViewBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView$1;->val$startingBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 219
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView$1;->val$floatingTaskViewBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView$1;->mDx:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v1, v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v2, p0, Lcom/android/quickstep/views/FloatingTaskView$1;->mDy:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 220
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView$1;->val$floatingTaskViewBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView$1;->mTaskViewScaleX:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v1, v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iget-object v2, p0, Lcom/android/quickstep/views/FloatingTaskView$1;->mTaskViewScaleY:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v2, v2, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;FF)V

    .line 223
    iget-object v0, p0, Lcom/android/quickstep/views/FloatingTaskView$1;->this$0:Lcom/android/quickstep/views/FloatingTaskView;

    iget-object v1, p0, Lcom/android/quickstep/views/FloatingTaskView$1;->val$floatingTaskViewBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/views/FloatingTaskView;->update(Landroid/graphics/RectF;F)V

    .line 224
    return-void
.end method
