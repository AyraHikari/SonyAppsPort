.class public interface abstract Lcom/android/launcher3/dragndrop/DragDriver$EventListener;
.super Ljava/lang/Object;
.source "DragDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/DragDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onDriverDragCancel()V
.end method

.method public abstract onDriverDragEnd(FF)V
.end method

.method public abstract onDriverDragExitWindow()V
.end method

.method public abstract onDriverDragMove(FF)V
.end method
