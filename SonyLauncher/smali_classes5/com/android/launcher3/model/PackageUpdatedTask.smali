.class public Lcom/android/launcher3/model/PackageUpdatedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "PackageUpdatedTask.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final OP_ADD:I = 0x1

.field public static final OP_HIDE_FROM_GAME_ENHANCER:I = 0x14

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_SUSPEND:I = 0x5

.field public static final OP_UNAVAILABLE:I = 0x4

.field public static final OP_UNSUSPEND:I = 0x6

.field public static final OP_UPDATE:I = 0x2

.field public static final OP_USER_AVAILABILITY_CHANGE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "PackageUpdatedTask"


# instance fields
.field private final mOp:I

.field private final mPackages:[Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public varargs constructor <init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "packages"    # [Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 95
    iput p1, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    .line 96
    iput-object p2, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 97
    iput-object p3, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 98
    return-void
.end method

.method static synthetic lambda$execute$0(Ljava/util/HashSet;Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 1
    .param p0, "removedComponents"    # Ljava/util/HashSet;
    .param p1, "a"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 144
    iget-object v0, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$execute$2(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "widgets"    # Ljava/util/ArrayList;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 358
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindWidgetsRestored(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic lambda$execute$3(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "appInfo"    # Lcom/android/launcher3/model/data/AppInfo;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 374
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 375
    return-void
.end method

.method private updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "si"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 433
    iget v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 436
    return v1

    .line 439
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p3, v2}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v0

    .line 440
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 441
    iput-object v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 442
    iput v1, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    .line 443
    const/4 v1, 0x1

    return v1

    .line 445
    :cond_1
    return v1
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 29
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "appsList"    # Lcom/android/launcher3/model/AllAppsList;

    .line 102
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v13, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 103
    .local v12, "context":Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v11

    .line 105
    .local v11, "iconCache":Lcom/android/launcher3/icons/IconCache;
    iget-object v10, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 106
    .local v10, "packages":[Ljava/lang/String;
    array-length v9, v10

    .line 108
    .local v9, "N":I
    new-instance v0, Ljava/util/HashSet;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v5, v0

    .line 109
    .local v5, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget v0, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v5, v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v0

    :goto_0
    move-object v4, v0

    .line 112
    .local v4, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v3, v0

    .line 113
    .local v3, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 115
    .local v2, "activitiesLists":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;>;"
    iget v0, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v6, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 212
    move-object/from16 v20, v3

    move v1, v6

    .end local v3    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .local v20, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    move-object v3, v0

    .local v0, "flagOp":Lcom/android/launcher3/util/FlagOp;
    goto/16 :goto_e

    .line 198
    .end local v0    # "flagOp":Lcom/android/launcher3/util/FlagOp;
    .end local v20    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v3    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :sswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v9, :cond_1

    .line 199
    const-string v7, "PackageUpdatedTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing app icon"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v8, v10, v0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    aget-object v1, v10, v0

    iget-object v7, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v1, v7}, Lcom/android/launcher3/icons/IconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v9, :cond_2

    .line 206
    aget-object v1, v10, v0

    iget-object v7, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v13, v1, v7}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 208
    .end local v0    # "i":I
    :cond_2
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    invoke-interface {v0, v6}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    .line 209
    .local v0, "flagOp":Lcom/android/launcher3/util/FlagOp;
    move-object/from16 v20, v3

    move v1, v6

    move-object v3, v0

    goto/16 :goto_e

    .line 185
    .end local v0    # "flagOp":Lcom/android/launcher3/util/FlagOp;
    :sswitch_1
    new-instance v0, Lcom/android/launcher3/model/UserManagerState;

    invoke-direct {v0}, Lcom/android/launcher3/model/UserManagerState;-><init>()V

    .line 186
    .local v0, "ums":Lcom/android/launcher3/model/UserManagerState;
    sget-object v1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v12}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/UserCache;

    const-class v7, Landroid/os/UserManager;

    .line 187
    invoke-virtual {v12, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 186
    invoke-virtual {v0, v1, v7}, Lcom/android/launcher3/model/UserManagerState;->init(Lcom/android/launcher3/pm/UserCache;Landroid/os/UserManager;)V

    .line 188
    sget-object v1, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    const/16 v7, 0x8

    iget-object v8, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 189
    invoke-virtual {v0, v8}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(Landroid/os/UserHandle;)Z

    move-result v8

    .line 188
    invoke-interface {v1, v7, v8}, Lcom/android/launcher3/util/FlagOp;->setFlag(IZ)Lcom/android/launcher3/util/FlagOp;

    move-result-object v1

    .line 190
    .local v1, "flagOp":Lcom/android/launcher3/util/FlagOp;
    invoke-virtual {v13, v4, v1}, Lcom/android/launcher3/model/AllAppsList;->updateDisabledFlags(Ljava/util/function/Predicate;Lcom/android/launcher3/util/FlagOp;)V

    .line 193
    invoke-virtual {v0}, Lcom/android/launcher3/model/UserManagerState;->isAnyProfileQuietModeEnabled()Z

    move-result v7

    invoke-virtual {v13, v6, v7}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    .line 194
    move-object/from16 v20, v3

    move-object v3, v1

    move v1, v6

    goto/16 :goto_e

    .line 179
    .end local v0    # "ums":Lcom/android/launcher3/model/UserManagerState;
    .end local v1    # "flagOp":Lcom/android/launcher3/util/FlagOp;
    :sswitch_2
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    iget v1, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v7, 0x5

    if-ne v1, v7, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    const/4 v7, 0x4

    invoke-interface {v0, v7, v1}, Lcom/android/launcher3/util/FlagOp;->setFlag(IZ)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    .line 182
    .local v0, "flagOp":Lcom/android/launcher3/util/FlagOp;
    invoke-virtual {v13, v4, v0}, Lcom/android/launcher3/model/AllAppsList;->updateDisabledFlags(Ljava/util/function/Predicate;Lcom/android/launcher3/util/FlagOp;)V

    .line 183
    move-object/from16 v20, v3

    move v1, v6

    move-object v3, v0

    goto/16 :goto_e

    .line 115
    .end local v0    # "flagOp":Lcom/android/launcher3/util/FlagOp;
    :sswitch_3
    const/4 v7, 0x4

    goto :goto_5

    .line 164
    :sswitch_4
    const/4 v7, 0x4

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v9, :cond_4

    .line 165
    const-string v1, "PackageUpdatedTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing app icon"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v10, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    aget-object v1, v10, v0

    iget-object v7, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v1, v7}, Lcom/android/launcher3/icons/IconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    const/4 v7, 0x4

    goto :goto_4

    .line 171
    .end local v0    # "i":I
    :cond_4
    :goto_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    if-ge v0, v9, :cond_5

    .line 173
    aget-object v1, v10, v0

    iget-object v7, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v13, v1, v7}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 175
    .end local v0    # "i":I
    :cond_5
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    invoke-interface {v0, v6}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    .line 176
    .local v0, "flagOp":Lcom/android/launcher3/util/FlagOp;
    move-object/from16 v20, v3

    move v1, v6

    move-object v3, v0

    goto/16 :goto_e

    .line 143
    .end local v0    # "flagOp":Lcom/android/launcher3/util/FlagOp;
    :sswitch_5
    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3}, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashSet;)V

    .line 144
    invoke-virtual {v13, v0}, Lcom/android/launcher3/model/AllAppsList;->trackRemoves(Ljava/util/function/Consumer;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v1

    .line 145
    .local v1, "t":Lcom/android/launcher3/util/SafeCloseable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v9, :cond_8

    .line 147
    :try_start_0
    aget-object v7, v10, v0

    iget-object v8, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v7, v8}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 148
    aget-object v7, v10, v0

    aget-object v8, v10, v0

    iget-object v6, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 149
    invoke-virtual {v13, v12, v8, v6}, Lcom/android/launcher3/model/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    .line 148
    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v6, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v6}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/Launcher;

    .line 154
    .local v6, "launcher":Lcom/android/launcher3/Launcher;
    if-eqz v6, :cond_6

    .line 155
    new-instance v7, Lcom/android/launcher3/util/PackageUserKey;

    aget-object v8, v10, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v20, v3

    .end local v3    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v20    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :try_start_1
    iget-object v3, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v7, v8, v3}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 143
    .end local v0    # "i":I
    .end local v6    # "launcher":Lcom/android/launcher3/Launcher;
    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_9

    .line 154
    .end local v20    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v0    # "i":I
    .restart local v3    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v6    # "launcher":Lcom/android/launcher3/Launcher;
    :cond_6
    move-object/from16 v20, v3

    .line 145
    .end local v3    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .end local v6    # "launcher":Lcom/android/launcher3/Launcher;
    .restart local v20    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :goto_8
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v20

    const/4 v6, 0x2

    goto :goto_7

    .line 143
    .end local v0    # "i":I
    .end local v20    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v3    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v20, v3

    move-object v3, v0

    .end local v3    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v20    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :goto_9
    if-eqz v1, :cond_7

    :try_start_2
    invoke-interface {v1}, Lcom/android/launcher3/util/SafeCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_a
    throw v3

    .line 145
    .end local v20    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v0    # "i":I
    .restart local v3    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :cond_8
    move-object/from16 v20, v3

    .line 159
    .end local v0    # "i":I
    .end local v3    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v20    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    .line 161
    .end local v1    # "t":Lcom/android/launcher3/util/SafeCloseable;
    :cond_9
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    .line 162
    .local v0, "flagOp":Lcom/android/launcher3/util/FlagOp;
    move-object v3, v0

    const/4 v1, 0x2

    goto/16 :goto_e

    .line 117
    .end local v0    # "flagOp":Lcom/android/launcher3/util/FlagOp;
    .end local v20    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v3    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :sswitch_6
    move-object/from16 v20, v3

    .end local v3    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v20    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v9, :cond_d

    .line 119
    aget-object v1, v10, v0

    iget-object v3, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v11, v1, v3}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 121
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_IN_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_OWN_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 122
    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 123
    :cond_a
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v3, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 125
    iget-object v1, v13, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 126
    .local v1, "Iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/model/data/AppInfo;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    .line 128
    .local v3, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v6, v3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v6, v3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 129
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v10, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget v6, v3, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_b

    .line 131
    aget-object v6, v10, v0

    iget-object v7, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v13, v6, v7}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 132
    goto :goto_d

    .line 134
    .end local v3    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    :cond_b
    goto :goto_c

    .line 136
    .end local v1    # "Iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/model/data/AppInfo;>;"
    :cond_c
    :goto_d
    aget-object v1, v10, v0

    aget-object v3, v10, v0

    iget-object v6, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 137
    invoke-virtual {v13, v12, v3, v6}, Lcom/android/launcher3/model/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 136
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 139
    .end local v0    # "i":I
    :cond_d
    sget-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    .line 140
    .local v0, "flagOp":Lcom/android/launcher3/util/FlagOp;
    move-object v3, v0

    .line 216
    .end local v0    # "flagOp":Lcom/android/launcher3/util/FlagOp;
    .local v3, "flagOp":Lcom/android/launcher3/util/FlagOp;
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/PackageUpdatedTask;->bindApplicationsIfNeeded()V

    .line 218
    new-instance v8, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v8}, Lcom/android/launcher3/util/IntSet;-><init>()V

    const/4 v0, 0x1

    .line 220
    .local v8, "removedShortcuts":Lcom/android/launcher3/util/IntSet;
    new-instance v6, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v6}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 223
    .local v6, "forceKeepShortcuts":Lcom/android/launcher3/util/IntSet;
    iget v7, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-eq v7, v0, :cond_f

    sget-object v7, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    if-eq v3, v7, :cond_e

    goto :goto_f

    :cond_e
    move-object/from16 v18, v2

    move-object/from16 v22, v4

    move/from16 v24, v9

    move-object v9, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-object v12, v13

    move-object v2, v14

    move-object/from16 v21, v20

    move-object/from16 v20, v3

    goto/16 :goto_1a

    .line 224
    :cond_f
    :goto_f
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v7, "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v17

    .line 228
    .local v19, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    iget v1, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-eq v1, v0, :cond_11

    const/4 v0, 0x2

    if-ne v1, v0, :cond_10

    goto :goto_10

    :cond_10
    const/4 v1, 0x0

    goto :goto_11

    :cond_11
    const/4 v0, 0x2

    :goto_10
    const/4 v1, 0x1

    :goto_11
    move-object/from16 v16, v7

    const/4 v0, 0x0

    const/16 v18, 0x4

    .end local v7    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .local v16, "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    move v7, v1

    .line 229
    .local v7, "isNewApkAvailable":Z
    monitor-enter p2

    .line 230
    :try_start_3
    iget-object v1, v14, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    move-object v14, v1

    move/from16 v17, v18

    move-object v1, v0

    move-object/from16 v18, v2

    .end local v2    # "activitiesLists":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;>;"
    .local v18, "activitiesLists":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;>;"
    move-object/from16 v2, p0

    move-object/from16 v21, v20

    move-object/from16 v20, v3

    .end local v3    # "flagOp":Lcom/android/launcher3/util/FlagOp;
    .local v20, "flagOp":Lcom/android/launcher3/util/FlagOp;
    .local v21, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    move-object v3, v5

    move-object/from16 v22, v4

    .end local v4    # "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local v22, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    move-object v4, v12

    move-object/from16 v23, v5

    .end local v5    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v23, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v5, v22

    move/from16 v24, v9

    .end local v9    # "N":I
    .local v24, "N":I
    move-object/from16 v9, v21

    move-object/from16 v25, v10

    .end local v10    # "packages":[Ljava/lang/String;
    .local v25, "packages":[Ljava/lang/String;
    move-object/from16 v10, v18

    move-object/from16 v26, v11

    .end local v11    # "iconCache":Lcom/android/launcher3/icons/IconCache;
    .local v26, "iconCache":Lcom/android/launcher3/icons/IconCache;
    move-object/from16 v27, v12

    .end local v12    # "context":Landroid/content/Context;
    .local v27, "context":Landroid/content/Context;
    move-object/from16 v12, v20

    move-object/from16 v13, v16

    :try_start_4
    invoke-direct/range {v1 .. v13}, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/HashSet;Landroid/content/Context;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLcom/android/launcher3/util/IntSet;Ljava/util/HashSet;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;)V

    invoke-virtual {v15, v14, v0}, Lcom/android/launcher3/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    .line 330
    iget-object v0, v15, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    if-eqz v1, :cond_15

    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 331
    .local v1, "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    move-object/from16 v2, p0

    :try_start_6
    iget-object v3, v2, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    iget-object v4, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 332
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 334
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 v5, v23

    .end local v23    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_7
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 335
    iget v4, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v4, v4, -0xb

    iput v4, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 342
    iget v4, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 344
    move-object/from16 v4, v19

    .end local v19    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .local v4, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    :try_start_8
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/PackageUpdatedTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_13

    .line 348
    .end local v1    # "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :catchall_3
    move-exception v0

    move-object/from16 v13, p1

    move-object/from16 v12, p3

    move-object/from16 v17, v16

    move-object/from16 v11, v21

    move/from16 v10, v24

    move-object/from16 v9, v25

    move-object/from16 v3, v27

    goto/16 :goto_23

    .line 334
    .end local v4    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v1    # "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .restart local v19    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    :cond_12
    move-object/from16 v4, v19

    .end local v19    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v4    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    goto :goto_13

    .line 348
    .end local v1    # "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .end local v4    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v19    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    :catchall_4
    move-exception v0

    move-object/from16 v4, v19

    move-object/from16 v13, p1

    move-object/from16 v12, p3

    move-object/from16 v17, v16

    move-object/from16 v11, v21

    move/from16 v10, v24

    move-object/from16 v9, v25

    move-object/from16 v3, v27

    .end local v19    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v4    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    goto/16 :goto_23

    .line 332
    .end local v4    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v5    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v1    # "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .restart local v19    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v23    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_13
    move-object/from16 v4, v19

    move-object/from16 v5, v23

    .end local v19    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v23    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v5    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_13

    .line 331
    .end local v4    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v5    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v23    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_14
    move-object/from16 v4, v19

    move-object/from16 v5, v23

    const/4 v3, 0x2

    .line 347
    .end local v1    # "widgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .end local v19    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v23    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v5    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_13
    move-object/from16 v19, v4

    move-object/from16 v23, v5

    goto :goto_12

    .line 348
    .end local v4    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v5    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v23    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_5
    move-exception v0

    goto :goto_14

    :catchall_6
    move-exception v0

    move-object/from16 v2, p0

    :goto_14
    move-object/from16 v4, v19

    move-object/from16 v5, v23

    move-object/from16 v13, p1

    move-object/from16 v12, p3

    move-object/from16 v17, v16

    move-object/from16 v11, v21

    move/from16 v10, v24

    move-object/from16 v9, v25

    move-object/from16 v3, v27

    .end local v19    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v23    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v5    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto/16 :goto_23

    .end local v4    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v5    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v23    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_15
    move-object/from16 v2, p0

    move-object/from16 v4, v19

    move-object/from16 v5, v23

    const/4 v3, 0x2

    .end local v19    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v23    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v5    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_9
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 350
    move-object/from16 v1, v16

    .end local v16    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .local v1, "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    invoke-virtual {v2, v1}, Lcom/android/launcher3/model/PackageUpdatedTask;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    .line 351
    invoke-virtual {v8}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 352
    nop

    .line 353
    invoke-static {v8}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;

    move-result-object v0

    const-string v9, "removed because the target component is invalid"

    .line 352
    invoke-virtual {v2, v0, v9}, Lcom/android/launcher3/model/PackageUpdatedTask;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    .line 357
    :cond_16
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 358
    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda2;

    invoke-direct {v0, v4}, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v0}, Lcom/android/launcher3/model/PackageUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 360
    :cond_17
    move-object/from16 v9, v25

    .end local v25    # "packages":[Ljava/lang/String;
    .local v9, "packages":[Ljava/lang/String;
    array-length v0, v9

    const/4 v10, 0x0

    :goto_15
    if-ge v10, v0, :cond_1b

    aget-object v11, v9, v10

    .line 361
    .local v11, "aPackage":Ljava/lang/String;
    move-object/from16 v12, p3

    monitor-enter p3

    .line 362
    :try_start_a
    iget-object v13, v12, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 363
    .local v13, "Iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/model/data/AppInfo;>;"
    :goto_16
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 364
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/model/data/AppInfo;

    .line 365
    .local v14, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v3, v14, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    iget-object v3, v14, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 366
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget v3, v14, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_18

    .line 369
    nop

    .line 371
    invoke-virtual {v14}, Lcom/android/launcher3/model/data/AppInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    move/from16 v16, v0

    iget-object v0, v2, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 369
    move-object/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .local v17, "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    :try_start_b
    invoke-static {v1, v3, v0}, Lcom/android/launcher3/pm/PackageInstallInfo;->fromState(ILjava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/pm/PackageInstallInfo;

    move-result-object v0

    .line 372
    .local v0, "installInfo":Lcom/android/launcher3/pm/PackageInstallInfo;
    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/data/AppInfo;->setProgressLevel(Lcom/android/launcher3/pm/PackageInstallInfo;)V

    .line 373
    new-instance v3, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda3;

    invoke-direct {v3, v14}, Lcom/android/launcher3/model/PackageUpdatedTask$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/model/PackageUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 376
    goto :goto_18

    .line 366
    .end local v0    # "installInfo":Lcom/android/launcher3/pm/PackageInstallInfo;
    .end local v17    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .restart local v1    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    :cond_18
    move/from16 v16, v0

    move-object/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .restart local v17    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    goto :goto_17

    .line 365
    .end local v17    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .restart local v1    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    :cond_19
    move/from16 v16, v0

    move-object/from16 v17, v1

    const/4 v1, 0x0

    .line 378
    .end local v1    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .end local v14    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    .restart local v17    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    :goto_17
    move/from16 v0, v16

    move-object/from16 v1, v17

    const/4 v3, 0x2

    goto :goto_16

    .line 363
    .end local v17    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .restart local v1    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    :cond_1a
    move/from16 v16, v0

    move-object/from16 v17, v1

    const/4 v1, 0x0

    .line 379
    .end local v1    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .end local v13    # "Iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/model/data/AppInfo;>;"
    .restart local v17    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    :goto_18
    monitor-exit p3

    .line 360
    .end local v11    # "aPackage":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move-object/from16 v1, v17

    const/4 v3, 0x2

    goto :goto_15

    .line 379
    .end local v17    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .restart local v1    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .restart local v11    # "aPackage":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v17, v1

    .end local v1    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .restart local v17    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    :goto_19
    monitor-exit p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_19

    .line 360
    .end local v11    # "aPackage":Ljava/lang/String;
    .end local v17    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .restart local v1    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    :cond_1b
    move-object/from16 v12, p3

    move-object/from16 v17, v1

    .line 383
    .end local v1    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .end local v4    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v7    # "isNewApkAvailable":Z
    :goto_1a
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 384
    .local v0, "removedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget v1, v2, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v3, 0x3

    const/16 v4, 0x14

    if-eq v1, v3, :cond_1f

    if-ne v1, v4, :cond_1c

    move/from16 v10, v24

    move-object/from16 v3, v27

    goto :goto_1c

    .line 390
    :cond_1c
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e

    .line 392
    const-class v1, Landroid/content/pm/LauncherApps;

    move-object/from16 v3, v27

    .end local v27    # "context":Landroid/content/Context;
    .local v3, "context":Landroid/content/Context;
    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 393
    .local v1, "launcherApps":Landroid/content/pm/LauncherApps;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1b
    move/from16 v10, v24

    .end local v24    # "N":I
    .local v10, "N":I
    if-ge v7, v10, :cond_20

    .line 394
    aget-object v11, v9, v7

    iget-object v13, v2, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v11, v13}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v11

    if-nez v11, :cond_1d

    .line 395
    aget-object v11, v9, v7

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_1d
    add-int/lit8 v7, v7, 0x1

    move/from16 v24, v10

    goto :goto_1b

    .line 390
    .end local v1    # "launcherApps":Landroid/content/pm/LauncherApps;
    .end local v3    # "context":Landroid/content/Context;
    .end local v7    # "i":I
    .end local v10    # "N":I
    .restart local v24    # "N":I
    .restart local v27    # "context":Landroid/content/Context;
    :cond_1e
    move/from16 v10, v24

    move-object/from16 v3, v27

    .end local v24    # "N":I
    .end local v27    # "context":Landroid/content/Context;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v10    # "N":I
    goto :goto_1d

    .line 384
    .end local v3    # "context":Landroid/content/Context;
    .end local v10    # "N":I
    .restart local v24    # "N":I
    .restart local v27    # "context":Landroid/content/Context;
    :cond_1f
    move/from16 v10, v24

    move-object/from16 v3, v27

    .line 386
    .end local v24    # "N":I
    .end local v27    # "context":Landroid/content/Context;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v10    # "N":I
    :goto_1c
    invoke-static {v0, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 400
    :cond_20
    :goto_1d
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_1e

    :cond_21
    move-object/from16 v11, v21

    goto :goto_20

    .line 401
    :cond_22
    :goto_1e
    iget-object v1, v2, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v0, v1}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v1

    iget-object v7, v2, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 402
    move-object/from16 v11, v21

    .end local v21    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .local v11, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-static {v11, v7}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofComponents(Ljava/util/HashSet;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v1

    .line 403
    invoke-static {v6}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v1

    .line 404
    .local v1, "removeMatch":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget v7, v2, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-ne v7, v4, :cond_23

    .line 405
    const-string v4, "removed because the corresponding package or component is removed"

    invoke-virtual {v2, v1, v4}, Lcom/android/launcher3/model/PackageUpdatedTask;->deleteAndBindComponentsRemovedWithoutWidget(Ljava/util/function/Predicate;Ljava/lang/String;)V

    goto :goto_1f

    .line 408
    :cond_23
    const-string v4, "removed because the corresponding package or component is removed"

    invoke-virtual {v2, v1, v4}, Lcom/android/launcher3/model/PackageUpdatedTask;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    .line 413
    :goto_1f
    sget-object v4, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/ItemInstallQueue;

    iget-object v7, v2, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 414
    invoke-virtual {v4, v0, v7}, Lcom/android/launcher3/model/ItemInstallQueue;->removeFromInstallQueue(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    .line 417
    .end local v1    # "removeMatch":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :goto_20
    iget v1, v2, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_25

    .line 420
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    if-ge v1, v10, :cond_24

    .line 421
    iget-object v4, v15, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    new-instance v7, Lcom/android/launcher3/util/PackageUserKey;

    aget-object v13, v9, v1

    iget-object v14, v2, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v7, v13, v14}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v13, p1

    invoke-virtual {v4, v13, v7}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_24
    move-object/from16 v13, p1

    .line 423
    .end local v1    # "i":I
    invoke-virtual {v2, v15}, Lcom/android/launcher3/model/PackageUpdatedTask;->bindUpdatedWidgets(Lcom/android/launcher3/model/BgDataModel;)V

    goto :goto_22

    .line 417
    :cond_25
    move-object/from16 v13, p1

    .line 425
    :goto_22
    return-void

    .line 348
    .end local v0    # "removedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "context":Landroid/content/Context;
    .end local v9    # "packages":[Ljava/lang/String;
    .end local v10    # "N":I
    .end local v11    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v4    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .local v7, "isNewApkAvailable":Z
    .restart local v16    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .restart local v21    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v24    # "N":I
    .restart local v25    # "packages":[Ljava/lang/String;
    .restart local v27    # "context":Landroid/content/Context;
    :catchall_9
    move-exception v0

    move-object/from16 v13, p1

    move-object/from16 v12, p3

    move-object/from16 v17, v16

    move-object/from16 v11, v21

    move/from16 v10, v24

    move-object/from16 v9, v25

    move-object/from16 v3, v27

    .end local v16    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .end local v21    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .end local v24    # "N":I
    .end local v25    # "packages":[Ljava/lang/String;
    .end local v27    # "context":Landroid/content/Context;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v9    # "packages":[Ljava/lang/String;
    .restart local v10    # "N":I
    .restart local v11    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v17    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    goto :goto_23

    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v5    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "packages":[Ljava/lang/String;
    .end local v10    # "N":I
    .end local v11    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .end local v17    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .restart local v16    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .restart local v19    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v21    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v23    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24    # "N":I
    .restart local v25    # "packages":[Ljava/lang/String;
    .restart local v27    # "context":Landroid/content/Context;
    :catchall_a
    move-exception v0

    move-object/from16 v2, p0

    move-object/from16 v13, p1

    move-object/from16 v12, p3

    move-object/from16 v17, v16

    move-object/from16 v4, v19

    move-object/from16 v11, v21

    move-object/from16 v5, v23

    move/from16 v10, v24

    move-object/from16 v9, v25

    move-object/from16 v3, v27

    .end local v16    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .end local v19    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .end local v21    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .end local v23    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "N":I
    .end local v25    # "packages":[Ljava/lang/String;
    .end local v27    # "context":Landroid/content/Context;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v4    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .restart local v5    # "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "packages":[Ljava/lang/String;
    .restart local v10    # "N":I
    .restart local v11    # "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v17    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    goto :goto_23

    .end local v17    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .end local v18    # "activitiesLists":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;>;"
    .end local v22    # "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v26    # "iconCache":Lcom/android/launcher3/icons/IconCache;
    .restart local v2    # "activitiesLists":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;>;"
    .local v3, "flagOp":Lcom/android/launcher3/util/FlagOp;
    .local v4, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local v9, "N":I
    .local v10, "packages":[Ljava/lang/String;
    .local v11, "iconCache":Lcom/android/launcher3/icons/IconCache;
    .restart local v12    # "context":Landroid/content/Context;
    .restart local v16    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .restart local v19    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .local v20, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    :catchall_b
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v22, v4

    move-object/from16 v26, v11

    move-object v2, v14

    move-object/from16 v17, v16

    move-object/from16 v4, v19

    move-object/from16 v11, v20

    move-object/from16 v20, v3

    move-object v3, v12

    move-object v12, v13

    move-object/from16 v13, p1

    move-object/from16 v28, v10

    move v10, v9

    move-object/from16 v9, v28

    .end local v2    # "activitiesLists":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;>;"
    .end local v12    # "context":Landroid/content/Context;
    .end local v16    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .end local v19    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .local v3, "context":Landroid/content/Context;
    .local v4, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .local v9, "packages":[Ljava/lang/String;
    .local v10, "N":I
    .local v11, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .restart local v17    # "updatedWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .restart local v18    # "activitiesLists":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;>;"
    .local v20, "flagOp":Lcom/android/launcher3/util/FlagOp;
    .restart local v22    # "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .restart local v26    # "iconCache":Lcom/android/launcher3/icons/IconCache;
    :goto_23
    :try_start_c
    monitor-exit p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v0

    :catchall_c
    move-exception v0

    goto :goto_23

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic lambda$execute$1$com-android-launcher3-model-PackageUpdatedTask(Ljava/util/HashSet;Landroid/content/Context;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLcom/android/launcher3/util/IntSet;Ljava/util/HashSet;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 17
    .param p1, "packageSet"    # Ljava/util/HashSet;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "matcher"    # Ljava/util/function/Predicate;
    .param p4, "forceKeepShortcuts"    # Lcom/android/launcher3/util/IntSet;
    .param p5, "isNewApkAvailable"    # Z
    .param p6, "removedShortcuts"    # Lcom/android/launcher3/util/IntSet;
    .param p7, "removedComponents"    # Ljava/util/HashSet;
    .param p8, "activitiesLists"    # Ljava/util/HashMap;
    .param p9, "iconCache"    # Lcom/android/launcher3/icons/IconCache;
    .param p10, "flagOp"    # Lcom/android/launcher3/util/FlagOp;
    .param p11, "updatedWorkspaceItems"    # Ljava/util/ArrayList;
    .param p12, "si"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p12

    const/4 v4, 0x0

    .line 233
    .local v4, "infoUpdated":Z
    const/4 v5, 0x0

    .line 236
    .local v5, "shortcutUpdated":Z
    iget-object v6, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v6, :cond_0

    iget-object v6, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v6, v6, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 237
    move-object/from16 v7, p1

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 238
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v6

    .line 239
    .local v6, "li":Lcom/android/launcher3/icons/LauncherIcons;
    iget-object v8, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/icons/LauncherIcons;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v8

    .line 240
    .local v8, "iconInfo":Lcom/android/launcher3/icons/BitmapInfo;
    invoke-virtual {v6}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    .line 241
    if-eqz v8, :cond_1

    .line 242
    iput-object v8, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 243
    const/4 v4, 0x1

    goto :goto_0

    .line 236
    .end local v6    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    .end local v8    # "iconInfo":Lcom/android/launcher3/icons/BitmapInfo;
    :cond_0
    move-object/from16 v7, p1

    .line 247
    :cond_1
    :goto_0
    invoke-virtual/range {p12 .. p12}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 248
    .local v6, "cn":Landroid/content/ComponentName;
    if-eqz v6, :cond_13

    move-object/from16 v8, p3

    invoke-interface {v8, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 249
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 251
    .local v9, "packageName":Ljava/lang/String;
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v10

    const/4 v11, 0x3

    if-eqz v10, :cond_3

    .line 252
    iget v10, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->id:I

    move-object/from16 v12, p4

    invoke-virtual {v12, v10}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 253
    iget v10, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-eq v10, v11, :cond_2

    const/16 v13, 0x14

    if-ne v10, v13, :cond_4

    .line 254
    :cond_2
    return-void

    .line 251
    :cond_3
    move-object/from16 v12, p4

    .line 258
    :cond_4
    invoke-virtual/range {p12 .. p12}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v10

    const/4 v14, 0x0

    if-eqz v10, :cond_c

    if-eqz p5, :cond_c

    .line 259
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-string v15, "."

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v15, 0x1

    xor-int/2addr v10, v15

    .line 261
    .local v10, "isTargetValid":Z
    iget v11, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    const/4 v13, 0x6

    if-ne v11, v13, :cond_6

    .line 262
    new-instance v11, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    iget-object v13, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v11, v1, v13}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 264
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    new-array v15, v15, [Ljava/lang/String;

    .line 265
    invoke-virtual/range {p12 .. p12}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v14

    .line 264
    invoke-virtual {v11, v13, v15}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v11

    .line 266
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v11

    .line 267
    .local v11, "shortcut":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 268
    const/4 v10, 0x0

    goto :goto_1

    .line 270
    :cond_5
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3, v13, v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    .line 271
    const/4 v4, 0x1

    goto :goto_1

    .line 273
    .end local v11    # "shortcut":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_6
    if-eqz v10, :cond_7

    .line 274
    const-class v11, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/LauncherApps;

    iget-object v13, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 275
    invoke-virtual {v11, v6, v13}, Landroid/content/pm/LauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v10

    goto :goto_2

    .line 273
    :cond_7
    :goto_1
    nop

    .line 277
    :goto_2
    if-nez v10, :cond_9

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 279
    invoke-direct {v0, v1, v3, v9}, Lcom/android/launcher3/model/PackageUpdatedTask;->updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 280
    const/4 v4, 0x1

    goto :goto_3

    .line 281
    :cond_8
    invoke-virtual/range {p12 .. p12}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 282
    iget v11, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->id:I

    invoke-virtual {v2, v11}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 283
    return-void

    .line 285
    :cond_9
    if-nez v10, :cond_a

    .line 286
    iget v11, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->id:I

    invoke-virtual {v2, v11}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 287
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Restored shortcut no longer valid "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 288
    invoke-virtual/range {p12 .. p12}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 287
    const-string v13, "PackageUpdatedTask"

    invoke-static {v13, v11}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void

    .line 291
    :cond_a
    iput v14, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    .line 292
    const/4 v4, 0x1

    .line 294
    .end local v10    # "isTargetValid":Z
    :cond_b
    :goto_3
    move-object/from16 v10, p7

    goto :goto_4

    :cond_c
    if-eqz p5, :cond_d

    move-object/from16 v10, p7

    invoke-virtual {v10, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 295
    invoke-direct {v0, v1, v3, v9}, Lcom/android/launcher3/model/PackageUpdatedTask;->updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 296
    const/4 v4, 0x1

    goto :goto_4

    .line 294
    :cond_d
    move-object/from16 v10, p7

    .line 300
    :cond_e
    :goto_4
    if-eqz p5, :cond_12

    .line 301
    move-object/from16 v11, p8

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 303
    .local v13, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    nop

    .line 304
    if-eqz v13, :cond_10

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_f

    goto :goto_5

    .line 306
    :cond_f
    nop

    .line 307
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/LauncherActivityInfo;

    .line 306
    invoke-static {v14}, Lcom/android/launcher3/util/PackageManagerHelper;->getLoadingProgress(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v14

    goto :goto_6

    .line 305
    :cond_10
    :goto_5
    const/16 v14, 0x64

    .line 306
    :goto_6
    nop

    .line 303
    const/4 v15, 0x2

    invoke-virtual {v3, v14, v15}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->setProgressLevel(II)V

    .line 309
    iget v14, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    if-nez v14, :cond_11

    .line 310
    invoke-virtual/range {p12 .. p12}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->usingLowResIcon()Z

    move-result v14

    move-object/from16 v15, p9

    invoke-virtual {v15, v3, v14}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    .line 311
    const/4 v4, 0x1

    goto :goto_7

    .line 309
    :cond_11
    move-object/from16 v15, p9

    goto :goto_7

    .line 300
    .end local v13    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    :cond_12
    move-object/from16 v11, p8

    move-object/from16 v15, p9

    .line 315
    :goto_7
    iget v13, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    .line 316
    .local v13, "oldRuntimeFlags":I
    iget v14, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    move-object/from16 v0, p10

    invoke-interface {v0, v14}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v14

    iput v14, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    .line 317
    iget v14, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    if-eq v14, v13, :cond_15

    .line 318
    const/4 v5, 0x1

    goto :goto_8

    .line 248
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v13    # "oldRuntimeFlags":I
    :cond_13
    move-object/from16 v8, p3

    :cond_14
    move-object/from16 v12, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v15, p9

    move-object/from16 v0, p10

    .line 322
    :cond_15
    :goto_8
    if-nez v4, :cond_16

    if-eqz v5, :cond_17

    .line 323
    :cond_16
    invoke-virtual/range {p11 .. p12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_17
    if-eqz v4, :cond_18

    iget v9, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->id:I

    const/4 v13, -0x1

    if-eq v9, v13, :cond_18

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/PackageUpdatedTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 328
    :cond_18
    return-void
.end method
