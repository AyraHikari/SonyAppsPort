.class public final Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewHierarchyAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateRemoval(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $duration:J

.field final synthetic $parent:Landroid/view/ViewGroup;

.field final synthetic $rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;JLandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "$rootView"    # Landroid/view/View;
    .param p2, "$duration"    # J
    .param p4, "$parent"    # Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;->$rootView:Landroid/view/View;

    iput-wide p2, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;->$duration:J

    iput-object p4, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;->$parent:Landroid/view/ViewGroup;

    .line 403
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;->$rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 406
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 407
    sget-object v1, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 408
    iget-wide v1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;->$duration:J

    const/4 v3, 0x2

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 409
    new-instance v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2$onAnimationEnd$1;

    iget-object v2, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;->$parent:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;->$rootView:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2$onAnimationEnd$1;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 411
    return-void
.end method
