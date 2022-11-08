.class public Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;
.super Ljava/lang/Object;
.source "DefaultAppSearchAlgorithm.java"

# interfaces
.implements Lcom/android/launcher3/search/SearchAlgorithm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/search/SearchAlgorithm<",
        "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_RESULTS_COUNT:I = 0x5


# instance fields
.field private final mAppState:Lcom/android/launcher3/LauncherAppState;

.field private mContext:Landroid/content/Context;

.field private final mResultHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResultHandler(Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mAppState:Lcom/android/launcher3/LauncherAppState;

    .line 57
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public static getTitleMatchResult(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 86
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/AppInfo;>;"
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "queryTextLower":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    invoke-static {}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->getInstance()Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    move-result-object v2

    .line 91
    .local v2, "matcher":Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/sonymobile/launcher/gameenhancer/GeHideAppsList;->getGeHideAppsList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    .local v3, "appsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/AppInfo;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    const/4 v4, 0x0

    .line 96
    .local v4, "resultCount":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 97
    .local v5, "total":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    const/4 v7, 0x5

    if-ge v4, v7, :cond_1

    .line 98
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/AppInfo;

    .line 99
    .local v7, "info":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v8, v7, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v2}, Lcom/android/launcher3/search/StringMatcherUtility;->matches(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 100
    invoke-static {v7}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->asApp(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v4, v4, 0x1

    .line 97
    .end local v7    # "info":Lcom/android/launcher3/model/data/AppInfo;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 104
    .end local v6    # "i":I
    :cond_1
    return-object v1
.end method


# virtual methods
.method public cancel(Z)V
    .locals 2
    .param p1, "interruptActiveRequests"    # Z

    .line 63
    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 66
    :cond_0
    return-void
.end method

.method public doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/search/SearchCallback<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p2, "callback":Lcom/android/launcher3/search/SearchCallback;, "Lcom/android/launcher3/search/SearchCallback<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;-><init>(Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 77
    return-void
.end method
