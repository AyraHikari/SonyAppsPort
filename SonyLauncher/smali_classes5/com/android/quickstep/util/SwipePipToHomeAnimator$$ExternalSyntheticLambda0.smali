.class public final synthetic Lcom/android/quickstep/util/SwipePipToHomeAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/SwipePipToHomeAnimator;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    iput-object p2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;F)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    iget-object v1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->lambda$new$0$com-android-quickstep-util-SwipePipToHomeAnimator(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;F)V

    return-void
.end method
