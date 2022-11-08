.class final Lcom/android/launcher3/uioverrides/QuickstepLauncher$LauncherTaskViewController;
.super Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;
.source "QuickstepLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/uioverrides/QuickstepLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LauncherTaskViewController"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController<",
        "Lcom/android/launcher3/Launcher;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/launcher3/Launcher;

    .line 369
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;-><init>(Lcom/android/launcher3/BaseDraggingActivity;)V

    .line 370
    return-void
.end method


# virtual methods
.method protected isRecentsInteractive()Z
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$LauncherTaskViewController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    check-cast v0, Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$LauncherTaskViewController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    check-cast v0, Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW_MODAL_TASK:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isRecentsModal()Z
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$LauncherTaskViewController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    check-cast v0, Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW_MODAL_TASK:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    return v0
.end method

.method protected onUserControlledAnimationCreated(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .locals 1
    .param p1, "animController"    # Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 384
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$LauncherTaskViewController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentUserControlledAnimation(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    .line 385
    return-void
.end method
