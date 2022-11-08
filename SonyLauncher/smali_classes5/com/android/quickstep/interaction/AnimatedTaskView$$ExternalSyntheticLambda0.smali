.class public final synthetic Lcom/android/quickstep/interaction/AnimatedTaskView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:I

.field public final synthetic f$3:F

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/AnimatedTaskView;Landroid/graphics/Rect;IFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    iput-object p2, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$$ExternalSyntheticLambda0;->f$3:F

    iput p5, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$$ExternalSyntheticLambda0;->f$4:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$$ExternalSyntheticLambda0;->f$3:F

    iget v4, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$$ExternalSyntheticLambda0;->f$4:F

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/quickstep/interaction/AnimatedTaskView;->lambda$createAnimationToMultiRowLayout$0$com-android-quickstep-interaction-AnimatedTaskView(Landroid/graphics/Rect;IFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
