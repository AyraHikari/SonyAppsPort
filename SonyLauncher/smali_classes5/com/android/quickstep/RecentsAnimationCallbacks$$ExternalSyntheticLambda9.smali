.class public final synthetic Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/RecentsAnimationCallbacks;

.field public final synthetic f$1:Lcom/android/quickstep/RecentsAnimationTargets;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda9;->f$0:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iput-object p2, p0, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda9;->f$1:Lcom/android/quickstep/RecentsAnimationTargets;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda9;->f$0:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda9;->f$1:Lcom/android/quickstep/RecentsAnimationTargets;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->lambda$onAnimationStart$2$com-android-quickstep-RecentsAnimationCallbacks(Lcom/android/quickstep/RecentsAnimationTargets;)V

    return-void
.end method
