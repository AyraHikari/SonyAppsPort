.class public Lcom/android/launcher3/touch/ItemLongClickListener;
.super Ljava/lang/Object;
.source "ItemLongClickListener.java"


# static fields
.field public static final INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

.field public static final INSTANCE_WORKSPACE:Landroid/view/View$OnLongClickListener;


# direct methods
.method public static synthetic $r8$lambda$nz9MSaglTImbNX-jBQmvpOY7s8M(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/touch/ItemLongClickListener;->onWorkspaceItemLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$w0E77iw3NhDMXITrEZo4RYOwnrg(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/touch/ItemLongClickListener;->onAllAppsItemLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/android/launcher3/touch/ItemLongClickListener$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/touch/ItemLongClickListener$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_WORKSPACE:Landroid/view/View$OnLongClickListener;

    .line 55
    new-instance v0, Lcom/android/launcher3/touch/ItemLongClickListener$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/touch/ItemLongClickListener$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginDrag(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "dragOptions"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 72
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ltz v0, :cond_1

    .line 73
    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 74
    .local v0, "folder":Lcom/android/launcher3/folder/Folder;
    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0, p0, p3}, Lcom/android/launcher3/folder/Folder;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)Z

    .line 79
    return-void

    .line 84
    .end local v0    # "folder":Lcom/android/launcher3/folder/Folder;
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 85
    .local v0, "longClickCellInfo":Lcom/android/launcher3/CellLayout$CellInfo;
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/android/launcher3/Workspace;->startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 86
    return-void
.end method

.method public static canStartDrag(Lcom/android/launcher3/Launcher;)Z
    .locals 2
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 141
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 142
    return v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 150
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static onAllAppsItemLongClick(Landroid/view/View;)Z
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .line 89
    const-string v0, "Main"

    const-string v1, "onAllAppsItemLongClick"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->cancelLongPress()V

    .line 91
    instance-of v0, p0, Lcom/android/launcher3/views/BubbleTextHolder;

    if-eqz v0, :cond_0

    .line 92
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/views/BubbleTextHolder;

    invoke-interface {v0}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_0
    move-object v0, p0

    :goto_0
    nop

    .line 94
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 95
    .local v1, "launcher":Lcom/android/launcher3/Launcher;
    invoke-static {v1}, Lcom/android/launcher3/touch/ItemLongClickListener;->canStartDrag(Lcom/android/launcher3/Launcher;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 97
    :cond_1
    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    .line 98
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    .line 100
    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    .line 101
    .local v2, "logger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_4

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v2, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    .line 104
    :cond_4
    sget-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_ITEM_LONG_PRESSED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v2, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 107
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v4

    .line 108
    .local v4, "dragController":Lcom/android/launcher3/dragndrop/DragController;
    new-instance v5, Lcom/android/launcher3/touch/ItemLongClickListener$1;

    invoke-direct {v5, v0, v4}, Lcom/android/launcher3/touch/ItemLongClickListener$1;-><init>(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragController;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 133
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    .line 134
    .local v5, "grid":Lcom/android/launcher3/DeviceProfile;
    new-instance v6, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v6}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    .line 135
    .local v6, "options":Lcom/android/launcher3/dragndrop/DragOptions;
    iget v7, v5, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v7, v7

    iget v8, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, v6, Lcom/android/launcher3/dragndrop/DragOptions;->intrinsicIconScaleFactor:F

    .line 136
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v8

    invoke-virtual {v7, v0, v8, v6}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 137
    return v3
.end method

.method private static onWorkspaceItemLongClick(Landroid/view/View;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .line 59
    const-string v0, "Main"

    const-string v1, "onWorkspaceItemLongClick"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 61
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/touch/ItemLongClickListener;->canStartDrag(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 62
    :cond_0
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 63
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v1, :cond_2

    return v2

    .line 65
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDefaultWorkspaceDragOptions()Lcom/android/launcher3/dragndrop/DragOptions;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/touch/ItemLongClickListener;->beginDrag(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 67
    const/4 v1, 0x1

    return v1
.end method
