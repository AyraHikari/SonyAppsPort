.class Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;
.super Ljava/lang/Object;
.source "TaskbarLauncherStateController.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    .line 90
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .locals 3
    .param p1, "finalState"    # Lcom/android/launcher3/LauncherState;

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fputmLauncherState(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Lcom/android/launcher3/LauncherState;)V

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState()V

    .line 111
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    .line 90
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .locals 3
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fgetmLauncherState(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Lcom/android/launcher3/LauncherState;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fgetmPrevState(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fputmPrevState(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Ljava/lang/Integer;)V

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fputmLauncherState(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Lcom/android/launcher3/LauncherState;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fgetmShouldDelayLauncherStateAnim(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState()V

    .line 104
    :cond_1
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .locals 0

    .line 90
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
