.class public interface abstract Lcom/android/launcher3/statemanager/StateManager$StateHandler;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/statemanager/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateHandler"
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
.method public abstract setState(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;)V"
        }
    .end annotation
.end method

.method public abstract setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;",
            "Lcom/android/launcher3/states/StateAnimationConfig;",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            ")V"
        }
    .end annotation
.end method
