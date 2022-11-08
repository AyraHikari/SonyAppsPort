.class public Lcom/android/quickstep/util/SurfaceTransactionApplier;
.super Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;
.source "SurfaceTransactionApplier.java"


# static fields
.field private static final MSG_UPDATE_SEQUENCE_NUMBER:I


# instance fields
.field private final mApplyHandler:Landroid/os/Handler;

.field private final mBarrierSurfaceControl:Landroid/view/SurfaceControl;

.field private mLastSequenceNumber:I

.field private final mTargetViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "targetView"    # Landroid/view/View;

    .line 52
    invoke-direct {p0}, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mLastSequenceNumber:I

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    .line 54
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mBarrierSurfaceControl:Landroid/view/SurfaceControl;

    .line 55
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/quickstep/util/SurfaceTransactionApplier$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/SurfaceTransactionApplier$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mApplyHandler:Landroid/os/Handler;

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->setCanRelease(Z)V

    .line 57
    return-void
.end method

.method public static create(Landroid/view/View;Ljava/util/function/Consumer;)V
    .locals 1
    .param p0, "targetView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/util/SurfaceTransactionApplier;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/quickstep/util/SurfaceTransactionApplier;>;"
    if-nez p0, :cond_0

    .line 112
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_1
    new-instance v0, Lcom/android/quickstep/util/SurfaceTransactionApplier$1;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier$1;-><init>(Landroid/view/View;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 131
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$scheduleApply$0$com-android-quickstep-util-SurfaceTransactionApplier(ILandroid/view/SurfaceControl$Transaction;J)V
    .locals 2
    .param p1, "toApplySeqNo"    # I
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "frame"    # J

    .line 90
    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mBarrierSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p2, p3, p4}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 96
    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mApplyHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 98
    return-void

    .line 91
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mApplyHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 93
    return-void
.end method

.method protected onApplyMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 61
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mLastSequenceNumber:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->setCanRelease(Z)V

    .line 62
    return v3

    .line 64
    :cond_1
    return v1
.end method

.method public varargs scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 5
    .param p1, "params"    # [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    .line 74
    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 79
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 80
    aget-object v3, p1, v2

    .line 81
    .local v3, "surfaceParams":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    iget-object v4, v3, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    invoke-virtual {v3, v1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->applyTo(Landroid/view/SurfaceControl$Transaction;)V

    .line 79
    .end local v3    # "surfaceParams":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 86
    .end local v2    # "i":I
    :cond_2
    iget v2, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mLastSequenceNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mLastSequenceNumber:I

    .line 87
    iget v2, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mLastSequenceNumber:I

    .line 88
    .local v2, "toApplySeqNo":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->setCanRelease(Z)V

    .line 89
    iget-object v3, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    new-instance v4, Lcom/android/quickstep/util/SurfaceTransactionApplier$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/SurfaceTransactionApplier;ILandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 101
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 102
    return-void
.end method
