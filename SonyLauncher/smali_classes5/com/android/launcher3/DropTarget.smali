.class public interface abstract Lcom/android/launcher3/DropTarget;
.super Ljava/lang/Object;
.source "DropTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/DropTarget$DragObject;
    }
.end annotation


# virtual methods
.method public abstract acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
.end method

.method public abstract getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
.end method

.method public abstract isDropEnabled()Z
.end method

.method public abstract onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
.end method

.method public abstract onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
.end method

.method public abstract onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
.end method

.method public abstract onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
.end method

.method public abstract prepareAccessibilityDrop()V
.end method
