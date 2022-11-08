.class Lcom/android/launcher3/anim/RevealOutlineAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RevealOutlineAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;ZF)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsClippedToOutline:Z

.field private mOldOutlineProvider:Landroid/view/ViewOutlineProvider;

.field final synthetic this$0:Lcom/android/launcher3/anim/RevealOutlineAnimation;

.field final synthetic val$elevation:F

.field final synthetic val$revealView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/anim/RevealOutlineAnimation;Landroid/view/View;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/anim/RevealOutlineAnimation;

    .line 52
    iput-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->this$0:Lcom/android/launcher3/anim/RevealOutlineAnimation;

    iput-object p2, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$elevation:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->mOldOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->mIsClippedToOutline:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->this$0:Lcom/android/launcher3/anim/RevealOutlineAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/RevealOutlineAnimation;->shouldRemoveElevationDuringAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 73
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getClipToOutline()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->mIsClippedToOutline:Z

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->mOldOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->this$0:Lcom/android/launcher3/anim/RevealOutlineAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->this$0:Lcom/android/launcher3/anim/RevealOutlineAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/RevealOutlineAnimation;->shouldRemoveElevationDuringAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;->val$elevation:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 65
    :cond_0
    return-void
.end method
