.class public Lcom/android/launcher3/uioverrides/states/QuickSwitchState;
.super Lcom/android/launcher3/uioverrides/states/BackgroundAppState;
.source "QuickSwitchState.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 33
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;-><init>(II)V

    .line 34
    return-void
.end method


# virtual methods
.method public getVerticalProgress(Lcom/android/launcher3/Launcher;)F
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .locals 6
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 38
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result v0

    .line 39
    .local v0, "shiftRange":F
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/QuickSwitchState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v1

    sget-object v2, Lcom/android/launcher3/uioverrides/states/QuickSwitchState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 40
    .local v1, "shiftProgress":F
    mul-float v2, v1, v0

    .line 41
    .local v2, "translationY":F
    new-instance v3, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const v4, 0x3f666666    # 0.9f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v2}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object v3
.end method

.method public getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 46
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 47
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    if-eqz v1, :cond_0

    .line 48
    sget v1, Lcom/android/launcher3/R$color;->taskbar_background:I

    invoke-virtual {p1, v1}, Lcom/android/launcher3/Launcher;->getColor(I)I

    move-result v1

    return v1

    .line 50
    :cond_0
    sget v1, Lcom/android/launcher3/R$attr;->overviewScrimColor:I

    invoke-static {p1, v1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method

.method public isTaskbarAlignedWithHotseat(Lcom/android/launcher3/Launcher;)Z
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 66
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
