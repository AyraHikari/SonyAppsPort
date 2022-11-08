.class Lcom/android/quickstep/LauncherActivityInterface$2;
.super Ljava/lang/Object;
.source "LauncherActivityInterface.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/LauncherActivityInterface;->onExitOverview(Lcom/android/quickstep/RotationTouchHelper;Ljava/lang/Runnable;)V
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
.field final synthetic this$0:Lcom/android/quickstep/LauncherActivityInterface;

.field final synthetic val$deviceState:Lcom/android/quickstep/RotationTouchHelper;

.field final synthetic val$exitRunnable:Ljava/lang/Runnable;

.field final synthetic val$stateManager:Lcom/android/launcher3/statemanager/StateManager;


# direct methods
.method constructor <init>(Lcom/android/quickstep/LauncherActivityInterface;Ljava/lang/Runnable;Lcom/android/quickstep/RotationTouchHelper;Lcom/android/launcher3/statemanager/StateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/LauncherActivityInterface;

    .line 235
    iput-object p1, p0, Lcom/android/quickstep/LauncherActivityInterface$2;->this$0:Lcom/android/quickstep/LauncherActivityInterface;

    iput-object p2, p0, Lcom/android/quickstep/LauncherActivityInterface$2;->val$exitRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/quickstep/LauncherActivityInterface$2;->val$deviceState:Lcom/android/quickstep/RotationTouchHelper;

    iput-object p4, p0, Lcom/android/quickstep/LauncherActivityInterface$2;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .locals 2
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 239
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/quickstep/LauncherActivityInterface$2;->val$exitRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 241
    iget-object v0, p0, Lcom/android/quickstep/LauncherActivityInterface$2;->this$0:Lcom/android/quickstep/LauncherActivityInterface;

    iget-object v1, p0, Lcom/android/quickstep/LauncherActivityInterface$2;->val$deviceState:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {v0, v1}, Lcom/android/quickstep/LauncherActivityInterface;->-$$Nest$mnotifyRecentsOfOrientation(Lcom/android/quickstep/LauncherActivityInterface;Lcom/android/quickstep/RotationTouchHelper;)V

    .line 242
    iget-object v0, p0, Lcom/android/quickstep/LauncherActivityInterface$2;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 244
    :cond_0
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    .line 235
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/LauncherActivityInterface$2;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
