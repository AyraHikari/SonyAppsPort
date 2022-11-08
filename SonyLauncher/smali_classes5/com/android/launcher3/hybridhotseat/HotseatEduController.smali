.class public Lcom/android/launcher3/hybridhotseat/HotseatEduController;
.super Ljava/lang/Object;
.source "HotseatEduController.java"


# static fields
.field public static final SETTINGS_ACTION:Ljava/lang/String; = "android.settings.ACTION_CONTENT_SUGGESTIONS_SETTINGS"

.field private static final TAG:Ljava/lang/String; = "HotseatEduController"


# instance fields
.field private mActiveDialog:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

.field private final mHotseat:Lcom/android/launcher3/Hotseat;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mNewItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNewScreens:Lcom/android/launcher3/util/IntArray;

.field private mPredictedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mNewItems:Ljava/util/ArrayList;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mNewScreens:Lcom/android/launcher3/util/IntArray;

    .line 68
    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 69
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 70
    return-void
.end method

.method static getSettingsIntent()Landroid/content/Intent;
    .locals 2

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_CONTENT_SUGGESTIONS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private migrateHotseatWhole()I
    .locals 18

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    .line 181
    .local v1, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    const/4 v2, -0x1

    .line 182
    .local v2, "pageId":I
    const/4 v3, 0x0

    .line 183
    .local v3, "toRow":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    .line 184
    invoke-virtual {v1, v4}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v5

    .line 185
    .local v5, "target":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v5, v6}, Lcom/android/launcher3/CellLayout;->makeSpaceForHotseatMigration(Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 186
    iget-object v7, v0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v7, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    add-int/lit8 v3, v7, -0x1

    .line 187
    move v2, v4

    .line 188
    goto :goto_1

    .line 183
    .end local v5    # "target":Lcom/android/launcher3/CellLayout;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 191
    .end local v4    # "i":I
    :cond_1
    :goto_1
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    .line 192
    iget-object v4, v0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "generate_new_screen_id"

    invoke-static {v4, v7}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 194
    const-string v7, "value"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 195
    new-array v4, v6, [I

    aput v2, v4, v5

    invoke-static {v4}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mNewScreens:Lcom/android/launcher3/util/IntArray;

    .line 197
    :cond_2
    iget-object v4, v0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    xor-int/2addr v4, v6

    .line 198
    .local v4, "isPortrait":Z
    iget-object v7, v0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    iget v13, v7, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    .line 199
    .local v13, "hotseatItemsNum":I
    const/4 v7, 0x0

    move v14, v7

    .local v14, "i":I
    :goto_2
    if-ge v14, v13, :cond_8

    .line 200
    if-eqz v4, :cond_3

    move v7, v14

    goto :goto_3

    :cond_3
    move v7, v5

    :goto_3
    move v15, v7

    .line 201
    .local v15, "x":I
    if-eqz v4, :cond_4

    move v7, v5

    goto :goto_4

    :cond_4
    sub-int v7, v13, v14

    sub-int/2addr v7, v6

    :goto_4
    move v12, v7

    .line 202
    .local v12, "y":I
    iget-object v7, v0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v7, v15, v12}, Lcom/android/launcher3/Hotseat;->getChildAt(II)Landroid/view/View;

    move-result-object v16

    .line 203
    .local v16, "child":Landroid/view/View;
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_5

    .line 204
    :cond_5
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfo;

    .line 205
    .local v11, "tag":Lcom/android/launcher3/model/data/ItemInfo;
    iget v7, v11, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v8, -0x67

    if-ne v7, v8, :cond_6

    goto :goto_5

    .line 206
    :cond_6
    iget-object v7, v0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v7

    const/16 v9, -0x64

    move-object v8, v11

    move v10, v2

    move-object v5, v11

    .end local v11    # "tag":Lcom/android/launcher3/model/data/ItemInfo;
    .local v5, "tag":Lcom/android/launcher3/model/data/ItemInfo;
    move v11, v14

    move/from16 v17, v12

    .end local v12    # "y":I
    .local v17, "y":I
    move v12, v3

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 208
    iget-object v7, v0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mNewItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 203
    .end local v5    # "tag":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v17    # "y":I
    .restart local v12    # "y":I
    :cond_7
    move/from16 v17, v12

    .line 199
    .end local v12    # "y":I
    .end local v15    # "x":I
    .end local v16    # "child":Landroid/view/View;
    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_2

    .line 210
    .end local v14    # "i":I
    :cond_8
    return v2
.end method

.method private migrateToFolder()I
    .locals 12

    .line 94
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 95
    .local v0, "folders":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/launcher3/model/data/FolderInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v1, "putIntoFolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_3

    .line 99
    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v3, v2, v4}, Lcom/android/launcher3/Hotseat;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 100
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 102
    .local v4, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 103
    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_1
    instance-of v5, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v5, :cond_2

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v6, -0x65

    if-ne v5, v6, :cond_2

    .line 106
    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 112
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 113
    .local v2, "firstItem":Lcom/android/launcher3/model/data/ItemInfo;
    new-instance v3, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v3}, Lcom/android/launcher3/model/data/FolderInfo;-><init>()V

    .line 114
    .local v3, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v4, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    iget v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v9, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 116
    iget-object v4, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v5, v4}, Lcom/android/launcher3/model/data/FolderInfo;->setTitle(Ljava/lang/CharSequence;Lcom/android/launcher3/model/ModelWriter;)V

    .line 117
    iget-object v4, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 118
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v5, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 119
    iget-object v5, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    .line 120
    .local v5, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iput v4, v5, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 121
    iget-object v6, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v6

    iget v8, v3, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    const/4 v9, 0x0

    iget v10, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v11, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v7, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 118
    .end local v5    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 124
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v2    # "firstItem":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v3    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mNewItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 128
    invoke-direct {p0, v0}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->placeFoldersInWorkspace(Ljava/util/ArrayDeque;)I

    move-result v2

    return v2
.end method

.method private placeFoldersInWorkspace(Ljava/util/ArrayDeque;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;)I"
        }
    .end annotation

    .line 132
    .local p1, "folders":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/launcher3/model/data/FolderInfo;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 134
    :cond_0
    iget-object v1, v0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    .line 135
    .local v1, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    iget-object v3, v0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 137
    .local v3, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v4

    new-array v4, v4, [Lcom/android/launcher3/util/GridOccupancy;

    .line 138
    .local v4, "occupancyList":[Lcom/android/launcher3/util/GridOccupancy;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 139
    invoke-virtual {v1, v5}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->cloneGridOccupancy()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v6

    aput-object v6, v4, v5

    .line 138
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 142
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x0

    .line 143
    .local v5, "occupancyIndex":I
    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 144
    .local v6, "itemXY":[I
    :goto_1
    array-length v7, v4

    const/4 v8, 0x1

    if-ge v5, v7, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 145
    aget-object v7, v4, v5

    .line 146
    .local v7, "occupancy":Lcom/android/launcher3/util/GridOccupancy;
    invoke-virtual {v7, v6, v8, v8}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 147
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/FolderInfo;

    .line 148
    .local v9, "info":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v10, v0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v10

    const/16 v12, -0x64

    .line 150
    invoke-virtual {v1, v5}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v13

    aget v14, v6, v2

    aget v15, v6, v8

    .line 148
    move-object v11, v9

    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 151
    invoke-virtual {v7, v9, v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 152
    .end local v9    # "info":Lcom/android/launcher3/model/data/FolderInfo;
    goto :goto_2

    .line 153
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 155
    .end local v7    # "occupancy":Lcom/android/launcher3/util/GridOccupancy;
    :goto_2
    goto :goto_1

    .line 156
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1, v5}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v2

    return v2

    .line 157
    :cond_4
    iget-object v7, v0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "generate_new_screen_id"

    invoke-static {v7, v9}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 159
    const-string v9, "value"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 162
    .local v7, "screenId":I
    const/4 v9, 0x0

    move v14, v9

    .line 163
    .local v14, "col":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/FolderInfo;

    move-object v11, v9

    .local v11, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    if-eqz v9, :cond_5

    .line 164
    iget-object v9, v0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v10

    const/16 v12, -0x64

    add-int/lit8 v9, v14, 0x1

    .end local v14    # "col":I
    .local v9, "col":I
    iget v13, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    add-int/lit8 v15, v13, -0x1

    move v13, v7

    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    move v14, v9

    goto :goto_3

    .line 168
    .end local v9    # "col":I
    .restart local v14    # "col":I
    :cond_5
    new-array v8, v8, [I

    aput v7, v8, v2

    invoke-static {v8}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mNewScreens:Lcom/android/launcher3/util/IntArray;

    .line 169
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v2

    return v2
.end method

.method private showHotseatArrowTip(ZLjava/lang/String;)Z
    .locals 12
    .param p1, "usePinned"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 282
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 284
    .local v1, "isPortrait":Z
    const/4 v3, 0x0

    .line 285
    .local v3, "tipTargetView":Lcom/android/launcher3/BubbleTextView;
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-le v4, v5, :cond_4

    .line 286
    if-eqz v1, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v6

    .line 287
    .local v5, "x":I
    :goto_1
    if-eqz v1, :cond_1

    move v7, v6

    goto :goto_2

    :cond_1
    move v7, v4

    .line 288
    .local v7, "y":I
    :goto_2
    iget-object v8, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v8}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v8

    invoke-virtual {v8, v5, v7}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v8

    .line 289
    .local v8, "v":Landroid/view/View;
    instance-of v9, v8, Lcom/android/launcher3/BubbleTextView;

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v9, :cond_3

    .line 290
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    .line 291
    .local v9, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget v10, v9, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v11, -0x65

    if-ne v10, v11, :cond_2

    move v10, v2

    goto :goto_3

    :cond_2
    move v10, v6

    .line 292
    .local v10, "isPinned":Z
    :goto_3
    if-ne v10, p1, :cond_3

    .line 293
    move-object v3, v8

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    .line 294
    goto :goto_4

    .line 285
    .end local v5    # "x":I
    .end local v7    # "y":I
    .end local v8    # "v":Landroid/view/View;
    .end local v9    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v10    # "isPinned":Z
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 298
    .end local v4    # "i":I
    :cond_4
    :goto_4
    if-nez v3, :cond_5

    .line 299
    const-string v2, "HotseatEduController"

    const-string v4, "Unable to find suitable view for ArrowTip"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return v6

    .line 302
    :cond_5
    invoke-static {v3}, Lcom/android/launcher3/Utilities;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 303
    .local v4, "bounds":Landroid/graphics/Rect;
    new-instance v5, Lcom/android/launcher3/views/ArrowTipView;

    iget-object v6, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v5, v6}, Lcom/android/launcher3/views/ArrowTipView;-><init>(Landroid/content/Context;)V

    const v6, 0x800005

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget v8, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, p2, v6, v7, v8}, Lcom/android/launcher3/views/ArrowTipView;->show(Ljava/lang/String;III)Lcom/android/launcher3/views/ArrowTipView;

    .line 304
    return v2
.end method


# virtual methods
.method finishOnboarding()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->onWorkspaceUiChanged()V

    .line 233
    return-void
.end method

.method synthetic lambda$migrate$0$com-android-launcher3-hybridhotseat-HotseatEduController()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$showDimissTip$1$com-android-launcher3-hybridhotseat-HotseatEduController()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$showEdu$2$com-android-launcher3-hybridhotseat-HotseatEduController(I)Z
    .locals 3
    .param p1, "i"    # I

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 256
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x67

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method migrate()V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/hybridhotseat/HotseatRestoreHelper;->createBackup(Landroid/content/Context;)V

    .line 77
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->HOTSEAT_MIGRATE_TO_FOLDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->migrateToFolder()I

    goto :goto_0

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->migrateHotseatWhole()I

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget v1, Lcom/android/launcher3/R$string;->hotsaet_tip_prediction_enabled:I

    sget v2, Lcom/android/launcher3/R$string;->hotseat_prediction_settings:I

    const/4 v3, 0x0

    new-instance v4, Lcom/android/launcher3/hybridhotseat/HotseatEduController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatEduController;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method

.method moveHotseatItems()V
    .locals 6

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->removeAllViewsInLayout()V

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mNewItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mNewItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 217
    .local v0, "lastPage":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v1, "animated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v2, "nonAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mNewItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 221
    .local v4, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ne v5, v0, :cond_0

    .line 222
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v4    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_1
    goto :goto_0

    .line 227
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mNewScreens:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/launcher3/Launcher;->bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 229
    .end local v0    # "lastPage":I
    .end local v1    # "animated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v2    # "nonAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :cond_2
    return-void
.end method

.method setPredictedApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p1, "predictedApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mPredictedApps:Ljava/util/List;

    .line 248
    return-void
.end method

.method showDialog()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mPredictedApps:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mActiveDialog:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    if-eqz v0, :cond_1

    .line 312
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->handleClose(Z)V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->getDialog(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mActiveDialog:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    .line 315
    invoke-virtual {v0, p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->setHotseatEduController(Lcom/android/launcher3/hybridhotseat/HotseatEduController;)V

    .line 316
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mActiveDialog:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mPredictedApps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->show(Ljava/util/List;)V

    .line 317
    return-void

    .line 309
    :cond_2
    :goto_0
    return-void
.end method

.method showDimissTip()V
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 237
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    if-ge v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget v1, Lcom/android/launcher3/R$string;->hotseat_tip_gaps_filled:I

    sget v2, Lcom/android/launcher3/R$string;->hotseat_prediction_settings:I

    const/4 v3, 0x0

    new-instance v4, Lcom/android/launcher3/hybridhotseat/HotseatEduController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatEduController;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 242
    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget v2, Lcom/android/launcher3/R$string;->hotseat_tip_no_empty_slots:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->showHotseatArrowTip(ZLjava/lang/String;)Z

    .line 244
    :goto_0
    return-void
.end method

.method showEdu()V
    .locals 6

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 252
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    .line 254
    .local v1, "cellLayout":Lcom/android/launcher3/CellLayout;
    invoke-static {v2, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/hybridhotseat/HotseatEduController$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduController$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatEduController;)V

    invoke-interface {v3, v4}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v3

    .line 259
    .local v3, "requiresMigration":Z
    invoke-virtual {v1, v2}, Lcom/android/launcher3/CellLayout;->makeSpaceForHotseatMigration(Z)Z

    move-result v2

    .line 260
    .local v2, "canMigrateToFirstPage":Z
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->showDialog()V

    goto :goto_1

    .line 263
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 264
    if-eqz v3, :cond_1

    sget v5, Lcom/android/launcher3/R$string;->hotseat_tip_no_empty_slots:I

    goto :goto_0

    .line 265
    :cond_1
    sget v5, Lcom/android/launcher3/R$string;->hotseat_auto_enrolled:I

    .line 263
    :goto_0
    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->showHotseatArrowTip(ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 266
    iget-object v4, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOTSEAT_EDU_ONLY_TIP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v4, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 268
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->finishOnboarding()V

    .line 270
    :goto_1
    return-void
.end method
