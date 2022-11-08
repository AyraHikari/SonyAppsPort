.class public Lcom/android/launcher3/model/LoaderTask;
.super Ljava/lang/Object;
.source "LoaderTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "LoaderTask"


# instance fields
.field protected final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

.field protected final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private mDbName:Ljava/lang/String;

.field private mFirstScreenBroadcast:Lcom/android/launcher3/model/FirstScreenBroadcast;

.field private final mIconCache:Lcom/android/launcher3/icons/IconCache;

.field private mItemsDeleted:Z

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private final mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

.field private final mPendingPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mResults:Lcom/android/launcher3/model/LoaderResults;

.field private final mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

.field private mStopped:Z

.field private final mUserCache:Lcom/android/launcher3/pm/UserCache;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

.field protected final mWidgetProvidersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;)V
    .locals 2
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "bgAllAppsList"    # Lcom/android/launcher3/model/AllAppsList;
    .param p3, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p4, "modelDelegate"    # Lcom/android/launcher3/model/ModelDelegate;
    .param p5, "results"    # Lcom/android/launcher3/model/LoaderResults;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lcom/android/launcher3/model/UserManagerState;

    invoke-direct {v0}, Lcom/android/launcher3/model/UserManagerState;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    .line 147
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mWidgetProvidersMap:Ljava/util/Map;

    .line 151
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mItemsDeleted:Z

    .line 157
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 158
    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    .line 159
    iput-object p3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 160
    iput-object p4, p0, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    .line 161
    iput-object p5, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    .line 163
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 164
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    .line 165
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    .line 166
    sget-object v0, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/InstallSessionHelper;

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

    .line 167
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    .line 168
    return-void
.end method

.method public static isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 1
    .param p0, "provider"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 1137
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1138
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1137
    :goto_0
    return v0
.end method

.method static synthetic lambda$loadAllApps$1(Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;Landroid/content/pm/LauncherActivityInfo;)Z
    .locals 1
    .param p0, "hideLauncherIconManager"    # Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;
    .param p1, "info"    # Landroid/content/pm/LauncherActivityInfo;

    .line 1037
    nop

    .line 1038
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->existsGamePackageName(Ljava/lang/String;)Z

    move-result v0

    .line 1037
    return v0
.end method

.method static synthetic lambda$run$0(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "pkgs"    # Ljava/util/HashSet;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 294
    return-void
.end method

.method private loadAllApps()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 1018
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 1019
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    .local v1, "allActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/model/AllAppsList;->clear()V

    .line 1023
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1024
    .local v2, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/AppInfo;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 1026
    .local v4, "user":Landroid/os/UserHandle;
    iget-object v8, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v8, v6, v4}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    .line 1029
    .local v6, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    .line 1034
    :cond_0
    invoke-static {}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->getInstance()Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;

    move-result-object v8

    .line 1035
    .local v8, "hideLauncherIconManager":Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;
    if-eqz v8, :cond_1

    .line 1037
    new-instance v9, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda2;

    invoke-direct {v9, v8}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda2;-><init>(Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;)V

    invoke-interface {v6, v9}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1041
    :cond_1
    iget-object v9, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    invoke-virtual {v9, v4}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(Landroid/os/UserHandle;)Z

    move-result v9

    .line 1043
    .local v9, "quietMode":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 1044
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/LauncherActivityInfo;

    .line 1045
    .local v11, "app":Landroid/content/pm/LauncherActivityInfo;
    new-instance v12, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v12, v11, v4, v9}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    .line 1047
    .local v12, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    new-instance v13, Lcom/android/launcher3/model/data/IconRequestInfo;

    invoke-direct {v13, v12, v11, v5}, Lcom/android/launcher3/model/data/IconRequestInfo;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    iget-object v13, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    sget-object v14, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BULK_ALL_APPS_ICON_LOADING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 1050
    invoke-virtual {v14}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v14

    .line 1049
    xor-int/2addr v14, v7

    invoke-virtual {v13, v12, v11, v14}, Lcom/android/launcher3/model/AllAppsList;->add(Lcom/android/launcher3/model/data/AppInfo;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 1043
    .end local v11    # "app":Landroid/content/pm/LauncherActivityInfo;
    .end local v12    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1052
    .end local v10    # "i":I
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1053
    .end local v4    # "user":Landroid/os/UserHandle;
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v8    # "hideLauncherIconManager":Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;
    .end local v9    # "quietMode":Z
    goto :goto_0

    .line 1030
    .restart local v4    # "user":Landroid/os/UserHandle;
    .restart local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    :cond_3
    :goto_2
    return-object v1

    .line 1056
    .end local v4    # "user":Landroid/os/UserHandle;
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    :cond_4
    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_IN_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_OWN_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 1057
    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1060
    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/pm/InstallSessionHelper;->getAllVerifiedSessions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 1061
    .local v4, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    sget-object v8, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_IN_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v8}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1062
    invoke-static {v4}, Lcom/sonymobile/launcher/util/PackageInstallerUtils;->isPossibleAutoInstallSession(Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1063
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1064
    :cond_6
    iget-object v8, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v9, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 1065
    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BULK_ALL_APPS_ICON_LOADING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 1067
    invoke-virtual {v10}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v10

    .line 1064
    xor-int/2addr v10, v7

    invoke-virtual {v8, v9, v4, v10}, Lcom/android/launcher3/model/AllAppsList;->addPromiseApp(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionInfo;Z)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v8

    .line 1069
    .local v8, "promiseAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    if-eqz v8, :cond_7

    .line 1070
    new-instance v9, Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 1073
    invoke-virtual {v8}, Lcom/android/launcher3/model/data/AppInfo;->usingLowResIcon()Z

    move-result v10

    invoke-direct {v9, v8, v6, v10}, Lcom/android/launcher3/model/data/IconRequestInfo;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 1070
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1076
    .end local v4    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    .end local v8    # "promiseAppInfo":Lcom/android/launcher3/model/data/AppInfo;
    :cond_7
    goto :goto_3

    .line 1079
    :cond_8
    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BULK_ALL_APPS_ICON_LOADING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1080
    const-string v3, "LoadAllAppsIconsInBulk"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1082
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/icons/IconCache;->getTitlesAndIconsInBulk(Ljava/util/List;)V

    .line 1083
    new-instance v3, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/model/LoaderTask;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1087
    goto :goto_4

    .line 1086
    :catchall_0
    move-exception v3

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1087
    throw v3

    .line 1090
    :cond_9
    :goto_4
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    const/4 v4, 0x2

    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    .line 1091
    invoke-virtual {v6}, Lcom/android/launcher3/model/UserManagerState;->isAnyProfileQuietModeEnabled()Z

    move-result v6

    .line 1090
    invoke-virtual {v3, v4, v6}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    .line 1092
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 1093
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/util/PackageManagerHelper;->hasShortcutsPermission(Landroid/content/Context;)Z

    move-result v4

    .line 1092
    invoke-virtual {v3, v7, v4}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    .line 1094
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    const/4 v4, 0x4

    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 1095
    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "android.permission.MODIFY_QUIET_MODE"

    invoke-virtual {v6, v8}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_a

    move v5, v7

    .line 1094
    :cond_a
    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    .line 1098
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v3}, Lcom/android/launcher3/model/AllAppsList;->getAndResetChangeFlag()Z

    .line 1099
    return-object v1
.end method

.method private loadDeepShortcuts()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    .local v0, "allShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1106
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/model/AllAppsList;->hasShortcutHostPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1107
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v1}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1108
    .local v2, "user":Landroid/os/UserHandle;
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1109
    new-instance v3, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    const/16 v4, 0xb

    .line 1110
    invoke-virtual {v3, v4}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v3

    .line 1111
    .local v3, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1112
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/launcher3/model/BgDataModel;->updateDeepShortcutCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    .line 1114
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_0
    goto :goto_0

    .line 1116
    :cond_1
    return-object v0
.end method

.method private loadFolderNames()V
    .locals 7

    .line 1120
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v1, v1, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/folder/FolderNameProvider;->newInstance(Landroid/content/Context;Ljava/util/List;Lcom/android/launcher3/util/IntSparseArrayMap;)Lcom/android/launcher3/folder/FolderNameProvider;

    move-result-object v0

    .line 1123
    .local v0, "provider":Lcom/android/launcher3/folder/FolderNameProvider;
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    .line 1124
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1125
    new-instance v3, Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-direct {v3}, Lcom/android/launcher3/folder/FolderNameInfos;-><init>()V

    .line 1126
    .local v3, "suggestionInfos":Lcom/android/launcher3/folder/FolderNameInfos;
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/FolderInfo;

    .line 1127
    .local v4, "info":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v5, v4, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    if-nez v5, :cond_0

    .line 1128
    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v6, v3}, Lcom/android/launcher3/folder/FolderNameProvider;->getSuggestedFolderName(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderNameInfos;)V

    .line 1130
    iput-object v3, v4, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    .line 1124
    .end local v3    # "suggestionInfos":Lcom/android/launcher3/folder/FolderNameInfos;
    .end local v4    # "info":Lcom/android/launcher3/model/data/FolderInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1133
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1

    .line 1134
    return-void

    .line 1133
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private loadWorkspace(Ljava/util/List;Lcom/android/launcher3/model/LoaderMemoryLogger;)V
    .locals 2
    .param p2, "logger"    # Lcom/android/launcher3/model/LoaderMemoryLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Lcom/android/launcher3/model/LoaderMemoryLogger;",
            ")V"
        }
    .end annotation

    .line 347
    .local p1, "allDeepShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    sget-object v0, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/launcher3/model/LoaderTask;->loadWorkspace(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;)V

    .line 349
    return-void
.end method

.method private static logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V
    .locals 1
    .param p0, "logger"    # Landroid/util/TimingLogger;
    .param p1, "label"    # Ljava/lang/String;

    .line 1188
    invoke-virtual {p0, p1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1190
    const-string v0, "LoaderTask"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    return-void
.end method

.method private static logWidgetInfo(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .locals 6
    .param p0, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p1, "widgetProviderInfo"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 1144
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1145
    .local v0, "cellSize":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "LoaderTask"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/DeviceProfile;

    .line 1146
    .local v2, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {v2, v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 1147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceProfile available width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", available height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cellLayoutBorderSpacePx Horizontal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cellLayoutBorderSpacePx Vertical: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cellSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    .end local v2    # "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    goto :goto_0

    .line 1156
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1157
    .local v1, "widgetDimension":Ljava/lang/StringBuilder;
    const-string v2, "Widget dimensions:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1158
    const-string v4, "minResizeWidth: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minResizeWidth:I

    .line 1159
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1160
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1161
    const-string v5, "minResizeHeight: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minResizeHeight:I

    .line 1162
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1163
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1164
    const-string v5, "defaultWidth: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minWidth:I

    .line 1165
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1166
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1167
    const-string v5, "defaultHeight: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minHeight:I

    .line 1168
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1169
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v2, :cond_1

    .line 1171
    const-string v2, "targetCellWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->targetCellWidth:I

    .line 1172
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1173
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1174
    const-string v5, "targetCellHeight: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->targetCellHeight:I

    .line 1175
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1176
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1177
    const-string v5, "maxResizeWidth: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxResizeWidth:I

    .line 1178
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1179
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1180
    const-string v5, "maxResizeHeight: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxResizeHeight:I

    .line 1181
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1182
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    return-void
.end method

.method private sanitizeData()V
    .locals 9

    .line 984
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 985
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 986
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/android/launcher3/model/LoaderTask;->mItemsDeleted:Z

    if-eqz v2, :cond_1

    .line 988
    const-string v2, "delete_empty_folders"

    .line 989
    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "value"

    .line 991
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 992
    .local v2, "deletedFolderIds":[I
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v3

    .line 993
    :try_start_0
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, v2, v5

    .line 994
    .local v6, "folderId":I
    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v7, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v8, v8, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v8, v6}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 995
    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v7, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v7, v6}, Lcom/android/launcher3/util/IntSparseArrayMap;->remove(I)V

    .line 996
    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v7, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v7, v6}, Lcom/android/launcher3/util/IntSparseArrayMap;->remove(I)V

    .line 993
    .end local v6    # "folderId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 998
    :cond_0
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1002
    .end local v2    # "deletedFolderIds":[I
    :cond_1
    :goto_1
    const-string v2, "remove_ghost_widgets"

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    .line 1006
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/model/BgDataModel;->updateShortcutPinnedState(Landroid/content/Context;)V

    .line 1008
    invoke-static {}, Lcom/android/launcher3/Utilities;->isBootCompleted()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1009
    new-instance v2, Lcom/android/launcher3/model/SdCardAvailableReceiver;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/model/SdCardAvailableReceiver;-><init>(Lcom/android/launcher3/LauncherAppState;Ljava/util/Set;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 1013
    invoke-virtual {v5}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 1009
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1015
    :cond_2
    return-void
.end method

.method private sendFirstScreenActiveInstallsBroadcast()V
    .locals 7

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v0, "firstScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v1}, Lcom/android/launcher3/model/BgDataModel;->getAllWorkspaceItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 191
    .local v1, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v2}, Lcom/android/launcher3/model/BgDataModel;->collectWorkspaceScreens()Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    .line 192
    .local v2, "allScreens":Lcom/android/launcher3/util/IntArray;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v4

    .line 193
    .local v4, "firstScreen":I
    const/4 v5, 0x1

    new-array v5, v5, [I

    aput v4, v5, v3

    invoke-static {v5}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v3

    .line 195
    .local v3, "firstScreens":Lcom/android/launcher3/util/IntSet;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v1, v0, v5}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 197
    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mFirstScreenBroadcast:Lcom/android/launcher3/model/FirstScreenBroadcast;

    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/android/launcher3/model/FirstScreenBroadcast;->sendBroadcasts(Landroid/content/Context;Ljava/util/List;)V

    .line 198
    return-void
.end method

.method private setIgnorePackages(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)V
    .locals 6
    .param p1, "updateHandler"    # Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    .line 964
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    .line 965
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 966
    .local v2, "info":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v3, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v3, :cond_0

    .line 967
    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 968
    .local v3, "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 969
    iget-object v4, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    .line 970
    invoke-virtual {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 969
    invoke-virtual {p1, v4, v5}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->addPackagesToIgnore(Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_1

    .line 972
    .end local v3    # "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_0
    instance-of v3, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v3, :cond_1

    .line 973
    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 974
    .local v3, "lawi":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 975
    iget-object v4, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    iget-object v5, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 976
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 975
    invoke-virtual {p1, v4, v5}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->addPackagesToIgnore(Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_2

    .line 972
    .end local v3    # "lawi":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :cond_1
    :goto_1
    nop

    .line 979
    .end local v2    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_2
    :goto_2
    goto :goto_0

    .line 980
    :cond_3
    monitor-exit v0

    .line 981
    return-void

    .line 980
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized verifyNotStopped()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    monitor-enter p0

    .line 181
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 184
    monitor-exit p0

    return-void

    .line 182
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Loader stopped"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .end local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method synthetic lambda$loadAllApps$2$com-android-launcher3-model-LoaderTask(Lcom/android/launcher3/model/data/IconRequestInfo;)V
    .locals 2
    .param p1, "iconRequestInfo"    # Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 1084
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v1, p1, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/AllAppsList;->updateSectionName(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method protected loadWorkspace(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 353
    .local p1, "allDeepShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/model/LoaderTask;->loadWorkspace(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;)V

    .line 354
    return-void
.end method

.method protected loadWorkspace(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;)V
    .locals 47
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "logger"    # Lcom/android/launcher3/model/LoaderMemoryLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/model/LoaderMemoryLogger;",
            ")V"
        }
    .end annotation

    .line 361
    .local p1, "allDeepShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 362
    .local v3, "context":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 363
    .local v10, "contentResolver":Landroid/content/ContentResolver;
    new-instance v4, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v4, v3}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    move-object v11, v4

    .line 364
    .local v11, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    invoke-virtual {v11}, Lcom/android/launcher3/util/PackageManagerHelper;->isSafeMode()Z

    move-result v12

    .line 365
    .local v12, "isSafeMode":Z
    invoke-static {}, Lcom/android/launcher3/Utilities;->isBootCompleted()Z

    move-result v13

    .line 366
    .local v13, "isSdCardReady":Z
    new-instance v4, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v4, v3}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    move-object v14, v4

    .line 368
    .local v14, "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    const/4 v4, 0x0

    .line 369
    .local v4, "clearDb":Z
    invoke-static {v3}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->migrateGridIfNeeded(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 371
    const/4 v4, 0x1

    move v15, v4

    goto :goto_0

    .line 369
    :cond_0
    move v15, v4

    .line 374
    .end local v4    # "clearDb":Z
    .local v15, "clearDb":Z
    :goto_0
    if-eqz v15, :cond_1

    .line 375
    const-string v4, "LoaderTask"

    const-string v5, "loadWorkspace: resetting launcher database"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v4, "create_empty_db"

    invoke-static {v10, v4}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    .line 380
    :cond_1
    const-string v4, "LoaderTask"

    const-string v5, "loadWorkspace: loading default favorites"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v4, "load_default_favorites"

    invoke-static {v10, v4}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    .line 385
    invoke-static {v3}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->migrateGridIfNeeded(Landroid/content/Context;)Z

    .line 387
    iget-object v9, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v9

    .line 388
    :try_start_0
    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v4}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    .line 389
    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 391
    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mSessionHelper:Lcom/android/launcher3/pm/InstallSessionHelper;

    .line 392
    invoke-virtual {v4}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v4

    move-object v8, v4

    .line 393
    .local v8, "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/icons/IconCache;)V

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 395
    new-instance v4, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object v6, v4

    .line 396
    .local v6, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    new-instance v4, Lcom/android/launcher3/model/FirstScreenBroadcast;

    invoke-direct {v4, v8}, Lcom/android/launcher3/model/FirstScreenBroadcast;-><init>(Ljava/util/HashMap;)V

    iput-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mFirstScreenBroadcast:Lcom/android/launcher3/model/FirstScreenBroadcast;

    .line 398
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v5, v4

    .line 399
    .local v5, "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    new-instance v4, Lcom/android/launcher3/model/LoaderCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2a

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 400
    move-object/from16 v19, v4

    move-object v4, v10

    move-object/from16 v20, v5

    .end local v5    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .local v20, "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    move-object/from16 v5, p2

    move-object/from16 v21, v6

    .end local v6    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v21, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    move-object/from16 v6, v16

    move-object/from16 v16, v7

    move-object/from16 v7, p3

    move-object/from16 v22, v8

    .end local v8    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .local v22, "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    move-object/from16 v8, v17

    move-object/from16 v17, v9

    move-object/from16 v9, v18

    :try_start_1
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    move-object/from16 v7, p2

    move-object/from16 v8, v19

    invoke-direct {v8, v4, v7, v5, v6}, Lcom/android/launcher3/model/LoaderCursor;-><init>(Landroid/database/Cursor;Landroid/net/Uri;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/UserManagerState;)V

    move-object v4, v8

    .line 402
    .local v4, "c":Lcom/android/launcher3/model/LoaderCursor;
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 403
    .local v5, "extras":Landroid/os/Bundle;
    if-nez v5, :cond_2

    .line 404
    move-object/from16 v6, v16

    goto :goto_1

    :cond_2
    const-string v6, "db_name"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    iput-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mDbName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_29

    .line 406
    :try_start_2
    const-string v6, "appWidgetId"

    invoke-virtual {v4, v6}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 408
    .local v6, "appWidgetIdIndex":I
    const-string v8, "appWidgetProvider"

    invoke-virtual {v4, v8}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 410
    .local v8, "appWidgetProviderIndex":I
    const-string v9, "spanX"

    .line 411
    invoke-virtual {v4, v9}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_28

    .line 412
    .local v9, "spanXIndex":I
    move-object/from16 v18, v5

    .end local v5    # "extras":Landroid/os/Bundle;
    .local v18, "extras":Landroid/os/Bundle;
    :try_start_3
    const-string v5, "spanY"

    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 414
    .local v5, "spanYIndex":I
    const-string v7, "rank"

    invoke-virtual {v4, v7}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_27

    .line 416
    .local v7, "rankIndex":I
    move-object/from16 v19, v10

    .end local v10    # "contentResolver":Landroid/content/ContentResolver;
    .local v19, "contentResolver":Landroid/content/ContentResolver;
    :try_start_4
    const-string v10, "options"

    invoke-virtual {v4, v10}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_26

    .line 418
    .local v10, "optionsIndex":I
    move/from16 v23, v15

    .end local v15    # "clearDb":Z
    .local v23, "clearDb":Z
    :try_start_5
    const-string v15, "appWidgetSource"

    invoke-virtual {v4, v15}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 421
    .local v15, "sourceContainerIndex":I
    new-instance v24, Landroid/util/LongSparseArray;

    invoke-direct/range {v24 .. v24}, Landroid/util/LongSparseArray;-><init>()V

    move-object/from16 v25, v24

    .line 423
    .local v25, "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    move/from16 v24, v7

    .end local v7    # "rankIndex":I
    .local v24, "rankIndex":I
    iget-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_25

    move/from16 v26, v13

    .end local v13    # "isSdCardReady":Z
    .local v26, "isSdCardReady":Z
    :try_start_6
    iget-object v13, v1, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_24

    move-object/from16 v27, v11

    .end local v11    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .local v27, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    :try_start_7
    iget-object v11, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, v13, v11}, Lcom/android/launcher3/model/UserManagerState;->init(Lcom/android/launcher3/pm/UserCache;Landroid/os/UserManager;)V

    .line 425
    iget-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v7}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_23

    if-eqz v11, :cond_6

    :try_start_8
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserHandle;

    .line 426
    .local v11, "user":Landroid/os/UserHandle;
    iget-object v13, v1, Lcom/android/launcher3/model/LoaderTask;->mUserCache:Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v13, v11}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v29

    move-wide/from16 v31, v29

    .line 427
    .local v31, "serialNo":J
    iget-object v13, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v13, v11}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 430
    .local v13, "userUnlocked":Z
    if-eqz v13, :cond_5

    .line 431
    move-object/from16 v29, v7

    :try_start_9
    new-instance v7, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    invoke-direct {v7, v3, v11}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 432
    move-object/from16 v30, v11

    const/4 v11, 0x2

    .end local v11    # "user":Landroid/os/UserHandle;
    .local v30, "user":Landroid/os/UserHandle;
    invoke-virtual {v7, v11}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v7

    .line 433
    .local v7, "pinnedShortcuts":Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    invoke-virtual {v7}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->wasSuccess()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 434
    invoke-virtual {v7}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/ShortcutInfo;

    move-object/from16 v33, v28

    .line 435
    .local v33, "shortcut":Landroid/content/pm/ShortcutInfo;
    move-object/from16 v28, v7

    .end local v7    # "pinnedShortcuts":Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    .local v28, "pinnedShortcuts":Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    invoke-static/range {v33 .. v33}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v34, v11

    move-object/from16 v11, v20

    move/from16 v20, v13

    move-object/from16 v13, v33

    .end local v33    # "shortcut":Landroid/content/pm/ShortcutInfo;
    .local v11, "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .local v13, "shortcut":Landroid/content/pm/ShortcutInfo;
    .local v20, "userUnlocked":Z
    :try_start_a
    invoke-interface {v11, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 437
    move/from16 v13, v20

    move-object/from16 v7, v28

    move-object/from16 v20, v11

    move-object/from16 v11, v34

    .end local v13    # "shortcut":Landroid/content/pm/ShortcutInfo;
    goto :goto_3

    .line 894
    .end local v5    # "spanYIndex":I
    .end local v6    # "appWidgetIdIndex":I
    .end local v8    # "appWidgetProviderIndex":I
    .end local v9    # "spanXIndex":I
    .end local v10    # "optionsIndex":I
    .end local v15    # "sourceContainerIndex":I
    .end local v20    # "userUnlocked":Z
    .end local v24    # "rankIndex":I
    .end local v25    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v28    # "pinnedShortcuts":Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    .end local v30    # "user":Landroid/os/UserHandle;
    .end local v31    # "serialNo":J
    :catchall_0
    move-exception v0

    move-object/from16 v7, p1

    move-object v2, v0

    move-object v9, v3

    move-object v8, v11

    move/from16 v25, v12

    move-object/from16 v43, v14

    move-object/from16 v13, v27

    move-object/from16 v27, v22

    goto/16 :goto_35

    .line 437
    .end local v11    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v5    # "spanYIndex":I
    .restart local v6    # "appWidgetIdIndex":I
    .restart local v7    # "pinnedShortcuts":Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    .restart local v8    # "appWidgetProviderIndex":I
    .restart local v9    # "spanXIndex":I
    .restart local v10    # "optionsIndex":I
    .local v13, "userUnlocked":Z
    .restart local v15    # "sourceContainerIndex":I
    .local v20, "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v24    # "rankIndex":I
    .restart local v25    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v30    # "user":Landroid/os/UserHandle;
    .restart local v31    # "serialNo":J
    :cond_3
    move-object/from16 v28, v7

    move-object/from16 v11, v20

    move/from16 v20, v13

    .end local v7    # "pinnedShortcuts":Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    .end local v13    # "userUnlocked":Z
    .restart local v11    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .local v20, "userUnlocked":Z
    .restart local v28    # "pinnedShortcuts":Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    goto :goto_4

    .line 442
    .end local v11    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v28    # "pinnedShortcuts":Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    .restart local v7    # "pinnedShortcuts":Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    .restart local v13    # "userUnlocked":Z
    .local v20, "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    :cond_4
    move-object/from16 v28, v7

    move-object/from16 v11, v20

    move/from16 v20, v13

    .end local v7    # "pinnedShortcuts":Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    .end local v13    # "userUnlocked":Z
    .restart local v11    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .local v20, "userUnlocked":Z
    .restart local v28    # "pinnedShortcuts":Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    const/4 v13, 0x0

    .end local v20    # "userUnlocked":Z
    .restart local v13    # "userUnlocked":Z
    goto :goto_5

    .line 894
    .end local v5    # "spanYIndex":I
    .end local v6    # "appWidgetIdIndex":I
    .end local v8    # "appWidgetProviderIndex":I
    .end local v9    # "spanXIndex":I
    .end local v10    # "optionsIndex":I
    .end local v11    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v13    # "userUnlocked":Z
    .end local v15    # "sourceContainerIndex":I
    .end local v24    # "rankIndex":I
    .end local v25    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v28    # "pinnedShortcuts":Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    .end local v30    # "user":Landroid/os/UserHandle;
    .end local v31    # "serialNo":J
    .local v20, "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v7, p1

    move-object v2, v0

    move-object v9, v3

    move/from16 v25, v12

    move-object/from16 v43, v14

    move-object/from16 v8, v20

    move-object/from16 v13, v27

    move-object/from16 v27, v22

    .end local v20    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v11    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    goto/16 :goto_35

    .line 430
    .restart local v5    # "spanYIndex":I
    .restart local v6    # "appWidgetIdIndex":I
    .restart local v8    # "appWidgetProviderIndex":I
    .restart local v9    # "spanXIndex":I
    .restart local v10    # "optionsIndex":I
    .local v11, "user":Landroid/os/UserHandle;
    .restart local v13    # "userUnlocked":Z
    .restart local v15    # "sourceContainerIndex":I
    .restart local v20    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v24    # "rankIndex":I
    .restart local v25    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v31    # "serialNo":J
    :cond_5
    move-object/from16 v29, v7

    move-object/from16 v30, v11

    move-object/from16 v11, v20

    move/from16 v20, v13

    .line 445
    .end local v13    # "userUnlocked":Z
    .local v11, "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .local v20, "userUnlocked":Z
    .restart local v30    # "user":Landroid/os/UserHandle;
    :goto_4
    move/from16 v13, v20

    .end local v20    # "userUnlocked":Z
    .restart local v13    # "userUnlocked":Z
    :goto_5
    :try_start_b
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move/from16 v20, v13

    move-object/from16 v13, v25

    move/from16 v25, v12

    move-wide/from16 v45, v31

    move-object/from16 v31, v11

    move-wide/from16 v11, v45

    .end local v12    # "isSafeMode":Z
    .local v11, "serialNo":J
    .local v13, "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v20    # "userUnlocked":Z
    .local v25, "isSafeMode":Z
    .local v31, "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    :try_start_c
    invoke-virtual {v13, v11, v12, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 446
    .end local v11    # "serialNo":J
    .end local v20    # "userUnlocked":Z
    .end local v30    # "user":Landroid/os/UserHandle;
    move/from16 v12, v25

    move-object/from16 v7, v29

    move-object/from16 v20, v31

    move-object/from16 v25, v13

    goto/16 :goto_2

    .line 894
    .end local v5    # "spanYIndex":I
    .end local v6    # "appWidgetIdIndex":I
    .end local v8    # "appWidgetProviderIndex":I
    .end local v9    # "spanXIndex":I
    .end local v10    # "optionsIndex":I
    .end local v13    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v15    # "sourceContainerIndex":I
    .end local v24    # "rankIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v7, p1

    move-object v2, v0

    move-object v9, v3

    move-object/from16 v43, v14

    move-object/from16 v13, v27

    move-object/from16 v8, v31

    move-object/from16 v27, v22

    goto/16 :goto_35

    .end local v25    # "isSafeMode":Z
    .end local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .local v11, "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v12    # "isSafeMode":Z
    :catchall_3
    move-exception v0

    move/from16 v25, v12

    move-object/from16 v7, p1

    move-object v2, v0

    move-object v9, v3

    move-object v8, v11

    move-object/from16 v43, v14

    move-object/from16 v13, v27

    move-object/from16 v27, v22

    .end local v11    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v12    # "isSafeMode":Z
    .restart local v25    # "isSafeMode":Z
    .restart local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    goto/16 :goto_35

    .end local v25    # "isSafeMode":Z
    .end local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v12    # "isSafeMode":Z
    .local v20, "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    :catchall_4
    move-exception v0

    move/from16 v25, v12

    move-object/from16 v7, p1

    move-object v2, v0

    move-object v9, v3

    move-object/from16 v43, v14

    move-object/from16 v8, v20

    move-object/from16 v13, v27

    move-object/from16 v27, v22

    .end local v12    # "isSafeMode":Z
    .end local v20    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v25    # "isSafeMode":Z
    .restart local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    goto/16 :goto_35

    .line 453
    .end local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v5    # "spanYIndex":I
    .restart local v6    # "appWidgetIdIndex":I
    .restart local v8    # "appWidgetProviderIndex":I
    .restart local v9    # "spanXIndex":I
    .restart local v10    # "optionsIndex":I
    .restart local v12    # "isSafeMode":Z
    .restart local v15    # "sourceContainerIndex":I
    .restart local v20    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v24    # "rankIndex":I
    .local v25, "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    :cond_6
    move-object/from16 v31, v20

    move-object/from16 v13, v25

    move/from16 v25, v12

    .end local v12    # "isSafeMode":Z
    .end local v20    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v13    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .local v25, "isSafeMode":Z
    .restart local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    :try_start_d
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v7, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    :goto_6
    iget-boolean v11, v1, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_22

    if-nez v11, :cond_4c

    :try_start_e
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->moveToNext()Z

    move-result v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1e

    if-eqz v11, :cond_4c

    .line 457
    :try_start_f
    iget-object v11, v4, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2a
    .catchall {:try_start_f .. :try_end_f} :catchall_1e

    if-nez v11, :cond_7

    .line 459
    :try_start_10
    const-string v11, "User has been deleted"

    invoke-virtual {v4, v11}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 460
    goto :goto_6

    .line 874
    :catch_0
    move-exception v0

    move/from16 v38, v6

    move-object v12, v7

    move/from16 v37, v8

    move/from16 v42, v9

    move-object/from16 v41, v13

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v7, p1

    move-object v9, v3

    move-object/from16 v27, v22

    move-object v3, v2

    move-object v2, v0

    move-object/from16 v45, v21

    move/from16 v21, v5

    move-object/from16 v5, v45

    goto/16 :goto_2b

    .line 463
    :cond_7
    const/4 v11, 0x0

    .line 464
    .local v11, "allowMissingTarget":Z
    :try_start_11
    iget v12, v4, Lcom/android/launcher3/model/LoaderCursor;->itemType:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2a
    .catchall {:try_start_11 .. :try_end_11} :catchall_1e

    const/high16 v30, 0x42c80000    # 100.0f

    move/from16 v32, v11

    .end local v11    # "allowMissingTarget":Z
    .local v32, "allowMissingTarget":Z
    packed-switch v12, :pswitch_data_0

    :pswitch_0
    move/from16 v38, v6

    move-object v12, v7

    move/from16 v37, v8

    move/from16 v42, v9

    move-object/from16 v41, v13

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v7, p1

    move-object v9, v3

    move-object/from16 v27, v22

    move-object v3, v2

    move-object/from16 v45, v21

    move/from16 v21, v5

    move-object/from16 v5, v45

    .end local v3    # "context":Landroid/content/Context;
    .end local v7    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v8    # "appWidgetProviderIndex":I
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v15    # "sourceContainerIndex":I
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v24    # "rankIndex":I
    .end local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .local v5, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v6, "rankIndex":I
    .local v9, "context":Landroid/content/Context;
    .local v12, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .local v13, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .local v21, "spanYIndex":I
    .local v27, "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .local v36, "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .local v37, "appWidgetProviderIndex":I
    .local v38, "appWidgetIdIndex":I
    .local v41, "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .local v42, "spanXIndex":I
    .local v43, "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .local v44, "sourceContainerIndex":I
    goto/16 :goto_2a

    .line 723
    .end local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v44    # "sourceContainerIndex":I
    .restart local v3    # "context":Landroid/content/Context;
    .local v5, "spanYIndex":I
    .local v6, "appWidgetIdIndex":I
    .restart local v7    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v8    # "appWidgetProviderIndex":I
    .local v9, "spanXIndex":I
    .local v13, "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v15    # "sourceContainerIndex":I
    .local v21, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v24    # "rankIndex":I
    .local v27, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    :pswitch_1
    :try_start_12
    iget v12, v4, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v11, 0x5

    if-ne v12, v11, :cond_8

    const/4 v11, 0x1

    goto :goto_7

    :cond_8
    const/4 v11, 0x0

    .line 726
    .local v11, "customWidget":Z
    :goto_7
    invoke-virtual {v4, v6}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v12

    .line 727
    .local v12, "appWidgetId":I
    invoke-virtual {v4, v8}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v36, v20

    .line 730
    .local v36, "savedProvider":Ljava/lang/String;
    invoke-virtual {v4, v10}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v20
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    const/16 v35, 0x1

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_9

    const/16 v20, 0x1

    goto :goto_8

    :cond_9
    const/16 v20, 0x0

    .line 732
    .local v20, "isSearchWidget":Z
    :goto_8
    if-eqz v20, :cond_b

    .line 733
    :try_start_13
    invoke-static {v3}, Lcom/android/launcher3/qsb/QsbContainerView;->getSearchComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v37
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 734
    .local v37, "component":Landroid/content/ComponentName;
    if-nez v37, :cond_a

    .line 735
    move/from16 v38, v6

    .end local v6    # "appWidgetIdIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    :try_start_14
    const-string v6, "Discarding SearchWidget without packagename "

    invoke-virtual {v4, v6}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 736
    move/from16 v6, v38

    goto/16 :goto_6

    .line 874
    .end local v11    # "customWidget":Z
    .end local v12    # "appWidgetId":I
    .end local v20    # "isSearchWidget":Z
    .end local v32    # "allowMissingTarget":Z
    .end local v36    # "savedProvider":Ljava/lang/String;
    .end local v37    # "component":Landroid/content/ComponentName;
    :catch_1
    move-exception v0

    move-object v12, v7

    move/from16 v37, v8

    move/from16 v42, v9

    move-object/from16 v41, v13

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v7, p1

    move-object v9, v3

    move-object/from16 v27, v22

    move-object v3, v2

    move-object v2, v0

    move-object/from16 v45, v21

    move/from16 v21, v5

    move-object/from16 v5, v45

    goto/16 :goto_2b

    .line 734
    .end local v38    # "appWidgetIdIndex":I
    .restart local v6    # "appWidgetIdIndex":I
    .restart local v11    # "customWidget":Z
    .restart local v12    # "appWidgetId":I
    .restart local v20    # "isSearchWidget":Z
    .restart local v32    # "allowMissingTarget":Z
    .restart local v36    # "savedProvider":Ljava/lang/String;
    .restart local v37    # "component":Landroid/content/ComponentName;
    :cond_a
    move/from16 v38, v6

    .end local v6    # "appWidgetIdIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    move-object/from16 v6, v37

    goto :goto_9

    .line 874
    .end local v11    # "customWidget":Z
    .end local v12    # "appWidgetId":I
    .end local v20    # "isSearchWidget":Z
    .end local v32    # "allowMissingTarget":Z
    .end local v36    # "savedProvider":Ljava/lang/String;
    .end local v37    # "component":Landroid/content/ComponentName;
    .end local v38    # "appWidgetIdIndex":I
    .restart local v6    # "appWidgetIdIndex":I
    :catch_2
    move-exception v0

    move/from16 v38, v6

    move-object v12, v7

    move/from16 v37, v8

    move/from16 v42, v9

    move-object/from16 v41, v13

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v7, p1

    move-object v9, v3

    move-object/from16 v27, v22

    move-object v3, v2

    move-object v2, v0

    move-object/from16 v45, v21

    move/from16 v21, v5

    move-object/from16 v5, v45

    .end local v6    # "appWidgetIdIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    goto/16 :goto_2b

    .line 739
    .end local v38    # "appWidgetIdIndex":I
    .restart local v6    # "appWidgetIdIndex":I
    .restart local v11    # "customWidget":Z
    .restart local v12    # "appWidgetId":I
    .restart local v20    # "isSearchWidget":Z
    .restart local v32    # "allowMissingTarget":Z
    .restart local v36    # "savedProvider":Ljava/lang/String;
    :cond_b
    move/from16 v38, v6

    .end local v6    # "appWidgetIdIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    :try_start_15
    invoke-static/range {v36 .. v36}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    move-object/from16 v37, v6

    .line 741
    .local v6, "component":Landroid/content/ComponentName;
    :goto_9
    move/from16 v37, v8

    const/4 v8, 0x1

    .end local v8    # "appWidgetProviderIndex":I
    .local v37, "appWidgetProviderIndex":I
    :try_start_16
    invoke-virtual {v4, v8}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v39
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    if-nez v39, :cond_c

    const/4 v8, 0x1

    goto :goto_a

    :cond_c
    const/4 v8, 0x0

    .line 743
    .local v8, "isIdValid":Z
    :goto_a
    move-object/from16 v39, v7

    const/4 v7, 0x2

    .end local v7    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .local v39, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    :try_start_17
    invoke-virtual {v4, v7}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v40
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    if-nez v40, :cond_d

    const/16 v35, 0x1

    goto :goto_b

    :cond_d
    const/16 v35, 0x0

    :goto_b
    move/from16 v7, v35

    .line 746
    .local v7, "wasProviderReady":Z
    move-object/from16 v40, v3

    .end local v3    # "context":Landroid/content/Context;
    .local v40, "context":Landroid/content/Context;
    :try_start_18
    new-instance v3, Lcom/android/launcher3/util/ComponentKey;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    move-object/from16 v41, v13

    .end local v13    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    :try_start_19
    iget-object v13, v4, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-direct {v3, v6, v13}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 747
    .local v3, "providerKey":Lcom/android/launcher3/util/ComponentKey;
    iget-object v13, v1, Lcom/android/launcher3/model/LoaderTask;->mWidgetProvidersMap:Ljava/util/Map;

    invoke-interface {v13, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    if-nez v13, :cond_e

    .line 748
    :try_start_1a
    iget-object v13, v1, Lcom/android/launcher3/model/LoaderTask;->mWidgetProvidersMap:Ljava/util/Map;

    iget-object v2, v4, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    .line 749
    invoke-virtual {v14, v6, v2}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v2

    .line 748
    invoke-interface {v13, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    goto :goto_c

    .line 894
    .end local v3    # "providerKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v5    # "spanYIndex":I
    .end local v6    # "component":Landroid/content/ComponentName;
    .end local v7    # "wasProviderReady":Z
    .end local v8    # "isIdValid":Z
    .end local v9    # "spanXIndex":I
    .end local v10    # "optionsIndex":I
    .end local v11    # "customWidget":Z
    .end local v12    # "appWidgetId":I
    .end local v15    # "sourceContainerIndex":I
    .end local v20    # "isSearchWidget":Z
    .end local v24    # "rankIndex":I
    .end local v32    # "allowMissingTarget":Z
    .end local v36    # "savedProvider":Ljava/lang/String;
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    :catchall_5
    move-exception v0

    move-object/from16 v7, p1

    move-object v2, v0

    move-object/from16 v43, v14

    move-object/from16 v13, v27

    move-object/from16 v8, v31

    move-object/from16 v9, v40

    move-object/from16 v27, v22

    goto/16 :goto_35

    .line 874
    .restart local v5    # "spanYIndex":I
    .restart local v9    # "spanXIndex":I
    .restart local v10    # "optionsIndex":I
    .restart local v15    # "sourceContainerIndex":I
    .restart local v24    # "rankIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    :catch_3
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v3, p4

    move-object v2, v0

    move/from16 v42, v9

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v27, v22

    move-object/from16 v45, v21

    move/from16 v21, v5

    move-object/from16 v5, v45

    goto/16 :goto_2b

    .line 751
    .restart local v3    # "providerKey":Lcom/android/launcher3/util/ComponentKey;
    .restart local v6    # "component":Landroid/content/ComponentName;
    .restart local v7    # "wasProviderReady":Z
    .restart local v8    # "isIdValid":Z
    .restart local v11    # "customWidget":Z
    .restart local v12    # "appWidgetId":I
    .restart local v20    # "isSearchWidget":Z
    .restart local v32    # "allowMissingTarget":Z
    .restart local v36    # "savedProvider":Ljava/lang/String;
    :cond_e
    :goto_c
    :try_start_1b
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mWidgetProvidersMap:Ljava/util/Map;

    .line 752
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 754
    .local v2, "provider":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-static {v2}, Lcom/android/launcher3/model/LoaderTask;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v13
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_7
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 755
    .local v13, "isProviderReady":Z
    if-nez v25, :cond_f

    if-nez v11, :cond_f

    if-eqz v7, :cond_f

    if-nez v13, :cond_f

    .line 757
    move-object/from16 v35, v3

    .end local v3    # "providerKey":Lcom/android/launcher3/util/ComponentKey;
    .local v35, "providerKey":Lcom/android/launcher3/util/ComponentKey;
    :try_start_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v42, v11

    .end local v11    # "customWidget":Z
    .local v42, "customWidget":Z
    const-string v11, "Deleting widget that isn\'t installed anymore: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    move-object/from16 v7, p1

    move-object/from16 v3, p4

    move/from16 v42, v9

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v27, v22

    move-object/from16 v45, v21

    move/from16 v21, v5

    move-object/from16 v5, v45

    goto/16 :goto_2a

    .line 755
    .end local v35    # "providerKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v42    # "customWidget":Z
    .restart local v3    # "providerKey":Lcom/android/launcher3/util/ComponentKey;
    .restart local v11    # "customWidget":Z
    :cond_f
    move-object/from16 v35, v3

    move/from16 v42, v11

    .line 761
    .end local v3    # "providerKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v11    # "customWidget":Z
    .restart local v35    # "providerKey":Lcom/android/launcher3/util/ComponentKey;
    .restart local v42    # "customWidget":Z
    if-eqz v13, :cond_11

    .line 762
    new-instance v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v11, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v3, v12, v11}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 768
    .local v3, "appWidgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iget v11, v4, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    and-int/lit8 v11, v11, -0x9

    and-int/lit8 v11, v11, -0x3

    .line 771
    .local v11, "status":I
    if-nez v7, :cond_10

    .line 776
    if-eqz v8, :cond_10

    .line 777
    or-int/lit8 v11, v11, 0x4

    .line 780
    :cond_10
    iput v11, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    .line 781
    .end local v11    # "status":I
    move-object/from16 v43, v2

    move/from16 v44, v7

    move/from16 v34, v13

    move-object/from16 v7, v21

    move-object/from16 v2, v22

    move/from16 v22, v8

    goto/16 :goto_10

    .line 782
    .end local v3    # "appWidgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :cond_11
    :try_start_1d
    const-string v3, "LoaderTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v43, v2

    .end local v2    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    .local v43, "provider":Landroid/appwidget/AppWidgetProviderInfo;
    const-string v2, "Widget restore pending id="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v11, v4, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " appWidgetId="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " status ="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v11, v4, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    new-instance v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {v2, v12, v6}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    move-object v3, v2

    .line 787
    .restart local v3    # "appWidgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iget v2, v4, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    iput v2, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 789
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v11, v4, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_7
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    move/from16 v44, v7

    move-object/from16 v7, v21

    .end local v21    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v7, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v44, "wasProviderReady":Z
    :try_start_1e
    invoke-virtual {v7, v2, v11}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_6
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    .line 790
    nop

    .line 791
    move-object/from16 v2, v22

    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .local v2, "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :try_start_1f
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 792
    .local v11, "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-nez v11, :cond_12

    .line 793
    move/from16 v22, v8

    move-object/from16 v8, v16

    goto :goto_d

    .line 794
    :cond_12
    invoke-virtual {v11}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v21

    move/from16 v22, v8

    .end local v8    # "isIdValid":Z
    .local v22, "isIdValid":Z
    mul-float v8, v21, v30

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_d
    nop

    .line 796
    .local v8, "installProgress":Ljava/lang/Integer;
    move-object/from16 v21, v11

    const/16 v11, 0x8

    .end local v11    # "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    .local v21, "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v4, v11}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v30
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_5
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    if-eqz v30, :cond_13

    move/from16 v34, v13

    goto :goto_e

    .line 798
    :cond_13
    if-eqz v8, :cond_14

    .line 800
    :try_start_20
    iget v11, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    const/16 v30, 0x8

    or-int/lit8 v11, v11, 0x8

    iput v11, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    move/from16 v34, v13

    goto :goto_e

    .line 802
    :cond_14
    if-nez v25, :cond_15

    .line 803
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v34, v13

    .end local v13    # "isProviderReady":Z
    .local v34, "isProviderReady":Z
    const-string v13, "Unrestored widget removed: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_4
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    .line 804
    move-object/from16 v22, v2

    move-object/from16 v21, v7

    move/from16 v8, v37

    move/from16 v6, v38

    move-object/from16 v7, v39

    move-object/from16 v3, v40

    move-object/from16 v13, v41

    move-object/from16 v2, p4

    goto/16 :goto_6

    .line 802
    .end local v34    # "isProviderReady":Z
    .restart local v13    # "isProviderReady":Z
    :cond_15
    move/from16 v34, v13

    .line 807
    .end local v13    # "isProviderReady":Z
    .restart local v34    # "isProviderReady":Z
    :goto_e
    nop

    .line 808
    if-nez v8, :cond_16

    const/4 v11, 0x0

    goto :goto_f

    :cond_16
    :try_start_21
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_f
    iput v11, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->installProgress:I

    .line 810
    .end local v8    # "installProgress":Ljava/lang/Integer;
    .end local v21    # "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    :goto_10
    const/16 v8, 0x20

    invoke-virtual {v3, v8}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v8
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_5
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    if-eqz v8, :cond_17

    .line 812
    :try_start_22
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v8

    iput-object v8, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_4
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    goto :goto_11

    .line 874
    .end local v3    # "appWidgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .end local v6    # "component":Landroid/content/ComponentName;
    .end local v12    # "appWidgetId":I
    .end local v20    # "isSearchWidget":Z
    .end local v22    # "isIdValid":Z
    .end local v32    # "allowMissingTarget":Z
    .end local v34    # "isProviderReady":Z
    .end local v35    # "providerKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v36    # "savedProvider":Ljava/lang/String;
    .end local v42    # "customWidget":Z
    .end local v43    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v44    # "wasProviderReady":Z
    :catch_4
    move-exception v0

    move-object/from16 v3, p4

    move/from16 v21, v5

    move-object v5, v7

    move/from16 v42, v9

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object/from16 v27, v2

    move-object v2, v0

    goto/16 :goto_2b

    .line 815
    .restart local v3    # "appWidgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .restart local v6    # "component":Landroid/content/ComponentName;
    .restart local v12    # "appWidgetId":I
    .restart local v20    # "isSearchWidget":Z
    .restart local v22    # "isIdValid":Z
    .restart local v32    # "allowMissingTarget":Z
    .restart local v34    # "isProviderReady":Z
    .restart local v35    # "providerKey":Lcom/android/launcher3/util/ComponentKey;
    .restart local v36    # "savedProvider":Ljava/lang/String;
    .restart local v42    # "customWidget":Z
    .restart local v43    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v44    # "wasProviderReady":Z
    :cond_17
    :goto_11
    :try_start_23
    invoke-virtual {v4, v3}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 816
    invoke-virtual {v4, v9}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    .line 817
    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    .line 818
    invoke-virtual {v4, v10}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->options:I

    .line 819
    iget-object v8, v4, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v8, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 820
    invoke-virtual {v4, v15}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->sourceContainer:I

    .line 822
    iget v8, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    if-lez v8, :cond_21

    iget v8, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    if-gtz v8, :cond_18

    move/from16 v21, v5

    move-object/from16 v33, v6

    move-object/from16 v11, v36

    goto/16 :goto_16

    .line 827
    :cond_18
    nop

    .line 828
    invoke-virtual {v14, v12}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v8

    .line 829
    .local v8, "widgetProviderInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    if-eqz v8, :cond_1b

    iget v11, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    iget v13, v8, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_5
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    if-lt v11, v13, :cond_1a

    :try_start_24
    iget v11, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    iget v13, v8, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_4
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    if-ge v11, v13, :cond_19

    goto :goto_12

    :cond_19
    move/from16 v21, v5

    goto :goto_13

    .line 832
    :cond_1a
    :goto_12
    :try_start_25
    const-string v11, "LoaderTask"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_5
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    move/from16 v21, v5

    .end local v5    # "spanYIndex":I
    .local v21, "spanYIndex":I
    :try_start_26
    const-string v5, "Widget "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " minSizes not meet: span="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v13, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "x"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v13, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " minSpan="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v13, v8, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "x"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v13, v8, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/android/launcher3/model/LoaderTask;->logWidgetInfo(Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    goto :goto_13

    .line 829
    .end local v21    # "spanYIndex":I
    .restart local v5    # "spanYIndex":I
    :cond_1b
    move/from16 v21, v5

    .line 840
    .end local v5    # "spanYIndex":I
    .restart local v21    # "spanYIndex":I
    :goto_13
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 841
    const-string v5, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    .line 843
    move-object/from16 v22, v2

    move/from16 v5, v21

    move/from16 v8, v37

    move/from16 v6, v38

    move-object/from16 v3, v40

    move-object/from16 v13, v41

    move-object/from16 v2, p4

    move-object/from16 v21, v7

    move-object/from16 v7, v39

    goto/16 :goto_6

    .line 846
    :cond_1c
    if-nez v42, :cond_1e

    .line 847
    iget-object v5, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 848
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 849
    .local v5, "providerName":Ljava/lang/String;
    move-object/from16 v11, v36

    .end local v36    # "savedProvider":Ljava/lang/String;
    .local v11, "savedProvider":Ljava/lang/String;
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    iget v13, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    move-object/from16 v33, v6

    .end local v6    # "component":Landroid/content/ComponentName;
    .local v33, "component":Landroid/content/ComponentName;
    iget v6, v4, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eq v13, v6, :cond_1f

    goto :goto_14

    .end local v33    # "component":Landroid/content/ComponentName;
    .restart local v6    # "component":Landroid/content/ComponentName;
    :cond_1d
    move-object/from16 v33, v6

    .line 851
    .end local v6    # "component":Landroid/content/ComponentName;
    .restart local v33    # "component":Landroid/content/ComponentName;
    :goto_14
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v6

    const-string v13, "appWidgetProvider"

    .line 852
    invoke-virtual {v6, v13, v5}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v6

    const-string v13, "restored"

    move-object/from16 v30, v5

    .end local v5    # "providerName":Ljava/lang/String;
    .local v30, "providerName":Ljava/lang/String;
    iget v5, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    .line 855
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 854
    invoke-virtual {v6, v13, v5}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    .line 856
    invoke-virtual {v5}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    goto :goto_15

    .line 846
    .end local v11    # "savedProvider":Ljava/lang/String;
    .end local v30    # "providerName":Ljava/lang/String;
    .end local v33    # "component":Landroid/content/ComponentName;
    .restart local v6    # "component":Landroid/content/ComponentName;
    .restart local v36    # "savedProvider":Ljava/lang/String;
    :cond_1e
    move-object/from16 v33, v6

    move-object/from16 v11, v36

    .line 860
    .end local v6    # "component":Landroid/content/ComponentName;
    .end local v36    # "savedProvider":Ljava/lang/String;
    .restart local v11    # "savedProvider":Ljava/lang/String;
    .restart local v33    # "component":Landroid/content/ComponentName;
    :cond_1f
    :goto_15
    iget v5, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v5, :cond_20

    .line 862
    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 863
    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v13, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 862
    invoke-static {v5, v6, v13}, Lcom/android/launcher3/model/WidgetsModel;->newPendingItemInfo(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object v5

    iput-object v5, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 866
    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v6, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/data/PackageItemInfo;

    const/4 v13, 0x0

    invoke-virtual {v5, v6, v13}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V

    .line 870
    :cond_20
    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v4, v3, v5}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V

    move-object/from16 v3, p4

    move-object v5, v7

    move/from16 v42, v9

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object/from16 v27, v2

    goto/16 :goto_2a

    .line 822
    .end local v8    # "widgetProviderInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .end local v11    # "savedProvider":Ljava/lang/String;
    .end local v21    # "spanYIndex":I
    .end local v33    # "component":Landroid/content/ComponentName;
    .local v5, "spanYIndex":I
    .restart local v6    # "component":Landroid/content/ComponentName;
    .restart local v36    # "savedProvider":Ljava/lang/String;
    :cond_21
    move/from16 v21, v5

    move-object/from16 v33, v6

    move-object/from16 v11, v36

    .line 823
    .end local v5    # "spanYIndex":I
    .end local v6    # "component":Landroid/content/ComponentName;
    .end local v36    # "savedProvider":Ljava/lang/String;
    .restart local v11    # "savedProvider":Ljava/lang/String;
    .restart local v21    # "spanYIndex":I
    .restart local v33    # "component":Landroid/content/ComponentName;
    :goto_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Widget has invalid size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_d
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    .line 825
    move-object/from16 v22, v2

    move/from16 v5, v21

    move/from16 v8, v37

    move/from16 v6, v38

    move-object/from16 v3, v40

    move-object/from16 v13, v41

    move-object/from16 v2, p4

    move-object/from16 v21, v7

    move-object/from16 v7, v39

    goto/16 :goto_6

    .line 874
    .end local v3    # "appWidgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .end local v11    # "savedProvider":Ljava/lang/String;
    .end local v12    # "appWidgetId":I
    .end local v20    # "isSearchWidget":Z
    .end local v21    # "spanYIndex":I
    .end local v22    # "isIdValid":Z
    .end local v32    # "allowMissingTarget":Z
    .end local v33    # "component":Landroid/content/ComponentName;
    .end local v34    # "isProviderReady":Z
    .end local v35    # "providerKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v42    # "customWidget":Z
    .end local v43    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v44    # "wasProviderReady":Z
    .restart local v5    # "spanYIndex":I
    :catch_5
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v3, p4

    move-object v5, v7

    move/from16 v42, v9

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object/from16 v27, v2

    move-object v2, v0

    .end local v5    # "spanYIndex":I
    .restart local v21    # "spanYIndex":I
    goto/16 :goto_2b

    .line 894
    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v9    # "spanXIndex":I
    .end local v10    # "optionsIndex":I
    .end local v15    # "sourceContainerIndex":I
    .end local v21    # "spanYIndex":I
    .end local v24    # "rankIndex":I
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .local v22, "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :catchall_6
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v7

    move-object/from16 v43, v14

    move-object/from16 v13, v27

    move-object/from16 v8, v31

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object/from16 v27, v22

    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    goto/16 :goto_35

    .line 874
    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v5    # "spanYIndex":I
    .restart local v9    # "spanXIndex":I
    .restart local v10    # "optionsIndex":I
    .restart local v15    # "sourceContainerIndex":I
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v24    # "rankIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    :catch_6
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v3, p4

    move-object v2, v0

    move-object v5, v7

    move/from16 v42, v9

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object/from16 v27, v22

    .end local v5    # "spanYIndex":I
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v21    # "spanYIndex":I
    goto/16 :goto_2b

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v5    # "spanYIndex":I
    .local v21, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :catch_7
    move-exception v0

    move-object/from16 v7, v21

    move/from16 v21, v5

    move-object/from16 v3, p4

    move-object v2, v0

    move-object v5, v7

    move/from16 v42, v9

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object/from16 v27, v22

    .end local v5    # "spanYIndex":I
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v21, "spanYIndex":I
    goto/16 :goto_2b

    .line 894
    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v9    # "spanXIndex":I
    .end local v10    # "optionsIndex":I
    .end local v15    # "sourceContainerIndex":I
    .end local v24    # "rankIndex":I
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .local v21, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :catchall_7
    move-exception v0

    move-object/from16 v7, p1

    move-object v2, v0

    move-object/from16 v43, v14

    move-object/from16 v13, v27

    move-object/from16 v8, v31

    move-object/from16 v9, v40

    move-object/from16 v27, v22

    .end local v21    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    goto/16 :goto_35

    .line 874
    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v5    # "spanYIndex":I
    .restart local v9    # "spanXIndex":I
    .restart local v10    # "optionsIndex":I
    .local v13, "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v15    # "sourceContainerIndex":I
    .restart local v21    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v24    # "rankIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    :catch_8
    move-exception v0

    move-object/from16 v7, v21

    move/from16 v21, v5

    move-object/from16 v3, p4

    move-object v2, v0

    move-object v5, v7

    move/from16 v42, v9

    move-object/from16 v41, v13

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object/from16 v27, v22

    .end local v5    # "spanYIndex":I
    .end local v13    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v21, "spanYIndex":I
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    goto/16 :goto_2b

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v40    # "context":Landroid/content/Context;
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .local v3, "context":Landroid/content/Context;
    .restart local v5    # "spanYIndex":I
    .restart local v13    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .local v21, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :catch_9
    move-exception v0

    move-object/from16 v7, v21

    move/from16 v21, v5

    move-object v2, v0

    move-object v5, v7

    move/from16 v42, v9

    move-object/from16 v41, v13

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v7, p1

    move-object v9, v3

    move-object/from16 v27, v22

    move-object/from16 v3, p4

    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "spanYIndex":I
    .end local v13    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v21, "spanYIndex":I
    .restart local v40    # "context":Landroid/content/Context;
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    goto/16 :goto_2b

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v40    # "context":Landroid/content/Context;
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v5    # "spanYIndex":I
    .local v7, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v13    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .local v21, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :catch_a
    move-exception v0

    move-object/from16 v39, v7

    move-object/from16 v7, v21

    move/from16 v21, v5

    move-object v2, v0

    move-object v5, v7

    move/from16 v42, v9

    move-object/from16 v41, v13

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v7, p1

    move-object v9, v3

    move-object/from16 v27, v22

    move-object/from16 v3, p4

    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "spanYIndex":I
    .end local v13    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .local v7, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v21, "spanYIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v40    # "context":Landroid/content/Context;
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    goto/16 :goto_2b

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v37    # "appWidgetProviderIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v40    # "context":Landroid/content/Context;
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v5    # "spanYIndex":I
    .local v7, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .local v8, "appWidgetProviderIndex":I
    .restart local v13    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .local v21, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :catch_b
    move-exception v0

    move-object/from16 v39, v7

    move/from16 v37, v8

    move-object/from16 v7, v21

    move/from16 v21, v5

    move-object v2, v0

    move-object v5, v7

    move/from16 v42, v9

    move-object/from16 v41, v13

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v7, p1

    move-object v9, v3

    move-object/from16 v27, v22

    move-object/from16 v3, p4

    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "spanYIndex":I
    .end local v8    # "appWidgetProviderIndex":I
    .end local v13    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .local v7, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v21, "spanYIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v40    # "context":Landroid/content/Context;
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    goto/16 :goto_2b

    .line 894
    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v9    # "spanXIndex":I
    .end local v10    # "optionsIndex":I
    .end local v15    # "sourceContainerIndex":I
    .end local v24    # "rankIndex":I
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v40    # "context":Landroid/content/Context;
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v3    # "context":Landroid/content/Context;
    .local v21, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :catchall_8
    move-exception v0

    move-object/from16 v7, p1

    move-object v2, v0

    move-object v9, v3

    move-object/from16 v43, v14

    move-object/from16 v13, v27

    move-object/from16 v8, v31

    move-object/from16 v27, v22

    .end local v3    # "context":Landroid/content/Context;
    .end local v21    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v40    # "context":Landroid/content/Context;
    goto/16 :goto_35

    .line 874
    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v40    # "context":Landroid/content/Context;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v5    # "spanYIndex":I
    .local v6, "appWidgetIdIndex":I
    .local v7, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v8    # "appWidgetProviderIndex":I
    .restart local v9    # "spanXIndex":I
    .restart local v10    # "optionsIndex":I
    .restart local v13    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v15    # "sourceContainerIndex":I
    .restart local v21    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v24    # "rankIndex":I
    :catch_c
    move-exception v0

    move/from16 v38, v6

    move-object/from16 v39, v7

    move/from16 v37, v8

    move-object/from16 v7, v21

    move/from16 v21, v5

    move-object v2, v0

    move-object v5, v7

    move/from16 v42, v9

    move-object/from16 v41, v13

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v7, p1

    move-object v9, v3

    move-object/from16 v27, v22

    move-object/from16 v3, p4

    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "spanYIndex":I
    .end local v6    # "appWidgetIdIndex":I
    .end local v8    # "appWidgetProviderIndex":I
    .end local v13    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .local v7, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v21, "spanYIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v40    # "context":Landroid/content/Context;
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    goto/16 :goto_2b

    .line 700
    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v40    # "context":Landroid/content/Context;
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v5    # "spanYIndex":I
    .restart local v6    # "appWidgetIdIndex":I
    .local v7, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v8    # "appWidgetProviderIndex":I
    .restart local v13    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .local v21, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v32    # "allowMissingTarget":Z
    :pswitch_2
    move-object/from16 v40, v3

    move/from16 v38, v6

    move-object/from16 v39, v7

    move/from16 v37, v8

    move-object/from16 v41, v13

    move-object/from16 v7, v21

    move-object/from16 v2, v22

    move/from16 v21, v5

    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "spanYIndex":I
    .end local v6    # "appWidgetIdIndex":I
    .end local v8    # "appWidgetProviderIndex":I
    .end local v13    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .local v7, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v21, "spanYIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v40    # "context":Landroid/content/Context;
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    :try_start_27
    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v5, v4, Lcom/android/launcher3/model/LoaderCursor;->id:I

    invoke-virtual {v3, v5}, Lcom/android/launcher3/model/BgDataModel;->findOrMakeFolder(I)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v3

    .line 701
    .local v3, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    invoke-virtual {v4, v3}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 704
    iget v5, v4, Lcom/android/launcher3/model/LoaderCursor;->titleIndex:I

    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 705
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/launcher3/model/data/FolderInfo;->spanX:I

    .line 706
    iput v5, v3, Lcom/android/launcher3/model/data/FolderInfo;->spanY:I

    .line 707
    invoke-virtual {v4, v10}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    .line 710
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    .line 712
    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_d
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    move-object/from16 v6, p4

    :try_start_28
    invoke-virtual {v4, v3, v5, v6}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderMemoryLogger;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_e
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    .line 713
    move-object v3, v6

    move-object v5, v7

    move/from16 v42, v9

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object/from16 v27, v2

    goto/16 :goto_2a

    .line 894
    .end local v3    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    .end local v9    # "spanXIndex":I
    .end local v10    # "optionsIndex":I
    .end local v15    # "sourceContainerIndex":I
    .end local v21    # "spanYIndex":I
    .end local v24    # "rankIndex":I
    .end local v32    # "allowMissingTarget":Z
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    :catchall_9
    move-exception v0

    move-object/from16 v6, p4

    move-object/from16 v21, v7

    move-object/from16 v43, v14

    move-object/from16 v13, v27

    move-object/from16 v8, v31

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object/from16 v27, v2

    move-object v2, v0

    goto/16 :goto_35

    .line 874
    .restart local v9    # "spanXIndex":I
    .restart local v10    # "optionsIndex":I
    .restart local v15    # "sourceContainerIndex":I
    .restart local v21    # "spanYIndex":I
    .restart local v24    # "rankIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    :catch_d
    move-exception v0

    move-object/from16 v3, p4

    move-object v5, v7

    move/from16 v42, v9

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object/from16 v27, v2

    move-object v2, v0

    goto/16 :goto_2b

    .line 468
    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v40    # "context":Landroid/content/Context;
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .local v3, "context":Landroid/content/Context;
    .restart local v5    # "spanYIndex":I
    .restart local v6    # "appWidgetIdIndex":I
    .local v7, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v8    # "appWidgetProviderIndex":I
    .restart local v13    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .local v21, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v32    # "allowMissingTarget":Z
    :pswitch_3
    move-object/from16 v40, v3

    move/from16 v38, v6

    move-object/from16 v39, v7

    move/from16 v37, v8

    move-object/from16 v41, v13

    move-object/from16 v7, v21

    move-object v6, v2

    move/from16 v21, v5

    move-object/from16 v2, v22

    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "spanYIndex":I
    .end local v6    # "appWidgetIdIndex":I
    .end local v8    # "appWidgetProviderIndex":I
    .end local v13    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .local v7, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v21, "spanYIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v40    # "context":Landroid/content/Context;
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    :try_start_29
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v3
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1d

    .line 469
    .local v3, "intent":Landroid/content/Intent;
    if-nez v3, :cond_22

    .line 470
    :try_start_2a
    const-string v5, "Invalid or null intent"

    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_e
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    .line 471
    move-object/from16 v22, v2

    move-object v2, v6

    move/from16 v5, v21

    move/from16 v8, v37

    move/from16 v6, v38

    move-object/from16 v3, v40

    move-object/from16 v13, v41

    move-object/from16 v21, v7

    move-object/from16 v7, v39

    goto/16 :goto_6

    .line 894
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v9    # "spanXIndex":I
    .end local v10    # "optionsIndex":I
    .end local v15    # "sourceContainerIndex":I
    .end local v21    # "spanYIndex":I
    .end local v24    # "rankIndex":I
    .end local v32    # "allowMissingTarget":Z
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    :catchall_a
    move-exception v0

    move-object/from16 v21, v7

    move-object/from16 v43, v14

    move-object/from16 v13, v27

    move-object/from16 v8, v31

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object/from16 v27, v2

    move-object v2, v0

    goto/16 :goto_35

    .line 874
    .restart local v9    # "spanXIndex":I
    .restart local v10    # "optionsIndex":I
    .restart local v15    # "sourceContainerIndex":I
    .restart local v21    # "spanYIndex":I
    .restart local v24    # "rankIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    :catch_e
    move-exception v0

    move-object v3, v6

    move-object v5, v7

    move/from16 v42, v9

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object/from16 v27, v2

    move-object v2, v0

    goto/16 :goto_2b

    .line 474
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v32    # "allowMissingTarget":Z
    :cond_22
    :try_start_2b
    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-wide v11, v4, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v5, v11, v12}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(J)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 475
    const/16 v5, 0x8

    goto :goto_17

    :cond_23
    const/4 v5, 0x0

    .line 476
    .local v5, "disabledState":I
    :goto_17
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_29
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1d

    .line 477
    .local v8, "cn":Landroid/content/ComponentName;
    if-nez v8, :cond_24

    :try_start_2c
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v11
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_e
    .catchall {:try_start_2c .. :try_end_2c} :catchall_a

    goto :goto_18

    :cond_24
    :try_start_2d
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 479
    .local v11, "targetPkg":Ljava/lang/String;
    :goto_18
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_29
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1d

    if-eqz v12, :cond_25

    :try_start_2e
    iget v12, v4, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_25

    .line 481
    const-string v12, "Only legacy shortcuts can have null package"

    invoke-virtual {v4, v12}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_a

    .line 482
    move-object/from16 v22, v2

    move-object v2, v6

    move/from16 v5, v21

    move/from16 v8, v37

    move/from16 v6, v38

    move-object/from16 v3, v40

    move-object/from16 v13, v41

    move-object/from16 v21, v7

    move-object/from16 v7, v39

    goto/16 :goto_6

    .line 487
    :cond_25
    :try_start_2f
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_29
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1d

    if-nez v12, :cond_27

    :try_start_30
    iget-object v12, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v13, v4, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    .line 488
    invoke-virtual {v12, v11, v13}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v12
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_e
    .catchall {:try_start_30 .. :try_end_30} :catchall_a

    if-eqz v12, :cond_26

    goto :goto_19

    :cond_26
    const/4 v12, 0x0

    goto :goto_1a

    :cond_27
    :goto_19
    const/4 v12, 0x1

    .line 491
    .local v12, "validTarget":Z
    :goto_1a
    if-eqz v8, :cond_2b

    if-eqz v12, :cond_2b

    :try_start_31
    iget v13, v4, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    move-object/from16 v36, v3

    const/4 v3, 0x6

    .end local v3    # "intent":Landroid/content/Intent;
    .local v36, "intent":Landroid/content/Intent;
    if-eq v13, v3, :cond_2a

    .line 497
    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v13, v4, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v8, v13}, Landroid/content/pm/LauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v3
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_11
    .catchall {:try_start_31 .. :try_end_31} :catchall_c

    if-eqz v3, :cond_28

    .line 499
    :try_start_32
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_e
    .catchall {:try_start_32 .. :try_end_32} :catchall_a

    move/from16 v42, v9

    move-object/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v13, v27

    move-object/from16 v27, v8

    goto/16 :goto_1b

    .line 502
    :cond_28
    :try_start_33
    iget-object v3, v4, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_11
    .catchall {:try_start_33 .. :try_end_33} :catchall_c

    move-object/from16 v13, v27

    .end local v27    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .local v13, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    :try_start_34
    invoke-virtual {v13, v11, v3}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v3

    .line 503
    .end local v36    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    if-eqz v3, :cond_29

    .line 504
    move-object/from16 v27, v8

    const/4 v8, 0x0

    .end local v8    # "cn":Landroid/content/ComponentName;
    .local v27, "cn":Landroid/content/ComponentName;
    iput v8, v4, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 505
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v8
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_10
    .catchall {:try_start_34 .. :try_end_34} :catchall_b

    move/from16 v42, v9

    .end local v9    # "spanXIndex":I
    .local v42, "spanXIndex":I
    :try_start_35
    const-string v9, "intent"
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_f
    .catchall {:try_start_35 .. :try_end_35} :catchall_b

    .line 507
    move-object/from16 v43, v14

    move/from16 v44, v15

    const/4 v14, 0x0

    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v15    # "sourceContainerIndex":I
    .local v43, "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .local v44, "sourceContainerIndex":I
    :try_start_36
    invoke-virtual {v3, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v15

    .line 505
    invoke-virtual {v8, v9, v15}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v8

    .line 507
    invoke-virtual {v8}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    .line 508
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .end local v27    # "cn":Landroid/content/ComponentName;
    .restart local v8    # "cn":Landroid/content/ComponentName;
    goto/16 :goto_1c

    .line 874
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "disabledState":I
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v11    # "targetPkg":Ljava/lang/String;
    .end local v12    # "validTarget":Z
    .end local v32    # "allowMissingTarget":Z
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v44    # "sourceContainerIndex":I
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v15    # "sourceContainerIndex":I
    :catch_f
    move-exception v0

    move-object/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v27, v2

    move-object v3, v6

    move-object v5, v7

    move/from16 v6, v24

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object v2, v0

    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v15    # "sourceContainerIndex":I
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v44    # "sourceContainerIndex":I
    goto/16 :goto_2b

    .line 510
    .end local v42    # "spanXIndex":I
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v44    # "sourceContainerIndex":I
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "disabledState":I
    .restart local v8    # "cn":Landroid/content/ComponentName;
    .restart local v9    # "spanXIndex":I
    .restart local v11    # "targetPkg":Ljava/lang/String;
    .restart local v12    # "validTarget":Z
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v15    # "sourceContainerIndex":I
    .restart local v32    # "allowMissingTarget":Z
    :cond_29
    move-object/from16 v27, v8

    move/from16 v42, v9

    move-object/from16 v43, v14

    move/from16 v44, v15

    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v9    # "spanXIndex":I
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v15    # "sourceContainerIndex":I
    .restart local v27    # "cn":Landroid/content/ComponentName;
    .restart local v42    # "spanXIndex":I
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v44    # "sourceContainerIndex":I
    const-string v8, "Unable to find a launch target"

    invoke-virtual {v4, v8}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_12
    .catchall {:try_start_36 .. :try_end_36} :catchall_d

    .line 511
    move-object/from16 v22, v2

    move-object v2, v6

    move-object/from16 v27, v13

    move/from16 v5, v21

    move/from16 v8, v37

    move/from16 v6, v38

    move-object/from16 v3, v40

    move-object/from16 v13, v41

    move/from16 v9, v42

    move-object/from16 v14, v43

    move/from16 v15, v44

    move-object/from16 v21, v7

    move-object/from16 v7, v39

    goto/16 :goto_6

    .line 894
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "disabledState":I
    .end local v10    # "optionsIndex":I
    .end local v11    # "targetPkg":Ljava/lang/String;
    .end local v12    # "validTarget":Z
    .end local v21    # "spanYIndex":I
    .end local v24    # "rankIndex":I
    .end local v27    # "cn":Landroid/content/ComponentName;
    .end local v32    # "allowMissingTarget":Z
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v44    # "sourceContainerIndex":I
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    :catchall_b
    move-exception v0

    move-object/from16 v43, v14

    move-object/from16 v27, v2

    move-object/from16 v21, v7

    move-object/from16 v8, v31

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object v2, v0

    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    goto/16 :goto_35

    .line 874
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v9    # "spanXIndex":I
    .restart local v10    # "optionsIndex":I
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v15    # "sourceContainerIndex":I
    .restart local v21    # "spanYIndex":I
    .restart local v24    # "rankIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    :catch_10
    move-exception v0

    move/from16 v42, v9

    move-object/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v27, v2

    move-object v3, v6

    move-object v5, v7

    move/from16 v6, v24

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object v2, v0

    .end local v9    # "spanXIndex":I
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v15    # "sourceContainerIndex":I
    .restart local v42    # "spanXIndex":I
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v44    # "sourceContainerIndex":I
    goto/16 :goto_2b

    .line 491
    .end local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v42    # "spanXIndex":I
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v44    # "sourceContainerIndex":I
    .restart local v5    # "disabledState":I
    .restart local v8    # "cn":Landroid/content/ComponentName;
    .restart local v9    # "spanXIndex":I
    .restart local v11    # "targetPkg":Ljava/lang/String;
    .restart local v12    # "validTarget":Z
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v15    # "sourceContainerIndex":I
    .local v27, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v32    # "allowMissingTarget":Z
    .restart local v36    # "intent":Landroid/content/Intent;
    :cond_2a
    move/from16 v42, v9

    move-object/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v13, v27

    move-object/from16 v27, v8

    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v9    # "spanXIndex":I
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v15    # "sourceContainerIndex":I
    .restart local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .local v27, "cn":Landroid/content/ComponentName;
    .restart local v42    # "spanXIndex":I
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v44    # "sourceContainerIndex":I
    goto :goto_1b

    .line 894
    .end local v5    # "disabledState":I
    .end local v10    # "optionsIndex":I
    .end local v11    # "targetPkg":Ljava/lang/String;
    .end local v12    # "validTarget":Z
    .end local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v21    # "spanYIndex":I
    .end local v24    # "rankIndex":I
    .end local v32    # "allowMissingTarget":Z
    .end local v36    # "intent":Landroid/content/Intent;
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v44    # "sourceContainerIndex":I
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .local v27, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    :catchall_c
    move-exception v0

    move-object/from16 v43, v14

    move-object/from16 v13, v27

    move-object/from16 v27, v2

    move-object/from16 v21, v7

    move-object/from16 v8, v31

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object v2, v0

    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v27    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    goto/16 :goto_35

    .line 874
    .end local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v9    # "spanXIndex":I
    .restart local v10    # "optionsIndex":I
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v15    # "sourceContainerIndex":I
    .restart local v21    # "spanYIndex":I
    .restart local v24    # "rankIndex":I
    .restart local v27    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    :catch_11
    move-exception v0

    move/from16 v42, v9

    move-object/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v13, v27

    move-object/from16 v27, v2

    move-object v3, v6

    move-object v5, v7

    move/from16 v6, v24

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object v2, v0

    .end local v9    # "spanXIndex":I
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v15    # "sourceContainerIndex":I
    .end local v27    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v42    # "spanXIndex":I
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v44    # "sourceContainerIndex":I
    goto/16 :goto_2b

    .line 491
    .end local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v42    # "spanXIndex":I
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v44    # "sourceContainerIndex":I
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "disabledState":I
    .restart local v8    # "cn":Landroid/content/ComponentName;
    .restart local v9    # "spanXIndex":I
    .restart local v11    # "targetPkg":Ljava/lang/String;
    .restart local v12    # "validTarget":Z
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v15    # "sourceContainerIndex":I
    .restart local v27    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v32    # "allowMissingTarget":Z
    :cond_2b
    move-object/from16 v36, v3

    move/from16 v42, v9

    move-object/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v13, v27

    move-object/from16 v27, v8

    .line 518
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v9    # "spanXIndex":I
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v15    # "sourceContainerIndex":I
    .restart local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .local v27, "cn":Landroid/content/ComponentName;
    .restart local v36    # "intent":Landroid/content/Intent;
    .restart local v42    # "spanXIndex":I
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v44    # "sourceContainerIndex":I
    :goto_1b
    move-object/from16 v8, v27

    move-object/from16 v3, v36

    .end local v27    # "cn":Landroid/content/ComponentName;
    .end local v36    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v8    # "cn":Landroid/content/ComponentName;
    :goto_1c
    :try_start_37
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_28
    .catchall {:try_start_37 .. :try_end_37} :catchall_1c

    if-nez v9, :cond_31

    if-nez v12, :cond_31

    .line 522
    :try_start_38
    iget v9, v4, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v9, :cond_2e

    .line 525
    const-string v9, "LoaderTask"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "package not yet restored: "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v9, v4, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v11, v9}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 528
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v14

    if-eqz v14, :cond_2c

    goto/16 :goto_1d

    .line 530
    :cond_2c
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 532
    iget v9, v4, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    const/4 v14, 0x4

    or-int/2addr v9, v14

    iput v9, v4, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 533
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v9

    const-string v14, "restored"

    iget v15, v4, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 534
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 533
    invoke-virtual {v9, v14, v15}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v9

    .line 534
    invoke-virtual {v9}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    goto/16 :goto_1d

    .line 536
    :cond_2d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unrestored app removed: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    .line 537
    move-object/from16 v22, v2

    move-object v2, v6

    move-object/from16 v27, v13

    move/from16 v5, v21

    move/from16 v8, v37

    move/from16 v6, v38

    move-object/from16 v3, v40

    move-object/from16 v13, v41

    move/from16 v9, v42

    move-object/from16 v14, v43

    move/from16 v15, v44

    move-object/from16 v21, v7

    move-object/from16 v7, v39

    goto/16 :goto_6

    .line 539
    :cond_2e
    iget-object v9, v4, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v13, v11, v9}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppOnSdcard(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 541
    or-int/lit8 v5, v5, 0x2

    .line 543
    const/4 v9, 0x1

    .end local v32    # "allowMissingTarget":Z
    .local v9, "allowMissingTarget":Z
    goto/16 :goto_1e

    .line 544
    .end local v9    # "allowMissingTarget":Z
    .restart local v32    # "allowMissingTarget":Z
    :cond_2f
    if-nez v26, :cond_30

    .line 547
    const-string v9, "LoaderTask"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Missing pkg, will check later: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v9, v1, Lcom/android/launcher3/model/LoaderTask;->mPendingPackages:Ljava/util/Set;

    new-instance v14, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v15, v4, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-direct {v14, v11, v15}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v9, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 550
    const/4 v9, 0x1

    .end local v32    # "allowMissingTarget":Z
    .restart local v9    # "allowMissingTarget":Z
    goto :goto_1e

    .line 553
    .end local v9    # "allowMissingTarget":Z
    .restart local v32    # "allowMissingTarget":Z
    :cond_30
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid package removed: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_12
    .catchall {:try_start_38 .. :try_end_38} :catchall_d

    .line 554
    move-object/from16 v22, v2

    move-object v2, v6

    move-object/from16 v27, v13

    move/from16 v5, v21

    move/from16 v8, v37

    move/from16 v6, v38

    move-object/from16 v3, v40

    move-object/from16 v13, v41

    move/from16 v9, v42

    move-object/from16 v14, v43

    move/from16 v15, v44

    move-object/from16 v21, v7

    move-object/from16 v7, v39

    goto/16 :goto_6

    .line 894
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "disabledState":I
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v10    # "optionsIndex":I
    .end local v11    # "targetPkg":Ljava/lang/String;
    .end local v12    # "validTarget":Z
    .end local v21    # "spanYIndex":I
    .end local v24    # "rankIndex":I
    .end local v32    # "allowMissingTarget":Z
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v44    # "sourceContainerIndex":I
    :catchall_d
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v21, v7

    move-object/from16 v8, v31

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object v2, v0

    goto/16 :goto_35

    .line 874
    .restart local v10    # "optionsIndex":I
    .restart local v21    # "spanYIndex":I
    .restart local v24    # "rankIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v44    # "sourceContainerIndex":I
    :catch_12
    move-exception v0

    move-object/from16 v27, v2

    move-object v3, v6

    move-object v5, v7

    move/from16 v6, v24

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object v2, v0

    goto/16 :goto_2b

    .line 558
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "disabledState":I
    .restart local v8    # "cn":Landroid/content/ComponentName;
    .restart local v11    # "targetPkg":Ljava/lang/String;
    .restart local v12    # "validTarget":Z
    .restart local v32    # "allowMissingTarget":Z
    :cond_31
    :goto_1d
    move/from16 v9, v32

    .end local v32    # "allowMissingTarget":Z
    .restart local v9    # "allowMissingTarget":Z
    :goto_1e
    :try_start_39
    iget v14, v4, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_28
    .catchall {:try_start_39 .. :try_end_39} :catchall_1c

    const/16 v15, 0x8

    and-int/2addr v14, v15

    if-eqz v14, :cond_32

    .line 559
    const/4 v12, 0x0

    .line 562
    :cond_32
    if-eqz v12, :cond_33

    .line 565
    :try_start_3a
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_12
    .catchall {:try_start_3a .. :try_end_3a} :catchall_d

    .line 568
    :cond_33
    :try_start_3b
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v14

    if-nez v14, :cond_34

    const/4 v14, 0x1

    goto :goto_1f

    :cond_34
    const/4 v14, 0x0

    .line 570
    .local v14, "useLowResIcon":Z
    :goto_1f
    iget v15, v4, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_28
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1c

    if-eqz v15, :cond_36

    .line 572
    :try_start_3c
    iget v15, v4, Lcom/android/launcher3/model/LoaderCursor;->container:I

    move-object/from16 v34, v8

    const/16 v8, -0x66

    .end local v8    # "cn":Landroid/content/ComponentName;
    .local v34, "cn":Landroid/content/ComponentName;
    if-ne v15, v8, :cond_35

    .line 573
    invoke-virtual {v4, v3}, Lcom/android/launcher3/model/LoaderCursor;->getRestoredAppInfo(Landroid/content/Intent;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v8

    move-object/from16 v32, v7

    move/from16 v20, v9

    move-object/from16 v36, v31

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move/from16 v31, v12

    .local v8, "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    goto/16 :goto_23

    .line 575
    .end local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    :cond_35
    invoke-virtual {v4, v3}, Lcom/android/launcher3/model/LoaderCursor;->getRestoredItemInfo(Landroid/content/Intent;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v8
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_12
    .catchall {:try_start_3c .. :try_end_3c} :catchall_d

    move-object/from16 v32, v7

    move/from16 v20, v9

    move-object/from16 v36, v31

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move/from16 v31, v12

    .restart local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    goto/16 :goto_23

    .line 577
    .end local v34    # "cn":Landroid/content/ComponentName;
    .local v8, "cn":Landroid/content/ComponentName;
    :cond_36
    move-object/from16 v34, v8

    .end local v8    # "cn":Landroid/content/ComponentName;
    .restart local v34    # "cn":Landroid/content/ComponentName;
    :try_start_3d
    iget v8, v4, Lcom/android/launcher3/model/LoaderCursor;->itemType:I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_28
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1c

    if-nez v8, :cond_39

    .line 579
    :try_start_3e
    iget v8, v4, Lcom/android/launcher3/model/LoaderCursor;->container:I

    const/16 v15, -0x66

    if-ne v8, v15, :cond_37

    .line 580
    iget-object v8, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_14
    .catchall {:try_start_3e .. :try_end_3e} :catchall_f

    move-object v15, v7

    .end local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v15, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    :try_start_3f
    iget-wide v6, v4, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    .line 581
    invoke-virtual {v8, v6, v7}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(J)Z

    move-result v6

    .line 580
    invoke-virtual {v4, v3, v9, v14, v6}, Lcom/android/launcher3/model/LoaderCursor;->getAppInfo(Landroid/content/Intent;ZZZ)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v6

    move-object v8, v6

    move-object/from16 v7, p1

    move/from16 v20, v9

    move-object/from16 v32, v15

    move-object/from16 v36, v31

    move-object/from16 v9, v40

    move/from16 v31, v12

    .local v8, "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    goto/16 :goto_23

    .line 583
    .end local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    :cond_37
    move-object v15, v7

    .end local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    sget-object v6, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BULK_WORKSPACE_ICON_LOADING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 586
    invoke-virtual {v6}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v6

    if-nez v6, :cond_38

    const/4 v6, 0x1

    goto :goto_20

    :cond_38
    const/4 v6, 0x0

    .line 583
    :goto_20
    invoke-virtual {v4, v3, v9, v14, v6}, Lcom/android/launcher3/model/LoaderCursor;->getAppShortcutInfo(Landroid/content/Intent;ZZZ)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v6
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_13
    .catchall {:try_start_3f .. :try_end_3f} :catchall_e

    move-object v8, v6

    move-object/from16 v7, p1

    move/from16 v20, v9

    move-object/from16 v32, v15

    move-object/from16 v36, v31

    move-object/from16 v9, v40

    move/from16 v31, v12

    .restart local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    goto/16 :goto_23

    .line 894
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "disabledState":I
    .end local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local v9    # "allowMissingTarget":Z
    .end local v10    # "optionsIndex":I
    .end local v11    # "targetPkg":Ljava/lang/String;
    .end local v12    # "validTarget":Z
    .end local v14    # "useLowResIcon":Z
    .end local v21    # "spanYIndex":I
    .end local v24    # "rankIndex":I
    .end local v34    # "cn":Landroid/content/ComponentName;
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v44    # "sourceContainerIndex":I
    :catchall_e
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v27, v2

    move-object/from16 v21, v15

    move-object/from16 v8, v31

    move-object/from16 v9, v40

    move-object v2, v0

    goto/16 :goto_35

    .line 874
    .restart local v10    # "optionsIndex":I
    .restart local v21    # "spanYIndex":I
    .restart local v24    # "rankIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v44    # "sourceContainerIndex":I
    :catch_13
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v3, p4

    move-object/from16 v27, v2

    move-object v5, v15

    move/from16 v6, v24

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object v2, v0

    goto/16 :goto_2b

    .line 894
    .end local v10    # "optionsIndex":I
    .end local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v21    # "spanYIndex":I
    .end local v24    # "rankIndex":I
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v44    # "sourceContainerIndex":I
    .restart local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    :catchall_f
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v21, v7

    move-object/from16 v8, v31

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object v2, v0

    .end local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    goto/16 :goto_35

    .line 874
    .end local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v10    # "optionsIndex":I
    .restart local v21    # "spanYIndex":I
    .restart local v24    # "rankIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v44    # "sourceContainerIndex":I
    :catch_14
    move-exception v0

    move-object/from16 v3, p4

    move-object/from16 v27, v2

    move-object v5, v7

    move/from16 v6, v24

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object v2, v0

    .end local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    goto/16 :goto_2b

    .line 588
    .end local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "disabledState":I
    .restart local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v9    # "allowMissingTarget":Z
    .restart local v11    # "targetPkg":Ljava/lang/String;
    .restart local v12    # "validTarget":Z
    .restart local v14    # "useLowResIcon":Z
    .restart local v34    # "cn":Landroid/content/ComponentName;
    :cond_39
    move-object v15, v7

    .end local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    :try_start_40
    iget v6, v4, Lcom/android/launcher3/model/LoaderCursor;->itemType:I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_27
    .catchall {:try_start_40 .. :try_end_40} :catchall_1b

    const/4 v7, 0x6

    if-ne v6, v7, :cond_3d

    .line 591
    :try_start_41
    iget-object v6, v4, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-static {v3, v6}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v6

    .line 592
    .local v6, "key":Lcom/android/launcher3/shortcuts/ShortcutKey;
    iget-wide v7, v4, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_1b
    .catchall {:try_start_41 .. :try_end_41} :catchall_15

    move/from16 v20, v9

    move-object/from16 v9, v41

    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .local v9, "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .local v20, "allowMissingTarget":Z
    :try_start_42
    invoke-virtual {v9, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_1a
    .catchall {:try_start_42 .. :try_end_42} :catchall_15

    if-eqz v7, :cond_3c

    .line 593
    nop

    .line 594
    move-object/from16 v7, v31

    .end local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .local v7, "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    :try_start_43
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_19
    .catchall {:try_start_43 .. :try_end_43} :catchall_14

    .line 595
    .local v8, "pinnedShortcut":Landroid/content/pm/ShortcutInfo;
    if-nez v8, :cond_3a

    .line 597
    move-object/from16 v29, v6

    .end local v6    # "key":Lcom/android/launcher3/shortcuts/ShortcutKey;
    .local v29, "key":Lcom/android/launcher3/shortcuts/ShortcutKey;
    :try_start_44
    const-string v6, "Pinned shortcut not found"

    invoke-virtual {v4, v6}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_15
    .catchall {:try_start_44 .. :try_end_44} :catchall_10

    .line 598
    move-object/from16 v22, v2

    move-object/from16 v31, v7

    move-object/from16 v27, v13

    move/from16 v5, v21

    move/from16 v8, v37

    move/from16 v6, v38

    move-object/from16 v7, v39

    move-object/from16 v3, v40

    move-object/from16 v14, v43

    move-object/from16 v2, p4

    move-object v13, v9

    move-object/from16 v21, v15

    move/from16 v9, v42

    move/from16 v15, v44

    goto/16 :goto_6

    .line 894
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "disabledState":I
    .end local v8    # "pinnedShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v9    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v10    # "optionsIndex":I
    .end local v11    # "targetPkg":Ljava/lang/String;
    .end local v12    # "validTarget":Z
    .end local v14    # "useLowResIcon":Z
    .end local v20    # "allowMissingTarget":Z
    .end local v21    # "spanYIndex":I
    .end local v24    # "rankIndex":I
    .end local v29    # "key":Lcom/android/launcher3/shortcuts/ShortcutKey;
    .end local v34    # "cn":Landroid/content/ComponentName;
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v42    # "spanXIndex":I
    .end local v44    # "sourceContainerIndex":I
    :catchall_10
    move-exception v0

    move-object/from16 v27, v2

    move-object v8, v7

    move-object/from16 v21, v15

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object v2, v0

    goto/16 :goto_35

    .line 874
    .restart local v9    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v10    # "optionsIndex":I
    .restart local v21    # "spanYIndex":I
    .restart local v24    # "rankIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v44    # "sourceContainerIndex":I
    :catch_15
    move-exception v0

    move-object/from16 v3, p4

    move-object/from16 v27, v2

    move-object/from16 v36, v7

    move-object/from16 v41, v9

    move-object v5, v15

    move/from16 v6, v24

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object v2, v0

    goto/16 :goto_2b

    .line 600
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "disabledState":I
    .restart local v6    # "key":Lcom/android/launcher3/shortcuts/ShortcutKey;
    .restart local v8    # "pinnedShortcut":Landroid/content/pm/ShortcutInfo;
    .restart local v11    # "targetPkg":Ljava/lang/String;
    .restart local v12    # "validTarget":Z
    .restart local v14    # "useLowResIcon":Z
    .restart local v20    # "allowMissingTarget":Z
    .restart local v34    # "cn":Landroid/content/ComponentName;
    :cond_3a
    move-object/from16 v29, v6

    .end local v6    # "key":Lcom/android/launcher3/shortcuts/ShortcutKey;
    .restart local v29    # "key":Lcom/android/launcher3/shortcuts/ShortcutKey;
    :try_start_45
    new-instance v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_19
    .catchall {:try_start_45 .. :try_end_45} :catchall_14

    move-object/from16 v41, v9

    move-object/from16 v9, v40

    .end local v40    # "context":Landroid/content/Context;
    .local v9, "context":Landroid/content/Context;
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    :try_start_46
    invoke-direct {v6, v8, v9}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    .line 603
    .local v6, "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    move/from16 v31, v12

    .end local v12    # "validTarget":Z
    .local v31, "validTarget":Z
    iget-object v12, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_18
    .catchall {:try_start_46 .. :try_end_46} :catchall_13

    move-object/from16 v32, v15

    .end local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v32, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    :try_start_47
    move-object v15, v6

    check-cast v15, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_17
    .catchall {:try_start_47 .. :try_end_47} :catchall_12

    move-object/from16 v36, v7

    .end local v7    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .local v36, "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    :try_start_48
    new-instance v7, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda1;

    invoke-direct {v7, v4}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/LoaderCursor;)V

    invoke-virtual {v12, v15, v8, v7}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Predicate;)V

    .line 605
    nop

    .line 606
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v7

    iget-object v12, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    .line 605
    invoke-virtual {v13, v7, v12}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 607
    iget v7, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/4 v12, 0x4

    or-int/2addr v7, v12

    iput v7, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    .line 609
    :cond_3b
    invoke-virtual {v6}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getIntent()Landroid/content/Intent;

    move-result-object v7
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_16
    .catchall {:try_start_48 .. :try_end_48} :catchall_11

    move-object v3, v7

    .line 610
    move-object/from16 v7, p1

    :try_start_49
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    move-object v8, v6

    .end local v8    # "pinnedShortcut":Landroid/content/pm/ShortcutInfo;
    goto/16 :goto_21

    .line 894
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "disabledState":I
    .end local v6    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local v10    # "optionsIndex":I
    .end local v11    # "targetPkg":Ljava/lang/String;
    .end local v14    # "useLowResIcon":Z
    .end local v20    # "allowMissingTarget":Z
    .end local v21    # "spanYIndex":I
    .end local v24    # "rankIndex":I
    .end local v29    # "key":Lcom/android/launcher3/shortcuts/ShortcutKey;
    .end local v31    # "validTarget":Z
    .end local v34    # "cn":Landroid/content/ComponentName;
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v44    # "sourceContainerIndex":I
    :catchall_11
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v27, v2

    move-object/from16 v21, v32

    move-object/from16 v8, v36

    move-object v2, v0

    goto/16 :goto_35

    .line 874
    .restart local v10    # "optionsIndex":I
    .restart local v21    # "spanYIndex":I
    .restart local v24    # "rankIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v44    # "sourceContainerIndex":I
    :catch_16
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v3, p4

    move-object/from16 v27, v2

    move/from16 v6, v24

    move-object/from16 v5, v32

    move-object/from16 v12, v39

    move-object v2, v0

    goto/16 :goto_2b

    .line 894
    .end local v10    # "optionsIndex":I
    .end local v21    # "spanYIndex":I
    .end local v24    # "rankIndex":I
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v44    # "sourceContainerIndex":I
    .restart local v7    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    :catchall_12
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v7, p1

    move-object/from16 v27, v2

    move-object/from16 v21, v32

    move-object/from16 v8, v36

    move-object v2, v0

    .end local v7    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    goto/16 :goto_35

    .line 874
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v7    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v10    # "optionsIndex":I
    .restart local v21    # "spanYIndex":I
    .restart local v24    # "rankIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v44    # "sourceContainerIndex":I
    :catch_17
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v7, p1

    move-object/from16 v3, p4

    move-object/from16 v27, v2

    move/from16 v6, v24

    move-object/from16 v5, v32

    move-object/from16 v12, v39

    move-object v2, v0

    .end local v7    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    goto/16 :goto_2b

    .line 894
    .end local v10    # "optionsIndex":I
    .end local v21    # "spanYIndex":I
    .end local v24    # "rankIndex":I
    .end local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v44    # "sourceContainerIndex":I
    .restart local v7    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    :catchall_13
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v7, p1

    move-object/from16 v27, v2

    move-object/from16 v21, v15

    move-object/from16 v8, v36

    move-object v2, v0

    .end local v7    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    goto/16 :goto_35

    .line 874
    .end local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v7    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v10    # "optionsIndex":I
    .restart local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v21    # "spanYIndex":I
    .restart local v24    # "rankIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v44    # "sourceContainerIndex":I
    :catch_18
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v7, p1

    move-object/from16 v3, p4

    move-object/from16 v27, v2

    move-object v5, v15

    move/from16 v6, v24

    move-object/from16 v12, v39

    move-object v2, v0

    .end local v7    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    goto/16 :goto_2b

    .line 894
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "optionsIndex":I
    .end local v21    # "spanYIndex":I
    .end local v24    # "rankIndex":I
    .end local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v44    # "sourceContainerIndex":I
    .restart local v7    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v40    # "context":Landroid/content/Context;
    :catchall_14
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object/from16 v27, v2

    move-object/from16 v21, v15

    move-object/from16 v8, v36

    move-object v2, v0

    .end local v7    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v40    # "context":Landroid/content/Context;
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    goto/16 :goto_35

    .line 874
    .end local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v7    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .local v9, "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v10    # "optionsIndex":I
    .restart local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v21    # "spanYIndex":I
    .restart local v24    # "rankIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v40    # "context":Landroid/content/Context;
    .restart local v42    # "spanXIndex":I
    .restart local v44    # "sourceContainerIndex":I
    :catch_19
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v41, v9

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object/from16 v3, p4

    move-object/from16 v27, v2

    move-object v5, v15

    move/from16 v6, v24

    move-object/from16 v12, v39

    move-object v2, v0

    .end local v7    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v40    # "context":Landroid/content/Context;
    .local v9, "context":Landroid/content/Context;
    .restart local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    goto/16 :goto_2b

    .line 613
    .end local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "disabledState":I
    .local v6, "key":Lcom/android/launcher3/shortcuts/ShortcutKey;
    .local v9, "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v11    # "targetPkg":Ljava/lang/String;
    .restart local v12    # "validTarget":Z
    .restart local v14    # "useLowResIcon":Z
    .restart local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v20    # "allowMissingTarget":Z
    .local v31, "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v34    # "cn":Landroid/content/ComponentName;
    .restart local v40    # "context":Landroid/content/Context;
    :cond_3c
    move-object/from16 v7, p1

    move-object/from16 v29, v6

    move-object/from16 v41, v9

    move-object/from16 v32, v15

    move-object/from16 v36, v31

    move-object/from16 v9, v40

    move/from16 v31, v12

    .end local v6    # "key":Lcom/android/launcher3/shortcuts/ShortcutKey;
    .end local v12    # "validTarget":Z
    .end local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v40    # "context":Landroid/content/Context;
    .local v9, "context":Landroid/content/Context;
    .restart local v29    # "key":Lcom/android/launcher3/shortcuts/ShortcutKey;
    .local v31, "validTarget":Z
    .restart local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleWorkspaceItem()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v6

    .line 614
    .local v6, "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    iget v8, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/16 v12, 0x20

    or-int/2addr v8, v12

    iput v8, v6, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_1c
    .catchall {:try_start_49 .. :try_end_49} :catchall_16

    move-object v8, v6

    .line 616
    .end local v6    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local v29    # "key":Lcom/android/launcher3/shortcuts/ShortcutKey;
    .local v8, "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    :goto_21
    goto/16 :goto_23

    .line 874
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "disabledState":I
    .end local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local v11    # "targetPkg":Ljava/lang/String;
    .end local v14    # "useLowResIcon":Z
    .end local v20    # "allowMissingTarget":Z
    .end local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v34    # "cn":Landroid/content/ComponentName;
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .local v9, "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v31, "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v40    # "context":Landroid/content/Context;
    :catch_1a
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v41, v9

    move-object/from16 v36, v31

    move-object/from16 v9, v40

    move-object/from16 v3, p4

    move-object/from16 v27, v2

    move-object v5, v15

    move/from16 v6, v24

    move-object/from16 v12, v39

    move-object v2, v0

    .end local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v40    # "context":Landroid/content/Context;
    .local v9, "context":Landroid/content/Context;
    .restart local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    goto/16 :goto_2b

    .line 894
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "optionsIndex":I
    .end local v21    # "spanYIndex":I
    .end local v24    # "rankIndex":I
    .end local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v44    # "sourceContainerIndex":I
    .restart local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v40    # "context":Landroid/content/Context;
    :catchall_15
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v9, v40

    move-object/from16 v27, v2

    move-object/from16 v21, v15

    move-object/from16 v8, v31

    move-object v2, v0

    .end local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v40    # "context":Landroid/content/Context;
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    goto/16 :goto_35

    .line 874
    .end local v9    # "context":Landroid/content/Context;
    .end local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v10    # "optionsIndex":I
    .restart local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v21    # "spanYIndex":I
    .restart local v24    # "rankIndex":I
    .restart local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v40    # "context":Landroid/content/Context;
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v44    # "sourceContainerIndex":I
    :catch_1b
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v36, v31

    move-object/from16 v9, v40

    move-object/from16 v3, p4

    move-object/from16 v27, v2

    move-object v5, v15

    move/from16 v6, v24

    move-object/from16 v12, v39

    move-object v2, v0

    .end local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v40    # "context":Landroid/content/Context;
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    goto/16 :goto_2b

    .line 617
    .end local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "disabledState":I
    .local v9, "allowMissingTarget":Z
    .restart local v11    # "targetPkg":Ljava/lang/String;
    .restart local v12    # "validTarget":Z
    .restart local v14    # "useLowResIcon":Z
    .restart local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v34    # "cn":Landroid/content/ComponentName;
    .restart local v40    # "context":Landroid/content/Context;
    :cond_3d
    move-object/from16 v7, p1

    move/from16 v20, v9

    move-object/from16 v32, v15

    move-object/from16 v36, v31

    move-object/from16 v9, v40

    move/from16 v31, v12

    .end local v12    # "validTarget":Z
    .end local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v40    # "context":Landroid/content/Context;
    .local v9, "context":Landroid/content/Context;
    .restart local v20    # "allowMissingTarget":Z
    .local v31, "validTarget":Z
    .restart local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    :try_start_4a
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleWorkspaceItem()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v6

    move-object v8, v6

    .line 620
    .restart local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_26
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1a

    if-nez v6, :cond_3e

    :try_start_4b
    iget-object v6, v4, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    .line 621
    invoke-virtual {v13, v11, v6}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_1c
    .catchall {:try_start_4b .. :try_end_4b} :catchall_16

    if-eqz v6, :cond_3e

    .line 622
    or-int/lit8 v5, v5, 0x4

    goto :goto_22

    .line 894
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "disabledState":I
    .end local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local v10    # "optionsIndex":I
    .end local v11    # "targetPkg":Ljava/lang/String;
    .end local v14    # "useLowResIcon":Z
    .end local v20    # "allowMissingTarget":Z
    .end local v21    # "spanYIndex":I
    .end local v24    # "rankIndex":I
    .end local v31    # "validTarget":Z
    .end local v34    # "cn":Landroid/content/ComponentName;
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v44    # "sourceContainerIndex":I
    :catchall_16
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v21, v32

    move-object/from16 v8, v36

    move-object v2, v0

    goto/16 :goto_35

    .line 874
    .restart local v10    # "optionsIndex":I
    .restart local v21    # "spanYIndex":I
    .restart local v24    # "rankIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v44    # "sourceContainerIndex":I
    :catch_1c
    move-exception v0

    move-object/from16 v3, p4

    move-object/from16 v27, v2

    move/from16 v6, v24

    move-object/from16 v5, v32

    move-object/from16 v12, v39

    move-object v2, v0

    goto/16 :goto_2b

    .line 624
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "disabledState":I
    .restart local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .restart local v11    # "targetPkg":Ljava/lang/String;
    .restart local v14    # "useLowResIcon":Z
    .restart local v20    # "allowMissingTarget":Z
    .restart local v31    # "validTarget":Z
    .restart local v34    # "cn":Landroid/content/ComponentName;
    :cond_3e
    :goto_22
    :try_start_4c
    instance-of v6, v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_26
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1a

    if-eqz v6, :cond_3f

    .line 625
    :try_start_4d
    move-object v6, v8

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v4, v10}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v12

    iput v12, v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->options:I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_1c
    .catchall {:try_start_4d .. :try_end_4d} :catchall_16

    .line 630
    :cond_3f
    :try_start_4e
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_26
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1a

    if-eqz v6, :cond_40

    .line 631
    :try_start_4f
    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_40

    .line 632
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v12, "android.intent.action.MAIN"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 633
    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    const-string v12, "android.intent.category.LAUNCHER"

    invoke-interface {v6, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 634
    const/high16 v6, 0x10200000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_1c
    .catchall {:try_start_4f .. :try_end_4f} :catchall_16

    .line 640
    :cond_40
    :goto_23
    if-eqz v8, :cond_4b

    .line 642
    :try_start_50
    iget v6, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->itemType:I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_26
    .catchall {:try_start_50 .. :try_end_50} :catchall_1a

    const/4 v12, 0x6

    if-eq v6, v12, :cond_42

    .line 646
    :try_start_51
    instance-of v6, v8, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v6, :cond_41

    .line 647
    new-instance v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-object v12, v8

    check-cast v12, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v6, v12}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 648
    invoke-virtual {v4, v6, v14}, Lcom/android/launcher3/model/LoaderCursor;->createIconRequestInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Lcom/android/launcher3/model/data/IconRequestInfo;

    move-result-object v6
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_1e
    .catchall {:try_start_51 .. :try_end_51} :catchall_16

    .line 647
    move-object/from16 v12, v39

    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .local v12, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    :try_start_52
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 651
    .end local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    :cond_41
    move-object/from16 v12, v39

    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    instance-of v6, v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v6, :cond_43

    .line 652
    move-object v6, v8

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 653
    invoke-virtual {v4, v6, v14}, Lcom/android/launcher3/model/LoaderCursor;->createIconRequestInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)Lcom/android/launcher3/model/data/IconRequestInfo;

    move-result-object v6

    .line 652
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_1d
    .catchall {:try_start_52 .. :try_end_52} :catchall_16

    goto :goto_24

    .line 874
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "disabledState":I
    .end local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local v11    # "targetPkg":Ljava/lang/String;
    .end local v14    # "useLowResIcon":Z
    .end local v20    # "allowMissingTarget":Z
    .end local v31    # "validTarget":Z
    .end local v34    # "cn":Landroid/content/ComponentName;
    :catch_1d
    move-exception v0

    move-object/from16 v3, p4

    move-object/from16 v27, v2

    move/from16 v6, v24

    move-object/from16 v5, v32

    move-object v2, v0

    goto/16 :goto_2b

    .end local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    :catch_1e
    move-exception v0

    move-object/from16 v12, v39

    move-object/from16 v3, p4

    move-object/from16 v27, v2

    move/from16 v6, v24

    move-object/from16 v5, v32

    move-object v2, v0

    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    goto/16 :goto_2b

    .line 642
    .end local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "disabledState":I
    .restart local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .restart local v11    # "targetPkg":Ljava/lang/String;
    .restart local v14    # "useLowResIcon":Z
    .restart local v20    # "allowMissingTarget":Z
    .restart local v31    # "validTarget":Z
    .restart local v34    # "cn":Landroid/content/ComponentName;
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    :cond_42
    move-object/from16 v12, v39

    .line 658
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    :cond_43
    :goto_24
    :try_start_53
    invoke-virtual {v4, v8}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 660
    instance-of v6, v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_24
    .catchall {:try_start_53 .. :try_end_53} :catchall_1a

    if-eqz v6, :cond_44

    .line 661
    :try_start_54
    move-object v6, v8

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iput-object v3, v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_1d
    .catchall {:try_start_54 .. :try_end_54} :catchall_16

    .line 663
    :cond_44
    move/from16 v6, v24

    .end local v24    # "rankIndex":I
    .local v6, "rankIndex":I
    :try_start_55
    invoke-virtual {v4, v6}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v15

    iput v15, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->rank:I

    .line 664
    const/4 v15, 0x1

    iput v15, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->spanX:I

    .line 665
    iput v15, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->spanY:I

    .line 666
    iget v15, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/2addr v15, v5

    iput v15, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_23
    .catchall {:try_start_55 .. :try_end_55} :catchall_1a

    .line 667
    if-eqz v25, :cond_45

    :try_start_56
    invoke-static {v9, v3}, Lcom/android/launcher3/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v15

    if-nez v15, :cond_45

    .line 668
    iget v15, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    const/16 v22, 0x1

    or-int/lit8 v15, v15, 0x1

    iput v15, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_1f
    .catchall {:try_start_56 .. :try_end_56} :catchall_16

    goto :goto_25

    .line 874
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "disabledState":I
    .end local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local v11    # "targetPkg":Ljava/lang/String;
    .end local v14    # "useLowResIcon":Z
    .end local v20    # "allowMissingTarget":Z
    .end local v31    # "validTarget":Z
    .end local v34    # "cn":Landroid/content/ComponentName;
    :catch_1f
    move-exception v0

    move-object/from16 v3, p4

    move-object/from16 v27, v2

    move-object/from16 v5, v32

    move-object v2, v0

    goto/16 :goto_2b

    .line 670
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "disabledState":I
    .restart local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .restart local v11    # "targetPkg":Ljava/lang/String;
    .restart local v14    # "useLowResIcon":Z
    .restart local v20    # "allowMissingTarget":Z
    .restart local v31    # "validTarget":Z
    .restart local v34    # "cn":Landroid/content/ComponentName;
    :cond_45
    :goto_25
    :try_start_57
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->getLauncherActivityInfo()Landroid/content/pm/LauncherActivityInfo;

    move-result-object v15
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_23
    .catchall {:try_start_57 .. :try_end_57} :catchall_1a

    .line 671
    .local v15, "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    if-eqz v15, :cond_46

    .line 672
    nop

    .line 674
    move-object/from16 v22, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .local v22, "intent":Landroid/content/Intent;
    :try_start_58
    invoke-static {v15}, Lcom/android/launcher3/util/PackageManagerHelper;->getLoadingProgress(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v3

    .line 672
    move/from16 v24, v5

    const/4 v5, 0x2

    .end local v5    # "disabledState":I
    .local v24, "disabledState":I
    invoke-virtual {v8, v3, v5}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->setProgressLevel(II)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_1f
    .catchall {:try_start_58 .. :try_end_58} :catchall_16

    goto :goto_26

    .line 671
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v24    # "disabledState":I
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "disabledState":I
    :cond_46
    move-object/from16 v22, v3

    move/from16 v24, v5

    .line 677
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "disabledState":I
    .restart local v22    # "intent":Landroid/content/Intent;
    .restart local v24    # "disabledState":I
    :goto_26
    :try_start_59
    instance-of v3, v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_23
    .catchall {:try_start_59 .. :try_end_59} :catchall_1a

    if-eqz v3, :cond_4a

    .line 678
    :try_start_5a
    iget v3, v4, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v3, :cond_49

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 679
    iget-object v3, v4, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_21
    .catchall {:try_start_5a .. :try_end_5a} :catchall_18

    move-object/from16 v5, v32

    .end local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v5, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    :try_start_5b
    invoke-virtual {v5, v11, v3}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 680
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_20
    .catchall {:try_start_5b .. :try_end_5b} :catchall_17

    .line 681
    .local v3, "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-nez v3, :cond_47

    .line 682
    move-object/from16 v27, v2

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .local v27, "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :try_start_5c
    iget v2, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v8, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    goto :goto_27

    .line 684
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :cond_47
    move-object/from16 v27, v2

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    if-nez v15, :cond_48

    .line 685
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v2

    mul-float v2, v2, v30

    float-to-int v2, v2

    .line 687
    .local v2, "installProgress":I
    move-object/from16 v29, v3

    const/4 v3, 0x1

    .end local v3    # "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    .local v29, "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v8, v2, v3}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->setProgressLevel(II)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_22
    .catchall {:try_start_5c .. :try_end_5c} :catchall_20

    goto :goto_27

    .line 684
    .end local v2    # "installProgress":I
    .end local v29    # "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    .restart local v3    # "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_48
    move-object/from16 v29, v3

    .end local v3    # "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    .restart local v29    # "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    goto :goto_27

    .line 894
    .end local v6    # "rankIndex":I
    .end local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local v10    # "optionsIndex":I
    .end local v11    # "targetPkg":Ljava/lang/String;
    .end local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v14    # "useLowResIcon":Z
    .end local v15    # "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    .end local v20    # "allowMissingTarget":Z
    .end local v21    # "spanYIndex":I
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v24    # "disabledState":I
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v29    # "si":Landroid/content/pm/PackageInstaller$SessionInfo;
    .end local v31    # "validTarget":Z
    .end local v34    # "cn":Landroid/content/ComponentName;
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v44    # "sourceContainerIndex":I
    .local v2, "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :catchall_17
    move-exception v0

    move-object/from16 v27, v2

    move-object v2, v0

    move-object/from16 v21, v5

    move-object/from16 v8, v36

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    goto/16 :goto_35

    .line 874
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v6    # "rankIndex":I
    .restart local v10    # "optionsIndex":I
    .restart local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v21    # "spanYIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v44    # "sourceContainerIndex":I
    :catch_20
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v3, p4

    move-object v2, v0

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    goto/16 :goto_2b

    .line 678
    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .restart local v11    # "targetPkg":Ljava/lang/String;
    .restart local v14    # "useLowResIcon":Z
    .restart local v15    # "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    .restart local v20    # "allowMissingTarget":Z
    .restart local v22    # "intent":Landroid/content/Intent;
    .restart local v24    # "disabledState":I
    .restart local v31    # "validTarget":Z
    .restart local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v34    # "cn":Landroid/content/ComponentName;
    :cond_49
    move-object/from16 v27, v2

    move-object/from16 v5, v32

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    goto :goto_27

    .line 894
    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v6    # "rankIndex":I
    .end local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local v10    # "optionsIndex":I
    .end local v11    # "targetPkg":Ljava/lang/String;
    .end local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v14    # "useLowResIcon":Z
    .end local v15    # "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    .end local v20    # "allowMissingTarget":Z
    .end local v21    # "spanYIndex":I
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v24    # "disabledState":I
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v31    # "validTarget":Z
    .end local v34    # "cn":Landroid/content/ComponentName;
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v44    # "sourceContainerIndex":I
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    :catchall_18
    move-exception v0

    goto :goto_29

    .line 874
    .restart local v6    # "rankIndex":I
    .restart local v10    # "optionsIndex":I
    .restart local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v21    # "spanYIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v44    # "sourceContainerIndex":I
    :catch_21
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v5, v32

    move-object/from16 v3, p4

    goto :goto_28

    .line 677
    .restart local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .restart local v11    # "targetPkg":Ljava/lang/String;
    .restart local v14    # "useLowResIcon":Z
    .restart local v15    # "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    .restart local v20    # "allowMissingTarget":Z
    .restart local v22    # "intent":Landroid/content/Intent;
    .restart local v24    # "disabledState":I
    .restart local v31    # "validTarget":Z
    .restart local v34    # "cn":Landroid/content/ComponentName;
    :cond_4a
    move-object/from16 v27, v2

    move-object/from16 v5, v32

    .line 693
    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :goto_27
    :try_start_5d
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_22
    .catchall {:try_start_5d .. :try_end_5d} :catchall_19

    move-object/from16 v3, p4

    :try_start_5e
    invoke-virtual {v4, v8, v2, v3}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderMemoryLogger;)V

    .line 694
    .end local v15    # "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    goto/16 :goto_2a

    .line 894
    .end local v6    # "rankIndex":I
    .end local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local v10    # "optionsIndex":I
    .end local v11    # "targetPkg":Ljava/lang/String;
    .end local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v14    # "useLowResIcon":Z
    .end local v20    # "allowMissingTarget":Z
    .end local v21    # "spanYIndex":I
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v24    # "disabledState":I
    .end local v31    # "validTarget":Z
    .end local v34    # "cn":Landroid/content/ComponentName;
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v44    # "sourceContainerIndex":I
    :catchall_19
    move-exception v0

    move-object/from16 v3, p4

    goto/16 :goto_2d

    .line 874
    .restart local v6    # "rankIndex":I
    .restart local v10    # "optionsIndex":I
    .restart local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v21    # "spanYIndex":I
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v44    # "sourceContainerIndex":I
    :catch_22
    move-exception v0

    move-object/from16 v3, p4

    move-object v2, v0

    goto/16 :goto_2b

    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    :catch_23
    move-exception v0

    move-object/from16 v3, p4

    move-object/from16 v27, v2

    move-object/from16 v5, v32

    :goto_28
    move-object v2, v0

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    goto/16 :goto_2b

    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v6    # "rankIndex":I
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .local v24, "rankIndex":I
    .restart local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    :catch_24
    move-exception v0

    move-object/from16 v3, p4

    move-object/from16 v27, v2

    move/from16 v6, v24

    move-object/from16 v5, v32

    move-object v2, v0

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v24    # "rankIndex":I
    .end local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v6    # "rankIndex":I
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    goto/16 :goto_2b

    .line 695
    .end local v6    # "rankIndex":I
    .end local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .local v3, "intent":Landroid/content/Intent;
    .local v5, "disabledState":I
    .restart local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .restart local v11    # "targetPkg":Ljava/lang/String;
    .restart local v14    # "useLowResIcon":Z
    .restart local v20    # "allowMissingTarget":Z
    .restart local v24    # "rankIndex":I
    .restart local v31    # "validTarget":Z
    .restart local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v34    # "cn":Landroid/content/ComponentName;
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    :cond_4b
    move-object/from16 v27, v2

    move-object/from16 v22, v3

    move/from16 v6, v24

    move-object/from16 v12, v39

    move-object/from16 v3, p4

    move/from16 v24, v5

    move-object/from16 v5, v32

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .local v5, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v6    # "rankIndex":I
    .restart local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v22    # "intent":Landroid/content/Intent;
    .local v24, "disabledState":I
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v15, "Unexpected null WorkspaceItemInfo"

    invoke-direct {v2, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v4    # "c":Lcom/android/launcher3/model/LoaderCursor;
    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v6    # "rankIndex":I
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "optionsIndex":I
    .end local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v18    # "extras":Landroid/os/Bundle;
    .end local v19    # "contentResolver":Landroid/content/ContentResolver;
    .end local v21    # "spanYIndex":I
    .end local v23    # "clearDb":Z
    .end local v25    # "isSafeMode":Z
    .end local v26    # "isSdCardReady":Z
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v44    # "sourceContainerIndex":I
    .end local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    .end local p1    # "allDeepShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local p2    # "contentUri":Landroid/net/Uri;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "logger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    throw v2
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_25
    .catchall {:try_start_5e .. :try_end_5e} :catchall_20

    .line 874
    .end local v8    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local v11    # "targetPkg":Ljava/lang/String;
    .end local v14    # "useLowResIcon":Z
    .end local v20    # "allowMissingTarget":Z
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v24    # "disabledState":I
    .end local v31    # "validTarget":Z
    .end local v34    # "cn":Landroid/content/ComponentName;
    .restart local v4    # "c":Lcom/android/launcher3/model/LoaderCursor;
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v6    # "rankIndex":I
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v10    # "optionsIndex":I
    .restart local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v18    # "extras":Landroid/os/Bundle;
    .restart local v19    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v21    # "spanYIndex":I
    .restart local v23    # "clearDb":Z
    .restart local v25    # "isSafeMode":Z
    .restart local v26    # "isSdCardReady":Z
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v44    # "sourceContainerIndex":I
    .restart local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    .restart local p1    # "allDeepShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local p2    # "contentUri":Landroid/net/Uri;
    .restart local p3    # "selection":Ljava/lang/String;
    .restart local p4    # "logger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    :catch_25
    move-exception v0

    move-object v2, v0

    goto/16 :goto_2b

    .line 894
    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v6    # "rankIndex":I
    .end local v10    # "optionsIndex":I
    .end local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v21    # "spanYIndex":I
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v44    # "sourceContainerIndex":I
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    :catchall_1a
    move-exception v0

    move-object/from16 v3, p4

    :goto_29
    move-object/from16 v27, v2

    move-object v2, v0

    move-object/from16 v21, v32

    move-object/from16 v8, v36

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    goto/16 :goto_35

    .line 874
    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v10    # "optionsIndex":I
    .restart local v21    # "spanYIndex":I
    .local v24, "rankIndex":I
    .restart local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v44    # "sourceContainerIndex":I
    :catch_26
    move-exception v0

    move-object/from16 v3, p4

    move-object/from16 v27, v2

    move/from16 v6, v24

    move-object/from16 v5, v32

    move-object/from16 v12, v39

    move-object v2, v0

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v24    # "rankIndex":I
    .end local v32    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v6    # "rankIndex":I
    .restart local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    goto/16 :goto_2b

    .line 894
    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v6    # "rankIndex":I
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "optionsIndex":I
    .end local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v21    # "spanYIndex":I
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v44    # "sourceContainerIndex":I
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .local v15, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v31, "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v40    # "context":Landroid/content/Context;
    :catchall_1b
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v3, p4

    move-object/from16 v27, v2

    move-object/from16 v9, v40

    move-object v2, v0

    move-object/from16 v21, v15

    move-object/from16 v8, v31

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v40    # "context":Landroid/content/Context;
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    goto/16 :goto_35

    .line 874
    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v9    # "context":Landroid/content/Context;
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v10    # "optionsIndex":I
    .restart local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v21    # "spanYIndex":I
    .restart local v24    # "rankIndex":I
    .restart local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v40    # "context":Landroid/content/Context;
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v44    # "sourceContainerIndex":I
    :catch_27
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v3, p4

    move-object/from16 v27, v2

    move-object v5, v15

    move/from16 v6, v24

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object v2, v0

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v15    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v24    # "rankIndex":I
    .end local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v40    # "context":Landroid/content/Context;
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v6    # "rankIndex":I
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    goto/16 :goto_2b

    .line 894
    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v6    # "rankIndex":I
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "optionsIndex":I
    .end local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v21    # "spanYIndex":I
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v44    # "sourceContainerIndex":I
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .local v7, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v40    # "context":Landroid/content/Context;
    :catchall_1c
    move-exception v0

    move-object/from16 v27, v2

    move-object v3, v6

    move-object v5, v7

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object v2, v0

    move-object/from16 v21, v5

    move-object/from16 v8, v31

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v40    # "context":Landroid/content/Context;
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    goto/16 :goto_35

    .line 874
    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v9    # "context":Landroid/content/Context;
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v10    # "optionsIndex":I
    .restart local v21    # "spanYIndex":I
    .restart local v24    # "rankIndex":I
    .restart local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v40    # "context":Landroid/content/Context;
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v44    # "sourceContainerIndex":I
    :catch_28
    move-exception v0

    move-object/from16 v27, v2

    move-object v3, v6

    move-object v5, v7

    move/from16 v6, v24

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object v2, v0

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v24    # "rankIndex":I
    .end local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v40    # "context":Landroid/content/Context;
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v6    # "rankIndex":I
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    goto/16 :goto_2b

    .line 894
    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v6    # "rankIndex":I
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "optionsIndex":I
    .end local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v21    # "spanYIndex":I
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v44    # "sourceContainerIndex":I
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v14, "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .local v27, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v40    # "context":Landroid/content/Context;
    :catchall_1d
    move-exception v0

    move-object v3, v6

    move-object v5, v7

    move-object/from16 v43, v14

    move-object/from16 v13, v27

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object/from16 v27, v2

    move-object v2, v0

    move-object/from16 v21, v5

    move-object/from16 v8, v31

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v40    # "context":Landroid/content/Context;
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .local v27, "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    goto/16 :goto_35

    .line 874
    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v9, "spanXIndex":I
    .restart local v10    # "optionsIndex":I
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .local v15, "sourceContainerIndex":I
    .restart local v21    # "spanYIndex":I
    .restart local v24    # "rankIndex":I
    .local v27, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v40    # "context":Landroid/content/Context;
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    :catch_29
    move-exception v0

    move-object v3, v6

    move-object v5, v7

    move/from16 v42, v9

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v12, v39

    move-object/from16 v9, v40

    move-object/from16 v7, p1

    move-object/from16 v27, v2

    move-object v2, v0

    .end local v2    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v7    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v15    # "sourceContainerIndex":I
    .end local v24    # "rankIndex":I
    .end local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v39    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v40    # "context":Landroid/content/Context;
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v6    # "rankIndex":I
    .local v9, "context":Landroid/content/Context;
    .restart local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .local v27, "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v44    # "sourceContainerIndex":I
    goto :goto_2b

    .line 876
    :goto_2a
    move-object v2, v3

    move/from16 v24, v6

    move-object v3, v9

    move-object v7, v12

    move-object/from16 v22, v27

    move-object/from16 v31, v36

    move/from16 v8, v37

    move/from16 v6, v38

    move/from16 v9, v42

    move-object/from16 v14, v43

    move/from16 v15, v44

    move-object/from16 v27, v13

    move-object/from16 v13, v41

    move/from16 v45, v21

    move-object/from16 v21, v5

    move/from16 v5, v45

    goto/16 :goto_6

    .line 874
    .end local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v44    # "sourceContainerIndex":I
    .local v3, "context":Landroid/content/Context;
    .local v5, "spanYIndex":I
    .local v6, "appWidgetIdIndex":I
    .local v7, "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .local v8, "appWidgetProviderIndex":I
    .local v9, "spanXIndex":I
    .local v13, "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v15    # "sourceContainerIndex":I
    .local v21, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v22, "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v24    # "rankIndex":I
    .local v27, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    :catch_2a
    move-exception v0

    move/from16 v38, v6

    move-object v12, v7

    move/from16 v37, v8

    move/from16 v42, v9

    move-object/from16 v41, v13

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v7, p1

    move-object v9, v3

    move-object/from16 v27, v22

    move-object v3, v2

    move-object/from16 v45, v21

    move/from16 v21, v5

    move-object/from16 v5, v45

    move-object v2, v0

    .line 875
    .end local v3    # "context":Landroid/content/Context;
    .end local v7    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v8    # "appWidgetProviderIndex":I
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v15    # "sourceContainerIndex":I
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v24    # "rankIndex":I
    .end local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .local v2, "e":Ljava/lang/Exception;
    .local v5, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v6, "rankIndex":I
    .local v9, "context":Landroid/content/Context;
    .restart local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .local v13, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .local v21, "spanYIndex":I
    .local v27, "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v44    # "sourceContainerIndex":I
    :goto_2b
    :try_start_5f
    const-string v8, "LoaderTask"

    const-string v11, "Desktop items loading interrupted"

    invoke-static {v8, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_20

    .line 876
    move-object v2, v3

    move/from16 v24, v6

    move-object v3, v9

    move-object v7, v12

    move-object/from16 v22, v27

    move-object/from16 v31, v36

    move/from16 v8, v37

    move/from16 v6, v38

    move/from16 v9, v42

    move-object/from16 v14, v43

    move/from16 v15, v44

    move-object/from16 v27, v13

    move-object/from16 v13, v41

    move/from16 v45, v21

    move-object/from16 v21, v5

    move/from16 v5, v45

    .end local v2    # "e":Ljava/lang/Exception;
    goto/16 :goto_6

    .line 894
    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v6    # "rankIndex":I
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "optionsIndex":I
    .end local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v44    # "sourceContainerIndex":I
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .local v21, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .local v27, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    :catchall_1e
    move-exception v0

    move-object/from16 v7, p1

    move-object v9, v3

    move-object/from16 v43, v14

    move-object/from16 v13, v27

    move-object v3, v2

    move-object/from16 v27, v22

    move-object v2, v0

    move-object/from16 v8, v31

    .end local v3    # "context":Landroid/content/Context;
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v21    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .local v27, "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    goto/16 :goto_35

    .line 455
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v3    # "context":Landroid/content/Context;
    .local v5, "spanYIndex":I
    .local v6, "appWidgetIdIndex":I
    .restart local v7    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .restart local v8    # "appWidgetProviderIndex":I
    .local v9, "spanXIndex":I
    .restart local v10    # "optionsIndex":I
    .local v13, "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v15    # "sourceContainerIndex":I
    .restart local v21    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v24    # "rankIndex":I
    .local v27, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    :cond_4c
    move/from16 v38, v6

    move-object v12, v7

    move/from16 v37, v8

    move/from16 v42, v9

    move-object/from16 v41, v13

    move-object/from16 v43, v14

    move/from16 v44, v15

    move/from16 v6, v24

    move-object/from16 v13, v27

    move-object/from16 v36, v31

    move-object/from16 v7, p1

    move-object v9, v3

    move-object/from16 v27, v22

    move-object v3, v2

    move-object/from16 v45, v21

    move/from16 v21, v5

    move-object/from16 v5, v45

    .line 878
    .end local v3    # "context":Landroid/content/Context;
    .end local v7    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v8    # "appWidgetProviderIndex":I
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v15    # "sourceContainerIndex":I
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v24    # "rankIndex":I
    .end local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .local v5, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v6, "rankIndex":I
    .local v9, "context":Landroid/content/Context;
    .restart local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .local v13, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .local v21, "spanYIndex":I
    .local v27, "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v37    # "appWidgetProviderIndex":I
    .restart local v38    # "appWidgetIdIndex":I
    .restart local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .restart local v42    # "spanXIndex":I
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v44    # "sourceContainerIndex":I
    :try_start_60
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BULK_WORKSPACE_ICON_LOADING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_21

    if-eqz v2, :cond_4f

    .line 879
    :try_start_61
    const-string v2, "LoadWorkspaceIconsInBulk"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_20

    .line 881
    :try_start_62
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v2, v12}, Lcom/android/launcher3/icons/IconCache;->getTitlesAndIconsInBulk(Ljava/util/List;)V

    .line 883
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/IconRequestInfo;

    .line 884
    .local v8, "iconRequestInfo":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    iget-object v11, v8, Lcom/android/launcher3/model/data/IconRequestInfo;->itemInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    check-cast v11, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 885
    .local v11, "wai":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v14, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v15, v11, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    move-object/from16 v16, v2

    iget-object v2, v11, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v14, v15, v2}, Lcom/android/launcher3/icons/IconCache;->isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 886
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/launcher3/model/data/IconRequestInfo;->loadWorkspaceIcon(Landroid/content/Context;)Z
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_1f

    .line 888
    .end local v8    # "iconRequestInfo":Lcom/android/launcher3/model/data/IconRequestInfo;, "Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .end local v11    # "wai":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_4d
    move-object/from16 v2, v16

    goto :goto_2c

    .line 890
    :cond_4e
    :try_start_63
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 891
    goto :goto_2e

    .line 890
    :catchall_1f
    move-exception v0

    move-object v2, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 891
    nop

    .end local v4    # "c":Lcom/android/launcher3/model/LoaderCursor;
    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v9    # "context":Landroid/content/Context;
    .end local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v18    # "extras":Landroid/os/Bundle;
    .end local v19    # "contentResolver":Landroid/content/ContentResolver;
    .end local v23    # "clearDb":Z
    .end local v25    # "isSafeMode":Z
    .end local v26    # "isSdCardReady":Z
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    .end local p1    # "allDeepShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local p2    # "contentUri":Landroid/net/Uri;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "logger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    throw v2
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_20

    .line 894
    .end local v6    # "rankIndex":I
    .end local v10    # "optionsIndex":I
    .end local v12    # "iconRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/IconRequestInfo<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;>;"
    .end local v21    # "spanYIndex":I
    .end local v37    # "appWidgetProviderIndex":I
    .end local v38    # "appWidgetIdIndex":I
    .end local v41    # "unlockedUsers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    .end local v42    # "spanXIndex":I
    .end local v44    # "sourceContainerIndex":I
    .restart local v4    # "c":Lcom/android/launcher3/model/LoaderCursor;
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v18    # "extras":Landroid/os/Bundle;
    .restart local v19    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v23    # "clearDb":Z
    .restart local v25    # "isSafeMode":Z
    .restart local v26    # "isSdCardReady":Z
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    .restart local p1    # "allDeepShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local p2    # "contentUri":Landroid/net/Uri;
    .restart local p3    # "selection":Ljava/lang/String;
    .restart local p4    # "logger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    :catchall_20
    move-exception v0

    :goto_2d
    move-object v2, v0

    move-object/from16 v21, v5

    move-object/from16 v8, v36

    goto/16 :goto_35

    :cond_4f
    :goto_2e
    :try_start_64
    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 895
    nop

    .line 898
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    move-object/from16 v8, v36

    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .local v8, "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v2, v6, v8}, Lcom/android/launcher3/model/ModelDelegate;->loadItems(Lcom/android/launcher3/model/UserManagerState;Ljava/util/Map;)V

    .line 901
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, v6, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/model/ModelDelegate;->loadStringCache(Lcom/android/launcher3/model/StringCache;)V

    .line 904
    iget-boolean v2, v1, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v2, :cond_50

    .line 905
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v2}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    .line 906
    monitor-exit v17

    return-void

    .line 910
    :cond_50
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->commitDeleted()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/launcher3/model/LoaderTask;->mItemsDeleted:Z

    .line 913
    new-instance v2, Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 914
    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 915
    .local v2, "verifier":Lcom/android/launcher3/folder/FolderGridOrganizer;
    iget-object v6, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, v6, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v6}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_59

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/model/data/FolderInfo;

    .line 916
    .local v10, "folder":Lcom/android/launcher3/model/data/FolderInfo;
    iget v11, v10, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    const/16 v12, -0x66

    if-ne v11, v12, :cond_54

    .line 917
    new-instance v11, Ljava/util/ArrayList;

    iget-object v14, v10, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 918
    .local v11, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v14, v10, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 921
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_30
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_53

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/model/data/ItemInfo;

    .line 922
    .local v15, "info":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v12, v15, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v12, :cond_52

    .line 923
    move-object v12, v15

    check-cast v12, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 924
    .local v12, "shortcutInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    new-instance v3, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v3, v12}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 926
    .local v3, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    move-object/from16 v21, v5

    const/4 v5, 0x2

    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v21, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    invoke-virtual {v12, v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v16

    if-eqz v16, :cond_51

    .line 927
    new-instance v5, Lcom/sonymobile/launcher/XperiaAppInfo;

    invoke-direct {v5, v3}, Lcom/sonymobile/launcher/XperiaAppInfo;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    move-object v3, v5

    .line 928
    invoke-virtual {v3, v15}, Lcom/android/launcher3/model/data/AppInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 929
    iget v5, v12, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    iput v5, v3, Lcom/android/launcher3/model/data/AppInfo;->status:I

    .line 932
    :cond_51
    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    move-object/from16 v16, v6

    iget v6, v15, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/IntSparseArrayMap;->remove(I)V

    .line 933
    iget-object v5, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v6, v3, Lcom/android/launcher3/model/data/AppInfo;->id:I

    invoke-virtual {v5, v6, v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 934
    iget-object v5, v10, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 922
    .end local v3    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    .end local v12    # "shortcutInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v21    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    :cond_52
    move-object/from16 v21, v5

    move-object/from16 v16, v6

    .line 936
    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v15    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v21    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    :goto_31
    move-object/from16 v3, p4

    move-object/from16 v6, v16

    move-object/from16 v5, v21

    const/16 v12, -0x66

    goto :goto_30

    .line 921
    .end local v21    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    :cond_53
    move-object/from16 v21, v5

    move-object/from16 v16, v6

    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v21    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    goto :goto_32

    .line 916
    .end local v11    # "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local v21    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    :cond_54
    move-object/from16 v21, v5

    move-object/from16 v16, v6

    .line 938
    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v21    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    :goto_32
    iget-object v3, v10, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/launcher3/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 939
    invoke-virtual {v2, v10}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    .line 940
    iget-object v3, v10, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 945
    .local v3, "size":I
    const/4 v5, 0x0

    .local v5, "rank":I
    :goto_33
    if-ge v5, v3, :cond_58

    .line 946
    iget-object v6, v10, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v6, :cond_57

    .line 947
    iget-object v6, v10, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 948
    .local v6, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iput v5, v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->rank:I

    .line 949
    invoke-virtual {v6}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->usingLowResIcon()Z

    move-result v11

    if-eqz v11, :cond_56

    iget v11, v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    if-nez v11, :cond_56

    iget v11, v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->rank:I

    .line 951
    invoke-virtual {v2, v11}, Lcom/android/launcher3/folder/FolderGridOrganizer;->isItemInPreview(I)Z

    move-result v11

    if-eqz v11, :cond_55

    .line 952
    iget-object v11, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v12}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    goto :goto_34

    .line 951
    :cond_55
    const/4 v12, 0x0

    goto :goto_34

    .line 949
    :cond_56
    const/4 v12, 0x0

    goto :goto_34

    .line 946
    .end local v6    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_57
    const/4 v12, 0x0

    .line 945
    :goto_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    :cond_58
    const/4 v12, 0x0

    .line 956
    .end local v3    # "size":I
    .end local v5    # "rank":I
    .end local v10    # "folder":Lcom/android/launcher3/model/data/FolderInfo;
    move-object/from16 v3, p4

    move-object/from16 v6, v16

    move-object/from16 v5, v21

    goto/16 :goto_2f

    .line 958
    .end local v21    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .local v5, "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    :cond_59
    move-object/from16 v21, v5

    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v21    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    invoke-virtual {v4}, Lcom/android/launcher3/model/LoaderCursor;->commitRestoredItems()V

    .line 959
    .end local v2    # "verifier":Lcom/android/launcher3/folder/FolderGridOrganizer;
    .end local v4    # "c":Lcom/android/launcher3/model/LoaderCursor;
    .end local v8    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v18    # "extras":Landroid/os/Bundle;
    .end local v21    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    monitor-exit v17

    .line 960
    return-void

    .line 894
    .restart local v4    # "c":Lcom/android/launcher3/model/LoaderCursor;
    .restart local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .restart local v18    # "extras":Landroid/os/Bundle;
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    :catchall_21
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v8, v36

    move-object v2, v0

    .end local v5    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v36    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v8    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v21    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    goto/16 :goto_35

    .end local v8    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v9    # "context":Landroid/content/Context;
    .end local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .local v3, "context":Landroid/content/Context;
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .local v27, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    :catchall_22
    move-exception v0

    move-object/from16 v7, p1

    move-object v9, v3

    move-object/from16 v43, v14

    move-object/from16 v13, v27

    move-object/from16 v8, v31

    move-object/from16 v27, v22

    move-object v2, v0

    .end local v3    # "context":Landroid/content/Context;
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v31    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v8    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .local v27, "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    goto/16 :goto_35

    .end local v8    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v9    # "context":Landroid/content/Context;
    .end local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v25    # "isSafeMode":Z
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v3    # "context":Landroid/content/Context;
    .local v12, "isSafeMode":Z
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .local v20, "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .local v27, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    :catchall_23
    move-exception v0

    move-object/from16 v7, p1

    move-object v9, v3

    move/from16 v25, v12

    move-object/from16 v43, v14

    move-object/from16 v8, v20

    move-object/from16 v13, v27

    move-object/from16 v27, v22

    move-object v2, v0

    .end local v3    # "context":Landroid/content/Context;
    .end local v12    # "isSafeMode":Z
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v20    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v8    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v25    # "isSafeMode":Z
    .local v27, "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    goto/16 :goto_35

    .end local v8    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v9    # "context":Landroid/content/Context;
    .end local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v25    # "isSafeMode":Z
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v3    # "context":Landroid/content/Context;
    .local v11, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v12    # "isSafeMode":Z
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v20    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :catchall_24
    move-exception v0

    move-object/from16 v7, p1

    move-object v9, v3

    move-object v13, v11

    move/from16 v25, v12

    move-object/from16 v43, v14

    move-object/from16 v8, v20

    move-object/from16 v27, v22

    move-object v2, v0

    .end local v3    # "context":Landroid/content/Context;
    .end local v11    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v12    # "isSafeMode":Z
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v20    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v8    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v25    # "isSafeMode":Z
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    goto/16 :goto_35

    .end local v8    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v9    # "context":Landroid/content/Context;
    .end local v25    # "isSafeMode":Z
    .end local v26    # "isSdCardReady":Z
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v11    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v12    # "isSafeMode":Z
    .local v13, "isSdCardReady":Z
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v20    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :catchall_25
    move-exception v0

    move-object/from16 v7, p1

    move-object v9, v3

    move/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v43, v14

    move-object/from16 v8, v20

    move-object/from16 v27, v22

    move-object v13, v11

    move-object v2, v0

    .end local v3    # "context":Landroid/content/Context;
    .end local v11    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v12    # "isSafeMode":Z
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v20    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v8    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v9    # "context":Landroid/content/Context;
    .local v13, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v25    # "isSafeMode":Z
    .restart local v26    # "isSdCardReady":Z
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    goto :goto_35

    .end local v8    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v9    # "context":Landroid/content/Context;
    .end local v23    # "clearDb":Z
    .end local v25    # "isSafeMode":Z
    .end local v26    # "isSdCardReady":Z
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v11    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v12    # "isSafeMode":Z
    .local v13, "isSdCardReady":Z
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .local v15, "clearDb":Z
    .restart local v20    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :catchall_26
    move-exception v0

    move-object/from16 v7, p1

    move-object v9, v3

    move/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v43, v14

    move/from16 v23, v15

    move-object/from16 v8, v20

    move-object/from16 v27, v22

    move-object v13, v11

    move-object v2, v0

    .end local v3    # "context":Landroid/content/Context;
    .end local v11    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v12    # "isSafeMode":Z
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v15    # "clearDb":Z
    .end local v20    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v8    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v9    # "context":Landroid/content/Context;
    .local v13, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v23    # "clearDb":Z
    .restart local v25    # "isSafeMode":Z
    .restart local v26    # "isSdCardReady":Z
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    goto :goto_35

    .end local v8    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v9    # "context":Landroid/content/Context;
    .end local v19    # "contentResolver":Landroid/content/ContentResolver;
    .end local v23    # "clearDb":Z
    .end local v25    # "isSafeMode":Z
    .end local v26    # "isSdCardReady":Z
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v3    # "context":Landroid/content/Context;
    .local v10, "contentResolver":Landroid/content/ContentResolver;
    .restart local v11    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v12    # "isSafeMode":Z
    .local v13, "isSdCardReady":Z
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v15    # "clearDb":Z
    .restart local v20    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :catchall_27
    move-exception v0

    move-object/from16 v7, p1

    move-object v9, v3

    move-object/from16 v19, v10

    move/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v43, v14

    move/from16 v23, v15

    move-object/from16 v8, v20

    move-object/from16 v27, v22

    move-object v13, v11

    move-object v2, v0

    .end local v3    # "context":Landroid/content/Context;
    .end local v10    # "contentResolver":Landroid/content/ContentResolver;
    .end local v11    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v12    # "isSafeMode":Z
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v15    # "clearDb":Z
    .end local v20    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v8    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v9    # "context":Landroid/content/Context;
    .local v13, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v19    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v23    # "clearDb":Z
    .restart local v25    # "isSafeMode":Z
    .restart local v26    # "isSdCardReady":Z
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    goto :goto_35

    .end local v8    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v9    # "context":Landroid/content/Context;
    .end local v18    # "extras":Landroid/os/Bundle;
    .end local v19    # "contentResolver":Landroid/content/ContentResolver;
    .end local v23    # "clearDb":Z
    .end local v25    # "isSafeMode":Z
    .end local v26    # "isSdCardReady":Z
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v3    # "context":Landroid/content/Context;
    .local v5, "extras":Landroid/os/Bundle;
    .restart local v10    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v11    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v12    # "isSafeMode":Z
    .local v13, "isSdCardReady":Z
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v15    # "clearDb":Z
    .restart local v20    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :catchall_28
    move-exception v0

    move-object/from16 v7, p1

    move-object v9, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v10

    move/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v43, v14

    move/from16 v23, v15

    move-object/from16 v8, v20

    move-object/from16 v27, v22

    move-object v13, v11

    move-object v2, v0

    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v10    # "contentResolver":Landroid/content/ContentResolver;
    .end local v11    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v12    # "isSafeMode":Z
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v15    # "clearDb":Z
    .end local v20    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v22    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v8    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .restart local v9    # "context":Landroid/content/Context;
    .local v13, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v18    # "extras":Landroid/os/Bundle;
    .restart local v19    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v23    # "clearDb":Z
    .restart local v25    # "isSafeMode":Z
    .restart local v26    # "isSdCardReady":Z
    .restart local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    :goto_35
    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 895
    nop

    .end local v9    # "context":Landroid/content/Context;
    .end local v13    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v19    # "contentResolver":Landroid/content/ContentResolver;
    .end local v23    # "clearDb":Z
    .end local v25    # "isSafeMode":Z
    .end local v26    # "isSdCardReady":Z
    .end local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    .end local p1    # "allDeepShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local p2    # "contentUri":Landroid/net/Uri;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "logger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    throw v2

    .line 959
    .end local v4    # "c":Lcom/android/launcher3/model/LoaderCursor;
    .end local v8    # "shortcutKeyToPinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    .end local v18    # "extras":Landroid/os/Bundle;
    .end local v21    # "tempPackageKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v27    # "installingPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v10    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v11    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v12    # "isSafeMode":Z
    .local v13, "isSdCardReady":Z
    .restart local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .restart local v15    # "clearDb":Z
    .restart local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    .restart local p1    # "allDeepShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local p2    # "contentUri":Landroid/net/Uri;
    .restart local p3    # "selection":Ljava/lang/String;
    .restart local p4    # "logger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    :catchall_29
    move-exception v0

    move-object/from16 v7, p1

    move-object v9, v3

    move-object/from16 v19, v10

    move/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v43, v14

    move/from16 v23, v15

    goto :goto_36

    :catchall_2a
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v17, v9

    move-object/from16 v19, v10

    move/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v43, v14

    move/from16 v23, v15

    move-object v9, v3

    :goto_36
    move-object v13, v11

    move-object v2, v0

    .end local v3    # "context":Landroid/content/Context;
    .end local v10    # "contentResolver":Landroid/content/ContentResolver;
    .end local v11    # "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .end local v12    # "isSafeMode":Z
    .end local v14    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v15    # "clearDb":Z
    .restart local v9    # "context":Landroid/content/Context;
    .local v13, "pmHelper":Lcom/android/launcher3/util/PackageManagerHelper;
    .restart local v19    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v23    # "clearDb":Z
    .restart local v25    # "isSafeMode":Z
    .restart local v26    # "isSdCardReady":Z
    .restart local v43    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    :goto_37
    monitor-exit v17
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_2b

    throw v2

    :catchall_2b
    move-exception v0

    move-object v2, v0

    goto :goto_37

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public run()V
    .locals 12

    .line 201
    monitor-enter p0

    .line 203
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 204
    monitor-exit p0

    return-void

    .line 206
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 208
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "LoaderTask"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    .local v0, "traceToken":Ljava/lang/Object;
    new-instance v1, Landroid/util/TimingLogger;

    const-string v2, "LoaderTask"

    const-string v3, "run"

    invoke-direct {v1, v2, v3}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v1, "logger":Landroid/util/TimingLogger;
    new-instance v2, Lcom/android/launcher3/model/LoaderMemoryLogger;

    invoke-direct {v2}, Lcom/android/launcher3/model/LoaderMemoryLogger;-><init>()V

    .line 211
    .local v2, "memoryLogger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    :try_start_1
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/launcher3/LauncherModel;->beginLoader(Lcom/android/launcher3/model/LoaderTask;)Lcom/android/launcher3/LauncherModel$LoaderTransaction;

    move-result-object v3
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 212
    .local v3, "transaction":Lcom/android/launcher3/LauncherModel$LoaderTransaction;
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v4, "allShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const-string v5, "LoadWorkspace"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 215
    :try_start_3
    invoke-direct {p0, v4, v2}, Lcom/android/launcher3/model/LoaderTask;->loadWorkspace(Ljava/util/List;Lcom/android/launcher3/model/LoaderMemoryLogger;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 217
    :try_start_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 218
    nop

    .line 219
    const-string v5, "loadWorkspace"

    invoke-static {v1, v5}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    .line 225
    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mDbName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 226
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 227
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->sanitizeData()V

    .line 228
    const-string v5, "sanitizeData"

    invoke-static {v1, v5}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    .line 231
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 232
    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher3/model/LoaderResults;->bindWorkspace(Z)V

    .line 233
    const-string v5, "bindWorkspace"

    invoke-static {v1, v5}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    .line 235
    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-virtual {v5}, Lcom/android/launcher3/model/ModelDelegate;->workspaceLoadComplete()V

    .line 237
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->sendFirstScreenActiveInstallsBroadcast()V

    .line 238
    const-string v5, "sendFirstScreenActiveInstallsBroadcast"

    invoke-static {v1, v5}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    .line 242
    const-string v5, "step 1 complete"

    invoke-static {v1, v5}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 246
    const-string v5, "LoadAllApps"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 249
    :try_start_5
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->loadAllApps()Ljava/util/List;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 251
    .local v5, "allActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 252
    nop

    .line 253
    const-string v7, "loadAllApps"

    invoke-static {v1, v7}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 256
    sget-object v7, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_OWN_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v7}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 257
    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v7}, Lcom/android/launcher3/model/LoaderResults;->bindOwnOrderApps()V

    .line 259
    :cond_2
    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v7}, Lcom/android/launcher3/model/LoaderResults;->bindAllApps()V

    .line 260
    const-string v7, "bindAllApps"

    invoke-static {v1, v7}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 263
    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    invoke-virtual {v7}, Lcom/android/launcher3/icons/IconCache;->getUpdateHandler()Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;

    move-result-object v7

    .line 264
    .local v7, "updateHandler":Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;
    invoke-direct {p0, v7}, Lcom/android/launcher3/model/LoaderTask;->setIgnorePackages(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)V

    .line 265
    iget-object v8, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 266
    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherActivityCachingLogic;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 267
    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda4;

    invoke-direct {v10, v9}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/LauncherModel;)V

    .line 265
    invoke-virtual {v7, v5, v8, v10}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    .line 268
    const-string v8, "update icon cache"

    invoke-static {v1, v8}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    .line 270
    sget-object v8, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEEP_SHORTCUT_ICON_CACHE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v8}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 271
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 272
    const-string v8, "save shortcuts in icon cache"

    invoke-static {v1, v8}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    .line 273
    new-instance v8, Lcom/android/launcher3/icons/ShortcutCachingLogic;

    invoke-direct {v8}, Lcom/android/launcher3/icons/ShortcutCachingLogic;-><init>()V

    iget-object v9, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 274
    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda4;

    invoke-direct {v10, v9}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/LauncherModel;)V

    .line 273
    invoke-virtual {v7, v4, v8, v10}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    .line 278
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    .line 279
    const-string v8, "step 2 complete"

    invoke-static {v1, v8}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 283
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->loadDeepShortcuts()Ljava/util/List;

    move-result-object v8

    .line 284
    .local v8, "allDeepShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const-string v9, "loadDeepShortcuts"

    invoke-static {v1, v9}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    .line 286
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 287
    iget-object v9, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderResults;->bindDeepShortcuts()V

    .line 288
    const-string v9, "bindDeepShortcuts"

    invoke-static {v1, v9}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    .line 290
    sget-object v9, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEEP_SHORTCUT_ICON_CACHE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v9}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 291
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 292
    const-string v9, "save deep shortcuts in icon cache"

    invoke-static {v1, v9}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    .line 293
    new-instance v9, Lcom/android/launcher3/icons/ShortcutCachingLogic;

    invoke-direct {v9}, Lcom/android/launcher3/icons/ShortcutCachingLogic;-><init>()V

    new-instance v10, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda5;

    invoke-direct {v10}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    .line 298
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    .line 299
    const-string v9, "step 3 complete"

    invoke-static {v1, v9}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 303
    iget-object v9, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v9, v9, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v10, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    const/4 v11, 0x0

    .line 304
    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v9

    .line 305
    .local v9, "allWidgetsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;>;"
    const-string v10, "load widgets"

    invoke-static {v1, v10}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 308
    iget-object v10, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v10}, Lcom/android/launcher3/model/LoaderResults;->bindWidgets()V

    .line 309
    const-string v10, "bindWidgets"

    invoke-static {v1, v10}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 312
    new-instance v10, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;

    iget-object v11, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 313
    invoke-virtual {v11}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11, v6}, Lcom/android/launcher3/icons/ComponentWithLabelAndIcon$ComponentWithIconCachingLogic;-><init>(Landroid/content/Context;Z)V

    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 314
    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda6;

    invoke-direct {v11, v6}, Lcom/android/launcher3/model/LoaderTask$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/LauncherModel;)V

    .line 312
    invoke-virtual {v7, v9, v10, v11}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    .line 315
    const-string v6, "save widgets in icon cache"

    invoke-static {v1, v6}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    .line 318
    sget-object v6, Lcom/android/launcher3/config/FeatureFlags;->FOLDER_NAME_SUGGEST:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v6}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 319
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->loadFolderNames()V

    .line 322
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 323
    invoke-virtual {v7}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->finish()V

    .line 324
    const-string v6, "finish icon update"

    invoke-static {v1, v6}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V

    .line 326
    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-virtual {v6}, Lcom/android/launcher3/model/ModelDelegate;->modelLoadComplete()V

    .line 327
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->commit()V

    .line 328
    invoke-virtual {v2}, Lcom/android/launcher3/model/LoaderMemoryLogger;->clearLogs()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 329
    .end local v4    # "allShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v5    # "allActivityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v7    # "updateHandler":Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;
    .end local v8    # "allDeepShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v9    # "allWidgetsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;>;"
    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_1

    .line 251
    .restart local v4    # "allShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :catchall_0
    move-exception v5

    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 252
    nop

    .end local v0    # "traceToken":Ljava/lang/Object;
    .end local v1    # "logger":Landroid/util/TimingLogger;
    .end local v2    # "memoryLogger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    .end local v3    # "transaction":Lcom/android/launcher3/LauncherModel$LoaderTransaction;
    .end local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    throw v5

    .line 217
    .restart local v0    # "traceToken":Ljava/lang/Object;
    .restart local v1    # "logger":Landroid/util/TimingLogger;
    .restart local v2    # "memoryLogger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    .restart local v3    # "transaction":Lcom/android/launcher3/LauncherModel$LoaderTransaction;
    .restart local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    :catchall_1
    move-exception v5

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 218
    nop

    .end local v0    # "traceToken":Ljava/lang/Object;
    .end local v1    # "logger":Landroid/util/TimingLogger;
    .end local v2    # "memoryLogger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    .end local v3    # "transaction":Lcom/android/launcher3/LauncherModel$LoaderTransaction;
    .end local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 211
    .end local v4    # "allShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v0    # "traceToken":Ljava/lang/Object;
    .restart local v1    # "logger":Landroid/util/TimingLogger;
    .restart local v2    # "memoryLogger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    .restart local v3    # "transaction":Lcom/android/launcher3/LauncherModel$LoaderTransaction;
    .restart local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    :catchall_2
    move-exception v4

    if-eqz v3, :cond_6

    :try_start_9
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v5

    :try_start_a
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "traceToken":Ljava/lang/Object;
    .end local v1    # "logger":Landroid/util/TimingLogger;
    .end local v2    # "memoryLogger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    .end local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    :cond_6
    :goto_0
    throw v4
    :try_end_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 336
    .end local v3    # "transaction":Lcom/android/launcher3/LauncherModel$LoaderTransaction;
    .restart local v0    # "traceToken":Ljava/lang/Object;
    .restart local v1    # "logger":Landroid/util/TimingLogger;
    .restart local v2    # "memoryLogger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    .restart local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    :catchall_4
    move-exception v3

    goto :goto_2

    .line 332
    :catch_0
    move-exception v3

    .line 333
    .local v3, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v2}, Lcom/android/launcher3/model/LoaderMemoryLogger;->printLogs()V

    .line 334
    nop

    .end local v0    # "traceToken":Ljava/lang/Object;
    .end local v1    # "logger":Landroid/util/TimingLogger;
    .end local v2    # "memoryLogger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    .end local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    throw v3

    .line 329
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "traceToken":Ljava/lang/Object;
    .restart local v1    # "logger":Landroid/util/TimingLogger;
    .restart local v2    # "memoryLogger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    .restart local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    :catch_1
    move-exception v3

    .line 331
    .local v3, "e":Ljava/util/concurrent/CancellationException;
    const-string v4, "Cancelled"

    invoke-static {v1, v4}, Lcom/android/launcher3/model/LoaderTask;->logASplit(Landroid/util/TimingLogger;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 336
    .end local v3    # "e":Ljava/util/concurrent/CancellationException;
    :cond_7
    :goto_1
    invoke-virtual {v1}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 337
    nop

    .line 338
    sget-object v3, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    .line 339
    return-void

    .line 336
    :goto_2
    invoke-virtual {v1}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 337
    throw v3

    .line 206
    .end local v0    # "traceToken":Ljava/lang/Object;
    .end local v1    # "logger":Landroid/util/TimingLogger;
    .end local v2    # "memoryLogger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    :catchall_5
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0
.end method

.method public declared-synchronized stopLocked()V
    .locals 1

    monitor-enter p0

    .line 342
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    .line 343
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 341
    .end local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized waitForIdle()V
    .locals 3

    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/LoaderResults;->newIdleLock(Ljava/lang/Object;)Lcom/android/launcher3/util/LooperIdleLock;

    move-result-object v0

    .line 177
    .local v0, "idleLock":Lcom/android/launcher3/util/LooperIdleLock;
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-nez v1, :cond_0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LooperIdleLock;->awaitLocked(J)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 178
    .end local p0    # "this":Lcom/android/launcher3/model/LoaderTask;
    :cond_0
    monitor-exit p0

    return-void

    .line 173
    .end local v0    # "idleLock":Lcom/android/launcher3/util/LooperIdleLock;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
