.class Lcom/android/launcher3/taskbar/TaskbarDragController$2;
.super Landroid/view/View$DragShadowBuilder;
.source "TaskbarDragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarDragController;->startSystemDrag(Lcom/android/launcher3/BubbleTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

.field final synthetic val$btv:Lcom/android/launcher3/BubbleTextView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Landroid/view/View;Lcom/android/launcher3/BubbleTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/TaskbarDragController;
    .param p2, "arg0"    # Landroid/view/View;

    .line 294
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->val$btv:Lcom/android/launcher3/BubbleTextView;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 309
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 310
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarDragController;->-$$Nest$sfgetDEBUG_DRAG_SHADOW_SURFACE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->access$200(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getScaleX()F

    move-result v0

    .line 314
    .local v0, "scale":F
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 315
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->access$300(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/dragndrop/DragView;->draw(Landroid/graphics/Canvas;)V

    .line 316
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 317
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 5
    .param p1, "shadowSize"    # Landroid/graphics/Point;
    .param p2, "shadowTouchPoint"    # Landroid/graphics/Point;

    .line 298
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->-$$Nest$fgetmDragIconSize(Lcom/android/launcher3/taskbar/TaskbarDragController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->val$btv:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 299
    .local v0, "iconSize":I
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 302
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->-$$Nest$fgetmDragIconSize(Lcom/android/launcher3/taskbar/TaskbarDragController;)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarDragController;->access$000(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegionWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 303
    .local v1, "offsetX":I
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarDragController;->-$$Nest$fgetmDragIconSize(Lcom/android/launcher3/taskbar/TaskbarDragController;)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->access$100(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegionHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 304
    .local v2, "offsetY":I
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->-$$Nest$fgetmRegistrationX(Lcom/android/launcher3/taskbar/TaskbarDragController;)I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v4}, Lcom/android/launcher3/taskbar/TaskbarDragController;->-$$Nest$fgetmRegistrationY(Lcom/android/launcher3/taskbar/TaskbarDragController;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 305
    return-void
.end method
