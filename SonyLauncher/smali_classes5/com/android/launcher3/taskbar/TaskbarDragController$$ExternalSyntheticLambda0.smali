.class public final synthetic Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

.field public final synthetic f$1:Lcom/android/launcher3/BubbleTextView;

.field public final synthetic f$2:Lcom/android/launcher3/graphics/DragPreviewProvider;

.field public final synthetic f$3:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/BubbleTextView;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/graphics/DragPreviewProvider;

    iput-object p4, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/BubbleTextView;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/graphics/DragPreviewProvider;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->lambda$startDragOnLongClick$0$com-android-launcher3-taskbar-TaskbarDragController(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)V

    return-void
.end method
