.class public final synthetic Lcom/android/launcher3/anim/RevealOutlineAnimation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/anim/RevealOutlineAnimation;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/anim/RevealOutlineAnimation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/anim/RevealOutlineAnimation;

    iput-object p2, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/anim/RevealOutlineAnimation;

    iget-object v1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/anim/RevealOutlineAnimation;->lambda$createRevealAnimator$0$com-android-launcher3-anim-RevealOutlineAnimation(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
