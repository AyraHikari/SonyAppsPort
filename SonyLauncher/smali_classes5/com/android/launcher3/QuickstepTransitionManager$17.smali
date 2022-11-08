.class Lcom/android/launcher3/QuickstepTransitionManager$17;
.super Landroid/animation/AnimatorListenerAdapter;
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

.field final synthetic val$anim:Lcom/android/quickstep/util/RectFSpringAnim;

.field final synthetic val$velocityPxPerS:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/util/RectFSpringAnim;Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/QuickstepTransitionManager;

    .line 1446
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$17;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$17;->val$anim:Lcom/android/quickstep/util/RectFSpringAnim;

    iput-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager$17;->val$velocityPxPerS:Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1449
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$17;->val$anim:Lcom/android/quickstep/util/RectFSpringAnim;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$17;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$17;->val$velocityPxPerS:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/util/RectFSpringAnim;->start(Landroid/content/Context;Landroid/graphics/PointF;)V

    .line 1450
    return-void
.end method
