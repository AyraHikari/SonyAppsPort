.class public Lcom/android/launcher3/hybridhotseat/HotseatPredictionModel;
.super Ljava/lang/Object;
.source "HotseatPredictionModel.java"


# static fields
.field private static final BUNDLE_KEY_CURRENT_ITEMS:Ljava/lang/String; = "current_items"

.field private static final BUNDLE_KEY_PIN_EVENTS:Ljava/lang/String; = "pin_events"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDataModelToAppTargetBundle(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)Landroid/os/Bundle;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/prediction/AppTargetEvent;>;"
    invoke-virtual {p1}, Lcom/android/launcher3/model/BgDataModel;->getAllWorkspaceItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 48
    .local v2, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 49
    .local v4, "item":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-static {p0, v4}, Lcom/android/launcher3/model/PredictionHelper;->getAppTargetFromItemInfo(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/app/prediction/AppTarget;

    move-result-object v5

    .line 50
    .local v5, "target":Landroid/app/prediction/AppTarget;
    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/android/launcher3/model/PredictionHelper;->isTrackedForHotseatPrediction(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    const/4 v6, 0x3

    invoke-static {v5, v6, v4}, Lcom/android/launcher3/model/PredictionHelper;->wrapAppTargetWithItemLocation(Landroid/app/prediction/AppTarget;ILcom/android/launcher3/model/data/ItemInfo;)Landroid/app/prediction/AppTargetEvent;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v4    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v5    # "target":Landroid/app/prediction/AppTarget;
    goto :goto_0

    .line 53
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v3, "currentTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/prediction/AppTarget;>;"
    iget-object v4, p1, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/16 v5, -0x67

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    .line 55
    .local v4, "hotseatItems":Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;
    if-eqz v4, :cond_3

    .line 56
    iget-object v5, v4, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    .line 57
    .local v6, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-static {p0, v6}, Lcom/android/launcher3/model/PredictionHelper;->getAppTargetFromItemInfo(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/app/prediction/AppTarget;

    move-result-object v7

    .line 58
    .local v7, "target":Landroid/app/prediction/AppTarget;
    if-eqz v7, :cond_2

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v6    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v7    # "target":Landroid/app/prediction/AppTarget;
    :cond_2
    goto :goto_1

    .line 61
    :cond_3
    const-string v5, "pin_events"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 62
    const-string v5, "current_items"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 63
    return-object v0
.end method
