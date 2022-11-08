.class Lcom/android/quickstep/LauncherSwipeHandlerV2$3;
.super Lcom/android/quickstep/LauncherSwipeHandlerV2$FloatingViewHomeAnimationFactory;
.source "LauncherSwipeHandlerV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/LauncherSwipeHandlerV2;->createWidgetHomeAnimationFactory(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;ZLcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/LauncherSwipeHandlerV2;

.field final synthetic val$backgroundLocation:Landroid/graphics/RectF;

.field final synthetic val$floatingWidgetAlpha:F

.field final synthetic val$floatingWidgetView:Lcom/android/quickstep/views/FloatingWidgetView;

.field final synthetic val$hostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;Lcom/android/launcher3/views/FloatingView;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/graphics/RectF;Lcom/android/quickstep/views/FloatingWidgetView;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/LauncherSwipeHandlerV2;
    .param p2, "floatingView"    # Lcom/android/launcher3/views/FloatingView;

    .line 161
    iput-object p1, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->this$0:Lcom/android/quickstep/LauncherSwipeHandlerV2;

    iput-object p3, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$hostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iput-object p4, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$backgroundLocation:Landroid/graphics/RectF;

    iput-object p5, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$floatingWidgetView:Lcom/android/quickstep/views/FloatingWidgetView;

    iput p6, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$floatingWidgetAlpha:F

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/LauncherSwipeHandlerV2$FloatingViewHomeAnimationFactory;-><init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;Lcom/android/launcher3/views/FloatingView;)V

    return-void
.end method


# virtual methods
.method public getEndRadius(Landroid/graphics/RectF;)F
    .locals 1
    .param p1, "cropRectF"    # Landroid/graphics/RectF;

    .line 177
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$floatingWidgetView:Lcom/android/quickstep/views/FloatingWidgetView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/FloatingWidgetView;->getInitialCornerRadius()F

    move-result v0

    return v0
.end method

.method protected getViewIgnoredInWorkspaceRevealAnimation()Landroid/view/View;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$hostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    return-object v0
.end method

.method protected getWindowAlpha(F)F
    .locals 6
    .param p1, "progress"    # F

    .line 202
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    return v1
.end method

.method public getWindowTargetRect()Landroid/graphics/RectF;
    .locals 1

    .line 171
    invoke-super {p0}, Lcom/android/quickstep/LauncherSwipeHandlerV2$FloatingViewHomeAnimationFactory;->getWindowTargetRect()Landroid/graphics/RectF;

    .line 172
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$backgroundLocation:Landroid/graphics/RectF;

    return-object v0
.end method

.method public setAnimation(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .locals 2
    .param p1, "anim"    # Lcom/android/quickstep/util/RectFSpringAnim;

    .line 182
    invoke-super {p0, p1}, Lcom/android/quickstep/LauncherSwipeHandlerV2$FloatingViewHomeAnimationFactory;->setAnimation(Lcom/android/quickstep/util/RectFSpringAnim;)V

    .line 184
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$floatingWidgetView:Lcom/android/quickstep/views/FloatingWidgetView;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 185
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$floatingWidgetView:Lcom/android/quickstep/views/FloatingWidgetView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/FloatingWidgetView;->setOnTargetChangeListener(Ljava/lang/Runnable;)V

    .line 186
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$floatingWidgetView:Lcom/android/quickstep/views/FloatingWidgetView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/FloatingWidgetView;->setFastFinishRunnable(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method public update(Landroid/graphics/RectF;FF)V
    .locals 9
    .param p1, "currentRect"    # Landroid/graphics/RectF;
    .param p2, "progress"    # F
    .param p3, "radius"    # F

    .line 191
    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/LauncherSwipeHandlerV2$FloatingViewHomeAnimationFactory;->update(Landroid/graphics/RectF;FF)V

    .line 192
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    .line 193
    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move v0, p2

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 194
    .local v0, "fallbackBackgroundAlpha":F
    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    .line 195
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p2

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v8

    .line 196
    .local v8, "foregroundAlpha":F
    iget-object v2, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$floatingWidgetView:Lcom/android/quickstep/views/FloatingWidgetView;

    iget v4, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$floatingWidgetAlpha:F

    sub-float v7, v1, p2

    move-object v3, p1

    move v5, v8

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/quickstep/views/FloatingWidgetView;->update(Landroid/graphics/RectF;FFFF)V

    .line 198
    return-void
.end method
