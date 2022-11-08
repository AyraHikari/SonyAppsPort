.class public final synthetic Lcom/android/quickstep/SwipeUpAnimationLogic$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/SwipeUpAnimationLogic;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/SwipeUpAnimationLogic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/SwipeUpAnimationLogic;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/SwipeUpAnimationLogic;

    invoke-virtual {v0}, Lcom/android/quickstep/SwipeUpAnimationLogic;->updateFinalShift()V

    return-void
.end method
