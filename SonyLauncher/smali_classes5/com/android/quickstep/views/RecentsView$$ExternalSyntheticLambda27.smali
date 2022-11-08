.class public final synthetic Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/DeviceProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda27;->f$0:Lcom/android/launcher3/DeviceProfile;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda27;->f$0:Lcom/android/launcher3/DeviceProfile;

    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {v0, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$setInsets$5(Lcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method
