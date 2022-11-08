.class public interface abstract Lcom/android/launcher3/statemanager/StateManager$StateListener;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/statemanager/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<STATE_TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;)V"
        }
    .end annotation

    .line 591
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$StateListener;, "Lcom/android/launcher3/statemanager/StateManager$StateListener<TSTATE_TYPE;>;"
    .local p1, "finalState":Ljava/lang/Object;, "TSTATE_TYPE;"
    return-void
.end method

.method public onStateTransitionStart(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;)V"
        }
    .end annotation

    .line 589
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$StateListener;, "Lcom/android/launcher3/statemanager/StateManager$StateListener<TSTATE_TYPE;>;"
    .local p1, "toState":Ljava/lang/Object;, "TSTATE_TYPE;"
    return-void
.end method
