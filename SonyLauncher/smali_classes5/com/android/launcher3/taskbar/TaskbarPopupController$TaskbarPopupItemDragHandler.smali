.class Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarPopupItemDragHandler;
.super Ljava/lang/Object;
.source "TaskbarPopupController.java"

# interfaces
.implements Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarPopupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskbarPopupItemDragHandler"
.end annotation


# instance fields
.field protected final mIconLastTouchPos:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarPopupController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarPopupController;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarPopupItemDragHandler;->this$0:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarPopupItemDragHandler;->mIconLastTouchPos:Landroid/graphics/Point;

    .line 202
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 223
    .local v0, "sv":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    invoke-virtual {v0, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setWillDrawIcon(Z)V

    .line 226
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 227
    .local v2, "iconShift":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarPopupItemDragHandler;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconCenter()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 228
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarPopupItemDragHandler;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarPopupItemDragHandler;->this$0:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-static {v4}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->-$$Nest$fgetmContext(Lcom/android/launcher3/taskbar/TaskbarPopupController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 230
    nop

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 230
    invoke-static {v3}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/views/ActivityContext;

    .line 231
    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {v3, v0, v2}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startDragOnLongClick(Lcom/android/launcher3/shortcuts/DeepShortcutView;Landroid/graphics/Point;)Z

    .line 233
    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 208
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarPopupItemDragHandler;->mIconLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 214
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
