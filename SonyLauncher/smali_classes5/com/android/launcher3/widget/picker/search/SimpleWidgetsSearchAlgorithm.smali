.class public final Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm;
.super Ljava/lang/Object;
.source "SimpleWidgetsSearchAlgorithm.java"

# interfaces
.implements Lcom/android/launcher3/search/SearchAlgorithm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/search/SearchAlgorithm<",
        "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

.field private final mResultHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/popup/PopupDataProvider;)V
    .locals 1
    .param p1, "dataProvider"    # Lcom/android/launcher3/popup/PopupDataProvider;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm;->mDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    .line 48
    return-void
.end method

.method private static filterWidgetItems(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "packageTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;"
        }
    .end annotation

    .line 86
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-static {}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->getInstance()Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    move-result-object v0

    .line 87
    .local v0, "matcher":Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;
    invoke-static {p0, p1, v0}, Lcom/android/launcher3/search/StringMatcherUtility;->matches(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    return-object p2

    .line 90
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)V

    .line 91
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 92
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 90
    return-object v1
.end method

.method public static getFilteredWidgets(Lcom/android/launcher3/popup/PopupDataProvider;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "dataProvider"    # Lcom/android/launcher3/popup/PopupDataProvider;
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/popup/PopupDataProvider;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupDataProvider;->getAllWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm$$ExternalSyntheticLambda2;-><init>()V

    .line 70
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, v0}, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 71
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 81
    return-object v0
.end method

.method static synthetic lambda$doSearch$0(Lcom/android/launcher3/search/SearchCallback;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "callback"    # Lcom/android/launcher3/search/SearchCallback;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/util/ArrayList;

    .line 53
    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/search/SearchCallback;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic lambda$filterWidgetItems$3(Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;Lcom/android/launcher3/model/WidgetItem;)Z
    .locals 1
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "matcher"    # Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;
    .param p2, "item"    # Lcom/android/launcher3/model/WidgetItem;

    .line 91
    iget-object v0, p2, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/search/StringMatcherUtility;->matches(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getFilteredWidgets$1(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 1
    .param p0, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 70
    instance-of v0, p0, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    return v0
.end method

.method static synthetic lambda$getFilteredWidgets$2(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)V
    .locals 4
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "results"    # Ljava/util/ArrayList;
    .param p2, "headerEntry"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 72
    iget-object v0, p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/PackageItemInfo;->title:Ljava/lang/CharSequence;

    .line 73
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    .line 72
    invoke-static {p0, v0, v1}, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm;->filterWidgetItems(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 74
    .local v0, "matchedWidgetItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/WidgetItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 75
    new-instance v1, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;

    iget-object v2, p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v3, p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mTitleSectionName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    iget-object v2, p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v3, p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mTitleSectionName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;-><init>(Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .locals 2
    .param p1, "interruptActiveRequests"    # Z

    .line 58
    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 61
    :cond_0
    return-void
.end method

.method public doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/search/SearchCallback<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p2, "callback":Lcom/android/launcher3/search/SearchCallback;, "Lcom/android/launcher3/search/SearchCallback<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm;->mDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-static {v0, p1}, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm;->getFilteredWidgets(Lcom/android/launcher3/popup/PopupDataProvider;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 53
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2, p1, v0}, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/search/SearchCallback;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method
