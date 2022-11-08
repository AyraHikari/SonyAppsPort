.class public Lcom/android/launcher3/model/WidgetsModel;
.super Ljava/lang/Object;
.source "WidgetsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;,
        Lcom/android/launcher3/model/WidgetsModel$WidgetValidityCheck;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final GO_DISABLE_NOTIFICATION_DOTS:Z = false

.field public static final GO_DISABLE_WIDGETS:Z = false

.field private static final TAG:Ljava/lang/String; = "WidgetsModel"


# instance fields
.field private final mWidgetsList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/Map;

    return-void
.end method

.method private getPackageUserKeys(Landroid/content/Context;Lcom/android/launcher3/model/WidgetItem;)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/launcher3/model/WidgetItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/model/WidgetItem;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;"
        }
    .end annotation

    .line 246
    nop

    .line 247
    invoke-static {p1}, Lcom/android/launcher3/widget/WidgetSections;->getWidgetsToCategory(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 248
    .local v0, "widgetsToCategories":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/launcher3/util/IntSet;>;"
    iget-object v1, p2, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/IntSet;

    .line 249
    .local v1, "categories":Lcom/android/launcher3/util/IntSet;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v2, "packageUserKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/PackageUserKey;>;"
    new-instance v3, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda6;

    invoke-direct {v3, v2, p2}, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;Lcom/android/launcher3/model/WidgetItem;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/IntSet;->forEach(Ljava/util/function/Consumer;)V

    .line 263
    return-object v2

    .line 250
    .end local v2    # "packageUserKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/PackageUserKey;>;"
    :cond_1
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher3/util/PackageUserKey;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v5, p2, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    .line 251
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-direct {v4, v5, v6}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    aput-object v4, v2, v3

    .line 250
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$getAllWidgetsWithoutShortcuts$0(Lcom/android/launcher3/model/WidgetItem;)Z
    .locals 1
    .param p0, "item"    # Lcom/android/launcher3/model/WidgetItem;

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getAllWidgetsWithoutShortcuts$1(Ljava/util/Map;Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/util/List;)V
    .locals 4
    .param p0, "packagesToWidgets"    # Ljava/util/Map;
    .param p1, "packageItemInfo"    # Lcom/android/launcher3/model/data/PackageItemInfo;
    .param p2, "widgetsAndShortcuts"    # Ljava/util/List;

    .line 100
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda3;-><init>()V

    .line 101
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 102
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 103
    .local v0, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 104
    new-instance v1, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v2, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    return-void
.end method

.method static synthetic lambda$getPackageUserKeys$6(Ljava/util/List;Lcom/android/launcher3/model/WidgetItem;Ljava/lang/Integer;)V
    .locals 3
    .param p0, "packageUserKeys"    # Ljava/util/List;
    .param p1, "item"    # Lcom/android/launcher3/model/WidgetItem;
    .param p2, "category"    # Ljava/lang/Integer;

    .line 255
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 256
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v1, p1, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    .line 257
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 256
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(ILandroid/os/UserHandle;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :goto_0
    return-void
.end method

.method static synthetic lambda$setWidgetsAndShortcuts$2(Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/util/PackageUserKey;)Landroid/util/Pair;
    .locals 2
    .param p0, "packageItemInfoCache"    # Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;
    .param p1, "widgetItem"    # Lcom/android/launcher3/model/WidgetItem;
    .param p2, "key"    # Lcom/android/launcher3/util/PackageUserKey;

    .line 181
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->getOrCreate(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$setWidgetsAndShortcuts$4(Landroid/util/Pair;)Lcom/android/launcher3/model/data/PackageItemInfo;
    .locals 1
    .param p0, "pair"    # Landroid/util/Pair;

    .line 182
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    return-object v0
.end method

.method static synthetic lambda$setWidgetsAndShortcuts$5(Landroid/util/Pair;)Lcom/android/launcher3/model/WidgetItem;
    .locals 1
    .param p0, "pair"    # Landroid/util/Pair;

    .line 182
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/WidgetItem;

    return-object v0
.end method

.method public static newPendingItemInfo(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/PackageItemInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 232
    nop

    .line 233
    invoke-static {p0}, Lcom/android/launcher3/widget/WidgetSections;->getWidgetsToCategory(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 234
    .local v0, "widgetsToCategories":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/launcher3/util/IntSet;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 236
    .local v1, "categoriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    .line 237
    .local v2, "firstCategory":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 238
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 240
    :cond_0
    new-instance v3, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2, p2}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-object v3

    .line 242
    .end local v1    # "categoriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "firstCategory":I
    :cond_1
    new-instance v1, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v1
.end method

.method private declared-synchronized setWidgetsAndShortcuts(Ljava/util/ArrayList;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 6
    .param p2, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p3, "packageUser"    # Lcom/android/launcher3/util/PackageUserKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;",
            "Lcom/android/launcher3/LauncherAppState;",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ")V"
        }
    .end annotation

    .local p1, "rawWidgetsShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;"
    monitor-enter p0

    .line 167
    :try_start_0
    new-instance v0, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;-><init>(Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache-IA;)V

    .line 169
    .local v0, "packageItemInfoCache":Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;
    if-nez p3, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 174
    .end local p0    # "this":Lcom/android/launcher3/model/WidgetsModel;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/Map;

    invoke-virtual {v0, p3}, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->getOrCreate(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/WidgetsModel$WidgetValidityCheck;

    invoke-direct {v3, p2}, Lcom/android/launcher3/model/WidgetsModel$WidgetValidityCheck;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    .line 179
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, v0}, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/WidgetsModel;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;)V

    .line 180
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda1;-><init>()V

    new-instance v4, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda2;-><init>()V

    .line 182
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 178
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 185
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    .line 186
    .local v1, "iconCache":Lcom/android/launcher3/icons/IconCache;
    invoke-virtual {v0}, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 187
    .local v3, "p":Lcom/android/launcher3/model/data/PackageItemInfo;
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .end local v3    # "p":Lcom/android/launcher3/model/data/PackageItemInfo;
    goto :goto_1

    .line 189
    :cond_1
    monitor-exit p0

    return-void

    .line 166
    .end local v0    # "packageItemInfoCache":Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;
    .end local v1    # "iconCache":Lcom/android/launcher3/icons/IconCache;
    .end local p1    # "rawWidgetsShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;"
    .end local p2    # "app":Lcom/android/launcher3/LauncherAppState;
    .end local p3    # "packageUser":Lcom/android/launcher3/util/PackageUserKey;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized getAllWidgetsWithoutShortcuts()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 98
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v0, "packagesToWidgets":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/PackageUserKey;Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;>;"
    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/Map;

    new-instance v2, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-object v0

    .line 97
    .end local v0    # "packagesToWidgets":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/PackageUserKey;Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;>;"
    .end local p0    # "this":Lcom/android/launcher3/model/WidgetsModel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWidgetProviderInfoByProviderName(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/WidgetItem;
    .locals 5
    .param p1, "providerName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/Map;

    new-instance v1, Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 216
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 215
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 217
    .local v0, "widgetsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 218
    return-object v1

    .line 221
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/WidgetItem;

    .line 222
    .local v3, "item":Lcom/android/launcher3/model/WidgetItem;
    iget-object v4, v3, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    return-object v3

    .line 225
    .end local v3    # "item":Lcom/android/launcher3/model/WidgetItem;
    :cond_1
    goto :goto_0

    .line 226
    :cond_2
    return-object v1
.end method

.method public declared-synchronized getWidgetsListForPicker(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 82
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    new-instance v1, Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    invoke-direct {v1, p1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    .line 85
    .local v1, "indexer":Lcom/android/launcher3/compat/AlphabeticIndexCompat;
    iget-object v2, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 86
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 87
    .local v4, "pkgItem":Lcom/android/launcher3/model/data/PackageItemInfo;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 88
    .local v5, "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    iget-object v6, v4, Lcom/android/launcher3/model/data/PackageItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v6, :cond_0

    const-string v6, ""

    goto :goto_1

    .line 89
    .end local p0    # "this":Lcom/android/launcher3/model/WidgetsModel;
    :cond_0
    iget-object v6, v4, Lcom/android/launcher3/model/data/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    nop

    .line 90
    .local v6, "sectionName":Ljava/lang/String;
    new-instance v7, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    invoke-direct {v7, v4, v6, v5}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v7, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    invoke-direct {v7, v4, v6, v5}, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;>;"
    .end local v4    # "pkgItem":Lcom/android/launcher3/model/data/PackageItemInfo;
    .end local v5    # "widgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    .end local v6    # "sectionName":Ljava/lang/String;
    goto :goto_0

    .line 93
    :cond_1
    monitor-exit p0

    return-object v0

    .line 81
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    .end local v1    # "indexer":Lcom/android/launcher3/compat/AlphabeticIndexCompat;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method synthetic lambda$setWidgetsAndShortcuts$3$com-android-launcher3-model-WidgetsModel(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;Lcom/android/launcher3/model/WidgetItem;)Ljava/util/stream/Stream;
    .locals 2
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "packageItemInfoCache"    # Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;
    .param p3, "widgetItem"    # Lcom/android/launcher3/model/WidgetItem;

    .line 180
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/launcher3/model/WidgetsModel;->getPackageUserKeys(Landroid/content/Context;Lcom/android/launcher3/model/WidgetItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2, p3}, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;Lcom/android/launcher3/model/WidgetItem;)V

    .line 181
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 180
    return-object v0
.end method

.method public onPackageIconsUpdated(Ljava/util/Set;Landroid/os/UserHandle;Lcom/android/launcher3/LauncherAppState;)V
    .locals 10
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "app"    # Lcom/android/launcher3/LauncherAppState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            "Lcom/android/launcher3/LauncherAppState;",
            ")V"
        }
    .end annotation

    .line 193
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel;->mWidgetsList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 194
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 196
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 197
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 198
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/WidgetItem;

    .line 199
    .local v5, "item":Lcom/android/launcher3/model/WidgetItem;
    iget-object v6, v5, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 200
    iget-object v6, v5, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    if-eqz v6, :cond_0

    .line 201
    new-instance v6, Lcom/android/launcher3/model/WidgetItem;

    iget-object v7, v5, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v8

    .line 202
    invoke-virtual {p3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;Lcom/android/launcher3/icons/IconCache;Landroid/content/pm/PackageManager;)V

    .line 201
    invoke-interface {v2, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 204
    :cond_0
    new-instance v6, Lcom/android/launcher3/model/WidgetItem;

    iget-object v7, v5, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 205
    invoke-virtual {p3}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v8

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/icons/IconCache;)V

    .line 204
    invoke-interface {v2, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 197
    .end local v5    # "item":Lcom/android/launcher3/model/WidgetItem;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 210
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;>;"
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_2
    goto :goto_0

    .line 211
    :cond_3
    return-void
.end method

.method public update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 11
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "packageUser"    # Lcom/android/launcher3/util/PackageUserKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 120
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v1, "widgetsAndShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/WidgetItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v2, "updatedItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v3

    .line 125
    .local v3, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 128
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v5, v0}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    .line 129
    .local v5, "widgetManager":Lcom/android/launcher3/widget/WidgetManagerHelper;
    invoke-virtual {v5, p2}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getAllProviders(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/appwidget/AppWidgetProviderInfo;

    .line 130
    .local v7, "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    nop

    .line 131
    invoke-static {v0, v7}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v8

    .line 133
    .local v8, "launcherWidgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    new-instance v9, Lcom/android/launcher3/model/WidgetItem;

    .line 134
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v10

    invoke-direct {v9, v8, v3, v10}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/icons/IconCache;)V

    .line 133
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    nop

    .end local v7    # "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v8    # "launcherWidgetInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    goto :goto_0

    .line 140
    :cond_0
    invoke-static {v0, p2}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->queryList(Landroid/content/Context;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    .line 141
    .local v7, "info":Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
    new-instance v8, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v9

    invoke-direct {v8, v7, v9, v4}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;Lcom/android/launcher3/icons/IconCache;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    nop

    .end local v7    # "info":Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
    goto :goto_1

    .line 144
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher3/model/WidgetsModel;->setWidgetsAndShortcuts(Ljava/util/ArrayList;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v3    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "widgetManager":Lcom/android/launcher3/widget/WidgetManagerHelper;
    goto :goto_2

    .line 145
    :catch_0
    move-exception v3

    .line 146
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v2

    .line 152
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_2
    throw v3
.end method
