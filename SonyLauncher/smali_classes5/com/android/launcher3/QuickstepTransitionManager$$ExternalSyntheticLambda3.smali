.class public final synthetic Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field public final synthetic f$1:Lcom/android/quickstep/util/RemoteAnimationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/util/RemoteAnimationProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda3;->f$1:Lcom/android/quickstep/util/RemoteAnimationProvider;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda3;->f$1:Lcom/android/quickstep/util/RemoteAnimationProvider;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$setRemoteAnimationProvider$0$com-android-launcher3-QuickstepTransitionManager(Lcom/android/quickstep/util/RemoteAnimationProvider;)V

    return-void
.end method
