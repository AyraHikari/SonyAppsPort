.class public final synthetic Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/taskbar/TaskbarDragController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startDragOnLongClick(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
