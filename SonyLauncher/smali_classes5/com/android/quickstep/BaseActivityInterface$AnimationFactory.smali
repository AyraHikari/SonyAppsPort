.class public interface abstract Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;
.super Ljava/lang/Object;
.source "BaseActivityInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/BaseActivityInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnimationFactory"
.end annotation


# virtual methods
.method public abstract createActivityInterface(J)V
.end method

.method public hasRecentsEverAttachedToAppWindow()Z
    .locals 1

    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public isRecentsAttachedToAppWindow()Z
    .locals 1

    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .locals 0
    .param p1, "endTarget"    # Lcom/android/quickstep/GestureState$GestureEndTarget;

    .line 452
    return-void
.end method

.method public setRecentsAttachedToAppWindow(ZZ)V
    .locals 0
    .param p1, "attached"    # Z
    .param p2, "animate"    # Z

    .line 441
    return-void
.end method
