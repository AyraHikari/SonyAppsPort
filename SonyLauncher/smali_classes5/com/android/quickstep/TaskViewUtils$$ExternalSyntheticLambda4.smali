.class public final synthetic Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;


# direct methods
.method public synthetic constructor <init>([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda4;->f$0:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$$ExternalSyntheticLambda4;->f$0:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {v0}, Lcom/android/quickstep/TaskViewUtils;->lambda$createRecentsWindowAnimator$0([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method
