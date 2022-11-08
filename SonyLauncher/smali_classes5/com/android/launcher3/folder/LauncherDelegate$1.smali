.class Lcom/android/launcher3/folder/LauncherDelegate$1;
.super Ljava/lang/Object;
.source "LauncherDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/LauncherDelegate;->replaceFolderWithFinalItem(Lcom/android/launcher3/folder/Folder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/LauncherDelegate;

.field final synthetic val$folder:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/LauncherDelegate;Lcom/android/launcher3/folder/Folder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/LauncherDelegate;

    .line 88
    iput-object p1, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    iput-object p2, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$folder:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    .line 92
    .local v0, "itemCount":I
    iget-object v1, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$folder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    .line 93
    .local v1, "info":Lcom/android/launcher3/model/data/FolderInfo;
    iget v2, v1, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, -0x66

    if-ne v2, v5, :cond_1

    .line 94
    if-ne v0, v4, :cond_0

    .line 95
    iget-object v2, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 96
    .local v2, "finalItem":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$folder:Lcom/android/launcher3/folder/Folder;

    iget-object v3, v3, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderIcon;->removeListeners()V

    .line 97
    iget-object v3, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    iget-object v3, v3, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAdapter()Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    move-result-object v3

    iget v4, v1, Lcom/android/launcher3/model/data/FolderInfo;->rank:I

    invoke-virtual {v3, v2, v4}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->replaceInfo(Lcom/android/launcher3/model/data/ItemInfo;I)V

    .line 99
    .end local v2    # "finalItem":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_0
    return-void

    .line 101
    :cond_1
    if-gt v0, v4, :cond_5

    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "newIcon":Landroid/view/View;
    const/4 v5, 0x0

    .line 105
    .local v5, "finalItem":Lcom/android/launcher3/model/data/ItemInfo;
    if-ne v0, v4, :cond_2

    .line 108
    iget-object v6, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    iget-object v6, v6, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v7, v1, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    iget v8, v1, Lcom/android/launcher3/model/data/FolderInfo;->screenId:I

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v6

    .line 110
    .local v6, "cellLayout":Lcom/android/launcher3/CellLayout;
    iget-object v7, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    .line 111
    iget-object v3, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    iget-object v3, v3, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v7, v5

    check-cast v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v2

    .line 112
    iget-object v3, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    iget-object v3, v3, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v7

    iget v9, v1, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    iget v10, v1, Lcom/android/launcher3/model/data/FolderInfo;->screenId:I

    iget v11, v1, Lcom/android/launcher3/model/data/FolderInfo;->cellX:I

    iget v12, v1, Lcom/android/launcher3/model/data/FolderInfo;->cellY:I

    move-object v8, v5

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 117
    .end local v6    # "cellLayout":Lcom/android/launcher3/CellLayout;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    iget-object v3, v3, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v6, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$folder:Lcom/android/launcher3/folder/Folder;

    iget-object v6, v6, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    const-string v7, "folder removed because there\'s only 1 item in it"

    invoke-virtual {v3, v6, v1, v4, v7}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    .line 119
    iget-object v3, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$folder:Lcom/android/launcher3/folder/Folder;

    iget-object v3, v3, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v3, v3, Lcom/android/launcher3/DropTarget;

    if-eqz v3, :cond_3

    .line 120
    iget-object v3, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$folder:Lcom/android/launcher3/folder/Folder;

    iget-object v3, v3, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v4, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$folder:Lcom/android/launcher3/folder/Folder;

    iget-object v4, v4, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v4, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 123
    :cond_3
    if-eqz v2, :cond_4

    .line 127
    iget-object v3, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    iget-object v3, v3, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/launcher3/Workspace;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 130
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 132
    :cond_4
    if-eqz v5, :cond_5

    .line 133
    iget-object v3, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    iget-object v3, v3, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v3

    .line 134
    invoke-interface {v3, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v3

    .line 135
    .local v3, "logger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    iget-object v4, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$folder:Lcom/android/launcher3/folder/Folder;

    iget-object v4, v4, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragController;->getLogInstanceId()Ljava/util/Optional;

    move-result-object v4

    .line 136
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/launcher3/folder/LauncherDelegate$1$$ExternalSyntheticLambda0;

    invoke-direct {v6, v3}, Lcom/android/launcher3/folder/LauncherDelegate$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;)V

    invoke-virtual {v4, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    .line 137
    invoke-virtual {v4, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    sget-object v6, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_CONVERTED_TO_ICON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 138
    invoke-interface {v4, v6}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 141
    .end local v2    # "newIcon":Landroid/view/View;
    .end local v3    # "logger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .end local v5    # "finalItem":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_5
    return-void
.end method
