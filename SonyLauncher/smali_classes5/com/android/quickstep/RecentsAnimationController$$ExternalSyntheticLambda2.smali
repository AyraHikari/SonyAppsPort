.class public final synthetic Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/RecentsAnimationController;

.field public final synthetic f$1:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/RecentsAnimationController;

    iput-object p2, p0, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/RecentsAnimationController;

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsAnimationController;->lambda$removeTaskTarget$2$com-android-quickstep-RecentsAnimationController(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    return-void
.end method
