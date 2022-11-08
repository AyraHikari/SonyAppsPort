.class public Lcom/android/launcher3/uioverrides/states/AllAppsState;
.super Lcom/android/launcher3/LauncherState;
.source "AllAppsState.java"


# static fields
.field private static final STATE_FLAGS:I

.field private static final WORKSPACE_SCALE_FACTOR:F = 0.97f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    sget v0, Lcom/android/launcher3/uioverrides/states/AllAppsState;->FLAG_WORKSPACE_INACCESSIBLE:I

    sget v1, Lcom/android/launcher3/uioverrides/states/AllAppsState;->FLAG_CLOSE_POPUPS:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/launcher3/uioverrides/states/AllAppsState;->FLAG_HOTSEAT_INACCESSIBLE:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/launcher3/uioverrides/states/AllAppsState;->STATE_FLAGS:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .line 40
    sget v0, Lcom/android/launcher3/uioverrides/states/AllAppsState;->STATE_FLAGS:I

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/LauncherState;-><init>(III)V

    .line 41
    return-void
.end method


# virtual methods
.method protected getDepthUnchecked(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public getDescription(Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 53
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForState(Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/LauncherState;
    .locals 1
    .param p1, "previousState"    # Lcom/android/launcher3/LauncherState;

    .line 109
    sget-object v0, Lcom/android/launcher3/uioverrides/states/AllAppsState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/launcher3/uioverrides/states/AllAppsState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/uioverrides/states/AllAppsState;->NORMAL:Lcom/android/launcher3/LauncherState;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getHistoryForState(Lcom/android/launcher3/statemanager/BaseState;)Lcom/android/launcher3/statemanager/BaseState;
    .locals 0

    .line 32
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/AllAppsState;->getHistoryForState(Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/LauncherState;

    move-result-object p1

    return-object p1
.end method

.method public getHotseatScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .locals 5
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 68
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/AllAppsState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 72
    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v0

    .line 73
    .local v0, "overviewScaleAndTranslation":Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    new-instance v1, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const v2, 0x3f7851ec    # 0.97f

    iget v3, v0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationX:F

    iget v4, v0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationY:F

    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object v1
.end method

.method public getTransitionDuration(Landroid/content/Context;Z)I
    .locals 1
    .param p2, "isToState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DEVICE_PROFI",
            "LE_CONTEXT:Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;",
            ">(TDEVICE_PROFI",
            "LE_CONTEXT;",
            "Z)I"
        }
    .end annotation

    .line 46
    .local p1, "context":Landroid/content/Context;, "TDEVICE_PROFILE_CONTEXT;"
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;

    invoke-interface {v0}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 47
    const/16 v0, 0x258

    goto :goto_0

    .line 48
    :cond_0
    if-eqz p2, :cond_1

    const/16 v0, 0x1f4

    goto :goto_0

    :cond_1
    const/16 v0, 0x12c

    .line 46
    :goto_0
    return v0
.end method

.method public getVerticalProgress(Lcom/android/launcher3/Launcher;)F
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 103
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 104
    :cond_0
    const/4 v0, 0x2

    .line 103
    :goto_0
    return v0
.end method

.method public getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 89
    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherState;->getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    move-result-object v0

    .line 90
    .local v0, "superPageAlphaProvider":Lcom/android/launcher3/LauncherState$PageAlphaProvider;
    new-instance v1, Lcom/android/launcher3/uioverrides/states/AllAppsState$1;

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/launcher3/uioverrides/states/AllAppsState$1;-><init>(Lcom/android/launcher3/uioverrides/states/AllAppsState;Landroid/view/animation/Interpolator;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState$PageAlphaProvider;)V

    return-object v1
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 63
    new-instance v0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const v1, 0x3f7851ec    # 0.97f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object v0
.end method

.method public getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 114
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$color;->widgets_picker_scrim:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 116
    :cond_0
    sget v0, Lcom/android/launcher3/R$attr;->allAppsScrimColor:I

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 114
    :goto_0
    return v0
.end method
