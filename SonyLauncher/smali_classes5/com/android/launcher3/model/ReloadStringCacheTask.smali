.class public Lcom/android/launcher3/model/ReloadStringCacheTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "ReloadStringCacheTask.java"


# instance fields
.field private mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/ModelDelegate;)V
    .locals 0
    .param p1, "modelDelegate"    # Lcom/android/launcher3/model/ModelDelegate;

    .line 27
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/launcher3/model/ReloadStringCacheTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    .line 29
    return-void
.end method

.method static synthetic lambda$execute$0(Lcom/android/launcher3/model/StringCache;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "cloneSC"    # Lcom/android/launcher3/model/StringCache;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 36
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindStringCache(Lcom/android/launcher3/model/StringCache;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 2
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "appsList"    # Lcom/android/launcher3/model/AllAppsList;

    .line 33
    monitor-enter p2

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/ReloadStringCacheTask;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    iget-object v1, p2, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ModelDelegate;->loadStringCache(Lcom/android/launcher3/model/StringCache;)V

    .line 35
    iget-object v0, p2, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    invoke-virtual {v0}, Lcom/android/launcher3/model/StringCache;->clone()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    .line 36
    .local v0, "cloneSC":Lcom/android/launcher3/model/StringCache;
    new-instance v1, Lcom/android/launcher3/model/ReloadStringCacheTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/ReloadStringCacheTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/StringCache;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/ReloadStringCacheTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 37
    .end local v0    # "cloneSC":Lcom/android/launcher3/model/StringCache;
    monitor-exit p2

    .line 38
    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
