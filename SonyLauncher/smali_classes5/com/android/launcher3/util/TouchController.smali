.class public interface abstract Lcom/android/launcher3/util/TouchController;
.super Ljava/lang/Object;
.source "TouchController.java"


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 40
    return-void
.end method

.method public abstract onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onControllerTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public onOneHandedModeStateChanged(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .line 38
    return-void
.end method
