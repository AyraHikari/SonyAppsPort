.class public final synthetic Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda2;->f$1:Landroid/view/SurfaceControl$Transaction;

    iput-boolean p3, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda2;->f$1:Landroid/view/SurfaceControl$Transaction;

    iget-boolean v2, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda2;->f$2:Z

    invoke-static {v0, v1, v2, p1}, Lcom/android/quickstep/TaskViewUtils;->lambda$createSplitAuxiliarySurfacesAnimator$4(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
