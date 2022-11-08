.class interface abstract Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;
.super Ljava/lang/Object;
.source "NavBarGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/interaction/NavBarGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "NavBarGestureAttemptCallback"
.end annotation


# virtual methods
.method public onMotionPaused(Z)V
    .locals 0
    .param p1, "isPaused"    # Z

    .line 318
    return-void
.end method

.method public abstract onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V
.end method

.method public setAssistantProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .line 324
    return-void
.end method

.method public setNavBarGestureProgress(Ljava/lang/Float;)V
    .locals 0
    .param p1, "displacement"    # Ljava/lang/Float;

    .line 321
    return-void
.end method
