.class public final synthetic Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/util/SurfaceTransactionApplier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda32;->f$0:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda32;->f$0:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {v0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$linkRecentsViewScroll$27(Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method
