.class public interface abstract Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;
.super Ljava/lang/Object;
.source "MotionPauseDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/MotionPauseDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMotionPauseListener"
.end annotation


# virtual methods
.method public onMotionPauseChanged(Z)V
    .locals 0
    .param p1, "isPaused"    # Z

    .line 209
    return-void
.end method

.method public abstract onMotionPauseDetected()V
.end method
