.class Lcom/android/launcher3/QuickstepTransitionManager$16;
.super Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;
.source "QuickstepTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;->getClosingWindowAnimators(Landroid/animation/AnimatorSet;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/RectF;F)Lcom/android/quickstep/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field final synthetic val$finalFloatingWidget:Lcom/android/quickstep/views/FloatingWidgetView;

.field final synthetic val$floatingWidgetAlpha:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Landroid/graphics/Rect;FLcom/android/quickstep/views/FloatingWidgetView;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/QuickstepTransitionManager;
    .param p2, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "targetRect"    # Landroid/graphics/RectF;
    .param p4, "windowTargetBounds"    # Landroid/graphics/Rect;
    .param p5, "startWindowCornerRadius"    # F

    .line 1424
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$16;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput-object p6, p0, Lcom/android/launcher3/QuickstepTransitionManager$16;->val$finalFloatingWidget:Lcom/android/quickstep/views/FloatingWidgetView;

    iput p7, p0, Lcom/android/launcher3/QuickstepTransitionManager$16;->val$floatingWidgetAlpha:F

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Landroid/graphics/Rect;F)V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/RectF;F)V
    .locals 9
    .param p1, "currentRectF"    # Landroid/graphics/RectF;
    .param p2, "progress"    # F

    .line 1427
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    .line 1428
    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move v0, p2

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 1429
    .local v0, "fallbackBackgroundAlpha":F
    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    .line 1430
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p2

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v8

    .line 1431
    .local v8, "foregroundAlpha":F
    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$16;->val$finalFloatingWidget:Lcom/android/quickstep/views/FloatingWidgetView;

    iget v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$16;->val$floatingWidgetAlpha:F

    sub-float v7, v1, p2

    move-object v3, p1

    move v5, v8

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/quickstep/views/FloatingWidgetView;->update(Landroid/graphics/RectF;FFFF)V

    .line 1434
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->onUpdate(Landroid/graphics/RectF;F)V

    .line 1435
    return-void
.end method
