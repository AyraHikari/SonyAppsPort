.class public final synthetic Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/RecentsAnimationCallbacks;

.field public final synthetic f$1:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationCallbacks;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iput-object p2, p0, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda0;->f$1:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda0;->f$1:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->lambda$onAnimationCanceled$3$com-android-quickstep-RecentsAnimationCallbacks(Ljava/util/HashMap;)V

    return-void
.end method
