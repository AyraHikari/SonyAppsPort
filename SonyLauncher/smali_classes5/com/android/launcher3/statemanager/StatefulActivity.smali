.class public abstract Lcom/android/launcher3/statemanager/StatefulActivity;
.super Lcom/android/launcher3/BaseDraggingActivity;
.source "StatefulActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<STATE_TYPE::",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "TSTATE_TYPE;>;>",
        "Lcom/android/launcher3/BaseDraggingActivity;"
    }
.end annotation


# instance fields
.field private mDeferredResumePending:Z

.field private final mHandleDeferredResume:Ljava/lang/Runnable;

.field public final mHandler:Landroid/os/Handler;

.field private mRootView:Lcom/android/launcher3/LauncherRootView;


# direct methods
.method public static synthetic $r8$lambda$cYUYA0n_D1TwKhZWo1vG2P3tRyE(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->handleDeferredResume()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    .local p0, "this":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    invoke-direct {p0}, Lcom/android/launcher3/BaseDraggingActivity;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/android/launcher3/statemanager/StatefulActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/statemanager/StatefulActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    iput-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandleDeferredResume:Ljava/lang/Runnable;

    return-void
.end method

.method private handleDeferredResume()V
    .locals 2

    .line 154
    .local p0, "this":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->hasBeenResumed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/launcher3/statemanager/BaseState;->hasFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->addActivityFlags(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onDeferredResumed()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mDeferredResumePending:Z

    goto :goto_0

    .line 160
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mDeferredResumePending:Z

    .line 162
    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract collectStateHandlers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/statemanager/StateManager$StateHandler;",
            ">;)V"
        }
    .end annotation
.end method

.method public createAtomicAnimationFactory()Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory<",
            "TSTATE_TYPE;>;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    new-instance v0, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;-><init>(I)V

    return-object v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mRootView:Lcom/android/launcher3/LauncherRootView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRootView()Landroid/view/View;
    .locals 1

    .line 39
    .local p0, "this":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    return-object v0
.end method

.method public final getRootView()Lcom/android/launcher3/LauncherRootView;
    .locals 1

    .line 74
    .local p0, "this":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mRootView:Lcom/android/launcher3/LauncherRootView;

    return-object v0
.end method

.method public abstract getStateManager()Lcom/android/launcher3/statemanager/StateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/statemanager/StateManager<",
            "TSTATE_TYPE;>;"
        }
    .end annotation
.end method

.method protected inflateRootView(I)V
    .locals 2
    .param p1, "layoutId"    # I

    .line 66
    .local p0, "this":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherRootView;

    iput-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mRootView:Lcom/android/launcher3/LauncherRootView;

    .line 67
    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherRootView;->setSystemUiVisibility(I)V

    .line 70
    return-void
.end method

.method public isInState(Lcom/android/launcher3/statemanager/BaseState;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;)Z"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    .local p1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$onStop$0$com-android-launcher3-statemanager-StatefulActivity(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/views/BaseDragLayer;I)V
    .locals 2
    .param p1, "origState"    # Lcom/android/launcher3/statemanager/BaseState;
    .param p2, "dragLayer"    # Lcom/android/launcher3/views/BaseDragLayer;
    .param p3, "origDragLayerChildCount"    # I

    .line 137
    .local p0, "this":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p2}, Lcom/android/launcher3/views/BaseDragLayer;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 141
    invoke-virtual {p2}, Lcom/android/launcher3/views/BaseDragLayer;->getChildCount()I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onUiChangedWhileSleeping()V

    .line 144
    :cond_1
    return-void
.end method

.method protected onDeferredResumed()V
    .locals 0

    .line 167
    .local p0, "this":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 171
    .local p0, "this":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onResume()V

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandleDeferredResume:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandleDeferredResume:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method public onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    .local p1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    return-void
.end method

.method public onStateSetStart(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;)V"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    .local p1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    iget-boolean v0, p0, Lcom/android/launcher3/statemanager/StatefulActivity;->mDeferredResumePending:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->handleDeferredResume()V

    .line 90
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 5

    .line 120
    .local p0, "this":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 121
    .local v0, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isUserActive()Z

    move-result v1

    .line 122
    .local v1, "wasActive":Z
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    .line 123
    .local v2, "origState":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->getChildCount()I

    move-result v3

    .line 124
    .local v3, "origDragLayerChildCount":I
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onStop()V

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isChangingConfigurations()Z

    move-result v4

    if-nez v4, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    .line 131
    :cond_0
    const/16 v4, 0x14

    invoke-virtual {p0, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->onTrimMemory(I)V

    .line 133
    if-eqz v1, :cond_1

    .line 136
    new-instance v4, Lcom/android/launcher3/statemanager/StatefulActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2, v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/views/BaseDragLayer;I)V

    invoke-virtual {v0, v4}, Lcom/android/launcher3/views/BaseDragLayer;->post(Ljava/lang/Runnable;)Z

    .line 146
    :cond_1
    return-void
.end method

.method public onUiChangedWhileSleeping()V
    .locals 0

    .line 151
    .local p0, "this":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    return-void
.end method

.method public reapplyUi()V
    .locals 1

    .line 106
    .local p0, "this":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->reapplyUi(Z)V

    .line 107
    return-void
.end method

.method public reapplyUi(Z)V
    .locals 1
    .param p1, "cancelCurrentAnimation"    # Z

    .line 114
    .local p0, "this":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherRootView;->dispatchInsets()V

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState(Z)V

    .line 116
    return-void
.end method

.method public runOnBindToTouchInteractionService(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 181
    .local p0, "this":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 182
    return-void
.end method
