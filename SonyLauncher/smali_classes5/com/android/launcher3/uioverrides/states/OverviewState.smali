.class public Lcom/android/launcher3/uioverrides/states/OverviewState;
.super Lcom/android/launcher3/LauncherState;
.source "OverviewState.java"


# static fields
.field private static final STATE_FLAGS:I

.field protected static final sTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/states/OverviewState;->sTempRect:Landroid/graphics/Rect;

    .line 44
    sget v0, Lcom/android/launcher3/uioverrides/states/OverviewState;->FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED:I

    or-int/lit8 v0, v0, 0x2

    sget v1, Lcom/android/launcher3/uioverrides/states/OverviewState;->FLAG_OVERVIEW_UI:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/launcher3/uioverrides/states/OverviewState;->FLAG_WORKSPACE_INACCESSIBLE:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/launcher3/uioverrides/states/OverviewState;->FLAG_CLOSE_POPUPS:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/launcher3/uioverrides/states/OverviewState;->STATE_FLAGS:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 49
    sget v0, Lcom/android/launcher3/uioverrides/states/OverviewState;->STATE_FLAGS:I

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/states/OverviewState;-><init>(II)V

    .line 50
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "stateFlags"    # I

    .line 53
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/uioverrides/states/OverviewState;-><init>(III)V

    .line 54
    return-void
.end method

.method protected constructor <init>(III)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "logContainer"    # I
    .param p3, "stateFlags"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherState;-><init>(III)V

    .line 58
    return-void
.end method

.method public static getDefaultSwipeHeight(Lcom/android/launcher3/Launcher;)F
    .locals 1
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/quickstep/util/LayoutUtils;->getDefaultSwipeHeight(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)F

    move-result v0

    return v0
.end method

.method public static newBackgroundState(I)Lcom/android/launcher3/uioverrides/states/OverviewState;
    .locals 1
    .param p0, "id"    # I

    .line 148
    new-instance v0, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;-><init>(I)V

    return-object v0
.end method

.method public static newModalTaskState(I)Lcom/android/launcher3/uioverrides/states/OverviewState;
    .locals 1
    .param p0, "id"    # I

    .line 159
    new-instance v0, Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;-><init>(I)V

    return-object v0
.end method

.method public static newSplitSelectState(I)Lcom/android/launcher3/uioverrides/states/OverviewState;
    .locals 1
    .param p0, "id"    # I

    .line 167
    new-instance v0, Lcom/android/launcher3/uioverrides/states/SplitScreenSelectState;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/states/SplitScreenSelectState;-><init>(I)V

    return-object v0
.end method

.method public static newSwitchState(I)Lcom/android/launcher3/uioverrides/states/OverviewState;
    .locals 1
    .param p0, "id"    # I

    .line 152
    new-instance v0, Lcom/android/launcher3/uioverrides/states/QuickSwitchState;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/states/QuickSwitchState;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 1
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 114
    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    return v0
.end method

.method protected getDepthUnchecked(Landroid/content/Context;)F
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    const-string v0, "ro.launcher.depth.overview"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDescription(Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 119
    sget v0, Lcom/android/launcher3/R$string;->accessibility_recent_apps:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getTransitionDuration(Landroid/content/Context;Z)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isToState"    # Z

    .line 63
    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x17c

    goto :goto_0

    :cond_0
    const/16 v0, 0xfa

    :goto_0
    return v0
.end method

.method public getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 93
    const/16 v0, 0x18

    return v0
.end method

.method public getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 83
    new-instance v0, Lcom/android/launcher3/uioverrides/states/OverviewState$1;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/uioverrides/states/OverviewState$1;-><init>(Lcom/android/launcher3/uioverrides/states/OverviewState;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .locals 7
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 68
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 69
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeight()I

    move-result v1

    int-to-float v1, v1

    .line 70
    .local v1, "workspacePageHeight":F
    sget-object v2, Lcom/android/launcher3/uioverrides/states/OverviewState;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskSize(Landroid/graphics/Rect;)V

    .line 71
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 72
    .local v2, "scale":F
    const/high16 v3, 0x3f000000    # 0.5f

    .line 73
    .local v3, "parallaxFactor":F
    new-instance v4, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/states/OverviewState;->getDefaultSwipeHeight(Lcom/android/launcher3/Launcher;)F

    move-result v5

    neg-float v5, v5

    mul-float/2addr v5, v3

    const/4 v6, 0x0

    invoke-direct {v4, v2, v6, v5}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object v4
.end method

.method public getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 109
    sget v0, Lcom/android/launcher3/R$attr;->overviewScrimColor:I

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 98
    instance-of v0, p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    if-eqz v0, :cond_1

    .line 99
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 100
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    .line 102
    .local v0, "uiController":Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->supportsVisualStashing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 104
    .end local v0    # "uiController":Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherState;->isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed(Lcom/android/launcher3/Launcher;)V
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 134
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 135
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 136
    .local v1, "taskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->isTaskViewFullyVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->launchTasks()V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/RecentsView;->snapToPage(I)Z

    goto :goto_0

    .line 143
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherState;->onBackPressed(Lcom/android/launcher3/Launcher;)V

    .line 145
    :goto_0
    return-void
.end method
