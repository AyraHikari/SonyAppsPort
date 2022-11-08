.class Lcom/android/quickstep/interaction/AnimatedTaskbarView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatedTaskbarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/AnimatedTaskbarView;->start(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

.field final synthetic val$animator:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    .line 266
    iput-object p1, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$5;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    iput-object p2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$5;->val$animator:Landroid/animation/Animator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 269
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 270
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$5;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->-$$Nest$fputmRunningAnimator(Lcom/android/quickstep/interaction/AnimatedTaskbarView;Landroid/animation/Animator;)V

    .line 271
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 275
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 276
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$5;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->-$$Nest$fputmRunningAnimator(Lcom/android/quickstep/interaction/AnimatedTaskbarView;Landroid/animation/Animator;)V

    .line 277
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 281
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 282
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$5;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$5;->val$animator:Landroid/animation/Animator;

    invoke-static {v0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->-$$Nest$fputmRunningAnimator(Lcom/android/quickstep/interaction/AnimatedTaskbarView;Landroid/animation/Animator;)V

    .line 283
    return-void
.end method
