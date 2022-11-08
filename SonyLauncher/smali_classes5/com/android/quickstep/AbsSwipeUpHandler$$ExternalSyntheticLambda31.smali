.class public final synthetic Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:J

.field public final synthetic f$4:Landroid/view/animation/Interpolator;

.field public final synthetic f$5:Lcom/android/quickstep/GestureState$GestureEndTarget;

.field public final synthetic f$6:Landroid/graphics/PointF;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda31;->f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda31;->f$1:F

    iput p3, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda31;->f$2:F

    iput-wide p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda31;->f$3:J

    iput-object p6, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda31;->f$4:Landroid/view/animation/Interpolator;

    iput-object p7, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda31;->f$5:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iput-object p8, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda31;->f$6:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda31;->f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda31;->f$1:F

    iget v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda31;->f$2:F

    iget-wide v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda31;->f$3:J

    iget-object v5, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda31;->f$4:Landroid/view/animation/Interpolator;

    iget-object v6, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda31;->f$5:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v7, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda31;->f$6:Landroid/graphics/PointF;

    invoke-virtual/range {v0 .. v7}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$animateToProgress$16$com-android-quickstep-AbsSwipeUpHandler(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void
.end method
