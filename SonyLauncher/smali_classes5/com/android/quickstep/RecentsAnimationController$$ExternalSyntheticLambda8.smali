.class public final synthetic Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/RecentsAnimationController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda8;->f$0:Lcom/android/quickstep/RecentsAnimationController;

    iput-boolean p2, p0, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda8;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda8;->f$0:Lcom/android/quickstep/RecentsAnimationController;

    iget-boolean v1, p0, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda8;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsAnimationController;->lambda$detachNavigationBarFromApp$5$com-android-quickstep-RecentsAnimationController(Z)V

    return-void
.end method
