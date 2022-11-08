.class Lcom/android/launcher3/taskbar/TaskbarDragController$1;
.super Ljava/lang/Object;
.source "TaskbarDragController.java"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarDragController;->startInternalDrag(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;)Lcom/android/launcher3/dragndrop/DragView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDragView:Lcom/android/launcher3/dragndrop/DragView;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/TaskbarDragController;

    .line 180
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPreDragStart$0$com-android-launcher3-taskbar-TaskbarDragController$1()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->callOnDragStart()V

    return-void
.end method

.method public onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 1
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "dragStarted"    # Z

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$1;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 202
    return-void
.end method

.method public onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 190
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$1;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 192
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TASKBAR_POPUP_MENU:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 193
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarDragController$1;->shouldStartDrag(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$1;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarDragController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController$1;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setOnAnimationEndCallback(Ljava/lang/Runnable;)V

    .line 197
    :cond_0
    return-void
.end method

.method public shouldStartDrag(D)Z
    .locals 1
    .param p1, "distanceDragged"    # D

    .line 185
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$1;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->isAnimationFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
