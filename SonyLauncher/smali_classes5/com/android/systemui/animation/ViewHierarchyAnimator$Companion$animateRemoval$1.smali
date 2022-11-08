.class final Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$1;
.super Ljava/lang/Object;
.source "ViewHierarchyAnimator.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateRemoval(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "animation",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $rootView:Landroid/view/View;

.field final synthetic $startAlphas:[F


# direct methods
.method constructor <init>(Landroid/view/View;[F)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$1;->$rootView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$1;->$startAlphas:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 398
    iget-object v0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$1;->$rootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    move v2, v1

    .local v2, "i":I
    add-int/lit8 v1, v1, 0x1

    .line 399
    iget-object v3, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$1;->$rootView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 400
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$1;->$startAlphas:[F

    aget v5, v5, v2

    mul-float/2addr v4, v5

    .line 399
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 400
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
