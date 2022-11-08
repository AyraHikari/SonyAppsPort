.class Lcom/android/quickstep/interaction/TutorialFragment$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TutorialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/TutorialFragment;->updateFeedbackAnimation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/TutorialFragment;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/TutorialFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/TutorialFragment;

    .line 251
    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment$1;->this$0:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 260
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 261
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment$1;->this$0:Lcom/android/quickstep/interaction/TutorialFragment;

    iget-object v0, v0, Lcom/android/quickstep/interaction/TutorialFragment;->mFingerDotView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 266
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 267
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment$1;->this$0:Lcom/android/quickstep/interaction/TutorialFragment;

    iget-object v0, v0, Lcom/android/quickstep/interaction/TutorialFragment;->mFingerDotView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 254
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 255
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment$1;->this$0:Lcom/android/quickstep/interaction/TutorialFragment;

    iget-object v0, v0, Lcom/android/quickstep/interaction/TutorialFragment;->mFingerDotView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    return-void
.end method
