.class public Lcom/android/launcher3/allapps/AlphabeticalAppsList;
.super Ljava/lang/Object;
.source "AlphabeticalAppsList.java"

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;
.implements Lcom/sonymobile/launcher/allapps/AppsList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;,
        Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;",
        "Lcom/sonymobile/launcher/allapps/AppsList;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AlphabeticalAppsList"


# instance fields
.field private mAccessibilityResultsCount:I

.field private final mActivityContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mAdapterItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

.field private mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

.field private final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mFastScrollerSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mGeHideApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNumAppRowsInAdapter:I

.field private final mNumAppsPerRowAllApps:I

.field private mSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkAdapterProvider:Lcom/android/launcher3/allapps/WorkAdapterProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkAdapterProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsStore"    # Lcom/android/launcher3/allapps/AllAppsStore;
    .param p3, "adapterProvider"    # Lcom/android/launcher3/allapps/WorkAdapterProvider;

    .line 103
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mGeHideApps:Ljava/util/List;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAccessibilityResultsCount:I

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    .line 104
    iput-object p2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    .line 105
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mActivityContext:Landroid/content/Context;

    .line 106
    new-instance v1, Lcom/android/launcher3/allapps/AppInfoComparator;

    invoke-direct {v1, p1}, Lcom/android/launcher3/allapps/AppInfoComparator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

    .line 107
    iput-object p3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mWorkAdapterProvider:Lcom/android/launcher3/allapps/WorkAdapterProvider;

    .line 108
    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    iput v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRowAllApps:I

    .line 109
    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p2, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mContext:Landroid/content/Context;

    .line 113
    return-void
.end method

.method static synthetic lambda$onAppsUpdated$0(Lcom/android/launcher3/model/data/AppInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 240
    iget-object v0, p0, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$onAppsUpdated$1()Ljava/util/TreeMap;
    .locals 2

    .line 241
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/android/launcher3/util/LabelComparator;

    invoke-direct {v1}, Lcom/android/launcher3/util/LabelComparator;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public getAdapterItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFastScrollerSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    return-object v0
.end method

.method public getFocusedChild()Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .locals 2

    .line 145
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getFocusedChildIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getFocusedChildIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    return-object v0

    .line 146
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusedChildIndex()I
    .locals 3

    .line 155
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 156
    .local v1, "item":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->isCountedForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 159
    .end local v1    # "item":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    :cond_0
    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getNumAppRows()I
    .locals 1

    .line 167
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iget v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    return v0
.end method

.method public getNumFilteredApps()I
    .locals 1

    .line 174
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iget v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAccessibilityResultsCount:I

    return v0
.end method

.method public hasNoFilteredResults()Z
    .locals 1

    .line 188
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasSearchResults()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAccessibilityResultsCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSearchResults()Z
    .locals 1

    .line 181
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAppsUpdated()V
    .locals 6

    .line 208
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    if-nez v0, :cond_0

    .line 209
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mGeHideApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 216
    .local v0, "appSteam":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Lcom/android/launcher3/model/data/AppInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasSearchResults()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mItemFilter:Ljava/util/function/Predicate;

    if-eqz v1, :cond_1

    .line 217
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasSearchResults()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 222
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/launcher/gameenhancer/GeHideAppsList;->getGeHideAppsList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 223
    .local v1, "hideAppsStream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Lcom/android/launcher3/model/data/AppInfo;>;"
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mItemFilter:Ljava/util/function/Predicate;

    if-eqz v2, :cond_2

    .line 224
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 226
    :cond_2
    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    .line 227
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mGeHideApps:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 230
    .end local v1    # "hideAppsStream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Lcom/android/launcher3/model/data/AppInfo;>;"
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/android/launcher3/allapps/AppInfoComparator;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 235
    .local v1, "curLocale":Ljava/util/Locale;
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 236
    .local v2, "localeRequiresSectionSorting":Z
    if-eqz v2, :cond_4

    .line 239
    new-instance v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda2;-><init>()V

    new-instance v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda3;-><init>()V

    new-instance v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda4;-><init>()V

    .line 242
    invoke-static {v5}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v5

    .line 239
    invoke-static {v3, v4, v5}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TreeMap;

    .line 243
    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 244
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda5;-><init>()V

    .line 245
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 248
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 250
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 251
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    .line 253
    :cond_6
    return-void
.end method

.method public setAdapter(Lcom/android/launcher3/allapps/BaseAllAppsAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 124
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    .local p1, "adapter":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    .line 125
    return-void
.end method

.method public setSearchResults(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)Z"
        }
    .end annotation

    .line 195
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    .line 199
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public updateAdapterItems()V
    .locals 9

    .line 260
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 262
    .local v0, "oldItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 263
    iget-object v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 264
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAccessibilityResultsCount:I

    .line 268
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasSearchResults()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda0;-><init>()V

    .line 271
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAccessibilityResultsCount:I

    .line 272
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-nez v2, :cond_5

    .line 274
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 282
    :cond_1
    const/4 v2, 0x0

    .line 283
    .local v2, "position":I
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mWorkAdapterProvider:Lcom/android/launcher3/allapps/WorkAdapterProvider;

    if-eqz v3, :cond_2

    .line 284
    iget-object v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/WorkAdapterProvider;->addWorkItems(Ljava/util/ArrayList;)I

    move-result v3

    add-int/2addr v2, v3

    .line 285
    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mWorkAdapterProvider:Lcom/android/launcher3/allapps/WorkAdapterProvider;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/WorkAdapterProvider;->shouldShowWorkApps()Z

    move-result v3

    if-nez v3, :cond_2

    .line 286
    return-void

    .line 289
    :cond_2
    const/4 v3, 0x0

    .line 290
    .local v3, "lastSectionName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/AppInfo;

    .line 291
    .local v5, "info":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v6, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->asApp(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v6, v5, Lcom/android/launcher3/model/data/AppInfo;->sectionName:Ljava/lang/String;

    .line 295
    .local v6, "sectionName":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 296
    move-object v3, v6

    .line 297
    iget-object v7, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    new-instance v8, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    invoke-direct {v8, v6, v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_3
    nop

    .end local v5    # "info":Lcom/android/launcher3/model/data/AppInfo;
    .end local v6    # "sectionName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 300
    goto :goto_1

    .line 301
    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda0;-><init>()V

    .line 302
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/Stream;->count()J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAccessibilityResultsCount:I

    .line 305
    .end local v2    # "position":I
    .end local v3    # "lastSectionName":Ljava/lang/String;
    :cond_5
    :goto_2
    iget v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRowAllApps:I

    if-eqz v2, :cond_a

    .line 308
    const/4 v2, 0x0

    .line 309
    .local v2, "numAppsInSection":I
    const/4 v3, 0x0

    .line 310
    .local v3, "numAppsInRow":I
    const/4 v4, -0x1

    .line 311
    .local v4, "rowIndex":I
    iget-object v5, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 312
    .local v6, "item":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    iput v1, v6, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->rowIndex:I

    .line 313
    iget v7, v6, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-static {v7}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isDividerViewType(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 314
    const/4 v2, 0x0

    goto :goto_4

    .line 315
    :cond_6
    iget v7, v6, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-static {v7}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isIconViewType(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 316
    iget v7, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppsPerRowAllApps:I

    rem-int v7, v2, v7

    if-nez v7, :cond_7

    .line 317
    const/4 v3, 0x0

    .line 318
    add-int/lit8 v4, v4, 0x1

    .line 320
    :cond_7
    iput v4, v6, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->rowIndex:I

    .line 321
    iput v3, v6, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->rowAppIndex:I

    .line 322
    add-int/lit8 v2, v2, 0x1

    .line 323
    add-int/lit8 v3, v3, 0x1

    .line 325
    .end local v6    # "item":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    :cond_8
    :goto_4
    goto :goto_3

    .line 326
    :cond_9
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    .line 329
    .end local v2    # "numAppsInSection":I
    .end local v3    # "numAppsInRow":I
    .end local v4    # "rowIndex":I
    :cond_a
    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    if-eqz v2, :cond_b

    .line 330
    new-instance v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$MyDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v2, v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    .line 331
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 333
    :cond_b
    return-void
.end method

.method public updateItemFilter(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    .local p1, "itemFilter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mItemFilter:Ljava/util/function/Predicate;

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    .line 118
    return-void
.end method
