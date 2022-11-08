.class public final synthetic Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[F

.field public final synthetic f$1:Landroid/animation/AnimatorSet;


# direct methods
.method public synthetic constructor <init>([FLandroid/animation/AnimatorSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda8;->f$0:[F

    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda8;->f$1:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda8;->f$0:[F

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda8;->f$1:Landroid/animation/AnimatorSet;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$getLauncherContentAnimator$3([FLandroid/animation/AnimatorSet;Landroid/view/View;)V

    return-void
.end method
