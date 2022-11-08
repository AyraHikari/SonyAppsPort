.class public Lcom/android/launcher3/states/SpringLoadedState;
.super Lcom/android/launcher3/LauncherState;
.source "SpringLoadedState.java"


# static fields
.field private static final STATE_FLAGS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    sget v0, Lcom/android/launcher3/states/SpringLoadedState;->FLAG_MULTI_PAGE:I

    sget v1, Lcom/android/launcher3/states/SpringLoadedState;->FLAG_WORKSPACE_INACCESSIBLE:I

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x2

    sget v1, Lcom/android/launcher3/states/SpringLoadedState;->FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/launcher3/states/SpringLoadedState;->FLAG_WORKSPACE_HAS_BACKGROUNDS:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/launcher3/states/SpringLoadedState;->FLAG_HIDE_BACK_BUTTON:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/launcher3/states/SpringLoadedState;->STATE_FLAGS:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .line 38
    sget v0, Lcom/android/launcher3/states/SpringLoadedState;->STATE_FLAGS:I

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/LauncherState;-><init>(III)V

    .line 39
    return-void
.end method


# virtual methods
.method protected getDepthUnchecked(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getHotseatScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 71
    new-instance v0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object v0
.end method

.method public getTransitionDuration(Landroid/content/Context;Z)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isToState"    # Z

    .line 43
    const/16 v0, 0x96

    return v0
.end method

.method public getWorkspaceBackgroundAlpha(Lcom/android/launcher3/Launcher;)F
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 76
    const v0, 0x3e4ccccd    # 0.2f

    return v0
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .locals 11
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 48
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 49
    .local v0, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    .line 50
    .local v1, "ws":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 51
    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v2

    return-object v2

    .line 54
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutSpringLoadShrunkTop()F

    move-result v2

    .line 55
    .local v2, "shrunkTop":F
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getWorkspaceSpringLoadScale()F

    move-result v3

    .line 57
    .local v3, "scale":F
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 58
    .local v4, "halfHeight":F
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    .line 59
    .local v5, "myCenter":F
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v4, v6

    .line 60
    .local v6, "cellTopFromCenter":F
    mul-float v7, v6, v3

    sub-float v7, v5, v7

    .line 61
    .local v7, "actualCellTop":F
    new-instance v8, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const/4 v9, 0x0

    sub-float v10, v2, v7

    div-float/2addr v10, v3

    invoke-direct {v8, v3, v9, v10}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object v8
.end method
