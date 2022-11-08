.class public interface abstract Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
.super Ljava/lang/Object;
.source "DragOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/DragOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreDragCondition"
.end annotation


# virtual methods
.method public abstract onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
.end method

.method public abstract onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
.end method

.method public abstract shouldStartDrag(D)Z
.end method
