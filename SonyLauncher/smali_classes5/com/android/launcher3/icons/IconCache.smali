.class public Lcom/android/launcher3/icons/IconCache;
.super Lcom/android/launcher3/icons/cache/BaseIconCache;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.IconCache"


# instance fields
.field private final mComponentWithLabelCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "Lcom/android/launcher3/icons/ComponentWithLabel;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field private final mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

.field private final mIsUsingFallbackOrNonDefaultIconCheck:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mPendingIconRequestCount:I

.field private final mShortcutCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/icons/cache/CachingLogic<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Lcom/android/launcher3/pm/UserCache;

.field private final mWidgetCategoryBitmapInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/icons/BitmapInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$pZ_BB-NATpnSTVCuNmuPMkIR3Ug(Lcom/android/launcher3/icons/IconCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/icons/IconCache;->onIconRequestEnd()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;

    .line 110
    new-instance v0, Lcom/android/launcher3/icons/IconProvider;

    invoke-direct {v0, p1}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    const-string v1, "app_icons.db"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/launcher3/icons/IconCache;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/lang/String;Lcom/android/launcher3/icons/IconProvider;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/lang/String;Lcom/android/launcher3/icons/IconProvider;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p3, "dbFileName"    # Ljava/lang/String;
    .param p4, "iconProvider"    # Lcom/android/launcher3/icons/IconProvider;

    .line 115
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget v5, p2, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iget v6, p2, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/icons/cache/BaseIconCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;IIZ)V

    .line 92
    new-instance v0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda14;-><init>(Lcom/android/launcher3/icons/IconCache;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mIsUsingFallbackOrNonDefaultIconCheck:Ljava/util/function/Predicate;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/icons/IconCache;->mPendingIconRequestCount:I

    .line 117
    new-instance v1, Lcom/android/launcher3/icons/ComponentWithLabel$ComponentCachingLogic;

    invoke-direct {v1, p1, v0}, Lcom/android/launcher3/icons/ComponentWithLabel$ComponentCachingLogic;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/launcher3/icons/IconCache;->mComponentWithLabelCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    .line 118
    invoke-static {p1}, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherActivityCachingLogic;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    .line 119
    new-instance v0, Lcom/android/launcher3/icons/ShortcutCachingLogic;

    invoke-direct {v0}, Lcom/android/launcher3/icons/ShortcutCachingLogic;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mShortcutCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 121
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/icons/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mUserManager:Lcom/android/launcher3/pm/UserCache;

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    .line 123
    iput-object p4, p0, Lcom/android/launcher3/icons/IconCache;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mWidgetCategoryBitmapInfos:Landroid/util/SparseArray;

    .line 125
    return-void
.end method

.method private createBulkQueryCursor(Ljava/util/List;Landroid/os/UserHandle;Z)Landroid/database/Cursor;
    .locals 6
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "useLowResIcons"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/IconRequestInfo<",
            "TT;>;>;",
            "Landroid/os/UserHandle;",
            "Z)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 345
    .local p1, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    nop

    .line 346
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda7;-><init>()V

    .line 347
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/launcher3/folder/FolderNameProvider$$ExternalSyntheticLambda2;-><init>()V

    .line 348
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 349
    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda8;-><init>()V

    .line 350
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 351
    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/IconCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 345
    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda9;-><init>()V

    .line 351
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 352
    .local v0, "queryParams":[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 353
    const-string v2, "?"

    invoke-static {v1, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 352
    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "componentNameQuery":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/icons/IconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    .line 356
    if-eqz p3, :cond_0

    sget-object v3, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->COLUMNS_LOW_RES:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->COLUMNS_HIGH_RES:[Ljava/lang/String;

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "componentName IN ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "profileId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 355
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private declared-synchronized getBadgedIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1
    .param p1, "bitmap"    # Lcom/android/launcher3/icons/BitmapInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    monitor-enter p0

    .line 536
    if-nez p1, :cond_0

    .line 537
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 539
    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    :cond_0
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/IconCache;->getUserFlagOpLocked(Landroid/os/UserHandle;)Lcom/android/launcher3/util/FlagOp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/icons/BitmapInfo;->withFlags(Lcom/android/launcher3/util/FlagOp;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 535
    .end local p1    # "bitmap":Lcom/android/launcher3/icons/BitmapInfo;
    .end local p2    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic lambda$createBulkQueryCursor$7(Lcom/android/launcher3/model/data/IconRequestInfo;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "r"    # Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 347
    iget-object v0, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$createBulkQueryCursor$8(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 351
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getShortcutIcon$4(Landroid/content/pm/ShortcutInfo;)Landroid/content/pm/ShortcutInfo;
    .locals 0
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 259
    return-object p0
.end method

.method static synthetic lambda$getTitleAndIcon$3(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/LauncherActivityInfo;
    .locals 0
    .param p0, "activityInfo"    # Landroid/content/pm/LauncherActivityInfo;

    .line 240
    return-object p0
.end method

.method static synthetic lambda$getTitleNoCache$6(Lcom/android/launcher3/icons/ComponentWithLabel;)Lcom/android/launcher3/icons/ComponentWithLabel;
    .locals 0
    .param p0, "info"    # Lcom/android/launcher3/icons/ComponentWithLabel;

    .line 316
    return-object p0
.end method

.method static synthetic lambda$getTitlesAndIconsInBulk$10(Lcom/android/launcher3/model/data/IconRequestInfo;)Landroidx/core/util/Pair;
    .locals 2
    .param p0, "iconRequest"    # Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 382
    iget-object v0, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    iget-boolean v1, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->useLowResIcon:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getTitlesAndIconsInBulk$11(Lcom/android/launcher3/model/data/IconRequestInfo;)Z
    .locals 3
    .param p0, "iconRequest"    # Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 390
    iget-object v0, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping Item info for deep shortcut: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v2, "Launcher.IconCache"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    const/4 v0, 0x0

    return v0

    .line 397
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTitlesAndIconsInBulk$12(Lcom/android/launcher3/model/data/IconRequestInfo;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "iconRequest"    # Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 400
    iget-object v0, p0, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$loadIconSubsection$14(Ljava/util/List;)Landroid/content/pm/LauncherActivityInfo;
    .locals 1
    .param p0, "duplicateIconRequests"    # Ljava/util/List;

    .line 430
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/IconRequestInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/IconRequestInfo;->launcherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    return-object v0
.end method

.method static synthetic lambda$updateTitleAndIcon$2()Landroid/content/pm/LauncherActivityInfo;
    .locals 1

    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadIconSubsection(Landroidx/core/util/Pair;Ljava/util/List;Ljava/util/Map;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">(",
            "Landroidx/core/util/Pair<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/IconRequestInfo<",
            "TT;>;>;",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/IconRequestInfo<",
            "TT;>;>;>;)V"
        }
    .end annotation

    .line 413
    .local p1, "sectionKey":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroid/os/UserHandle;Ljava/lang/Boolean;>;"
    .local p2, "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    .local p3, "duplicateIconRequestsMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    const-string v12, "Launcher.IconCache"

    const-string v0, "loadIconSubsectionWithDatabase"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 414
    :try_start_0
    iget-object v0, v10, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/UserHandle;

    iget-object v1, v10, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 417
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 414
    move-object/from16 v13, p2

    :try_start_1
    invoke-direct {v9, v13, v0, v1}, Lcom/android/launcher3/icons/IconCache;->createBulkQueryCursor(Ljava/util/List;Landroid/os/UserHandle;Z)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v14, v0

    .line 419
    .local v14, "c":Landroid/database/Cursor;
    :try_start_2
    const-string v0, "componentName"

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 420
    .local v0, "componentNameColumnIndex":I
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 421
    nop

    .line 422
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 421
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    move-object v15, v1

    .line 423
    .local v15, "cn":Landroid/content/ComponentName;
    nop

    .line 424
    invoke-interface {v11, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object v8, v1

    .line 426
    .local v8, "duplicateIconRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    if-eqz v15, :cond_0

    .line 427
    iget-object v1, v10, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroid/os/UserHandle;

    new-instance v4, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda0;

    invoke-direct {v4, v8}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    iget-object v5, v9, Lcom/android/launcher3/icons/IconCache;->mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    const/4 v7, 0x0

    iget-object v1, v10, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 434
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 427
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v6, v14

    move-object/from16 v17, v8

    .end local v8    # "duplicateIconRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    .local v17, "duplicateIconRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/icons/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/database/Cursor;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v1

    .line 436
    .local v1, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 437
    .local v3, "iconRequest":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;"
    iget-object v4, v3, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v9, v1, v4}, Lcom/android/launcher3/icons/IconCache;->applyCacheEntry(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 438
    .end local v3    # "iconRequest":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;"
    goto :goto_1

    .line 426
    .end local v1    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local v17    # "duplicateIconRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    .restart local v8    # "duplicateIconRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    :cond_0
    move-object/from16 v17, v8

    .line 440
    .end local v8    # "duplicateIconRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    .end local v15    # "cn":Landroid/content/ComponentName;
    :cond_1
    goto :goto_0

    .line 441
    .end local v0    # "componentNameColumnIndex":I
    :cond_2
    if-eqz v14, :cond_3

    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 444
    .end local v14    # "c":Landroid/database/Cursor;
    :cond_3
    goto :goto_4

    .line 414
    .restart local v14    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v14, :cond_4

    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    .end local p1    # "sectionKey":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroid/os/UserHandle;Ljava/lang/Boolean;>;"
    .end local p2    # "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    .end local p3    # "duplicateIconRequestsMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;>;"
    :cond_4
    :goto_2
    throw v1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 441
    .end local v14    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    .restart local p1    # "sectionKey":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Landroid/os/UserHandle;Ljava/lang/Boolean;>;"
    .restart local p2    # "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    .restart local p3    # "duplicateIconRequestsMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;>;"
    :catch_0
    move-exception v0

    goto :goto_3

    .line 444
    :catchall_2
    move-exception v0

    move-object/from16 v13, p2

    goto/16 :goto_b

    .line 441
    :catch_1
    move-exception v0

    move-object/from16 v13, p2

    .line 442
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :goto_3
    :try_start_6
    const-string v1, "Error reading icon cache"

    invoke-static {v12, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 444
    nop

    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 445
    nop

    .line 447
    const-string v0, "loadIconSubsectionWithFallback"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 449
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/content/ComponentName;

    .line 450
    .local v14, "cn":Landroid/content/ComponentName;
    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 451
    .local v15, "iconRequestInfo":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;"
    iget-object v8, v15, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 452
    .local v8, "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    iget-object v7, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 453
    .local v7, "icon":Lcom/android/launcher3/icons/BitmapInfo;
    iget-object v1, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    .line 454
    .local v16, "loadFallbackTitle":Z
    if-eqz v7, :cond_5

    iget-object v1, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    .line 455
    invoke-virtual {v9, v7, v1}, Lcom/android/launcher3/icons/IconCache;->isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    if-ne v7, v1, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    move/from16 v17, v2

    .line 458
    .local v17, "loadFallbackIcon":Z
    if-nez v16, :cond_8

    if-eqz v17, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v20, v0

    goto/16 :goto_a

    .line 459
    :cond_8
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database bulk icon loading failed, using fallback bulk icon loading for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    invoke-direct {v1}, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;-><init>()V

    move-object v6, v1

    .line 463
    .local v6, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    iget-object v5, v15, Lcom/android/launcher3/model/data/IconRequestInfo;->launcherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 467
    .local v5, "lai":Landroid/content/pm/LauncherActivityInfo;
    iget-object v1, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    iput-object v1, v6, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 468
    if-eqz v7, :cond_9

    .line 469
    iput-object v7, v6, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 471
    :cond_9
    iget-object v1, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    iput-object v1, v6, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 473
    if-eqz v17, :cond_a

    .line 474
    iget-object v4, v9, Lcom/android/launcher3/icons/IconCache;->mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    const/16 v18, 0x0

    iget-object v1, v10, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v1

    check-cast v19, Landroid/os/UserHandle;

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v20, v0

    move-object v0, v5

    .end local v5    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .local v0, "lai":Landroid/content/pm/LauncherActivityInfo;
    move/from16 v5, v18

    move-object/from16 v21, v6

    .end local v6    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .local v21, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    move/from16 v6, v16

    move-object/from16 v18, v7

    .end local v7    # "icon":Lcom/android/launcher3/icons/BitmapInfo;
    .local v18, "icon":Lcom/android/launcher3/icons/BitmapInfo;
    move-object v7, v14

    move-object/from16 v22, v8

    .end local v8    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .local v22, "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    move-object/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/icons/IconCache;->loadFallbackIcon(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/icons/cache/CachingLogic;ZZLandroid/content/ComponentName;Landroid/os/UserHandle;)V

    goto :goto_7

    .line 473
    .end local v0    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .end local v18    # "icon":Lcom/android/launcher3/icons/BitmapInfo;
    .end local v21    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local v22    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .restart local v5    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .restart local v6    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .restart local v7    # "icon":Lcom/android/launcher3/icons/BitmapInfo;
    .restart local v8    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    :cond_a
    move-object/from16 v20, v0

    move-object v0, v5

    move-object/from16 v21, v6

    move-object/from16 v18, v7

    move-object/from16 v22, v8

    .line 483
    .end local v5    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .end local v6    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local v7    # "icon":Lcom/android/launcher3/icons/BitmapInfo;
    .end local v8    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .restart local v0    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .restart local v18    # "icon":Lcom/android/launcher3/icons/BitmapInfo;
    .restart local v21    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .restart local v22    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    :goto_7
    if-eqz v16, :cond_b

    move-object/from16 v1, v21

    .end local v21    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .restart local v1    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    iget-object v2, v1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v0, :cond_c

    .line 484
    iget-object v2, v9, Lcom/android/launcher3/icons/IconCache;->mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    iget-object v3, v10, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/launcher3/icons/IconCache;->loadFallbackTitle(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/os/UserHandle;)V

    goto :goto_8

    .line 483
    .end local v1    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .restart local v21    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    :cond_b
    move-object/from16 v1, v21

    .line 491
    .end local v21    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .restart local v1    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    :cond_c
    :goto_8
    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 492
    .restart local v3    # "iconRequest":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;"
    iget-object v4, v3, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v9, v1, v4}, Lcom/android/launcher3/icons/IconCache;->applyCacheEntry(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 493
    .end local v3    # "iconRequest":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;"
    goto :goto_9

    .line 495
    .end local v0    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .end local v1    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local v14    # "cn":Landroid/content/ComponentName;
    .end local v15    # "iconRequestInfo":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;"
    .end local v16    # "loadFallbackTitle":Z
    .end local v17    # "loadFallbackIcon":Z
    .end local v18    # "icon":Lcom/android/launcher3/icons/BitmapInfo;
    .end local v22    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    :cond_d
    :goto_a
    move-object/from16 v0, v20

    goto/16 :goto_5

    .line 496
    :cond_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 497
    return-void

    .line 444
    :catchall_3
    move-exception v0

    :goto_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 445
    throw v0
.end method

.method private onIconRequestEnd()V
    .locals 2

    .line 206
    iget v0, p0, Lcom/android/launcher3/icons/IconCache;->mPendingIconRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/icons/IconCache;->mPendingIconRequestCount:I

    .line 207
    if-gtz v0, :cond_0

    .line 208
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsStore;->updateFolderIcons()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 214
    :cond_0
    return-void
.end method


# virtual methods
.method protected applyCacheEntry(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 543
    iget-object v0, p1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    .line 544
    iget-object v0, p1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 545
    iget-object v0, p1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    :goto_0
    iput-object v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 546
    return-void
.end method

.method public close()V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/android/launcher3/icons/IconCache;->getUpdateHandler()Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->close()V

    .line 168
    return-void
.end method

.method public getFullResIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/LauncherActivityInfo;

    .line 549
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    iget v1, p0, Lcom/android/launcher3/icons/IconCache;->mIconDpi:I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/LauncherActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v0

    return-object v0
.end method

.method protected getIconSystemState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 559
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    iget-object v1, p0, Lcom/android/launcher3/icons/IconCache;->mSystemState:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/icons/IconProvider;->getSystemStateForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mUserManager:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .param p2, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mIsUsingFallbackOrNonDefaultIconCheck:Ljava/util/function/Predicate;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Predicate;)V

    .line 248
    return-void
.end method

.method public getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Predicate;)V
    .locals 8
    .param p2, "si"    # Landroid/content/pm/ShortcutInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">(TT;",
            "Landroid/content/pm/ShortcutInfo;",
            "Ljava/util/function/Predicate<",
            "TT;>;)V"
        }
    .end annotation

    .line 257
    .local p1, "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;, "TT;"
    .local p3, "fallbackIconCheck":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEEP_SHORTCUT_ICON_CACHE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-static {p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v0

    iget-object v2, v0, Lcom/android/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda13;

    invoke-direct {v4, p2}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda13;-><init>(Landroid/content/pm/ShortcutInfo;)V

    iget-object v5, p0, Lcom/android/launcher3/icons/IconCache;->mShortcutCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/icons/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .local v0, "bitmapInfo":Lcom/android/launcher3/icons/BitmapInfo;
    goto :goto_0

    .line 262
    .end local v0    # "bitmapInfo":Lcom/android/launcher3/icons/BitmapInfo;
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mShortcutCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    iget-object v1, p0, Lcom/android/launcher3/icons/IconCache;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p2}, Lcom/android/launcher3/icons/cache/CachingLogic;->loadIcon(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    .line 264
    .restart local v0    # "bitmapInfo":Lcom/android/launcher3/icons/BitmapInfo;
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/icons/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    .line 268
    :cond_1
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/icons/IconCache;->isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    return-void

    .line 271
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/IconCache;->getShortcutInfoBadge(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/BitmapInfo;->withBadgeInfo(Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 272
    return-void
.end method

.method public getShortcutInfoBadge(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 5
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 278
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 279
    .local v0, "cn":Landroid/content/ComponentName;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 281
    new-instance v2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v2}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    .line 282
    .local v2, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    .line 283
    iput-object v0, v2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 284
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 286
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    .line 287
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    .line 288
    iget-object v1, v2, Lcom/android/launcher3/model/data/AppInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    return-object v1

    .line 290
    .end local v2    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    :cond_0
    new-instance v2, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 292
    .local v2, "pkgInfo":Lcom/android/launcher3/model/data/PackageItemInfo;
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V

    .line 293
    iget-object v1, v2, Lcom/android/launcher3/model/data/PackageItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    return-object v1
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .param p2, "activityInfo"    # Landroid/content/pm/LauncherActivityInfo;
    .param p3, "useLowResIcon"    # Z

    monitor-enter p0

    .line 240
    :try_start_0
    new-instance v0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda11;

    invoke-direct {v0, p2}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda11;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Ljava/util/function/Supplier;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 239
    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    .end local p1    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local p2    # "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    .end local p3    # "useLowResIcon":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Ljava/util/function/Supplier;ZZ)V
    .locals 7
    .param p1, "infoInOut"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .param p3, "usePkgIcon"    # Z
    .param p4, "useLowResIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .local p2, "activityInfoProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/pm/LauncherActivityInfo;>;"
    monitor-enter p0

    .line 329
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/launcher3/icons/IconCache;->mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    move-object v0, p0

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/icons/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    .line 332
    .local v0, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/icons/IconCache;->applyCacheEntry(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 328
    .end local v0    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    .end local p1    # "infoInOut":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local p2    # "activityInfoProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local p3    # "usePkgIcon":Z
    .end local p4    # "useLowResIcon":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .param p2, "useLowResIcon"    # Z

    monitor-enter p0

    .line 304
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 306
    const-string v0, ""

    iput-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    .line 307
    const-string v0, ""

    iput-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_0

    .line 309
    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 310
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/icons/IconCache;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Ljava/util/function/Supplier;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    monitor-exit p0

    return-void

    .line 303
    .end local p1    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local p2    # "useLowResIcon":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V
    .locals 7
    .param p1, "infoInOut"    # Lcom/android/launcher3/model/data/PackageItemInfo;
    .param p2, "useLowResIcon"    # Z

    monitor-enter p0

    .line 504
    :try_start_0
    iget-object v0, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/launcher3/icons/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;Z)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    .line 506
    .local v0, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/icons/IconCache;->applyCacheEntry(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 507
    iget v1, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 508
    monitor-exit p0

    return-void

    .line 511
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/launcher3/icons/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/widget/WidgetSections;->getWidgetSections(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    .line 512
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;

    .line 513
    .local v1, "widgetSection":Lcom/android/launcher3/widget/WidgetSections$WidgetSection;
    iget-object v2, p0, Lcom/android/launcher3/icons/IconCache;->mContext:Landroid/content/Context;

    iget v3, v1, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;->mSectionTitle:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->title:Ljava/lang/CharSequence;

    .line 514
    iget-object v2, p0, Lcom/android/launcher3/icons/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 516
    iget-object v2, p0, Lcom/android/launcher3/icons/IconCache;->mWidgetCategoryBitmapInfos:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/icons/BitmapInfo;

    .line 517
    .local v2, "cachedBitmap":Lcom/android/launcher3/icons/BitmapInfo;
    if-eqz v2, :cond_1

    .line 518
    iget-object v3, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/icons/IconCache;->getBadgedIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v3

    iput-object v3, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 519
    monitor-exit p0

    return-void

    .line 522
    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/launcher3/icons/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 523
    .local v3, "li":Lcom/android/launcher3/icons/LauncherIcons;
    :try_start_3
    iget-object v4, p0, Lcom/android/launcher3/icons/IconCache;->mContext:Landroid/content/Context;

    iget v5, v1, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;->mSectionDrawable:I

    .line 524
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v5}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    const/4 v6, 0x0

    .line 525
    invoke-virtual {v5, v6}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setShrinkNonAdaptiveIcons(Z)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object v5

    .line 523
    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/icons/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v4

    .line 526
    .local v4, "tempBitmap":Lcom/android/launcher3/icons/BitmapInfo;
    iget-object v5, p0, Lcom/android/launcher3/icons/IconCache;->mWidgetCategoryBitmapInfos:Landroid/util/SparseArray;

    iget v6, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 527
    iget-object v5, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/icons/IconCache;->getBadgedIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v5

    iput-object v5, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 528
    .end local v4    # "tempBitmap":Lcom/android/launcher3/icons/BitmapInfo;
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 530
    .end local v3    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    :cond_2
    goto :goto_1

    .line 522
    .restart local v3    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Lcom/android/launcher3/icons/LauncherIcons;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local v1    # "widgetSection":Lcom/android/launcher3/widget/WidgetSections$WidgetSection;
    .end local v2    # "cachedBitmap":Lcom/android/launcher3/icons/BitmapInfo;
    .end local p1    # "infoInOut":Lcom/android/launcher3/model/data/PackageItemInfo;
    .end local p2    # "useLowResIcon":Z
    :cond_3
    :goto_0
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 528
    .end local v3    # "li":Lcom/android/launcher3/icons/LauncherIcons;
    .restart local v0    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .restart local v1    # "widgetSection":Lcom/android/launcher3/widget/WidgetSections$WidgetSection;
    .restart local v2    # "cachedBitmap":Lcom/android/launcher3/icons/BitmapInfo;
    .restart local p1    # "infoInOut":Lcom/android/launcher3/model/data/PackageItemInfo;
    .restart local p2    # "useLowResIcon":Z
    :catch_0
    move-exception v3

    .line 529
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v4, "Launcher.IconCache"

    const-string v5, "Error initializing bitmap for icons with widget category"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 532
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 503
    .end local v0    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local v1    # "widgetSection":Lcom/android/launcher3/widget/WidgetSections$WidgetSection;
    .end local v2    # "cachedBitmap":Lcom/android/launcher3/icons/BitmapInfo;
    .end local p1    # "infoInOut":Lcom/android/launcher3/model/data/PackageItemInfo;
    .end local p2    # "useLowResIcon":Z
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTitleNoCache(Lcom/android/launcher3/icons/ComponentWithLabel;)Ljava/lang/String;
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/icons/ComponentWithLabel;

    monitor-enter p0

    .line 316
    :try_start_0
    invoke-interface {p1}, Lcom/android/launcher3/icons/ComponentWithLabel;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/launcher3/icons/ComponentWithLabel;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/icons/ComponentWithLabel;)V

    iget-object v4, p0, Lcom/android/launcher3/icons/IconCache;->mComponentWithLabelCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/icons/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    .line 319
    .local v0, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    iget-object v1, v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 315
    .end local v0    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    .end local p1    # "info":Lcom/android/launcher3/icons/ComponentWithLabel;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTitlesAndIconsInBulk(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/IconRequestInfo<",
            "TT;>;>;)V"
        }
    .end annotation

    .local p1, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    monitor-enter p0

    .line 368
    nop

    .line 369
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda15;-><init>(Lcom/android/launcher3/icons/IconCache;)V

    .line 370
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda16;-><init>()V

    .line 381
    invoke-static {v1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 384
    .local v0, "iconLoadSubsectionsMap":Ljava/util/Map;, "Ljava/util/Map<Landroidx/core/util/Pair<Landroid/os/UserHandle;Ljava/lang/Boolean;>;Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;>;"
    const-string v1, "loadIconsInBulk"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 385
    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda17;-><init>(Lcom/android/launcher3/icons/IconCache;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 406
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    monitor-exit p0

    return-void

    .line 367
    .end local v0    # "iconLoadSubsectionsMap":Ljava/util/Map;, "Ljava/util/Map<Landroidx/core/util/Pair<Landroid/os/UserHandle;Ljava/lang/Boolean;>;Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;>;"
    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    .end local p1    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected isInstantApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 134
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/InstantAppResolver;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$getTitleAndIcon$5$com-android-launcher3-icons-IconCache(Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Landroid/content/pm/LauncherActivityInfo;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 310
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v1, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getTitlesAndIconsInBulk$13$com-android-launcher3-icons-IconCache(Landroidx/core/util/Pair;Ljava/util/List;)V
    .locals 2
    .param p1, "sectionKey"    # Landroidx/core/util/Pair;
    .param p2, "filteredList"    # Ljava/util/List;

    .line 386
    nop

    .line 387
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda5;-><init>()V

    .line 388
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda6;-><init>()V

    .line 399
    invoke-static {v1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 402
    .local v0, "duplicateIconRequestsMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<TT;>;>;>;"
    const-string v1, "loadIconSubsectionInBulk"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 403
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/icons/IconCache;->loadIconSubsection(Landroidx/core/util/Pair;Ljava/util/List;Ljava/util/Map;)V

    .line 404
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 405
    return-void
.end method

.method synthetic lambda$getTitlesAndIconsInBulk$9$com-android-launcher3-icons-IconCache(Lcom/android/launcher3/model/data/IconRequestInfo;)Z
    .locals 2
    .param p1, "iconRequest"    # Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 371
    iget-object v0, p1, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping Item info with null component name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.IconCache"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p1, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v1, p1, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/icons/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 377
    const/4 v0, 0x0

    return v0

    .line 379
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$new$0$com-android-launcher3-icons-IconCache(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z
    .locals 2
    .param p1, "w"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 93
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/icons/IconCache;->isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$updateIconInBackground$1$com-android-launcher3-icons-IconCache(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 185
    instance-of v0, p1, Lcom/android/launcher3/model/data/AppInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/model/data/PackageItemInfo;

    if-eqz v0, :cond_2

    .line 188
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V

    goto :goto_1

    .line 186
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    .line 190
    :cond_2
    :goto_1
    return-object p1
.end method

.method public updateIconInBackground(Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/icons/cache/HandlerRunnable;
    .locals 7
    .param p1, "caller"    # Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 177
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 178
    iget v0, p0, Lcom/android/launcher3/icons/IconCache;->mPendingIconRequestCount:I

    if-gtz v0, :cond_0

    .line 179
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    .line 181
    :cond_0
    iget v0, p0, Lcom/android/launcher3/icons/IconCache;->mPendingIconRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/icons/IconCache;->mPendingIconRequestCount:I

    .line 183
    new-instance v0, Lcom/android/launcher3/icons/cache/HandlerRunnable;

    iget-object v2, p0, Lcom/android/launcher3/icons/IconCache;->mWorkerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p2}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    sget-object v4, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 193
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda3;

    invoke-direct {v5, p1}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;)V

    new-instance v6, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/icons/IconCache;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/icons/cache/HandlerRunnable;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 195
    .local v0, "request":Lcom/android/launcher3/icons/cache/HandlerRunnable;, "Lcom/android/launcher3/icons/cache/HandlerRunnable<Lcom/android/launcher3/model/data/ItemInfoWithIcon;>;"
    iget-object v1, p0, Lcom/android/launcher3/icons/IconCache;->mWorkerHandler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 196
    return-object v0
.end method

.method public updateIconInBackgroundWithFolderIcon(Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/icons/cache/HandlerRunnable;
    .locals 1
    .param p1, "caller"    # Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .param p3, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 201
    iput-object p3, p0, Lcom/android/launcher3/icons/IconCache;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/IconCache;->updateIconInBackground(Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/icons/cache/HandlerRunnable;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/IconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 150
    .local v5, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mUserManager:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    .line 151
    .local v6, "userSerial":J
    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    .line 152
    .local v3, "app":Landroid/content/pm/LauncherActivityInfo;
    iget-object v4, p0, Lcom/android/launcher3/icons/IconCache;->mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/icons/IconCache;->addIconToDBAndMemCache(Ljava/lang/Object;Lcom/android/launcher3/icons/cache/CachingLogic;Landroid/content/pm/PackageInfo;JZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .end local v3    # "app":Landroid/content/pm/LauncherActivityInfo;
    goto :goto_0

    .line 157
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "userSerial":J
    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    :cond_0
    goto :goto_1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v1, "Launcher.IconCache"

    const-string v2, "Package not found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    monitor-exit p0

    return-void

    .line 145
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateSessionCache(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .locals 4
    .param p1, "key"    # Lcom/android/launcher3/util/PackageUserKey;
    .param p2, "info"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 553
    iget-object v0, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 554
    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 553
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/icons/IconCache;->cachePackageInstallInfo(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 555
    return-void
.end method

.method public declared-synchronized updateTitleAndIcon(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 8
    .param p1, "application"    # Lcom/android/launcher3/model/data/AppInfo;

    monitor-enter p0

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "usePkgIcon":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->isAppStartable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    const-string v1, "Launcher.IconCache"

    const-string v2, "This application is promissed application.It is needed to update title and icon."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x1

    move v7, v0

    goto :goto_0

    .line 221
    .end local p0    # "this":Lcom/android/launcher3/icons/IconCache;
    :cond_0
    move v7, v0

    .line 226
    .end local v0    # "usePkgIcon":Z
    .local v7, "usePkgIcon":Z
    :goto_0
    iget-object v1, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    new-instance v3, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda12;

    invoke-direct {v3}, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda12;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/icons/IconCache;->mLauncherActivityInfoCachingLogic:Lcom/android/launcher3/icons/cache/CachingLogic;

    .line 228
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->usingLowResIcon()Z

    move-result v6

    .line 226
    move-object v0, p0

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/icons/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/android/launcher3/icons/cache/CachingLogic;ZZ)Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    .line 229
    .local v0, "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    iget-object v1, v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v2, p1, Lcom/android/launcher3/model/data/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/icons/IconCache;->isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/icons/IconCache;->applyCacheEntry(Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :cond_1
    monitor-exit p0

    return-void

    .line 219
    .end local v0    # "entry":Lcom/android/launcher3/icons/cache/BaseIconCache$CacheEntry;
    .end local v7    # "usePkgIcon":Z
    .end local p1    # "application":Lcom/android/launcher3/model/data/AppInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
