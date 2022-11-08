.class Lcom/android/launcher3/LauncherModel$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider$HideLauncherIconListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPackageUpdateTaskStateWatcher:Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;

.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherModel;

    .line 162
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$2;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;

    invoke-direct {v0}, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel$2;->mPackageUpdateTaskStateWatcher:Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;

    return-void
.end method


# virtual methods
.method public onDeleted(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 195
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$2;->this$0:Lcom/android/launcher3/LauncherModel;

    new-instance v1, Lcom/android/launcher3/model/PackageUpdatedTask;

    .line 196
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 197
    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v1, v4, v2, v3}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->submitModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 199
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$2;->mPackageUpdateTaskStateWatcher:Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;

    invoke-virtual {v1, v0}, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->start(Ljava/util/concurrent/Future;)V

    .line 200
    return-void
.end method

.method public onInserted(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 169
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 170
    const-string v0, "com.sonymobile.gameenhancer"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 171
    .local v1, "isGameEnhancerContainedInPackageList":Z
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$2;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->existsGameEnhancerShortcut()Z

    move-result v2

    .line 173
    .local v2, "existsGameEnhancerShortcut":Z
    if-eqz v1, :cond_1

    .line 174
    if-nez v2, :cond_0

    .line 175
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v3, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;>;"
    invoke-static {}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerUtil;->createGameEnhancerItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$2;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Ljava/util/List;)V

    .line 179
    .end local v3    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;>;"
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 182
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 185
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher3/LauncherModel$2;->this$0:Lcom/android/launcher3/LauncherModel;

    new-instance v6, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/16 v7, 0x14

    .line 187
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-direct {v6, v7, v8, v9}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    .line 185
    invoke-virtual {v5, v6}, Lcom/android/launcher3/LauncherModel;->submitModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 190
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$2;->mPackageUpdateTaskStateWatcher:Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;

    invoke-virtual {v3, v0}, Lcom/sonymobile/launcher/gameenhancer/PackageUpdateTaskStateWatcher;->start(Ljava/util/List;)V

    .line 191
    return-void
.end method
