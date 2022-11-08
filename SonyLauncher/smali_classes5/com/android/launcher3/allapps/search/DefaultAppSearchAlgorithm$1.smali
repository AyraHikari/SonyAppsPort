.class Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "DefaultAppSearchAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;

.field final synthetic val$callback:Lcom/android/launcher3/search/SearchCallback;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;

    .line 70
    iput-object p1, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;->this$0:Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;

    iput-object p2, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;->val$query:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;->val$callback:Lcom/android/launcher3/search/SearchCallback;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method

.method static synthetic lambda$execute$0(Lcom/android/launcher3/search/SearchCallback;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "callback"    # Lcom/android/launcher3/search/SearchCallback;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/util/ArrayList;

    .line 74
    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/search/SearchCallback;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 5
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;->this$0:Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;

    invoke-static {v0}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->-$$Nest$fgetmContext(Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p3, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;->val$query:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->getTitleMatchResult(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 74
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;->this$0:Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;

    invoke-static {v1}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->-$$Nest$fgetmResultHandler(Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;->val$callback:Lcom/android/launcher3/search/SearchCallback;

    iget-object v3, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;->val$query:Ljava/lang/String;

    new-instance v4, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v3, v0}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/search/SearchCallback;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method
