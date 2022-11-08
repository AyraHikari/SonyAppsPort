.class public Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;
.super Ljava/lang/Object;
.source "TaskbarDragLayerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarDragLayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskbarDragLayerCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    .line 156
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaskbarBackgroundHeight()I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->-$$Nest$fgetmActivity(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    return v0
.end method

.method public getTouchControllers()[Lcom/android/launcher3/util/TouchController;
    .locals 3

    .line 184
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/launcher3/util/TouchController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->-$$Nest$fgetmActivity(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->-$$Nest$fgetmControllers(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarForceVisibleImmersiveController:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->-$$Nest$fgetmControllers(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    .line 186
    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getTouchController()Lcom/android/launcher3/util/TouchController;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 184
    return-object v0
.end method

.method public onDragLayerViewRemoved()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->-$$Nest$fgetmActivity(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->maybeSetTaskbarWindowNotFullscreen()V

    .line 171
    return-void
.end method

.method public updateInsetsTouchability(Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;)V
    .locals 1
    .param p1, "insetsInfo"    # Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->-$$Nest$fgetmControllers(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->updateInsetsTouchability(Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;)V

    .line 164
    return-void
.end method
