.class Lcom/android/launcher3/LauncherModel$5;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->onSessionFailure(Ljava/lang/String;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherModel;

    .line 608
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$5;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$5;->val$user:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$5;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 5
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 611
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 612
    .local v0, "removedIds":Lcom/android/launcher3/util/IntSet;
    monitor-enter p2

    .line 613
    :try_start_0
    iget-object v1, p2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 614
    .local v2, "info":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v3, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 615
    invoke-virtual {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$5;->val$user:Landroid/os/UserHandle;

    iget-object v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 616
    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 617
    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$5;->val$packageName:Ljava/lang/String;

    .line 618
    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 619
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 621
    .end local v2    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_0
    goto :goto_0

    .line 622
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 625
    nop

    .line 626
    invoke-static {v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;

    move-result-object v1

    const-string v2, "removed because install session failed"

    .line 625
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/LauncherModel$5;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    .line 629
    :cond_2
    return-void

    .line 622
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
