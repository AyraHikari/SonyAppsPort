.class public final synthetic Lcom/android/quickstep/util/SurfaceTransactionApplier$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/util/SurfaceTransactionApplier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransactionApplier$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->onApplyMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
