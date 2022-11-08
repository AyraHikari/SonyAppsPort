.class Lcom/android/launcher3/QuickstepTransitionManager$15;
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

.field final synthetic val$finalFloatingIconView:Lcom/android/launcher3/views/FloatingIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Landroid/graphics/Rect;FLcom/android/launcher3/views/FloatingIconView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/QuickstepTransitionManager;
    .param p2, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "targetRect"    # Landroid/graphics/RectF;
    .param p4, "windowTargetBounds"    # Landroid/graphics/Rect;
    .param p5, "startWindowCornerRadius"    # F

    .line 1406
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$15;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput-object p6, p0, Lcom/android/launcher3/QuickstepTransitionManager$15;->val$finalFloatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Landroid/graphics/Rect;F)V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/RectF;F)V
    .locals 8
    .param p1, "currentRectF"    # Landroid/graphics/RectF;
    .param p2, "progress"    # F

    .line 1409
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$15;->val$finalFloatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    .line 1410
    invoke-virtual {p0, p2}, Lcom/android/launcher3/QuickstepTransitionManager$15;->getCornerRadius(F)F

    move-result v6

    .line 1409
    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xff

    const v5, 0x3f666666    # 0.9f

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/views/FloatingIconView;->update(FILandroid/graphics/RectF;FFFZ)V

    .line 1412
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->onUpdate(Landroid/graphics/RectF;F)V

    .line 1413
    return-void
.end method
