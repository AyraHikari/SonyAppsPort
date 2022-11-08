.class public Lcom/android/launcher3/DeleteDropTarget;
.super Lcom/android/launcher3/ButtonDropTarget;
.source "DeleteDropTarget.java"


# instance fields
.field private mLauncherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field private final mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/DeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    .line 62
    return-void
.end method

.method private canRemove(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 3
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 117
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 118
    .local v0, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/DeleteDropTarget;->isDraggedFromAppTray(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isDraggedFromAppTray(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 4
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 122
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/4 v1, 0x1

    const/16 v2, -0x66

    if-ne v0, v2, :cond_0

    .line 123
    return v1

    .line 124
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, v0, Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    check-cast v0, Lcom/android/launcher3/folder/Folder;

    .line 126
    .local v0, "folder":Lcom/android/launcher3/folder/Folder;
    iget-object v3, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    if-ne v3, v2, :cond_1

    .line 127
    return v1

    .line 130
    .end local v0    # "folder":Lcom/android/launcher3/folder/Folder;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private setControlTypeBasedOnDragSource(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 137
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROPPED_ON_REMOVE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    .line 138
    :cond_0
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROPPED_ON_CANCEL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 139
    return-void
.end method

.method private setTextBasedOnDragSource(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/launcher3/DeleteDropTarget;->canRemove(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    sget v1, Lcom/android/launcher3/R$string;->remove_drop_target_label:I

    goto :goto_0

    :cond_0
    const/high16 v1, 0x1040000

    .line 109
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->mText:Ljava/lang/CharSequence;

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeleteDropTarget;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->requestLayout()V

    .line 114
    :cond_1
    return-void
.end method


# virtual methods
.method public completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 9
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/launcher3/DeleteDropTarget;->canRemove(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 156
    .local v0, "item":Lcom/android/launcher3/model/data/ItemInfo;
    move-object v1, v0

    .line 157
    .local v1, "pageItem":Lcom/android/launcher3/model/data/ItemInfo;
    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-gtz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v2

    .line 159
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 163
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x64

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 164
    new-array v2, v4, [I

    const/4 v3, 0x0

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    aput v5, v2, v3

    invoke-static {v2}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v2

    goto :goto_0

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getCurrentPageScreenIds()Lcom/android/launcher3/util/IntSet;

    move-result-object v2

    :goto_0
    nop

    .line 167
    .local v2, "pageIds":Lcom/android/launcher3/util/IntSet;
    sget-object v3, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerConst;->GAME_ENHANCER_MAIN_LAUNCHER_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 168
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 169
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerUtil;->existsGameEnhancerShortcut(Lcom/android/launcher3/Workspace;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerAccessor;->isHideLauncherIconEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    new-instance v3, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;

    invoke-direct {v3}, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;-><init>()V

    .line 174
    .local v3, "deleteGameEnhancerShortcut":Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;
    iget-object v6, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, v5, v0, v4}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    .line 175
    iget-object v4, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 176
    nop

    .line 177
    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v4, v5, v2}, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;->showRemoveGEShortcutDialog(Landroid/content/Context;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;)V

    .line 178
    return-void

    .line 181
    .end local v3    # "deleteGameEnhancerShortcut":Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;
    :cond_2
    invoke-virtual {p0, v5, v0}, Lcom/android/launcher3/DeleteDropTarget;->onAccessibilityDrop(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 182
    iget-object v3, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    .line 183
    .local v3, "modelWriter":Lcom/android/launcher3/model/ModelWriter;
    new-instance v4, Lcom/android/launcher3/DeleteDropTarget$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/launcher3/DeleteDropTarget$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/ModelWriter;)V

    .line 188
    .local v4, "onUndoClicked":Ljava/lang/Runnable;
    iget-object v5, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    sget v6, Lcom/android/launcher3/R$string;->item_removed:I

    sget v7, Lcom/android/launcher3/R$string;->undo:I

    .line 189
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/launcher3/DeleteDropTarget$$ExternalSyntheticLambda1;

    invoke-direct {v8, v3}, Lcom/android/launcher3/DeleteDropTarget$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    .line 188
    invoke-static {v5, v6, v7, v8, v4}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 191
    .end local v0    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v1    # "pageItem":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v2    # "pageIds":Lcom/android/launcher3/util/IntSet;
    .end local v3    # "modelWriter":Lcom/android/launcher3/model/ModelWriter;
    .end local v4    # "onUndoClicked":Ljava/lang/Runnable;
    :cond_3
    return-void
.end method

.method public getAccessibilityAction()I
    .locals 1

    .line 93
    sget v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->REMOVE:I

    return v0
.end method

.method synthetic lambda$completeDrop$0$com-android-launcher3-DeleteDropTarget(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/ModelWriter;)V
    .locals 2
    .param p1, "pageIds"    # Lcom/android/launcher3/util/IntSet;
    .param p2, "modelWriter"    # Lcom/android/launcher3/model/ModelWriter;

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->setPagesToBindSynchronously(Lcom/android/launcher3/util/IntSet;)V

    .line 185
    invoke-virtual {p2}, Lcom/android/launcher3/model/ModelWriter;->abortDelete()V

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_UNDO:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 187
    return-void
.end method

.method public onAccessibilityDrop(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    const-string v2, "removed by accessibility drop"

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 204
    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->item_removed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 1
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/ButtonDropTarget;->onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/android/launcher3/DeleteDropTarget;->setTextBasedOnDragSource(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 74
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/DeleteDropTarget;->setControlTypeBasedOnDragSource(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 75
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 2
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 143
    invoke-direct {p0, p1}, Lcom/android/launcher3/DeleteDropTarget;->canRemove(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter;->prepareToUndoDelete()V

    .line 145
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 147
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/ButtonDropTarget;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/DeleteDropTarget;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 149
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 150
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/android/launcher3/ButtonDropTarget;->onFinishInflate()V

    .line 67
    sget v0, Lcom/android/launcher3/R$drawable;->ic_remove_no_shadow:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeleteDropTarget;->setDrawable(I)V

    .line 68
    return-void
.end method

.method protected setupItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 97
    return-void
.end method

.method public supportsAccessibilityDrop(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "view"    # Landroid/view/View;

    .line 82
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 84
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 87
    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method protected supportsDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 101
    const/4 v0, 0x1

    return v0
.end method
