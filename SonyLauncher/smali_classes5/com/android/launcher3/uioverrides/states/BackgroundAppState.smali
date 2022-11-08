.class public Lcom/android/launcher3/uioverrides/states/BackgroundAppState;
.super Lcom/android/launcher3/uioverrides/states/OverviewState;
.source "BackgroundAppState.java"


# static fields
.field private static final STATE_FLAGS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    sget v0, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;->FLAG_OVERVIEW_UI:I

    or-int/lit8 v0, v0, 0x2

    sget v1, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;->FLAG_WORKSPACE_INACCESSIBLE:I

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x1

    sget v1, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;->FLAG_CLOSE_POPUPS:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;->STATE_FLAGS:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;-><init>(II)V

    .line 41
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "logContainer"    # I

    .line 44
    sget v0, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;->STATE_FLAGS:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/uioverrides/states/OverviewState;-><init>(III)V

    .line 45
    return-void
.end method

.method public static getOverviewScaleAndOffsetForBackgroundState(Lcom/android/launcher3/BaseDraggingActivity;)[F
    .locals 3
    .param p0, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 102
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 101
    return-object v0
.end method


# virtual methods
.method public displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 1
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method protected getDepthUnchecked(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getOverviewFullscreenProgress()F
    .locals 1

    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 64
    invoke-static {p1}, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;->getOverviewScaleAndOffsetForBackgroundState(Lcom/android/launcher3/BaseDraggingActivity;)[F

    move-result-object v0

    return-object v0
.end method

.method public getVerticalProgress(Lcom/android/launcher3/Launcher;)F
    .locals 6
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 49
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/states/OverviewState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v0

    return v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 53
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    nop

    .line 54
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 55
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    .line 53
    invoke-static {p1, v1, v2}, Lcom/android/quickstep/util/LayoutUtils;->getShelfTrackingDistance(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/touch/PagedOrientationHandler;)I

    move-result v1

    .line 56
    .local v1, "transitionLength":I
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v2

    .line 57
    .local v2, "controller":Lcom/android/launcher3/allapps/AllAppsTransitionController;
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 58
    .local v3, "scrollRange":F
    int-to-float v4, v1

    div-float/2addr v4, v3

    .line 59
    .local v4, "progressDelta":F
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/states/OverviewState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v5

    add-float/2addr v5, v4

    return v5
.end method

.method public getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 74
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/states/OverviewState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    and-int/lit8 v0, v0, -0x11

    and-int/lit8 v0, v0, -0x5

    return v0
.end method

.method public getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 92
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 93
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    if-eqz v1, :cond_0

    .line 94
    sget v1, Lcom/android/launcher3/R$color;->taskbar_background:I

    invoke-virtual {p1, v1}, Lcom/android/launcher3/Launcher;->getColor(I)I

    move-result v1

    return v1

    .line 96
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
