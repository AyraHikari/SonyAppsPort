.class public final synthetic Lcom/android/launcher3/graphics/IconShape$TearDrop$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/graphics/IconShape$TearDrop;

.field public final synthetic f$1:Landroid/animation/FloatArrayEvaluator;

.field public final synthetic f$2:[F

.field public final synthetic f$3:[F

.field public final synthetic f$4:Landroid/graphics/Path;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/IconShape$TearDrop;Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/IconShape$TearDrop$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/graphics/IconShape$TearDrop;

    iput-object p2, p0, Lcom/android/launcher3/graphics/IconShape$TearDrop$$ExternalSyntheticLambda0;->f$1:Landroid/animation/FloatArrayEvaluator;

    iput-object p3, p0, Lcom/android/launcher3/graphics/IconShape$TearDrop$$ExternalSyntheticLambda0;->f$2:[F

    iput-object p4, p0, Lcom/android/launcher3/graphics/IconShape$TearDrop$$ExternalSyntheticLambda0;->f$3:[F

    iput-object p5, p0, Lcom/android/launcher3/graphics/IconShape$TearDrop$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$TearDrop$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/graphics/IconShape$TearDrop;

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShape$TearDrop$$ExternalSyntheticLambda0;->f$1:Landroid/animation/FloatArrayEvaluator;

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShape$TearDrop$$ExternalSyntheticLambda0;->f$2:[F

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconShape$TearDrop$$ExternalSyntheticLambda0;->f$3:[F

    iget-object v4, p0, Lcom/android/launcher3/graphics/IconShape$TearDrop$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/Path;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/graphics/IconShape$TearDrop;->lambda$newUpdateListener$0$com-android-launcher3-graphics-IconShape$TearDrop(Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;Landroid/animation/ValueAnimator;)V

    return-void
.end method
