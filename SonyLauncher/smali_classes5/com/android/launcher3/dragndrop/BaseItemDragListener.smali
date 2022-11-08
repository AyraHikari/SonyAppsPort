.class public abstract Lcom/android/launcher3/dragndrop/BaseItemDragListener;
.super Ljava/lang/Object;
.source "BaseItemDragListener.java"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
.implements Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/View$OnDragListener;",
        "Lcom/android/launcher3/DragSource;",
        "Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;",
        "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<",
        "Lcom/android/launcher3/Launcher;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTRA_PIN_ITEM_DRAG_LISTENER:Ljava/lang/String; = "pin_item_drag_listener"

.field private static final MIME_TYPE_PREFIX:Ljava/lang/String; = "com.android.launcher3.drag_and_drop/"

.field private static final TAG:Ljava/lang/String; = "BaseItemDragListener"


# instance fields
.field private mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field private final mId:Ljava/lang/String;

.field protected mLauncher:Lcom/android/launcher3/Launcher;

.field private final mPreviewBitmapWidth:I

.field private final mPreviewRect:Landroid/graphics/Rect;

.field private final mPreviewViewWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;II)V
    .locals 1
    .param p1, "previewRect"    # Landroid/graphics/Rect;
    .param p2, "previewBitmapWidth"    # I
    .param p3, "previewViewWidth"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mPreviewRect:Landroid/graphics/Rect;

    .line 67
    iput p2, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mPreviewBitmapWidth:I

    .line 68
    iput p3, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mPreviewViewWidth:I

    .line 69
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mId:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method protected abstract createDragHelper()Lcom/android/launcher3/widget/PendingItemDragHelper;
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.launcher3.drag_and_drop/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init(Lcom/android/launcher3/BaseActivity;Z)Z
    .locals 0

    .line 45
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->init(Lcom/android/launcher3/Launcher;Z)Z

    move-result p1

    return p1
.end method

.method public init(Lcom/android/launcher3/Launcher;Z)Z
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "alreadyOnHome"    # Z

    .line 78
    invoke-static {p1, p2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;Z)V

    .line 79
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    .line 80
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 81
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/states/RotationHelper;->setStateHandlerRequest(I)V

    .line 83
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 84
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    if-nez v0, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/dragndrop/DragController;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0

    .line 95
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->onDragStart(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    return v2

    .line 98
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->postCleanup()V

    .line 99
    return v1

    .line 91
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->postCleanup()V

    .line 92
    return v1
.end method

.method protected onDragStart(Landroid/view/DragEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 106
    invoke-virtual {p0, p1, p0}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->onDragStart(Landroid/view/DragEvent;Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;)Z

    move-result v0

    return v0
.end method

.method protected onDragStart(Landroid/view/DragEvent;Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/DragEvent;
    .param p2, "preDragCondition"    # Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    .line 110
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 111
    .local v0, "desc":Landroid/content/ClipDescription;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 117
    .local v1, "downPos":Landroid/graphics/Point;
    new-instance v2, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v2}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    .line 118
    .local v2, "options":Lcom/android/launcher3/dragndrop/DragOptions;
    iput-object v1, v2, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    .line 119
    iput-object p2, v2, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->createDragHelper()Lcom/android/launcher3/widget/PendingItemDragHelper;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v5, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v6, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mPreviewBitmapWidth:I

    iget v7, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mPreviewViewWidth:I

    move-object v8, v1

    move-object v9, p0

    move-object v10, v2

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/widget/PendingItemDragHelper;->startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 128
    const/4 v3, 0x1

    return v3

    .line 112
    .end local v1    # "downPos":Landroid/graphics/Point;
    .end local v2    # "options":Lcom/android/launcher3/dragndrop/DragOptions;
    :cond_1
    :goto_0
    const-string v1, "BaseItemDragListener"

    const-string v2, "Someone started a dragAndDrop before us."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v1, 0x0

    return v1
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p3, "success"    # Z

    .line 157
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->postCleanup()V

    .line 158
    return-void
.end method

.method public onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 2
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "dragStarted"    # Z

    .line 150
    if-eqz p2, :cond_0

    .line 151
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setAlpha(F)V

    .line 153
    :cond_0
    return-void
.end method

.method public onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->setAlpha(F)V

    .line 145
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setAlpha(F)V

    .line 146
    return-void
.end method

.method protected postCleanup()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 164
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "pin_item_drag_listener"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->setIntent(Landroid/content/Intent;)V

    .line 168
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/launcher3/dragndrop/BaseItemDragListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/dragndrop/BaseItemDragListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/dragndrop/BaseItemDragListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method

.method public removeListener()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/states/RotationHelper;->setStateHandlerRequest(I)V

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 176
    :cond_0
    return-void
.end method

.method public shouldStartDrag(D)Z
    .locals 1
    .param p1, "distanceDragged"    # D

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
