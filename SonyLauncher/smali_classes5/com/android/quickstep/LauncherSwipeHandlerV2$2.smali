.class Lcom/android/quickstep/LauncherSwipeHandlerV2$2;
.super Lcom/android/quickstep/LauncherSwipeHandlerV2$FloatingViewHomeAnimationFactory;
.source "LauncherSwipeHandlerV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/LauncherSwipeHandlerV2;->createIconHomeAnimationFactory(Landroid/view/View;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/LauncherSwipeHandlerV2;

.field final synthetic val$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

.field final synthetic val$iconLocation:Landroid/graphics/RectF;

.field final synthetic val$windowAlphaThreshold:F

.field final synthetic val$workspaceView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;Lcom/android/launcher3/views/FloatingView;Landroid/view/View;Landroid/graphics/RectF;Lcom/android/launcher3/views/FloatingIconView;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/LauncherSwipeHandlerV2;
    .param p2, "floatingView"    # Lcom/android/launcher3/views/FloatingView;

    .line 113
    iput-object p1, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$2;->this$0:Lcom/android/quickstep/LauncherSwipeHandlerV2;

    iput-object p3, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$2;->val$workspaceView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$2;->val$iconLocation:Landroid/graphics/RectF;

    iput-object p5, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$2;->val$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    iput p6, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$2;->val$windowAlphaThreshold:F

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/LauncherSwipeHandlerV2$FloatingViewHomeAnimationFactory;-><init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;Lcom/android/launcher3/views/FloatingView;)V

    return-void
.end method


# virtual methods
.method protected getViewIgnoredInWorkspaceRevealAnimation()Landroid/view/View;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$2;->val$workspaceView:Landroid/view/View;

    return-object v0
.end method

.method public getWindowTargetRect()Landroid/graphics/RectF;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$2;->val$iconLocation:Landroid/graphics/RectF;

    return-object v0
.end method

.method public setAnimation(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .locals 2
    .param p1, "anim"    # Lcom/android/quickstep/util/RectFSpringAnim;

    .line 129
    invoke-super {p0, p1}, Lcom/android/quickstep/LauncherSwipeHandlerV2$FloatingViewHomeAnimationFactory;->setAnimation(Lcom/android/quickstep/util/RectFSpringAnim;)V

    .line 130
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$2;->val$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$2;->val$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/FloatingIconView;->setOnTargetChangeListener(Ljava/lang/Runnable;)V

    .line 132
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$2;->val$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/FloatingIconView;->setFastFinishRunnable(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public update(Landroid/graphics/RectF;FF)V
    .locals 8
    .param p1, "currentRect"    # Landroid/graphics/RectF;
    .param p2, "progress"    # F
    .param p3, "radius"    # F

    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/LauncherSwipeHandlerV2$FloatingViewHomeAnimationFactory;->update(Landroid/graphics/RectF;FF)V

    .line 138
    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$2;->val$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    iget v5, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$2;->val$windowAlphaThreshold:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xff

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/views/FloatingIconView;->update(FILandroid/graphics/RectF;FFFZ)V

    .line 140
    return-void
.end method
