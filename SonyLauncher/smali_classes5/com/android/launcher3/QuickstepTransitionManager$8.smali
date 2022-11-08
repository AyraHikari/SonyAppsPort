.class Lcom/android/launcher3/QuickstepTransitionManager$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;->composeViewContentAnimator(Landroid/animation/AnimatorSet;[F[F)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field final synthetic val$overview:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/views/RecentsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/QuickstepTransitionManager;

    .line 617
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$overview:Lcom/android/quickstep/views/RecentsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 625
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$overview:Lcom/android/quickstep/views/RecentsView;

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$8;->val$overview:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, v1}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 626
    .local v0, "alpha":F
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QTM composeViewContentAnimator onCancel, alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "b/223498680"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 631
    const-string v0, "b/223498680"

    const-string v1, "QTM composeViewContentAnimator onEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 620
    const-string v0, "b/223498680"

    const-string v1, "QTM composeViewContentAnimator onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-void
.end method
