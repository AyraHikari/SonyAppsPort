.class public Lcom/android/launcher3/dragndrop/SpringLoadedDragController;
.super Ljava/lang/Object;
.source "SpringLoadedDragController.java"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field final ENTER_SPRING_LOAD_CANCEL_HOVER_TIME:J

.field final ENTER_SPRING_LOAD_HOVER_TIME:J

.field mAlarm:Lcom/android/launcher3/Alarm;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mScreen:Lcom/android/launcher3/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->ENTER_SPRING_LOAD_HOVER_TIME:J

    .line 28
    const-wide/16 v0, 0x3b6

    iput-wide v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->ENTER_SPRING_LOAD_CANCEL_HOVER_TIME:J

    .line 37
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 38
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    .line 39
    invoke-virtual {v0, p0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 40
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 44
    return-void
.end method

.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 2
    .param p1, "alarm"    # Lcom/android/launcher3/Alarm;

    .line 56
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 59
    .local v0, "w":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 62
    .end local v0    # "w":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    :cond_0
    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 65
    :goto_0
    return-void
.end method

.method public setAlarm(Lcom/android/launcher3/CellLayout;)V
    .locals 3
    .param p1, "cl"    # Lcom/android/launcher3/CellLayout;

    .line 48
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 49
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    if-nez p1, :cond_0

    const-wide/16 v1, 0x3b6

    goto :goto_0

    .line 50
    :cond_0
    const-wide/16 v1, 0x1f4

    .line 49
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 51
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    .line 52
    return-void
.end method
