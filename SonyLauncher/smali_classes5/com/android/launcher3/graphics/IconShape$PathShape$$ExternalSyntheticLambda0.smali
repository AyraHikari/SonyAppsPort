.class public final synthetic Lcom/android/launcher3/graphics/IconShape$PathShape$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Path;

.field public final synthetic f$1:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Path;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/IconShape$PathShape$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Path;

    iput-object p2, p0, Lcom/android/launcher3/graphics/IconShape$PathShape$$ExternalSyntheticLambda0;->f$1:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object p3, p0, Lcom/android/launcher3/graphics/IconShape$PathShape$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$PathShape$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$PathShape$$ExternalSyntheticLambda0;->f$1:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShape$PathShape$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lcom/android/launcher3/graphics/IconShape$PathShape;->lambda$createRevealAnimator$0(Landroid/graphics/Path;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
