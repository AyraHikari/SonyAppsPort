.class Lcom/android/launcher3/LauncherModel$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$ModelUpdateTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->updateApp(Lcom/android/launcher3/model/data/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$appInfo:Lcom/android/launcher3/model/data/AppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherModel;

    .line 204
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$3;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$3;->val$appInfo:Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "model"    # Lcom/android/launcher3/LauncherModel;
    .param p3, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p4, "allAppsList"    # Lcom/android/launcher3/model/AllAppsList;
    .param p5, "uiExecutor"    # Ljava/util/concurrent/Executor;

    .line 215
    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$3;->bgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 216
    return-void
.end method

.method public run()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$3;->bgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$3;->bgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$3;->val$appInfo:Lcom/android/launcher3/model/data/AppInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/AppInfo;->id:I

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$3;->val$appInfo:Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 222
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$3;->bgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->allAppsOwnOrderItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$3;->val$appInfo:Lcom/android/launcher3/model/data/AppInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/AppInfo;->id:I

    if-ne v2, v3, :cond_0

    .line 224
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$3;->val$appInfo:Lcom/android/launcher3/model/data/AppInfo;

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 228
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :cond_1
    monitor-exit v0

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
