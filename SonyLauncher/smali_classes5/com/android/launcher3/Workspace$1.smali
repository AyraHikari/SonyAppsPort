.class Lcom/android/launcher3/Workspace$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->onDragEnd()V
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
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$stateManager:Lcom/android/launcher3/statemanager/StateManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/statemanager/StateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Workspace;

    .line 499
    .local p0, "this":Lcom/android/launcher3/Workspace$1;, "Lcom/android/launcher3/Workspace$1;"
    iput-object p1, p0, Lcom/android/launcher3/Workspace$1;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$1;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .locals 2
    .param p1, "finalState"    # Lcom/android/launcher3/LauncherState;

    .line 502
    .local p0, "this":Lcom/android/launcher3/Workspace$1;, "Lcom/android/launcher3/Workspace$1;"
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/android/launcher3/Workspace$1;->this$0:Lcom/android/launcher3/Workspace;

    iget-boolean v0, v0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/launcher3/Workspace$1;->this$0:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(Z)V

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace$1;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 508
    :cond_1
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    .line 499
    .local p0, "this":Lcom/android/launcher3/Workspace$1;, "Lcom/android/launcher3/Workspace$1;"
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace$1;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
