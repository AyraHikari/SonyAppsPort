.class Lcom/android/quickstep/FallbackActivityInterface$1;
.super Ljava/lang/Object;
.source "FallbackActivityInterface.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/FallbackActivityInterface;->onExitOverview(Lcom/android/quickstep/RotationTouchHelper;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/quickstep/fallback/RecentsState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/FallbackActivityInterface;

.field final synthetic val$deviceState:Lcom/android/quickstep/RotationTouchHelper;

.field final synthetic val$exitRunnable:Ljava/lang/Runnable;

.field final synthetic val$stateManager:Lcom/android/launcher3/statemanager/StateManager;


# direct methods
.method constructor <init>(Lcom/android/quickstep/FallbackActivityInterface;Ljava/lang/Runnable;Lcom/android/quickstep/RotationTouchHelper;Lcom/android/launcher3/statemanager/StateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/FallbackActivityInterface;

    .line 167
    iput-object p1, p0, Lcom/android/quickstep/FallbackActivityInterface$1;->this$0:Lcom/android/quickstep/FallbackActivityInterface;

    iput-object p2, p0, Lcom/android/quickstep/FallbackActivityInterface$1;->val$exitRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/quickstep/FallbackActivityInterface$1;->val$deviceState:Lcom/android/quickstep/RotationTouchHelper;

    iput-object p4, p0, Lcom/android/quickstep/FallbackActivityInterface$1;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/android/quickstep/fallback/RecentsState;)V
    .locals 2
    .param p1, "toState"    # Lcom/android/quickstep/fallback/RecentsState;

    .line 171
    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->HOME:Lcom/android/quickstep/fallback/RecentsState;

    if-ne p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/quickstep/FallbackActivityInterface$1;->val$exitRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 173
    iget-object v0, p0, Lcom/android/quickstep/FallbackActivityInterface$1;->this$0:Lcom/android/quickstep/FallbackActivityInterface;

    iget-object v1, p0, Lcom/android/quickstep/FallbackActivityInterface$1;->val$deviceState:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {v0, v1}, Lcom/android/quickstep/FallbackActivityInterface;->-$$Nest$mnotifyRecentsOfOrientation(Lcom/android/quickstep/FallbackActivityInterface;Lcom/android/quickstep/RotationTouchHelper;)V

    .line 174
    iget-object v0, p0, Lcom/android/quickstep/FallbackActivityInterface$1;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 176
    :cond_0
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p1, Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/FallbackActivityInterface$1;->onStateTransitionComplete(Lcom/android/quickstep/fallback/RecentsState;)V

    return-void
.end method
