.class public final synthetic Lcom/android/quickstep/util/SurfaceTransactionApplier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/SurfaceTransactionApplier;ILandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iput p2, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final onFrameDraw(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget v1, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->lambda$scheduleApply$0$com-android-quickstep-util-SurfaceTransactionApplier(ILandroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method
