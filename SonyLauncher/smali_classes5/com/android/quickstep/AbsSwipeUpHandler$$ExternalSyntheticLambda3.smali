.class public final synthetic Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

.field public final synthetic f$1:F

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/graphics/PointF;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;FZLandroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda3;->f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda3;->f$1:F

    iput-boolean p3, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda3;->f$2:Z

    iput-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda3;->f$3:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda3;->f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda3;->f$1:F

    iget-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda3;->f$2:Z

    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda3;->f$3:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$onGestureEnded$12$com-android-quickstep-AbsSwipeUpHandler(FZLandroid/graphics/PointF;)V

    return-void
.end method
