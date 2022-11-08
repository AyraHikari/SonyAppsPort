.class public Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;
.super Lcom/android/launcher3/uioverrides/states/OverviewState;
.source "OverviewModalTaskState.java"


# static fields
.field private static final STATE_FLAGS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    sget v0, Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;->FLAG_OVERVIEW_UI:I

    or-int/lit8 v0, v0, 0x2

    sget v1, Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;->FLAG_WORKSPACE_INACCESSIBLE:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;->STATE_FLAGS:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .line 39
    sget v0, Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;->STATE_FLAGS:I

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/uioverrides/states/OverviewState;-><init>(III)V

    .line 40
    return-void
.end method

.method public static getOverviewScaleAndOffsetForModalState(Lcom/android/launcher3/BaseDraggingActivity;)[F
    .locals 6
    .param p0, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getSelectedTaskSize()Landroid/graphics/Point;

    move-result-object v0

    .line 75
    .local v0, "taskSize":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 76
    .local v1, "modalTaskSize":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/RecentsView;->getModalTaskSize(Landroid/graphics/Rect;)V

    .line 78
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 79
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 81
    .local v2, "scale":F
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    return-object v3
.end method


# virtual methods
.method public getOverviewModalness()F
    .locals 1

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 54
    invoke-static {p1}, Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;->getOverviewScaleAndOffsetForModalState(Lcom/android/launcher3/BaseDraggingActivity;)[F

    move-result-object v0

    return-object v0
.end method

.method public getTransitionDuration(Landroid/content/Context;Z)I
    .locals 1
    .param p1, "launcher"    # Landroid/content/Context;
    .param p2, "isToState"    # Z

    .line 44
    const/16 v0, 0x12c

    return v0
.end method

.method public getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 49
    const/16 v0, 0x18

    return v0
.end method

.method public onBackPressed(Lcom/android/launcher3/Launcher;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 64
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 65
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 66
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->resetModalVisuals()V

    goto :goto_0

    .line 69
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/states/OverviewState;->onBackPressed(Lcom/android/launcher3/Launcher;)V

    .line 71
    :goto_0
    return-void
.end method
