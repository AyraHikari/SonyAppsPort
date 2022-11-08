.class public Lcom/android/launcher3/touch/WorkspaceTouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WorkspaceTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final STATE_CANCELLED:I = 0x0

.field private static final STATE_COMPLETED:I = 0x3

.field private static final STATE_PENDING_PARENT_INFORM:I = 0x2

.field private static final STATE_REQUESTED:I = 0x1


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mLongPressState:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchDownPoint:Landroid/graphics/PointF;

.field private final mTouchSlop:F

.field private final mWorkspace:Lcom/android/launcher3/Workspace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Lcom/android/launcher3/Workspace<",
            "*>;)V"
        }
    .end annotation

    .line 75
    .local p2, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTempRect:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTouchDownPoint:Landroid/graphics/PointF;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    .line 76
    iput-object p1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 77
    iput-object p2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 80
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTouchSlop:F

    .line 81
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p2}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 82
    return-void
.end method

.method private canHandleLongPress()Z
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 179
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 178
    :goto_0
    return v0
.end method

.method private cancelLongPress()V
    .locals 1

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    .line 184
    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 188
    iget v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 189
    const-string v0, "Main"

    const-string v2, "Workspace.longPress"

    invoke-static {v0, v2}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;->canHandleLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/Workspace;->performHapticFeedback(II)Z

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WORKSPACE_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->showDefaultOptions(FF)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;->cancelLongPress()V

    .line 202
    :cond_1
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 89
    .local v0, "action":I
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 91
    invoke-direct {p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;->canHandleLongPress()Z

    move-result v2

    .line 93
    .local v2, "handleLongPress":Z
    if-eqz v2, :cond_0

    .line 95
    iget-object v3, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    .line 96
    .local v3, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-object v4, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v4

    .line 97
    .local v4, "dl":Lcom/android/launcher3/dragndrop/DragLayer;
    invoke-virtual {v3}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v5

    .line 99
    .local v5, "insets":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTempRect:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result v9

    iget v10, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    .line 100
    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v10

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    .line 99
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 101
    iget-object v6, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTempRect:Landroid/graphics/Rect;

    iget v7, v3, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    iget v8, v3, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 102
    iget-object v6, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    .line 105
    .end local v3    # "dp":Lcom/android/launcher3/DeviceProfile;
    .end local v4    # "dl":Lcom/android/launcher3/dragndrop/DragLayer;
    .end local v5    # "insets":Landroid/graphics/Rect;
    :cond_0
    if-eqz v2, :cond_1

    .line 106
    iput v1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    .line 107
    iget-object v3, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTouchDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 110
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3, p2}, Lcom/android/launcher3/Workspace;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 112
    return v1

    .line 115
    .end local v2    # "handleLongPress":Z
    :cond_2
    iget v2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v2, v3, :cond_3

    .line 117
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 118
    iget-object v2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, p2}, Lcom/android/launcher3/Workspace;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 120
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 121
    iput v4, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    .line 124
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v5, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 125
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 128
    .local v2, "isInAllAppsBottomSheet":Z
    :goto_0
    iget v5, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLongPressState:I

    if-ne v5, v4, :cond_5

    .line 130
    const/4 v3, 0x1

    .local v3, "result":Z
    goto :goto_2

    .line 131
    .end local v3    # "result":Z
    :cond_5
    if-ne v5, v1, :cond_8

    .line 132
    iget-object v5, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5, p2}, Lcom/android/launcher3/Workspace;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 133
    iget-object v5, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->isHandlingTouch()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 134
    invoke-direct {p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;->cancelLongPress()V

    goto :goto_1

    .line 135
    :cond_6
    if-ne v0, v3, :cond_7

    iget-object v3, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 136
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTouchDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    .line 135
    invoke-static {v3, v5}, Landroid/graphics/PointF;->length(FF)F

    move-result v3

    iget v5, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mTouchSlop:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_7

    .line 137
    invoke-direct {p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;->cancelLongPress()V

    .line 140
    :cond_7
    :goto_1
    const/4 v3, 0x1

    .restart local v3    # "result":Z
    goto :goto_2

    .line 144
    .end local v3    # "result":Z
    :cond_8
    move v3, v2

    .line 147
    .restart local v3    # "result":Z
    :goto_2
    if-eq v0, v1, :cond_9

    const/4 v5, 0x6

    if-ne v0, v5, :cond_a

    .line 148
    :cond_9
    iget-object v5, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->isHandlingTouch()Z

    move-result v5

    if-nez v5, :cond_a

    .line 149
    iget-object v5, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 150
    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    .line 151
    .local v5, "currentPage":Lcom/android/launcher3/CellLayout;
    if-eqz v5, :cond_a

    .line 152
    iget-object v6, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v6, p2}, Lcom/android/launcher3/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    .line 157
    .end local v5    # "currentPage":Lcom/android/launcher3/CellLayout;
    :cond_a
    if-eq v0, v1, :cond_b

    if-ne v0, v4, :cond_c

    .line 158
    :cond_b
    invoke-direct {p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;->cancelLongPress()V

    .line 160
    :cond_c
    if-ne v0, v1, :cond_d

    if-eqz v2, :cond_d

    .line 161
    iget-object v1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 162
    iget-object v1, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    iget v4, v4, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    .line 163
    invoke-interface {v1, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iget v4, v4, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    .line 164
    invoke-interface {v1, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 165
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v4

    .line 167
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/touch/WorkspaceTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 169
    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v6

    .line 168
    invoke-virtual {v5, v6}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v5

    .line 166
    invoke-virtual {v4, v5}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v4

    .line 170
    invoke-virtual {v4}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 165
    invoke-interface {v1, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_CLOSE_TAP_OUTSIDE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 171
    invoke-interface {v1, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 174
    :cond_d
    return v3
.end method
