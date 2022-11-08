.class public final synthetic Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, p1}, Lcom/android/quickstep/TaskViewUtils;->lambda$composeRecentsSplitLaunchAnimatorLegacy$2(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method
