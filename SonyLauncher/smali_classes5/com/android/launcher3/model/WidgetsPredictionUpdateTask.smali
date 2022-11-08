.class public final Lcom/android/launcher3/model/WidgetsPredictionUpdateTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "WidgetsPredictionUpdateTask.java"


# instance fields
.field private final mPredictorState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;Ljava/util/List;)V
    .locals 0
    .param p1, "predictorState"    # Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask;->mPredictorState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    .line 44
    iput-object p2, p0, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask;->mTargets:Ljava/util/List;

    .line 45
    return-void
.end method

.method static synthetic lambda$execute$0(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Lcom/android/launcher3/util/ComponentKey;
    .locals 3
    .param p0, "widget"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 57
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    iget-object v1, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method static synthetic lambda$execute$1(Ljava/util/Set;Lcom/android/launcher3/model/WidgetItem;)Z
    .locals 3
    .param p0, "widgetsInWorkspace"    # Ljava/util/Set;
    .param p1, "item"    # Lcom/android/launcher3/model/WidgetItem;

    .line 72
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    iget-object v1, p1, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$execute$2(Lcom/android/launcher3/model/WidgetItem;)Lcom/android/launcher3/util/ComponentKey;
    .locals 0
    .param p0, "widget"    # Lcom/android/launcher3/model/WidgetItem;

    .line 87
    return-object p0
.end method

.method static synthetic lambda$execute$3(Lcom/android/launcher3/model/WidgetItem;)Lcom/android/launcher3/model/WidgetItem;
    .locals 0
    .param p0, "widget"    # Lcom/android/launcher3/model/WidgetItem;

    .line 88
    return-object p0
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 11
    .param p1, "appState"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 56
    iget-object v0, p2, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 58
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    .line 57
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 59
    .local v0, "widgetsInWorkspace":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/launcher3/util/ComponentKey;>;"
    iget-object v1, p2, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    .line 60
    invoke-virtual {v1}, Lcom/android/launcher3/model/WidgetsModel;->getAllWidgetsWithoutShortcuts()Ljava/util/Map;

    move-result-object v1

    .line 62
    .local v1, "allWidgets":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/PackageUserKey;Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;>;"
    new-instance v2, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    iget-object v3, p0, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask;->mPredictorState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget v3, v3, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->containerId:I

    invoke-direct {v2, v3}, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;-><init>(I)V

    .line 65
    .local v2, "fixedContainerItems":Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;
    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_LOCAL_RECOMMENDED_WIDGETS_FILTER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    const/16 v4, -0x6f

    if-eqz v3, :cond_2

    .line 66
    iget-object v3, p0, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask;->mTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/prediction/AppTarget;

    .line 67
    .local v5, "app":Landroid/app/prediction/AppTarget;
    new-instance v6, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v5}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 68
    invoke-virtual {v5}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 69
    .local v6, "packageUserKey":Lcom/android/launcher3/util/PackageUserKey;
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 70
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0}, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    .line 71
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    .line 74
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 75
    .local v7, "notAddedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 77
    iget-object v8, v2, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    new-instance v9, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    const/4 v10, 0x0

    .line 79
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/model/WidgetItem;

    iget-object v10, v10, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-direct {v9, v10, v4}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I)V

    .line 77
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v5    # "app":Landroid/app/prediction/AppTarget;
    .end local v6    # "packageUserKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v7    # "notAddedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    :cond_0
    goto :goto_0

    :cond_1
    goto/16 :goto_2

    .line 85
    :cond_2
    nop

    .line 86
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask$$ExternalSyntheticLambda3;-><init>()V

    new-instance v6, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask$$ExternalSyntheticLambda4;-><init>()V

    .line 87
    invoke-static {v5, v6}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 89
    .local v3, "widgetItems":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/model/WidgetItem;>;"
    iget-object v5, p0, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask;->mTargets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/prediction/AppTarget;

    .line 90
    .local v6, "app":Landroid/app/prediction/AppTarget;
    invoke-virtual {v6}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 91
    goto :goto_1

    .line 93
    :cond_3
    new-instance v7, Lcom/android/launcher3/util/ComponentKey;

    new-instance v8, Landroid/content/ComponentName;

    .line 94
    invoke-virtual {v6}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 95
    .local v7, "targetWidget":Lcom/android/launcher3/util/ComponentKey;
    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 96
    iget-object v8, v2, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    new-instance v9, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 97
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/model/WidgetItem;

    iget-object v10, v10, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-direct {v9, v10, v4}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I)V

    .line 96
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v6    # "app":Landroid/app/prediction/AppTarget;
    .end local v7    # "targetWidget":Lcom/android/launcher3/util/ComponentKey;
    :cond_4
    goto :goto_1

    .line 103
    .end local v3    # "widgetItems":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/model/WidgetItem;>;"
    :cond_5
    :goto_2
    iget-object v3, p2, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v4, p0, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask;->mPredictorState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget v4, v4, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->containerId:I

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 104
    invoke-virtual {p0, v2}, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask;->bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    .line 107
    return-void
.end method
