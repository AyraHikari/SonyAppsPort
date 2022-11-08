.class public Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;
.super Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
.source "DefaultSearchAdapterProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
        "Lcom/android/launcher3/views/AppLauncher;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mHighlightedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/AppLauncher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/views/AppLauncher;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    .line 41
    new-instance v0, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider$1;-><init>(Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;->mDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 48
    return-void
.end method


# virtual methods
.method public getDecorator()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;->mDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    return-object v0
.end method

.method public getHighlightedItem()Landroid/view/View;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;->mHighlightedView:Landroid/view/View;

    return-object v0
.end method

.method public isViewSupported(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public launchHighlightedItem()Z
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;->mHighlightedView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;->mHighlightedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 73
    .local v0, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    check-cast v1, Lcom/android/launcher3/views/AppLauncher;

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;->mHighlightedView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/android/launcher3/views/AppLauncher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    return v1

    .line 75
    .end local v0    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindView(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 52
    if-nez p2, :cond_0

    .line 53
    iget-object v0, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;->mHighlightedView:Landroid/view/View;

    .line 55
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
    .locals 1
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "viewType"    # I

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method
