.class public Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;
.super Ljava/lang/Object;
.source "IconCacheUpdateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;,
        Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;
    }
.end annotation


# static fields
.field private static final ICON_UPDATE_TOKEN:Ljava/lang/Object;

.field private static final MODE_CLEAR_VALID_ITEMS:Z = false

.field private static final MODE_SET_INVALID_ITEMS:Z = true

.field private static final TAG:Ljava/lang/String; = "IconCacheUpdateHandler"


# instance fields
.field private mFilterMode:Z

.field private final mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

.field private final mItemsToDelete:Landroid/util/SparseBooleanArray;

.field private final mPackagesToIgnore:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/UserHandle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPkgInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmIconCache(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)Lcom/android/launcher3/icons/cache/BaseIconCache;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPkgInfoMap(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPkgInfoMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetICON_UPDATE_TOKEN()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/icons/cache/BaseIconCache;)V
    .locals 2
    .param p1, "cache"    # Lcom/android/launcher3/icons/cache/BaseIconCache;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPackagesToIgnore:Landroid/util/ArrayMap;

    .line 67
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mItemsToDelete:Landroid/util/SparseBooleanArray;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mFilterMode:Z

    .line 71
    iput-object p1, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPkgInfoMap:Ljava/util/HashMap;

    .line 76
    iget-object v0, p1, Lcom/android/launcher3/icons/cache/BaseIconCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 78
    invoke-direct {p0}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->createPackageInfoMap()V

    .line 79
    return-void
.end method

.method private createPackageInfoMap()V
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    iget-object v0, v0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 96
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 97
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPkgInfoMap:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method private updateIconsPerUser(Landroid/os/UserHandle;Ljava/util/HashMap;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V
    .locals 25
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p4, "onUpdateCallback"    # Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/UserHandle;",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "TT;>;",
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "TT;>;",
            "Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;",
            ")V"
        }
    .end annotation

    .line 138
    .local p2, "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;TT;>;"
    .local p3, "cachingLogic":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-string v0, "system_state"

    const-string v1, "version"

    const-string v2, "lastUpdated"

    const-string v3, "componentName"

    const-string v4, "rowid"

    iget-object v5, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPackagesToIgnore:Landroid/util/ArrayMap;

    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 139
    .local v5, "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v5, :cond_0

    .line 140
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    move-object v12, v5

    goto :goto_0

    .line 139
    :cond_0
    move-object v12, v5

    .line 142
    .end local v5    # "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v12, "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    iget-object v5, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    invoke-virtual {v5, v11}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v13

    .line 144
    .local v13, "userSerial":J
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    move-object v15, v5

    .line 146
    .local v15, "appsToUpdate":Ljava/util/Stack;, "Ljava/util/Stack<TT;>;"
    :try_start_0
    iget-object v5, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    iget-object v5, v5, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    filled-new-array {v4, v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "profileId = ? "

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/String;

    .line 151
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    const/4 v8, 0x0

    aput-object v16, v9, v8

    .line 146
    invoke-virtual {v5, v6, v7, v9}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    .local v5, "c":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 154
    .local v3, "indexComponent":I
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 155
    .local v2, "indexLastUpdate":I
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, "indexVersion":I
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 157
    .local v4, "rowIndex":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 159
    .local v0, "systemStateIndex":I
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 160
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, "cn":Ljava/lang/String;
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 162
    .local v7, "component":Landroid/content/ComponentName;
    iget-object v9, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPkgInfoMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 164
    .local v8, "info":Landroid/content/pm/PackageInfo;
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 165
    .local v9, "rowId":I
    if-nez v8, :cond_3

    .line 166
    move/from16 v17, v3

    .end local v3    # "indexComponent":I
    .local v17, "indexComponent":I
    :try_start_2
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 168
    iget-boolean v3, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mFilterMode:Z

    move/from16 v18, v4

    const/4 v4, 0x1

    .end local v4    # "rowIndex":I
    .local v18, "rowIndex":I
    if-ne v3, v4, :cond_1

    .line 169
    iget-object v3, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    invoke-virtual {v3, v7, v11}, Lcom/android/launcher3/icons/cache/BaseIconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 170
    iget-object v3, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mItemsToDelete:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v9, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v3, v17

    move/from16 v4, v18

    const/4 v8, 0x0

    goto :goto_1

    .line 168
    :cond_1
    move/from16 v3, v17

    move/from16 v4, v18

    const/4 v8, 0x0

    goto :goto_1

    .line 166
    .end local v18    # "rowIndex":I
    .restart local v4    # "rowIndex":I
    :cond_2
    move/from16 v18, v4

    .end local v4    # "rowIndex":I
    .restart local v18    # "rowIndex":I
    move/from16 v3, v17

    const/4 v8, 0x0

    goto :goto_1

    .line 146
    .end local v0    # "systemStateIndex":I
    .end local v1    # "indexVersion":I
    .end local v2    # "indexLastUpdate":I
    .end local v6    # "cn":Ljava/lang/String;
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "rowId":I
    .end local v17    # "indexComponent":I
    .end local v18    # "rowIndex":I
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v19, v12

    move-object/from16 v12, p2

    goto/16 :goto_4

    .line 175
    .restart local v0    # "systemStateIndex":I
    .restart local v1    # "indexVersion":I
    .restart local v2    # "indexLastUpdate":I
    .restart local v3    # "indexComponent":I
    .restart local v4    # "rowIndex":I
    .restart local v6    # "cn":Ljava/lang/String;
    .restart local v7    # "component":Landroid/content/ComponentName;
    .restart local v8    # "info":Landroid/content/pm/PackageInfo;
    .restart local v9    # "rowId":I
    :cond_3
    move/from16 v17, v3

    move/from16 v18, v4

    .end local v3    # "indexComponent":I
    .end local v4    # "rowIndex":I
    .restart local v17    # "indexComponent":I
    .restart local v18    # "rowIndex":I
    :try_start_3
    iget-object v3, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 177
    move/from16 v3, v17

    move/from16 v4, v18

    const/4 v8, 0x0

    goto :goto_1

    .line 180
    :cond_4
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 181
    .local v3, "updateTime":J
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v20, v19

    .line 182
    .local v20, "version":I
    move-object/from16 v19, v12

    move-object/from16 v12, p2

    .end local v12    # "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v19, "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_4
    invoke-virtual {v12, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v21

    .line 183
    .local v22, "app":Ljava/lang/Object;, "TT;"
    move/from16 v21, v1

    .end local v1    # "indexVersion":I
    .local v21, "indexVersion":I
    iget v1, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v23, v2

    move/from16 v2, v20

    .end local v20    # "version":I
    .local v2, "version":I
    .local v23, "indexLastUpdate":I
    if-ne v2, v1, :cond_8

    move/from16 v20, v2

    .end local v2    # "version":I
    .restart local v20    # "version":I
    iget-wide v1, v8, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v1, v3, v1

    if-nez v1, :cond_7

    .line 184
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    move/from16 v24, v0

    .end local v0    # "systemStateIndex":I
    .local v24, "systemStateIndex":I
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 185
    invoke-virtual {v2, v0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getIconSystemState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 187
    iget-boolean v0, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mFilterMode:Z

    if-nez v0, :cond_5

    .line 188
    iget-object v0, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mItemsToDelete:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v8, v1

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v12, v19

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v0, v24

    goto/16 :goto_1

    .line 187
    :cond_5
    const/4 v1, 0x0

    move v8, v1

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v12, v19

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v0, v24

    goto/16 :goto_1

    .line 184
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 183
    .end local v24    # "systemStateIndex":I
    .restart local v0    # "systemStateIndex":I
    :cond_7
    move/from16 v24, v0

    const/4 v1, 0x0

    .end local v0    # "systemStateIndex":I
    .restart local v24    # "systemStateIndex":I
    goto :goto_2

    .end local v20    # "version":I
    .end local v24    # "systemStateIndex":I
    .restart local v0    # "systemStateIndex":I
    .restart local v2    # "version":I
    :cond_8
    move/from16 v24, v0

    move/from16 v20, v2

    const/4 v1, 0x0

    .line 193
    .end local v0    # "systemStateIndex":I
    .end local v2    # "version":I
    .restart local v20    # "version":I
    .restart local v24    # "systemStateIndex":I
    :goto_2
    move-object/from16 v0, v22

    .end local v22    # "app":Ljava/lang/Object;, "TT;"
    .local v0, "app":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_9

    .line 194
    iget-boolean v2, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mFilterMode:Z

    const/4 v1, 0x1

    if-ne v2, v1, :cond_a

    .line 195
    iget-object v2, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    invoke-virtual {v2, v7, v11}, Lcom/android/launcher3/icons/cache/BaseIconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 196
    iget-object v2, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mItemsToDelete:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3

    .line 199
    :cond_9
    const/4 v1, 0x1

    invoke-virtual {v15, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 201
    .end local v0    # "app":Ljava/lang/Object;, "TT;"
    .end local v3    # "updateTime":J
    .end local v6    # "cn":Ljava/lang/String;
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "rowId":I
    .end local v20    # "version":I
    :cond_a
    :goto_3
    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v12, v19

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v0, v24

    const/4 v8, 0x0

    goto/16 :goto_1

    .line 146
    .end local v17    # "indexComponent":I
    .end local v18    # "rowIndex":I
    .end local v21    # "indexVersion":I
    .end local v23    # "indexLastUpdate":I
    .end local v24    # "systemStateIndex":I
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_4

    .line 159
    .end local v19    # "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v0, "systemStateIndex":I
    .restart local v1    # "indexVersion":I
    .local v2, "indexLastUpdate":I
    .local v3, "indexComponent":I
    .restart local v4    # "rowIndex":I
    .restart local v12    # "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    move/from16 v24, v0

    move/from16 v21, v1

    move/from16 v23, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v12

    move-object/from16 v12, p2

    .line 202
    .end local v0    # "systemStateIndex":I
    .end local v1    # "indexVersion":I
    .end local v2    # "indexLastUpdate":I
    .end local v3    # "indexComponent":I
    .end local v4    # "rowIndex":I
    .end local v12    # "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_c

    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 205
    .end local v5    # "c":Landroid/database/Cursor;
    :cond_c
    goto :goto_7

    .line 146
    .end local v19    # "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "c":Landroid/database/Cursor;
    .restart local v12    # "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v19, v12

    move-object/from16 v12, p2

    move-object v1, v0

    .end local v12    # "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_4
    if-eqz v5, :cond_d

    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v13    # "userSerial":J
    .end local v15    # "appsToUpdate":Ljava/util/Stack;, "Ljava/util/Stack<TT;>;"
    .end local v19    # "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;
    .end local p1    # "user":Landroid/os/UserHandle;
    .end local p2    # "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;TT;>;"
    .end local p3    # "cachingLogic":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    .end local p4    # "onUpdateCallback":Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;
    :cond_d
    :goto_5
    throw v1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 202
    .end local v5    # "c":Landroid/database/Cursor;
    .restart local v13    # "userSerial":J
    .restart local v15    # "appsToUpdate":Ljava/util/Stack;, "Ljava/util/Stack<TT;>;"
    .restart local v19    # "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;
    .restart local p1    # "user":Landroid/os/UserHandle;
    .restart local p2    # "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;TT;>;"
    .restart local p3    # "cachingLogic":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    .restart local p4    # "onUpdateCallback":Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;
    :catch_0
    move-exception v0

    goto :goto_6

    .end local v19    # "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    move-object/from16 v19, v12

    move-object/from16 v12, p2

    .line 203
    .end local v12    # "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    .restart local v19    # "ignorePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_6
    const-string v1, "IconCacheUpdateHandler"

    const-string v2, "Error reading icon cache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v15}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 209
    :cond_e
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 210
    .local v0, "appsToAdd":Ljava/util/Stack;, "Ljava/util/Stack<TT;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 211
    new-instance v16, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-wide v3, v13

    move-object/from16 v5, p1

    move-object v6, v0

    move-object v7, v15

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;-><init>(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;JLandroid/os/UserHandle;Ljava/util/Stack;Ljava/util/Stack;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    .line 212
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->scheduleNext()V

    .line 214
    .end local v0    # "appsToAdd":Ljava/util/Stack;, "Ljava/util/Stack<TT;>;"
    :cond_f
    return-void
.end method


# virtual methods
.method public addPackagesToIgnore(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPackagesToIgnore:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 86
    .local v0, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 87
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 88
    iget-object v1, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPackagesToIgnore:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public finish()V
    .locals 6

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "deleteCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    const-string v2, "rowid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 225
    const-string v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    .local v1, "queryBuilder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mItemsToDelete:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 228
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 229
    iget-object v4, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mItemsToDelete:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    if-lez v0, :cond_0

    .line 231
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mItemsToDelete:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    add-int/lit8 v0, v0, 0x1

    .line 228
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    .end local v3    # "i":I
    :cond_2
    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    if-lez v0, :cond_3

    .line 240
    iget-object v3, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    iget-object v3, v3, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->delete(Ljava/lang/String;[Ljava/lang/String;)V

    .line 242
    :cond_3
    return-void
.end method

.method public updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V
    .locals 7
    .param p3, "onUpdateCallback"    # Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "TT;>;",
            "Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;",
            ")V"
        }
    .end annotation

    .line 109
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "cachingLogic":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v0, "userComponentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/os/UserHandle;Ljava/util/HashMap<Landroid/content/ComponentName;TT;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 111
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 112
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 113
    .local v3, "app":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v3}, Lcom/android/launcher3/icons/cache/CachingLogic;->getUser(Ljava/lang/Object;)Landroid/os/UserHandle;

    move-result-object v4

    .line 114
    .local v4, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 115
    .local v5, "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;TT;>;"
    if-nez v5, :cond_0

    .line 116
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v5, v6

    .line 117
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    invoke-interface {p2, v3}, Lcom/android/launcher3/icons/cache/CachingLogic;->getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .end local v3    # "app":Ljava/lang/Object;, "TT;"
    .end local v4    # "userHandle":Landroid/os/UserHandle;
    .end local v5    # "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 123
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/UserHandle;Ljava/util/HashMap<Landroid/content/ComponentName;TT;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-direct {p0, v4, v5, p2, p3}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIconsPerUser(Landroid/os/UserHandle;Ljava/util/HashMap;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    .line 124
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/UserHandle;Ljava/util/HashMap<Landroid/content/ComponentName;TT;>;>;"
    goto :goto_1

    .line 127
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mFilterMode:Z

    .line 128
    return-void
.end method
