.class Lcom/android/quickstep/interaction/AnimatedTaskbarView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatedTaskbarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconDisappearanceToHotseatAnimator(Landroid/view/View;Landroid/view/View;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

.field final synthetic val$taskbarIcon:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    .line 315
    iput-object p1, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$6;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    iput-object p2, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$6;->val$taskbarIcon:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 318
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 319
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$6;->val$taskbarIcon:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 324
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 325
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$6;->val$taskbarIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    return-void
.end method
