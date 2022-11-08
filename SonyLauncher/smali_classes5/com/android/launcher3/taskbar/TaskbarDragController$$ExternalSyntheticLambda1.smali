.class public final synthetic Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

.field public final synthetic f$1:Lcom/android/launcher3/BubbleTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/BubbleTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda1;->f$1:Lcom/android/launcher3/BubbleTextView;

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda1;->f$1:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarDragController;->lambda$onSystemDragStarted$3$com-android-launcher3-taskbar-TaskbarDragController(Lcom/android/launcher3/BubbleTextView;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p1

    return p1
.end method
