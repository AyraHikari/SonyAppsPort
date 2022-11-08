.class public Lcom/android/quickstep/fallback/RecentsTaskController;
.super Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;
.source "RecentsTaskController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController<",
        "Lcom/android/quickstep/RecentsActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/quickstep/RecentsActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/quickstep/RecentsActivity;

    .line 26
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;-><init>(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected isRecentsInteractive()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/quickstep/fallback/RecentsTaskController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/fallback/RecentsTaskController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    .line 32
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {v0}, Lcom/android/quickstep/fallback/RecentsState;->hasLiveTile()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 31
    :goto_1
    return v0
.end method

.method protected isRecentsModal()Z
    .locals 1

    .line 37
    const/4 v0, 0x0

    return v0
.end method
