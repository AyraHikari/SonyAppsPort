.class public abstract Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseAllAppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;,
        Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_XPERIA_SORT_MODE:Ljava/lang/String; = "xperia_sort_mode"

.field public static final TAG:Ljava/lang/String; = "BaseAllAppsAdapter"

.field public static final VIEW_TYPE_ALL_APPS_DIVIDER:I = 0x10

.field public static final VIEW_TYPE_EMPTY_SEARCH:I = 0x4

.field public static final VIEW_TYPE_FOLDER:I = 0x40

.field public static final VIEW_TYPE_ICON:I = 0x2

.field public static final VIEW_TYPE_MASK_DIVIDER:I = 0x10

.field public static final VIEW_TYPE_MASK_ICON:I = 0x2

.field public static final VIEW_TYPE_SEARCH_MARKET:I = 0x8


# instance fields
.field protected final mActivityContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mAdapterProviders:[Lcom/android/launcher3/allapps/BaseAdapterProvider;

.field private mAlphabeticalApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field protected mApps:Lcom/sonymobile/launcher/allapps/AppsList;

.field protected mAppsPerRow:I

.field private mDragposition:I

.field private mEditMode:Z

.field protected mEmptySearchMessage:Ljava/lang/String;

.field private final mExtraHeight:I

.field private mFolderMakingPos:I

.field protected mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

.field protected final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMarketSearchClickListener:Landroid/view/View$OnClickListener;

.field protected final mOnIconClickListener:Landroid/view/View$OnClickListener;

.field protected mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mOwnOrderApps:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

.field protected mSortMode:Lcom/sonymobile/launcher/allapps/SortMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)V
    .locals 2
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p4, "ownOrderApps"    # Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;
    .param p5, "adapterProviders"    # [Lcom/android/launcher3/allapps/BaseAdapterProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/LayoutInflater;",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;",
            "Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;",
            "[",
            "Lcom/android/launcher3/allapps/BaseAdapterProvider;",
            ")V"
        }
    .end annotation

    .line 184
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    .local p1, "activityContext":Landroid/content/Context;, "TT;"
    .local p3, "apps":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<TT;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mDragposition:I

    .line 88
    iput v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mFolderMakingPos:I

    .line 168
    sget-object v0, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 186
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    .line 187
    iput-object p3, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    .line 188
    sget v1, Lcom/android/launcher3/R$string;->all_apps_loading_message:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mEmptySearchMessage:Ljava/lang/String;

    .line 189
    iput-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 191
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOnIconClickListener:Landroid/view/View$OnClickListener;

    .line 193
    iput-object p5, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mAdapterProviders:[Lcom/android/launcher3/allapps/BaseAdapterProvider;

    .line 194
    sget v1, Lcom/android/launcher3/R$dimen;->all_apps_height_extra:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mExtraHeight:I

    .line 196
    iput-object p3, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mAlphabeticalApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 197
    iput-object p4, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOwnOrderApps:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    .line 198
    return-void
.end method

.method public static isDividerViewType(I)Z
    .locals 1
    .param p0, "viewType"    # I

    .line 209
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isViewType(II)Z

    move-result v0

    return v0
.end method

.method public static isIconViewType(I)Z
    .locals 1
    .param p0, "viewType"    # I

    .line 214
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->isViewType(II)Z

    move-result v0

    return v0
.end method

.method public static isViewType(II)Z
    .locals 1
    .param p0, "viewType"    # I
    .param p1, "viewTypeMask"    # I

    .line 367
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getAdapterProvider$0(ILcom/android/launcher3/allapps/BaseAdapterProvider;)Z
    .locals 1
    .param p0, "viewType"    # I
    .param p1, "adapterProvider"    # Lcom/android/launcher3/allapps/BaseAdapterProvider;

    .line 373
    invoke-virtual {p1, p0}, Lcom/android/launcher3/allapps/BaseAdapterProvider;->isViewSupported(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addApp(Lcom/android/launcher3/model/data/ItemInfo;I)V
    .locals 1
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "position"    # I

    .line 487
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOwnOrderApps:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->addApp(Lcom/android/launcher3/model/data/ItemInfo;I)V

    .line 488
    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->notifyItemInserted(I)V

    .line 489
    return-void
.end method

.method public clearDragPosition()V
    .locals 1

    .line 523
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mDragposition:I

    .line 524
    return-void
.end method

.method public clearFolderMakingPos()V
    .locals 2

    .line 505
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mFolderMakingPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 506
    iget v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mFolderMakingPos:I

    .line 507
    .local v0, "tmp":I
    iput v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mFolderMakingPos:I

    .line 508
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->notifyItemChanged(I)V

    .line 510
    .end local v0    # "tmp":I
    :cond_0
    return-void
.end method

.method protected getAdapterProvider(I)Lcom/android/launcher3/allapps/BaseAdapterProvider;
    .locals 2
    .param p1, "viewType"    # I

    .line 372
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mAdapterProviders:[Lcom/android/launcher3/allapps/BaseAdapterProvider;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 373
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAdapterProvider;

    .line 372
    return-object v0
.end method

.method public getApps()Lcom/sonymobile/launcher/allapps/AppsList;
    .locals 1

    .line 378
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    return-object v0
.end method

.method public getFolderMakingPos()I
    .locals 1

    .line 501
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mFolderMakingPos:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 357
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    invoke-interface {v0}, Lcom/sonymobile/launcher/allapps/AppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 362
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    invoke-interface {v0}, Lcom/sonymobile/launcher/allapps/AppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 363
    .local v0, "item":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    iget v1, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    return v1
.end method

.method public abstract getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end method

.method public getSortMode()Lcom/sonymobile/launcher/allapps/SortMode;
    .locals 1

    .line 403
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mSortMode:Lcom/sonymobile/launcher/allapps/SortMode;

    return-object v0
.end method

.method public hasApp(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 477
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOwnOrderApps:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->hasApp(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    return v0
.end method

.method public hasFolderWithId(J)Z
    .locals 1
    .param p1, "id"    # J

    .line 480
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOwnOrderApps:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->hasFolderWithId(J)Z

    move-result v0

    return v0
.end method

.method public initSortMode()V
    .locals 3

    .line 382
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/launcher/allapps/SortMode;->ALPHABETICAL:Lcom/sonymobile/launcher/allapps/SortMode;

    .line 383
    invoke-virtual {v1}, Lcom/sonymobile/launcher/allapps/SortMode;->getString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xperia_sort_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-static {v0}, Lcom/sonymobile/launcher/allapps/SortMode;->fromString(Ljava/lang/String;)Lcom/sonymobile/launcher/allapps/SortMode;

    move-result-object v0

    .line 384
    .local v0, "sortMode":Lcom/sonymobile/launcher/allapps/SortMode;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->setSortMode(Lcom/sonymobile/launcher/allapps/SortMode;)Z

    .line 385
    return-void
.end method

.method public isEditMode()Z
    .locals 1

    .line 424
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mEditMode:Z

    return v0
.end method

.method public isOwnOrder()Z
    .locals 2

    .line 413
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mSortMode:Lcom/sonymobile/launcher/allapps/SortMode;

    sget-object v1, Lcom/sonymobile/launcher/allapps/SortMode;->OWN_ORDER:Lcom/sonymobile/launcher/allapps/SortMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeFolder(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 459
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOwnOrderApps:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    iget v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mFolderMakingPos:I

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->makeFolder(ILcom/android/launcher3/model/data/ItemInfo;)V

    .line 460
    return-void
.end method

.method public moveComplete()V
    .locals 2

    .line 450
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mSortMode:Lcom/sonymobile/launcher/allapps/SortMode;

    sget-object v1, Lcom/sonymobile/launcher/allapps/SortMode;->OWN_ORDER:Lcom/sonymobile/launcher/allapps/SortMode;

    if-ne v0, v1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOwnOrderApps:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    invoke-virtual {v0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->moveComplete()V

    .line 453
    :cond_0
    return-void
.end method

.method public moveItem(II)Z
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 438
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mSortMode:Lcom/sonymobile/launcher/allapps/SortMode;

    sget-object v1, Lcom/sonymobile/launcher/allapps/SortMode;->OWN_ORDER:Lcom/sonymobile/launcher/allapps/SortMode;

    if-ne v0, v1, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOwnOrderApps:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->moveItem(II)V

    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->notifyItemMoved(II)V

    .line 443
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 63
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    check-cast p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->onBindViewHolder(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 285
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 333
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->getAdapterProvider(I)Lcom/android/launcher3/allapps/BaseAdapterProvider;

    move-result-object v0

    .line 334
    .local v0, "adapterProvider":Lcom/android/launcher3/allapps/BaseAdapterProvider;
    if-eqz v0, :cond_4

    .line 335
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/BaseAdapterProvider;->onBindView(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V

    goto/16 :goto_2

    .line 307
    .end local v0    # "adapterProvider":Lcom/android/launcher3/allapps/BaseAdapterProvider;
    :sswitch_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_4

    .line 308
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    invoke-interface {v0}, Lcom/sonymobile/launcher/allapps/AppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->folderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    .line 309
    .local v0, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v1, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/android/launcher3/folder/FolderIcon;

    .line 310
    .local v1, "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/folder/FolderIcon;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/Launcher;)V

    .line 311
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 312
    .end local v0    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    .end local v1    # "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    goto/16 :goto_2

    .line 331
    :sswitch_1
    goto :goto_2

    .line 321
    :sswitch_2
    iget-object v0, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 322
    .local v0, "searchView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mMarketSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_0

    .line 323
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 326
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    goto :goto_2

    .line 315
    .end local v0    # "searchView":Landroid/widget/TextView;
    :sswitch_3
    iget-object v0, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 316
    .local v0, "emptyViewText":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mEmptySearchMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    invoke-interface {v1}, Lcom/sonymobile/launcher/allapps/AppsList;->hasNoFilteredResults()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x11

    goto :goto_0

    .line 318
    :cond_1
    const v1, 0x800013

    .line 317
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 319
    goto :goto_2

    .line 287
    .end local v0    # "emptyViewText":Landroid/widget/TextView;
    :sswitch_4
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    invoke-interface {v0}, Lcom/sonymobile/launcher/allapps/AppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 288
    .local v0, "adapterItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    iget-object v2, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    .line 289
    .local v2, "icon":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->reset()V

    .line 290
    iget-object v3, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 291
    iget-boolean v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mEditMode:Z

    if-eqz v3, :cond_2

    .line 292
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    invoke-virtual {v2, v3}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 295
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOnIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 299
    iget v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mDragposition:I

    if-ne p2, v3, :cond_3

    .line 300
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    goto :goto_2

    .line 302
    :cond_3
    invoke-virtual {v2, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 338
    .end local v0    # "adapterItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .end local v2    # "icon":Lcom/android/launcher3/BubbleTextView;
    :cond_4
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 63
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 238
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_0

    .line 275
    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->getAdapterProvider(I)Lcom/android/launcher3/allapps/BaseAdapterProvider;

    move-result-object v0

    .line 276
    .local v0, "adapterProvider":Lcom/android/launcher3/allapps/BaseAdapterProvider;
    if-eqz v0, :cond_3

    .line 277
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/allapps/BaseAdapterProvider;->onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    move-result-object v1

    return-object v1

    .line 260
    .end local v0    # "adapterProvider":Lcom/android/launcher3/allapps/BaseAdapterProvider;
    :sswitch_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/launcher3/R$layout;->all_apps_folder_icon:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    .line 261
    .local v0, "folder":Lcom/android/launcher3/folder/FolderIcon;
    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 262
    new-instance v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 272
    .end local v0    # "folder":Lcom/android/launcher3/folder/FolderIcon;
    :sswitch_1
    new-instance v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/android/launcher3/R$layout;->all_apps_divider:I

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 267
    :sswitch_2
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/launcher3/R$layout;->all_apps_search_market:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, "searchMarketView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mMarketSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    new-instance v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 264
    .end local v0    # "searchMarketView":Landroid/view/View;
    :sswitch_3
    new-instance v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/android/launcher3/R$layout;->all_apps_empty_search:I

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 240
    :sswitch_4
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TWOLINE_ALLAPPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/android/launcher3/R$layout;->all_apps_icon:I

    goto :goto_0

    .line 241
    :cond_0
    sget v1, Lcom/android/launcher3/R$layout;->all_apps_icon_twoline:I

    :goto_0
    nop

    .line 242
    .local v1, "layout":I
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 244
    .local v0, "icon":Lcom/android/launcher3/BubbleTextView;
    iget-boolean v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mEditMode:Z

    if-nez v2, :cond_1

    .line 245
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOnIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 248
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setLongPressTimeoutFactor(F)V

    .line 249
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 250
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOnIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 253
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/views/ActivityContext;

    .line 254
    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 255
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TWOLINE_ALLAPPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mExtraHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 258
    :cond_2
    new-instance v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {v2, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v2

    .line 279
    .end local v1    # "layout":I
    .local v0, "adapterProvider":Lcom/android/launcher3/allapps/BaseAdapterProvider;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected view type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 63
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    check-cast p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->onFailedToRecycleView(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onFailedToRecycleView(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    .line 352
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 63
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    check-cast p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->onViewRecycled(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    .line 342
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 343
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 344
    iget-object v0, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    .line 345
    .local v0, "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->removeListeners()V

    .line 347
    .end local v0    # "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    :cond_0
    return-void
.end method

.method public removeItem(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 463
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOwnOrderApps:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->removeInfo(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v0

    .line 464
    .local v0, "removedIndex":I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->notifyItemRemoved(I)V

    .line 465
    return-void
.end method

.method public replaceInfo(Lcom/android/launcher3/model/data/ItemInfo;I)V
    .locals 1
    .param p1, "newInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "position"    # I

    .line 468
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOwnOrderApps:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->replaceInfo(Lcom/android/launcher3/model/data/ItemInfo;I)V

    .line 469
    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->notifyItemChanged(I)V

    .line 470
    return-void
.end method

.method public restoreSortMode()V
    .locals 3

    .line 407
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/launcher/allapps/SortMode;->ALPHABETICAL:Lcom/sonymobile/launcher/allapps/SortMode;

    .line 408
    invoke-virtual {v1}, Lcom/sonymobile/launcher/allapps/SortMode;->getString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xperia_sort_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-static {v0}, Lcom/sonymobile/launcher/allapps/SortMode;->fromString(Ljava/lang/String;)Lcom/sonymobile/launcher/allapps/SortMode;

    move-result-object v0

    .line 409
    .local v0, "sortMode":Lcom/sonymobile/launcher/allapps/SortMode;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->setSortMode(Lcom/sonymobile/launcher/allapps/SortMode;)Z

    .line 410
    return-void
.end method

.method public saveAddedApp(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 492
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOwnOrderApps:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->saveAddedApp(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 493
    return-void
.end method

.method public setApps(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V
    .locals 1
    .param p1, "apps"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 428
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    if-eq p1, v0, :cond_0

    .line 429
    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    .line 430
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->notifyDataSetChanged()V

    .line 432
    :cond_0
    return-void
.end method

.method public abstract setAppsPerRow(I)V
.end method

.method public setDragPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 516
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iput p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mDragposition:I

    .line 517
    return-void
.end method

.method public setEditMode(Z)V
    .locals 1
    .param p1, "editMode"    # Z

    .line 417
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mEditMode:Z

    if-eq p1, v0, :cond_0

    .line 418
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mEditMode:Z

    .line 419
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->notifyDataSetChanged()V

    .line 421
    :cond_0
    return-void
.end method

.method public setFolderMakingPos(I)V
    .locals 0
    .param p1, "position"    # I

    .line 496
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iput p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mFolderMakingPos:I

    .line 497
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->notifyItemChanged(I)V

    .line 498
    return-void
.end method

.method public setIconFocusListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "focusListener"    # Landroid/view/View$OnFocusChangeListener;

    .line 218
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 219
    return-void
.end method

.method public setLastSearchQuery(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "marketSearchClickListener"    # Landroid/view/View$OnClickListener;

    .line 226
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 227
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$string;->all_apps_no_search_results:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mEmptySearchMessage:Ljava/lang/String;

    .line 228
    iput-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mMarketSearchClickListener:Landroid/view/View$OnClickListener;

    .line 229
    return-void
.end method

.method public setOnIconLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .line 204
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 205
    return-void
.end method

.method public setSortMode(Lcom/sonymobile/launcher/allapps/SortMode;)Z
    .locals 1
    .param p1, "sortMode"    # Lcom/sonymobile/launcher/allapps/SortMode;

    .line 388
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mSortMode:Lcom/sonymobile/launcher/allapps/SortMode;

    if-eq p1, v0, :cond_1

    .line 389
    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mSortMode:Lcom/sonymobile/launcher/allapps/SortMode;

    .line 391
    sget-object v0, Lcom/sonymobile/launcher/allapps/SortMode;->OWN_ORDER:Lcom/sonymobile/launcher/allapps/SortMode;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOwnOrderApps:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    invoke-virtual {v0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->isWork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOwnOrderApps:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mAlphabeticalApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    .line 396
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->notifyDataSetChanged()V

    .line 397
    const/4 v0, 0x1

    return v0

    .line 399
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public updateRank()V
    .locals 1

    .line 473
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsAdapter;, "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOwnOrderApps:Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    invoke-virtual {v0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->update()V

    .line 474
    return-void
.end method
