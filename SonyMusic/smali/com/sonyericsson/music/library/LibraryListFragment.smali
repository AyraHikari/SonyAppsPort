.class public abstract Lcom/sonyericsson/music/library/LibraryListFragment;
.super Lcom/sonyericsson/music/library/LibraryBaseFragment;
.source "LibraryListFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;
.implements Lcom/sonyericsson/music/common/PermissionListener;
.implements Lcom/sonyericsson/music/library/MyLibraryFragment$Updateable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/music/library/LibraryBaseFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;",
        "Lcom/sonyericsson/music/common/PermissionListener;",
        "Lcom/sonyericsson/music/library/MyLibraryFragment$Updateable;"
    }
.end annotation


# static fields
.field protected static final INVALID_LOADER_ID:I = -0x1

.field protected static final KEY_LIST_STATE:Ljava/lang/String; = "list-state"

.field private static final NO_CONTENT_COLUMNS_NUMBER:I = 0x1

.field public static final PICKER_FRAGMENT_ID:Ljava/lang/String; = "picker"


# instance fields
.field protected mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

.field private mContextMenuData:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field protected mListView:Landroid/widget/AbsListView;

.field protected mListViewState:Landroid/os/Parcelable;

.field private mLoadersLoaded:I

.field protected mNoContentHeaderView:Landroid/view/View;

.field private mPaddedListScroller:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

.field private mPaddingHeight:I

.field protected mShowLoadingProgress:Z

.field private mShowProgressMsg:Ljava/lang/Runnable;

.field protected mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mLoadersLoaded:I

    .line 63
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mHandler:Landroid/os/Handler;

    .line 65
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mShowLoadingProgress:Z

    .line 67
    iput v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mPaddingHeight:I

    .line 69
    new-instance v0, Lcom/sonyericsson/music/library/LibraryListFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/LibraryListFragment$1;-><init>(Lcom/sonyericsson/music/library/LibraryListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mShowProgressMsg:Ljava/lang/Runnable;

    .line 88
    new-instance v0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;-><init>(Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mPaddedListScroller:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    return-void
.end method

.method private addPaddingHeaders(II)V
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 312
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 313
    invoke-virtual {v2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    const/4 v3, -0x3

    .line 314
    invoke-virtual {p0, v2, v0, v3}, Lcom/sonyericsson/music/library/LibraryListFragment;->addHeader(Landroid/view/View;ZI)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 162
    new-instance v0, Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;-><init>(Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    .line 163
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private setPaddingHeadersHeight(I)V
    .locals 5

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 322
    iget-object v2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderView(I)Lcom/sonyericsson/music/library/LibraryListAdapter$Header;

    move-result-object v2

    .line 323
    iget v3, v2, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;->mType:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_0

    .line 324
    iget-object v2, v2, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected addHeader(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 389
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/music/library/LibraryListFragment;->addHeader(Landroid/view/View;ZI)Z

    move-result p1

    return p1
.end method

.method protected addHeader(Landroid/view/View;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/music/library/LibraryListFragment;->addHeader(Landroid/view/View;ZI)Z

    move-result p1

    return p1
.end method

.method protected addHeader(Landroid/view/View;ZI)Z
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    new-instance v1, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;

    invoke-direct {v1, p1, p2, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;-><init>(Landroid/view/View;ZI)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->addHeader(Lcom/sonyericsson/music/library/LibraryListAdapter$Header;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 414
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return p1
.end method

.method protected destroyLoader()V
    .locals 6

    .line 438
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getLoaderIds()[I

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 440
    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getLoaderId()I

    move-result v2

    aput v2, v0, v1

    .line 443
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v2

    .line 444
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget v4, v0, v1

    const/4 v5, -0x1

    if-le v4, v5, :cond_1

    .line 446
    invoke-virtual {v2, v4}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 454
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->swapCursor(Landroid/database/Cursor;)V

    :cond_3
    return-void
.end method

.method protected forceToolbarAnimation(Lcom/sonyericsson/music/ToolbarControl;)V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mPaddedListScroller:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->runToolbarAnimation(Lcom/sonyericsson/music/ToolbarControl;)V

    return-void
.end method

.method protected abstract getAdapter()Landroid/widget/ListAdapter;
.end method

.method protected getColorizeView()Landroid/view/View;
    .locals 1

    .line 336
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getHeaderView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getContextMenuData()Ljava/lang/Object;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mContextMenuData:Ljava/lang/Object;

    return-object v0
.end method

.method protected getDrmUtils()Lcom/sonyericsson/music/common/DrmUtils;
    .locals 1

    .line 277
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getDrmUtils()Lcom/sonyericsson/music/common/DrmUtils;

    move-result-object v0

    return-object v0
.end method

.method protected getHeaderView()Landroid/view/View;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    return-object v0
.end method

.method protected getLoaderId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getLoaderIds()[I
    .locals 3

    const/4 v0, 0x1

    .line 425
    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getLoaderId()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    return-object v0
.end method

.method protected getNoContentText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f100226

    .line 156
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRootLayoutResource()I
    .locals 1

    const v0, 0x7f0c003f

    return v0
.end method

.method public getScrollAllowed(Z)Z
    .locals 4

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 527
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 532
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    .line 533
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    .line 535
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/ToolbarControl;->getToolbarVisibleHeight()I

    move-result p1

    if-ge v0, p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    return v1
.end method

.method protected initLoader()V
    .locals 6

    .line 429
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    .line 430
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getLoaderIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    const/4 v5, 0x0

    .line 432
    invoke-virtual {v0, v4, v5, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isAtBottomOfList()Z
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-static {v0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->isAtBottomOfList(Landroid/widget/AbsListView;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 168
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->initLoader()V

    return-void
.end method

.method protected onApplyTopPadding(II)I
    .locals 2

    .line 549
    iput p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mPaddingHeight:I

    .line 551
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/ToolbarControl;->getAppBarFooter()Landroid/view/View;

    move-result-object v0

    .line 553
    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    if-eqz v1, :cond_0

    .line 554
    iget p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mPaddingHeight:I

    invoke-static {v1, p2}, Lcom/sonyericsson/music/library/BaseFragment;->setPaddingTop(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p2, v0

    .line 557
    iput p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mPaddingHeight:I

    .line 558
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    .line 559
    invoke-virtual {p2}, Landroid/widget/AbsListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 560
    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 561
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p2}, Landroid/widget/AbsListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result p2

    if-lez p2, :cond_2

    .line 565
    iget p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mPaddingHeight:I

    invoke-direct {p0, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->setPaddingHeadersHeight(I)V

    goto :goto_1

    .line 567
    :cond_2
    iget p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mPaddingHeight:I

    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getColumnCount()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/music/library/LibraryListFragment;->addPaddingHeaders(II)V

    :goto_1
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "list-state"

    .line 129
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListViewState:Landroid/os/Parcelable;

    .line 132
    :cond_1
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mViewDestroyed:Z

    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mRootView:Landroid/view/View;

    .line 95
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mRootView:Landroid/view/View;

    const p2, 0x7f0900f8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView;

    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    .line 97
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 99
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 100
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/MusicActivity;->addPermissionListener(Lcom/sonyericsson/music/common/PermissionListener;)V

    .line 114
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f0c005e

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mNoContentHeaderView:Landroid/view/View;

    .line 115
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mNoContentHeaderView:Landroid/view/View;

    const p2, 0x7f0901fa

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getNoContentText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->destroyLoader()V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    .line 176
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/MusicActivity;->removePermissionListener(Lcom/sonyericsson/music/common/PermissionListener;)V

    .line 152
    :cond_1
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onDestroyView()V

    return-void
.end method

.method protected onGetToolbarScroller(Lcom/sonyericsson/music/ToolbarControl;)Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mPaddedListScroller:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->getPaddingScroller(Lcom/sonyericsson/music/ToolbarControl;)Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 186
    iget-boolean p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mShowLoadingProgress:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->stopProgress()V

    goto :goto_0

    .line 189
    :cond_0
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mShowLoadingProgress:Z

    .line 192
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 193
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeNoContentHeaderView()V

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->swapCursor(Landroid/database/Cursor;)V

    .line 197
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 200
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->shouldListRequestFocus()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 201
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->requestFocus()Z

    .line 203
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListViewState:Landroid/os/Parcelable;

    if-eqz p1, :cond_4

    .line 204
    iget p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mLoadersLoaded:I

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getLoaderIds()[I

    move-result-object p2

    array-length p2, p2

    if-ne p1, p2, :cond_3

    const/4 p1, 0x0

    .line 205
    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListViewState:Landroid/os/Parcelable;

    .line 206
    iput v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mLoadersLoaded:I

    goto :goto_1

    .line 208
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->restoreListState()V

    .line 209
    iget p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mLoadersLoaded:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mLoadersLoaded:I

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 259
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->swapCursor(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 266
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    const-string v1, "list-state"

    .line 269
    invoke-virtual {v0}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListViewState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    const-string v1, "list-state"

    .line 272
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 467
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p1

    .line 468
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {p2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_7

    if-eqz p1, :cond_7

    .line 469
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 470
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 474
    :goto_0
    iget-object p4, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {p4}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    if-eqz p4, :cond_3

    .line 477
    invoke-virtual {p1}, Lcom/sonyericsson/music/ToolbarControl;->getToolbarVisibleHeight()I

    move-result v1

    if-ge p2, v1, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    if-eqz p4, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    const/4 p3, 0x1

    .line 479
    :cond_5
    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/ToolbarControl;->allowScrollOfToolbar(Z)V

    .line 481
    iget-object p3, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    if-eqz p3, :cond_7

    .line 482
    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p3

    iget-object p4, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {p4}, Landroid/widget/AbsListView;->getHeight()I

    move-result p4

    if-ge p3, p4, :cond_7

    iget-object p3, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {p3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p3

    if-le p3, v0, :cond_7

    if-eqz p2, :cond_6

    const/high16 p2, 0x3f800000    # 1.0f

    .line 485
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/ToolbarControl;->animateToolbarShadowAlpha(F)V

    goto :goto_3

    .line 486
    :cond_6
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {p2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p2

    if-nez p2, :cond_7

    const/4 p2, 0x0

    .line 487
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/ToolbarControl;->setToolbarShadowAlpha(F)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 460
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mPaddedListScroller:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->onPaddedHeaderListScrollStateChanged(Lcom/sonyericsson/music/ToolbarControl;I)V

    return-void
.end method

.method public onStoragePermissionChanged(Z)V
    .locals 5

    .line 221
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 223
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->usesStoragePermission()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    .line 226
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getLoaderIds()[I

    move-result-object v0

    .line 227
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    const/4 v4, 0x0

    .line 229
    invoke-virtual {p1, v3, v4, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public paddingHeightVisible()I
    .locals 5

    .line 512
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 514
    iget-object v2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderView(I)Lcom/sonyericsson/music/library/LibraryListAdapter$Header;

    move-result-object v2

    .line 515
    iget v3, v2, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;->mType:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_0

    .line 516
    iget-object v0, v2, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;->mView:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 520
    :goto_1
    invoke-static {v0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->paddingHeightVisible(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected popBackStack()V
    .locals 3

    .line 599
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sonyericsson/music/library/LibraryListFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/music/library/LibraryListFragment$3;-><init>(Lcom/sonyericsson/music/library/LibraryListFragment;Lcom/sonyericsson/music/MusicActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected removeHeader(Landroid/view/View;)V
    .locals 1

    .line 375
    new-instance v0, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;-><init>(Landroid/view/View;)V

    .line 376
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->removeHeader(Lcom/sonyericsson/music/library/LibraryListAdapter$Header;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 378
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected removeNoContentHeaderView()V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->removeAllHeaders(I)V

    .line 359
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->removeAllHeaders(I)V

    .line 360
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    instance-of v1, v0, Landroid/widget/GridView;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 361
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 362
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0002

    .line 363
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 362
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 365
    :cond_0
    iget v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mPaddingHeight:I

    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getColumnCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/library/LibraryListFragment;->addPaddingHeaders(II)V

    return-void
.end method

.method protected restoreListState()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListViewState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 238
    new-instance v1, Lcom/sonyericsson/music/library/LibraryListFragment$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/library/LibraryListFragment$2;-><init>(Lcom/sonyericsson/music/library/LibraryListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected setContextMenuData(Ljava/lang/Object;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mContextMenuData:Ljava/lang/Object;

    return-void
.end method

.method protected setHeaderViewWithTitle(Ljava/lang/String;)V
    .locals 3

    .line 293
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/music/ToolbarControl;->setTitle(Ljava/lang/String;I)V

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getHeaderView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const v2, 0x7f0900cc

    .line 301
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 303
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p1, -0x2

    .line 305
    invoke-virtual {p0, v0, v1, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->addHeader(Landroid/view/View;ZI)Z

    :cond_2
    return-void
.end method

.method protected shouldListRequestFocus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showNoContentHeaderView()V
    .locals 4

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->removeAllHeaders(I)V

    .line 346
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    instance-of v1, v0, Landroid/widget/GridView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 350
    :cond_0
    iget v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mPaddingHeight:I

    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/music/library/LibraryListFragment;->addPaddingHeaders(II)V

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mNoContentHeaderView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/sonyericsson/music/library/LibraryListFragment;->addHeader(Landroid/view/View;ZI)Z

    return-void
.end method

.method protected stopProgress()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mShowProgressMsg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->setLoading(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method

.method protected usesStoragePermission()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
