.class public Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
.super Lcom/android/launcher3/allapps/BaseAllAppsContainerView;
.source "ActivityAllAppsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/AppLauncher;",
        ":",
        "Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;",
        ">",
        "Lcom/android/launcher3/allapps/BaseAllAppsContainerView<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mIsSearching:Z

.field private mSearchContainer:Landroid/view/View;

.field protected mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 72
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method private alignParentTop(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "includeTabsMargin"    # Z

    .line 281
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 282
    return-void

    .line 285
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 286
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 287
    nop

    .line 288
    if-eqz p2, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->all_apps_header_pill_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 291
    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 292
    return-void
.end method

.method static synthetic lambda$rebindAdapters$1(Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 1
    .param p0, "adapterHolder"    # Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object v0
.end method

.method static synthetic lambda$rebindAdapters$2(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .locals 0
    .param p0, "decoration"    # Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .param p1, "v"    # Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 186
    invoke-virtual {p1, p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 187
    invoke-virtual {p1, p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 188
    return-void
.end method

.method private layoutAboveSearchContainer(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 272
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 273
    return-void

    .line 276
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 277
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x2

    sget v2, Lcom/android/launcher3/R$id;->search_container_all_apps:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 278
    return-void
.end method

.method private layoutBelowSearchContainer(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "includeTabsMargin"    # Z

    .line 255
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 256
    return-void

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 260
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x6

    sget v2, Lcom/android/launcher3/R$id;->search_container_all_apps:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 262
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->all_apps_header_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 264
    .local v1, "topMargin":I
    if-eqz p2, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$dimen;->all_apps_header_pill_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 268
    :cond_1
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 269
    return-void
.end method

.method private removeCustomRules(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 295
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 296
    return-void

    .line 299
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 300
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 301
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 302
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 303
    return-void
.end method


# virtual methods
.method protected createAdapter(Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .locals 7
    .param p2, "ownOrderAppsList"    # Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;
    .param p3, "adapterProviders"    # [Lcom/android/launcher3/allapps/BaseAdapterProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;",
            "Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;",
            "[",
            "Lcom/android/launcher3/allapps/BaseAdapterProvider;",
            ")",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 317
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    .local p1, "appsList":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    new-instance v6, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)V

    return-object v6
.end method

.method protected final createMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0, p0}, Lcom/android/launcher3/views/ActivityContext;->createSearchAdapterProvider(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 150
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/SearchUiManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 151
    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 156
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->all_apps_search_results:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderBottom()I
    .locals 2

    .line 248
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-super {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getHeaderBottom()I

    move-result v0

    return v0

    .line 251
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getHeaderBottom()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getHeaderColor(F)I
    .locals 3
    .param p1, "blendRatio"    # F

    .line 241
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    nop

    .line 242
    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getHeaderColor(F)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    .line 243
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 241
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    return v0
.end method

.method public getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;
    .locals 1

    .line 76
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    return-object v0
.end method

.method public getSearchView()Landroid/view/View;
    .locals 1

    .line 80
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    return-object v0
.end method

.method public isSearching()Z
    .locals 1

    .line 170
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    return v0
.end method

.method synthetic lambda$setLastSearchQuery$0$com-android-launcher3-allapps-ActivityAllAppsContainerView(Landroid/content/Intent;Landroid/view/View;)V
    .locals 2
    .param p1, "marketSearchIntent"    # Landroid/content/Intent;
    .param p2, "v"    # Landroid/view/View;

    .line 87
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/AppLauncher;

    const/4 v1, 0x0

    invoke-interface {v0, p2, p1, v1}, Lcom/android/launcher3/views/AppLauncher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    return-void
.end method

.method public onClearSearchResult()V
    .locals 2

    .line 99
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    .line 100
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setCollapsed(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters()V

    .line 102
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->reset(Z)V

    .line 103
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 142
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->onFinishInflate()V

    .line 143
    sget v0, Lcom/android/launcher3/R$id;->search_container_all_apps:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    .line 144
    check-cast v0, Lcom/android/launcher3/allapps/SearchUiManager;

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    .line 145
    invoke-interface {v0, p0}, Lcom/android/launcher3/allapps/SearchUiManager;->initializeSearch(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    .line 146
    return-void
.end method

.method protected rebindAdapters(Z)V
    .locals 3
    .param p1, "force"    # Z

    .line 175
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->rebindAdapters(Z)V

    .line 176
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->getDecorator()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->getDecorator()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    .line 182
    .local v0, "decoration":Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda0;-><init>()V

    .line 183
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda1;-><init>()V

    .line 184
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda2;-><init>(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 185
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 189
    return-void

    .line 178
    .end local v0    # "decoration":Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    :cond_1
    :goto_0
    return-void
.end method

.method protected replaceAppsRVContainer(Z)Landroid/view/View;
    .locals 3
    .param p1, "showTabs"    # Z

    .line 193
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->replaceAppsRVContainer(Z)Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, "rvContainer":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->removeCustomRules(Landroid/view/View;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->removeCustomRules(Landroid/view/View;)V

    .line 197
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 198
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->alignParentTop(Landroid/view/View;Z)V

    .line 199
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->alignParentTop(Landroid/view/View;Z)V

    .line 200
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutAboveSearchContainer(Landroid/view/View;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutAboveSearchContainer(Landroid/view/View;)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutBelowSearchContainer(Landroid/view/View;Z)V

    .line 204
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutBelowSearchContainer(Landroid/view/View;Z)V

    .line 207
    :goto_0
    return-object v0
.end method

.method public reset(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 135
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->reset(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->resetSearch()V

    .line 138
    return-void
.end method

.method public setLastSearchQuery(Ljava/lang/String;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .line 85
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketSearchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    .local v0, "marketSearchIntent":Landroid/content/Intent;
    new-instance v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Landroid/content/Intent;)V

    .line 89
    .local v1, "marketSearchClickListener":Landroid/view/View$OnClickListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v3, v3, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {v3, p1, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->setLastSearchQuery(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters()V

    .line 94
    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setCollapsed(Z)V

    .line 95
    return-void
.end method

.method public setOwnOrderEditMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 306
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setOwnOrderEditMode(Z)V

    .line 307
    if-eqz p1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :goto_0
    return-void
.end method

.method public setSearchResults(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchResultList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setSearchResults(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->onSearchResultsChanged()V

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method setupHeader()V
    .locals 2

    .line 212
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->setupHeader()V

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->removeCustomRules(Landroid/view/View;)V

    .line 215
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->alignParentTop(Landroid/view/View;Z)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutBelowSearchContainer(Landroid/view/View;Z)V

    .line 220
    :goto_0
    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 127
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x1

    return v0

    .line 130
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected shouldShowTabs()Z
    .locals 1

    .line 165
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected updateHeaderScroll(I)V
    .locals 5
    .param p1, "scrolledOffset"    # I

    .line 224
    .local p0, "this":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<TT;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->updateHeaderScroll(I)V

    .line 225
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v0

    if-nez v0, :cond_0

    .line 226
    return-void

    .line 229
    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderThreshold:F

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    .line 230
    .local v0, "prog":F
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v1}, Lcom/android/launcher3/allapps/SearchUiManager;->getBackgroundVisibility()Z

    move-result v1

    .line 231
    .local v1, "bgVisible":Z
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v3

    if-nez v3, :cond_1

    .line 232
    const/4 v1, 0x1

    goto :goto_0

    .line 233
    :cond_1
    int-to-float v3, p1

    iget v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderThreshold:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 234
    const/4 v1, 0x0

    .line 236
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    sub-float/2addr v2, v0

    invoke-interface {v3, v1, v2}, Lcom/android/launcher3/allapps/SearchUiManager;->setBackgroundVisibility(ZF)V

    .line 237
    return-void
.end method
