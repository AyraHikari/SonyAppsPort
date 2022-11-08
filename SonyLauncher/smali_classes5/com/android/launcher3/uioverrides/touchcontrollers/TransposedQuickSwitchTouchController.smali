.class public Lcom/android/launcher3/uioverrides/touchcontrollers/TransposedQuickSwitchTouchController;
.super Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;
.source "TransposedQuickSwitchTouchController.java"


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 25
    sget-object v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected getShiftRange()F
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TransposedQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;
    .locals 1
    .param p1, "fromState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "isDragTowardPositive"    # Z

    .line 30
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TransposedQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 31
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v0

    xor-int/2addr v0, p2

    .line 30
    invoke-super {p0, p1, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;

    move-result-object v0

    return-object v0
.end method

.method protected initCurrentAnimation()F
    .locals 2

    .line 36
    invoke-super {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;->initCurrentAnimation()F

    move-result v0

    .line 37
    .local v0, "multiplier":F
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TransposedQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    neg-float v1, v0

    :goto_0
    return v1
.end method
