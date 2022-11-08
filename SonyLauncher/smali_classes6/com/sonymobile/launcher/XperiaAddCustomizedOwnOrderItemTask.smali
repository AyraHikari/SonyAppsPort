.class public Lcom/sonymobile/launcher/XperiaAddCustomizedOwnOrderItemTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "XperiaAddCustomizedOwnOrderItemTask.java"


# instance fields
.field private mItemInfo:Lcom/android/launcher3/model/data/AppInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 0
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 26
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonymobile/launcher/XperiaAddCustomizedOwnOrderItemTask;->mItemInfo:Lcom/android/launcher3/model/data/AppInfo;

    .line 28
    return-void
.end method

.method private findCustomizedPositionForItem(Landroid/content/Context;Ljava/lang/String;)Lcom/sonymobile/launcher/data/Item;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/sonymobile/launcher/customization/AppTrayCustomization;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/launcher/customization/AppTrayCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/launcher/storage/Storage;)V

    .line 54
    .local v0, "appTrayCustomization":Lcom/sonymobile/launcher/customization/AppTrayCustomization;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->setCheckIfInstalled(Z)V

    .line 55
    invoke-virtual {v0}, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->applyCustomization()Z

    .line 57
    invoke-virtual {v0}, Lcom/sonymobile/launcher/customization/AppTrayCustomization;->getItems()Ljava/util/List;

    move-result-object v2

    .line 58
    .local v2, "customItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/launcher/data/Item;

    .line 59
    .local v4, "customizedItem":Lcom/sonymobile/launcher/data/Item;
    instance-of v5, v4, Lcom/sonymobile/launcher/data/FolderItem;

    if-eqz v5, :cond_3

    .line 60
    move-object v5, v4

    check-cast v5, Lcom/sonymobile/launcher/data/FolderItem;

    invoke-virtual {v5}, Lcom/sonymobile/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v5

    .line 62
    .local v5, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    if-nez v5, :cond_0

    return-object v1

    .line 64
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/launcher/data/Item;

    .line 65
    .local v7, "itemInFolder":Lcom/sonymobile/launcher/data/Item;
    invoke-virtual {v7}, Lcom/sonymobile/launcher/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 66
    return-object v4

    .line 68
    .end local v7    # "itemInFolder":Lcom/sonymobile/launcher/data/Item;
    :cond_1
    goto :goto_1

    .line 64
    .end local v5    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    :cond_2
    goto :goto_2

    .line 69
    :cond_3
    invoke-virtual {v4}, Lcom/sonymobile/launcher/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 72
    return-object v4

    .line 69
    :cond_4
    :goto_2
    nop

    .line 74
    .end local v4    # "customizedItem":Lcom/sonymobile/launcher/data/Item;
    goto :goto_0

    .line 75
    :cond_5
    return-object v1
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 5
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 32
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/launcher/XperiaAddCustomizedOwnOrderItemTask;->mItemInfo:Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/launcher/XperiaAddCustomizedOwnOrderItemTask;->findCustomizedPositionForItem(Landroid/content/Context;Ljava/lang/String;)Lcom/sonymobile/launcher/data/Item;

    move-result-object v0

    .line 34
    .local v0, "customizedItem":Lcom/sonymobile/launcher/data/Item;
    instance-of v1, v0, Lcom/sonymobile/launcher/data/FolderItem;

    if-eqz v1, :cond_2

    .line 35
    move-object v1, v0

    check-cast v1, Lcom/sonymobile/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/FolderItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "folderName":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 37
    monitor-enter p2

    .line 38
    :try_start_0
    iget-object v2, p2, Lcom/android/launcher3/model/BgDataModel;->allAppsOwnOrderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 39
    .local v3, "item":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v4, v3, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    new-instance v2, Lcom/sonymobile/launcher/XperiaAddCustomizedOwnOrderItemTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/launcher/XperiaAddCustomizedOwnOrderItemTask$$ExternalSyntheticLambda0;-><init>(Lcom/sonymobile/launcher/XperiaAddCustomizedOwnOrderItemTask;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p0, v2}, Lcom/sonymobile/launcher/XperiaAddCustomizedOwnOrderItemTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 44
    goto :goto_1

    .line 46
    .end local v3    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_0
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 50
    .end local v1    # "folderName":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void
.end method

.method synthetic lambda$execute$0$com-sonymobile-launcher-XperiaAddCustomizedOwnOrderItemTask(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "callbacks"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 41
    iget-object v0, p0, Lcom/sonymobile/launcher/XperiaAddCustomizedOwnOrderItemTask;->mItemInfo:Lcom/android/launcher3/model/data/AppInfo;

    invoke-interface {p2, v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->removeOwnOrderAppsItem(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 42
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, p0, Lcom/sonymobile/launcher/XperiaAddCustomizedOwnOrderItemTask;->mItemInfo:Lcom/android/launcher3/model/data/AppInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 43
    return-void
.end method
