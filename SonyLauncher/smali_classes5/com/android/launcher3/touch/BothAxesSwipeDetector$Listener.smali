.class public interface abstract Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;
.super Ljava/lang/Object;
.source "BothAxesSwipeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/touch/BothAxesSwipeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDrag(Landroid/graphics/PointF;Landroid/view/MotionEvent;)Z
.end method

.method public abstract onDragEnd(Landroid/graphics/PointF;)V
.end method

.method public abstract onDragStart(Z)V
.end method
