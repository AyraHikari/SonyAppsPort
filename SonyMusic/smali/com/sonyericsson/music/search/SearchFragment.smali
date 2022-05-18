.class public Lcom/sonyericsson/music/search/SearchFragment;
.super Lcom/sonyericsson/music/library/BaseFragment;
.source "SearchFragment.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;
.implements Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/search/SearchFragment$RetainObject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/music/library/BaseFragment;",
        "Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;",
        "Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lcom/sonyericsson/music/search/SearchResult;",
        ">;",
        "Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;"
    }
.end annotation


# static fields
.field private static final AGGREGATED_TAG_SEARCH_HISTORY:Ljava/lang/String; = "search_history"

.field private static final AGGREGATED_TAG_SEARCH_INPUT:Ljava/lang/String; = "search_result"

.field private static final KEY_QUERY_ARG:Ljava/lang/String; = "query_arg"

.field private static final LOADER_ID:I = 0x0

.field private static final RETAIN_KEY:Ljava/lang/String; = "SearchFragment"

.field private static final SEARCH_LIST_LOADING_ALPHA:F = 0.33f

.field public static final TAG:Ljava/lang/String; = "search_result"

.field private static final sExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private final mClearFocus:Ljava/lang/Runnable;

.field private mEmptySearchState:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mLaunchQueryHandled:Z

.field private mLayoutManagerState:Landroid/os/Parcelable;

.field private mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mPaddedListScroller:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

.field protected mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mQueryText:Ljava/lang/String;

.field private mSearchAdapter:Lcom/sonyericsson/music/search/SearchAdapter;

.field private mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

.field private mSearchList:Landroidx/recyclerview/widget/RecyclerView;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchView:Lcom/sonyericsson/music/search/MusicSearchView;

.field private final mServiceConnectionListener:Lcom/sonyericsson/music/MediaServiceConnection;

.field private final mSetQueryText:Ljava/lang/Runnable;

.field mShouldClearFocus:Z

.field private mShouldClose:Z

.field private mShouldForceQueryText:Z

.field mShouldToggleInput:Z

.field private final mShowProgressRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/search/SearchFragment;->sExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;-><init>()V

    .line 98
    new-instance v0, Lcom/sonyericsson/music/search/SearchFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/search/SearchFragment$1;-><init>(Lcom/sonyericsson/music/search/SearchFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShowProgressRunnable:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lcom/sonyericsson/music/search/SearchFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/search/SearchFragment$2;-><init>(Lcom/sonyericsson/music/search/SearchFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mClearFocus:Ljava/lang/Runnable;

    .line 121
    new-instance v0, Lcom/sonyericsson/music/search/SearchFragment$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/search/SearchFragment$3;-><init>(Lcom/sonyericsson/music/search/SearchFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSetQueryText:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Lcom/sonyericsson/music/search/SearchFragment$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/search/SearchFragment$4;-><init>(Lcom/sonyericsson/music/search/SearchFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mServiceConnectionListener:Lcom/sonyericsson/music/MediaServiceConnection;

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldClose:Z

    const/4 v1, 0x0

    .line 169
    iput-boolean v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldToggleInput:Z

    .line 171
    iput-boolean v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldClearFocus:Z

    .line 175
    iput-boolean v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mLaunchQueryHandled:Z

    .line 179
    iput-boolean v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldForceQueryText:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/search/SearchFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/search/SearchFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/music/search/SearchFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mClearFocus:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/music/search/SearchFragment;)Landroid/os/Handler;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/music/search/SearchFragment;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/music/search/SearchFragment;->closeFragment()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/music/search/SearchFragment;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/music/search/SearchFragment;->showContentUnavailableToast()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/music/search/SearchFragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/search/SearchFragment;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/search/MusicSearchView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchView:Lcom/sonyericsson/music/search/MusicSearchView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/music/search/SearchFragment;Lcom/sonyericsson/music/search/MusicSearchView;)Lcom/sonyericsson/music/search/MusicSearchView;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchView:Lcom/sonyericsson/music/search/MusicSearchView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/search/SearchFragment;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mQueryText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/sonyericsson/music/search/SearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mQueryText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/search/SearchFragment;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/music/search/SearchFragment;->closeInputMethod()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/ToolbarControl;
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/music/search/SearchFragment;)Lcom/sonyericsson/music/library/PaddedHeaderListScroller;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mPaddedListScroller:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/music/search/SearchFragment;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldForceQueryText:Z

    return p0
.end method

.method static synthetic access$702(Lcom/sonyericsson/music/search/SearchFragment;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldForceQueryText:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/music/search/SearchFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSetQueryText:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/music/search/SearchFragment;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/music/search/SearchFragment;->onSearchStarting()V

    return-void
.end method

.method private closeFragment()V
    .locals 3

    .line 956
    iget-boolean v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldClose:Z

    if-eqz v0, :cond_0

    .line 957
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 959
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "search_result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private closeInputMethod()V
    .locals 3

    .line 941
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "input_method"

    .line 944
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 945
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchView:Lcom/sonyericsson/music/search/MusicSearchView;

    if-eqz v1, :cond_0

    .line 946
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 947
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchView:Lcom/sonyericsson/music/search/MusicSearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 950
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_1
    return-void
.end method

.method private getGADataAggregator()Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;
    .locals 2

    .line 994
    invoke-direct {p0}, Lcom/sonyericsson/music/search/SearchFragment;->isHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "search_history"

    goto :goto_0

    :cond_0
    const-string v0, "search_result"

    .line 995
    :goto_0
    new-instance v1, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    invoke-direct {v1, v0}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private getNewAdapter()Lcom/sonyericsson/music/search/SearchAdapter;
    .locals 3

    .line 977
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 978
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-nez v1, :cond_0

    .line 979
    new-instance v1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {v1, v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 981
    :cond_0
    new-instance v1, Lcom/sonyericsson/music/search/SearchAdapter;

    iget-object v2, p0, Lcom/sonyericsson/music/search/SearchFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {v1, v2, v0}, Lcom/sonyericsson/music/search/SearchAdapter;-><init>(Lcom/sonyericsson/music/artdecoder/ArtDecoder;Landroid/content/Context;)V

    return-object v1
.end method

.method private static hideAllItemsButSearch(Landroid/view/Menu;)V
    .locals 6

    .line 966
    invoke-interface {p0}, Landroid/view/Menu;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 968
    invoke-interface {p0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 969
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f090117

    if-eq v4, v5, :cond_0

    .line 970
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 971
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isHistory()Z
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchAdapter:Lcom/sonyericsson/music/search/SearchAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/music/search/SearchAdapter;->getData()Lcom/sonyericsson/music/search/SearchResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchAdapter:Lcom/sonyericsson/music/search/SearchAdapter;

    .line 987
    invoke-virtual {v0}, Lcom/sonyericsson/music/search/SearchAdapter;->getData()Lcom/sonyericsson/music/search/SearchResult;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/music/search/SearchResult;->hasHistoryData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/sonyericsson/music/search/SearchFragment;
    .locals 3

    .line 190
    new-instance v0, Lcom/sonyericsson/music/search/SearchFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/search/SearchFragment;-><init>()V

    .line 191
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    const-string v2, "query_arg"

    .line 193
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private onSearchComplete(Lcom/sonyericsson/music/search/SearchResult;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 765
    invoke-interface {p1}, Lcom/sonyericsson/music/search/SearchResult;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchView:Lcom/sonyericsson/music/search/MusicSearchView;

    if-eqz v0, :cond_1

    const v1, 0x7f100280

    .line 766
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShowProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 771
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 772
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    .line 776
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 779
    :cond_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/search/SearchFragment;->swapSearchResult(Lcom/sonyericsson/music/search/SearchResult;)V

    return-void
.end method

.method private onSearchStarting()V
    .locals 4

    .line 760
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShowProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private openAlbum(Lcom/sonyericsson/music/search/SearchItem;)V
    .locals 7

    .line 835
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 836
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 837
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getArtUri()Landroid/net/Uri;

    move-result-object v3

    .line 838
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v4

    .line 839
    sget-object v0, Lcom/sonyericsson/music/search/SearchFragment$10;->$SwitchMap$com$sonyericsson$music$search$SearchConstants$Type:[I

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 848
    :pswitch_0
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 850
    invoke-direct {p0}, Lcom/sonyericsson/music/search/SearchFragment;->getGADataAggregator()Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    move-result-object v6

    move-object v4, p1

    .line 849
    invoke-static/range {v0 .. v6}, Lcom/sonyericsson/music/library/AlbumFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/AlbumFragment;

    move-result-object v0

    goto :goto_0

    .line 841
    :pswitch_1
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 844
    invoke-direct {p0}, Lcom/sonyericsson/music/search/SearchFragment;->getGADataAggregator()Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    move-result-object v6

    move-object v0, p1

    .line 843
    invoke-static/range {v0 .. v6}, Lcom/sonyericsson/music/library/AlbumFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/AlbumFragment;

    move-result-object v0

    .line 857
    :goto_0
    new-instance v1, Lcom/sonyericsson/music/common/CheckMediaAvailableTask;

    new-instance v2, Lcom/sonyericsson/music/search/SearchFragment$8;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/music/search/SearchFragment$8;-><init>(Lcom/sonyericsson/music/search/SearchFragment;Lcom/sonyericsson/music/library/AlbumFragment;)V

    invoke-direct {v1, p1, v2}, Lcom/sonyericsson/music/common/CheckMediaAvailableTask;-><init>(Landroid/net/Uri;Lcom/sonyericsson/music/common/MediaAvailabilityCallback;)V

    sget-object p1, Lcom/sonyericsson/music/search/SearchFragment;->sExecutor:Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/Context;

    const/4 v2, 0x0

    .line 867
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private openArtist(Lcom/sonyericsson/music/search/SearchItem;)V
    .locals 5

    .line 871
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v0

    .line 872
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 875
    sget-object v3, Lcom/sonyericsson/music/search/SearchFragment$10;->$SwitchMap$com$sonyericsson$music$search$SearchConstants$Type:[I

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    return-void

    .line 877
    :pswitch_0
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 878
    sget-object v1, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ARTIST_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    .line 879
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getArtUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0}, Lcom/sonyericsson/music/search/SearchFragment;->getGADataAggregator()Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    move-result-object v3

    .line 878
    invoke-static {v1, v0, v2, p1, v3}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->newInstance(Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/artist/ArtistFragment;

    move-result-object p1

    goto :goto_0

    .line 882
    :pswitch_1
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 883
    sget-object p1, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->TRACK_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    .line 884
    invoke-direct {p0}, Lcom/sonyericsson/music/search/SearchFragment;->getGADataAggregator()Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    move-result-object v1

    .line 883
    invoke-static {p1, v0, v2, v4, v1}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->newInstance(Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/artist/ArtistFragment;

    move-result-object p1

    goto :goto_0

    .line 887
    :pswitch_2
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 888
    sget-object p1, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ALBUM_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    .line 889
    invoke-direct {p0}, Lcom/sonyericsson/music/search/SearchFragment;->getGADataAggregator()Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    move-result-object v1

    .line 888
    invoke-static {p1, v0, v2, v4, v1}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->newInstance(Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/artist/ArtistFragment;

    move-result-object p1

    .line 895
    :goto_0
    new-instance v1, Lcom/sonyericsson/music/common/CheckMediaAvailableTask;

    new-instance v2, Lcom/sonyericsson/music/search/SearchFragment$9;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/music/search/SearchFragment$9;-><init>(Lcom/sonyericsson/music/search/SearchFragment;Lcom/sonyericsson/music/library/artist/ArtistFragment;)V

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/music/common/CheckMediaAvailableTask;-><init>(Landroid/net/Uri;Lcom/sonyericsson/music/common/MediaAvailabilityCallback;)V

    sget-object p1, Lcom/sonyericsson/music/search/SearchFragment;->sExecutor:Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/Context;

    const/4 v2, 0x0

    .line 905
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 918
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/search/SearchFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    .line 920
    iput-boolean v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldClose:Z

    .line 921
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchView:Lcom/sonyericsson/music/search/MusicSearchView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_0

    .line 923
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 924
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 927
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_1

    .line 928
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 930
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f010014

    const v3, 0x7f010015

    const v4, 0x7f010013

    .line 931
    invoke-virtual {v1, v2, v4, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 933
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    .line 934
    invoke-virtual {v0, v1, p1, p2}, Lcom/sonyericsson/music/MusicFragmentManager;->placeContent(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 935
    invoke-virtual {v1, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 936
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method private playTrack(J)V
    .locals 3

    .line 801
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    .line 803
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 804
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getDrmUtils()Lcom/sonyericsson/music/common/DrmUtils;

    move-result-object p2

    .line 805
    invoke-interface {p2, p1}, Lcom/sonyericsson/music/common/DrmUtils;->hasValidRights(Landroid/net/Uri;)Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    move-result-object v1

    .line 806
    sget-object v2, Lcom/sonyericsson/music/search/SearchFragment$10;->$SwitchMap$com$sonyericsson$music$common$DrmUtils$RightsCheckResult:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 827
    :pswitch_0
    invoke-interface {p2, v0, p1}, Lcom/sonyericsson/music/common/DrmUtils;->renewRights(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 808
    :pswitch_1
    new-instance p2, Lcom/sonyericsson/music/common/CheckMediaAvailableTask;

    new-instance v0, Lcom/sonyericsson/music/search/SearchFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/search/SearchFragment$7;-><init>(Lcom/sonyericsson/music/search/SearchFragment;Landroid/net/Uri;)V

    invoke-direct {p2, p1, v0}, Lcom/sonyericsson/music/common/CheckMediaAvailableTask;-><init>(Landroid/net/Uri;Lcom/sonyericsson/music/common/MediaAvailabilityCallback;)V

    sget-object p1, Lcom/sonyericsson/music/search/SearchFragment;->sExecutor:Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/Context;

    const/4 v1, 0x0

    .line 823
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showContentUnavailableToast()V
    .locals 3

    .line 909
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 910
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f100133

    const/4 v2, 0x0

    .line 911
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method private swapSearchResult(Lcom/sonyericsson/music/search/SearchResult;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 784
    invoke-interface {p1}, Lcom/sonyericsson/music/search/SearchResult;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/sonyericsson/music/search/SearchResult;->hasHistoryData()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mEmptySearchState:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 787
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mEmptySearchState:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 785
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mEmptySearchState:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 790
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchAdapter:Lcom/sonyericsson/music/search/SearchAdapter;

    if-eqz v0, :cond_3

    .line 791
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/search/SearchAdapter;->swapData(Lcom/sonyericsson/music/search/SearchResult;)V

    .line 794
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mLayoutManagerState:Landroid/os/Parcelable;

    if-eqz v0, :cond_4

    .line 795
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mLayoutManagerState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 796
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mLayoutManagerState:Landroid/os/Parcelable;

    :cond_4
    return-void
.end method


# virtual methods
.method public clearQuery()V
    .locals 3

    .line 752
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/search/SearchFragment;->RETAIN_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 753
    iput-object v2, p0, Lcom/sonyericsson/music/search/SearchFragment;->mQueryText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 754
    iput-boolean v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldForceQueryText:Z

    const/4 v0, 0x1

    .line 755
    iput-boolean v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldToggleInput:Z

    return-void
.end method

.method protected getDrawerIndicator()Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;
    .locals 1

    .line 693
    sget-object v0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;->BACK:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;

    return-object v0
.end method

.method public getScrollAllowed(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isAtBottomOfList()Z
    .locals 3

    .line 722
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 723
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    .line 724
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 260
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 262
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/music/search/SearchFragment;->RETAIN_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/search/SearchFragment$RetainObject;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchFragment$RetainObject;->getQueryText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mQueryText:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchFragment$RetainObject;->shouldToggleInput()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldToggleInput:Z

    .line 266
    iput-boolean v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldClearFocus:Z

    .line 267
    iput-boolean v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldForceQueryText:Z

    .line 268
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchFragment$RetainObject;->getLayoutManagerState()Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mLayoutManagerState:Landroid/os/Parcelable;

    .line 271
    :cond_0
    iput-boolean v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldClose:Z

    .line 273
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "query_arg"

    .line 274
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mQueryText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method protected onApplyTopPadding(II)I
    .locals 0

    return p1
.end method

.method public onBackStackChanged()V
    .locals 2

    .line 698
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 701
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 702
    invoke-interface {v0}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "search_result"

    .line 703
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 709
    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/music/search/SearchFragment;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 501
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 503
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 508
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    .line 509
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eq v2, v3, :cond_f

    const/16 v3, 0xc

    const/16 v5, 0x15

    if-eq v2, v3, :cond_a

    if-eq v2, v5, :cond_a

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    return v1

    .line 557
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/music/search/SearchConstants$Type;->TRACK:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne p1, v0, :cond_1

    .line 559
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/search/SearchFragment;->openAlbum(Lcom/sonyericsson/music/search/SearchItem;)V

    :cond_1
    return v4

    .line 564
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/music/search/SearchConstants$Type;->ALBUM:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne p1, v0, :cond_2

    .line 565
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/search/SearchFragment;->openArtist(Lcom/sonyericsson/music/search/SearchItem;)V

    goto :goto_0

    .line 566
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/music/search/SearchConstants$Type;->TRACK:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne p1, v0, :cond_3

    .line 568
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/search/SearchFragment;->openArtist(Lcom/sonyericsson/music/search/SearchItem;)V

    :cond_3
    :goto_0
    return v4

    .line 588
    :pswitch_2
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Type;->TRACK:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne p1, v1, :cond_4

    .line 589
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/TrackActions;->addToFavourites(Lcom/sonyericsson/music/MusicActivity;J)V

    :cond_4
    return v4

    .line 573
    :pswitch_3
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Type;->ARTIST:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne p1, v1, :cond_5

    .line 574
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v1

    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    .line 575
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getArtistName()Ljava/lang/String;

    move-result-object p1

    .line 574
    invoke-static {v0, v1, v2, p1}, Lcom/sonyericsson/music/common/ArtistActions;->deleteArtist(Lcom/sonyericsson/music/MusicActivity;JLjava/lang/String;)V

    goto :goto_1

    .line 576
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Type;->ALBUM:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne p1, v1, :cond_6

    .line 577
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    .line 578
    invoke-virtual {v1}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 577
    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 579
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {v1}, Lcom/sonyericsson/music/search/SearchItem;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/music/common/AlbumActions;->deleteAlbum(Lcom/sonyericsson/music/MusicActivity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 580
    :cond_6
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Type;->TRACK:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne p1, v1, :cond_7

    .line 581
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    .line 582
    invoke-virtual {v1}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 583
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {v1}, Lcom/sonyericsson/music/search/SearchItem;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/music/common/TrackActions;->deleteTrack(Lcom/sonyericsson/music/MusicActivity;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return v4

    .line 511
    :pswitch_4
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Type;->ALBUM:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne p1, v1, :cond_8

    .line 512
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v1, Lcom/sonyericsson/music/common/AlbumActions$CreatePlaylistFromAlbumData;

    iget-object v2, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    .line 514
    invoke-virtual {v2}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v2

    .line 513
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    .line 514
    invoke-virtual {v3}, Lcom/sonyericsson/music/search/SearchItem;->getArtistName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    .line 515
    invoke-virtual {v5}, Lcom/sonyericsson/music/search/SearchItem;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v5}, Lcom/sonyericsson/music/common/AlbumActions$CreatePlaylistFromAlbumData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-static {v0, p1, v1}, Lcom/sonyericsson/music/common/AlbumActions;->addToDialog(Lcom/sonyericsson/music/MusicActivity;Landroidx/fragment/app/FragmentManager;Lcom/sonyericsson/music/common/AlbumActions$CreatePlaylistFromAlbumData;)V

    goto :goto_2

    .line 516
    :cond_8
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Type;->TRACK:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne p1, v1, :cond_9

    .line 518
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    .line 519
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v1

    .line 518
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, v4, p1, v1}, Lcom/sonyericsson/music/common/TrackActions;->addToDialog(Lcom/sonyericsson/music/MusicActivity;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    return v4

    .line 527
    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-ne p1, v5, :cond_b

    const/4 v1, 0x1

    .line 528
    :cond_b
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/music/search/SearchConstants$Type;->ALBUM:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne p1, v0, :cond_c

    .line 529
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {v0}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v2

    invoke-static {p1, v2, v3, v1}, Lcom/sonyericsson/music/common/AlbumActions;->enqueueLocalAlbum(Lcom/sonyericsson/music/player/PlayerController;JZ)V

    goto :goto_3

    .line 531
    :cond_c
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/music/search/SearchConstants$Type;->TRACK:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne p1, v0, :cond_d

    .line 533
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {v0}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v2

    invoke-static {p1, v2, v3, v1}, Lcom/sonyericsson/music/common/TrackActions;->enqueueTrack(Lcom/sonyericsson/music/player/PlayerController;JZ)V

    goto :goto_3

    .line 535
    :cond_d
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/music/search/SearchConstants$Type;->ARTIST:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne p1, v0, :cond_e

    .line 536
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {v0}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v2

    invoke-static {p1, v2, v3, v1}, Lcom/sonyericsson/music/common/ArtistActions;->enqueueArtist(Lcom/sonyericsson/music/player/PlayerController;JZ)V

    .line 540
    :cond_e
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/search/SearchHistory;->insertAsync(Landroid/content/Context;Lcom/sonyericsson/music/search/SearchItem;)V

    return v4

    .line 546
    :cond_f
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Type;->ALBUM:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne p1, v1, :cond_10

    .line 547
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/AlbumActions;->sendLocalAlbum(Lcom/sonyericsson/music/MusicActivity;J)V

    goto :goto_4

    .line 548
    :cond_10
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Type;->ARTIST:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne p1, v1, :cond_11

    .line 549
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/Sender;->sendArtistTracks(Lcom/sonyericsson/music/MusicActivity;J)V

    goto :goto_4

    .line 551
    :cond_11
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    .line 552
    invoke-virtual {v0}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v0, v1

    .line 551
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/common/Sender;->sendSingleFile(Landroid/content/Context;J)V

    :goto_4
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 201
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 203
    new-instance v0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;-><init>(Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;)V

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mPaddedListScroller:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    const/4 v0, 0x1

    .line 204
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    if-nez p1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/sonyericsson/music/search/SearchFragment;->clearQuery()V

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lcom/sonyericsson/music/search/SearchResult;",
            ">;"
        }
    .end annotation

    const-string p1, ""

    if-eqz p2, :cond_0

    const-string p1, "query_arg"

    const-string v0, ""

    .line 678
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 680
    :cond_0
    new-instance p2, Lcom/sonyericsson/music/search/SearchLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/sonyericsson/music/search/SearchLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 372
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 375
    invoke-static {p1}, Lcom/sonyericsson/music/search/SearchFragment;->hideAllItemsButSearch(Landroid/view/Menu;)V

    .line 379
    iget-object p2, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchView:Lcom/sonyericsson/music/search/MusicSearchView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sonyericsson/music/search/MusicSearchView;->getSavedPreCollapseQuery()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const v0, 0x7f090117

    .line 381
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 382
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    new-instance v0, Lcom/sonyericsson/music/search/SearchFragment$6;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/music/search/SearchFragment$6;-><init>(Lcom/sonyericsson/music/search/SearchFragment;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 478
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 479
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_1
    return-void
.end method

.method public onCreateSearchItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Lcom/sonyericsson/music/search/SearchItem;)V
    .locals 5

    .line 637
    new-instance p2, Lcom/sonyericsson/music/common/ContextMenuBuilder;

    invoke-direct {p2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;-><init>()V

    const-string v0, ""

    .line 639
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 640
    invoke-virtual {v1}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 642
    :goto_0
    iput-object p3, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    .line 643
    invoke-virtual {p3}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/music/search/SearchConstants$Type;->ALBUM:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne v3, v4, :cond_1

    .line 644
    invoke-virtual {p3}, Lcom/sonyericsson/music/search/SearchItem;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-virtual {p2, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddTo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 646
    invoke-virtual {p2, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEnqueue(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 647
    invoke-virtual {p2, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGoToArtist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 648
    invoke-virtual {p2, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setDeleteFromStorage(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    goto :goto_1

    .line 649
    :cond_1
    invoke-virtual {p3}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/music/search/SearchConstants$Type;->ARTIST:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne v3, v4, :cond_2

    .line 650
    invoke-virtual {p3}, Lcom/sonyericsson/music/search/SearchItem;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-virtual {p2, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEnqueue(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 652
    invoke-virtual {p2, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setDeleteFromStorage(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    goto :goto_1

    .line 653
    :cond_2
    invoke-virtual {p3}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/music/search/SearchConstants$Type;->TRACK:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne v3, v4, :cond_3

    .line 654
    invoke-virtual {p3}, Lcom/sonyericsson/music/search/SearchItem;->getTrackName()Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-virtual {p2, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddTo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 656
    invoke-virtual {p2, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEnqueue(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 657
    invoke-virtual {p2, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGoToArtist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 658
    invoke-virtual {p2, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGoToAlbum(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 659
    invoke-virtual {p2, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setDeleteFromStorage(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 660
    invoke-virtual {p2, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddToFavorites(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 663
    :cond_3
    :goto_1
    invoke-virtual {p2, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setSend(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 664
    invoke-virtual {p2, v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setTitle(Ljava/lang/String;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->build(Landroid/view/ContextMenu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0042

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 351
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchAdapter:Lcom/sonyericsson/music/search/SearchAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/search/SearchAdapter;->swapData(Lcom/sonyericsson/music/search/SearchResult;)V

    .line 355
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchAdapter:Lcom/sonyericsson/music/search/SearchAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/search/SearchAdapter;->setListener(Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShowProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 360
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    .line 362
    iput-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 365
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/UIUtils;->unbindDrawables(Landroid/view/View;)V

    .line 367
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 332
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 334
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchView:Lcom/sonyericsson/music/search/MusicSearchView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 335
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 339
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 342
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 344
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->disableCastButtonVisibilityUpdate(Z)V

    :cond_2
    return-void
.end method

.method protected onGetToolbarScroller(Lcom/sonyericsson/music/ToolbarControl;)Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mPaddedListScroller:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->getPaddingScroller(Lcom/sonyericsson/music/ToolbarControl;)Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;

    move-result-object p1

    return-object p1
.end method

.method public onLabelItemClicked(Lcom/sonyericsson/music/search/Label;)V
    .locals 0

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Lcom/sonyericsson/music/search/SearchResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/sonyericsson/music/search/SearchResult;",
            ">;",
            "Lcom/sonyericsson/music/search/SearchResult;",
            ")V"
        }
    .end annotation

    .line 685
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/search/SearchFragment;->onSearchComplete(Lcom/sonyericsson/music/search/SearchResult;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p2, Lcom/sonyericsson/music/search/SearchResult;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/search/SearchFragment;->onLoadFinished(Landroidx/loader/content/Loader;Lcom/sonyericsson/music/search/SearchResult;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/sonyericsson/music/search/SearchResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 492
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 493
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->collapseActionView()Z

    const/4 p1, 0x1

    return p1

    .line 496
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 316
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 319
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->unlockDrawer()V

    :cond_0
    const/4 v0, 0x0

    .line 324
    iput-boolean v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldToggleInput:Z

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchView:Lcom/sonyericsson/music/search/MusicSearchView;

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldToggleInput:Z

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 485
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 487
    invoke-static {p1}, Lcom/sonyericsson/music/search/SearchFragment;->hideAllItemsButSearch(Landroid/view/Menu;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 280
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 282
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object p1

    .line 284
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mQueryText:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 286
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 289
    :cond_0
    new-instance v1, Lcom/sonyericsson/music/search/SearchFragment$RetainObject;

    iget-object v2, p0, Lcom/sonyericsson/music/search/SearchFragment;->mQueryText:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldToggleInput:Z

    invoke-direct {v1, v2, v3, v0}, Lcom/sonyericsson/music/search/SearchFragment$RetainObject;-><init>(Ljava/lang/String;ZLandroid/os/Parcelable;)V

    .line 290
    sget-object v0, Lcom/sonyericsson/music/search/SearchFragment;->RETAIN_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onSearchItemClicked(Landroid/view/View;Lcom/sonyericsson/music/search/SearchItem;)V
    .locals 0

    .line 605
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchView:Lcom/sonyericsson/music/search/MusicSearchView;

    if-eqz p1, :cond_0

    .line 606
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 608
    :cond_0
    iput-object p2, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    .line 611
    invoke-direct {p0}, Lcom/sonyericsson/music/search/SearchFragment;->isHistory()Z

    move-result p1

    if-nez p1, :cond_1

    .line 612
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-static {p1, p2}, Lcom/sonyericsson/music/search/SearchHistory;->insertAsync(Landroid/content/Context;Lcom/sonyericsson/music/search/SearchItem;)V

    .line 615
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    if-eqz p1, :cond_4

    .line 616
    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/music/search/SearchConstants$Type;->TRACK:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne p1, p2, :cond_2

    .line 617
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/search/SearchFragment;->playTrack(J)V

    goto :goto_0

    .line 618
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/music/search/SearchConstants$Type;->ALBUM:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne p1, p2, :cond_3

    .line 619
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/search/SearchFragment;->openAlbum(Lcom/sonyericsson/music/search/SearchItem;)V

    goto :goto_0

    .line 620
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/music/search/SearchConstants$Type;->ARTIST:Lcom/sonyericsson/music/search/SearchConstants$Type;

    if-ne p1, p2, :cond_4

    .line 621
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/search/SearchFragment;->openArtist(Lcom/sonyericsson/music/search/SearchItem;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onSearchItemContextClicked(Landroid/view/View;Lcom/sonyericsson/music/search/SearchItem;)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchAdapter:Lcom/sonyericsson/music/search/SearchAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/search/SearchAdapter;->getData()Lcom/sonyericsson/music/search/SearchResult;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/music/search/SearchResult;->hasHistoryData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/sonyericsson/music/search/SearchHistory;->deleteAsync(Landroid/content/Context;Lcom/sonyericsson/music/search/SearchItem;)V

    goto :goto_0

    .line 631
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 296
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onStart()V

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 298
    instance-of v1, v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v1, :cond_0

    .line 299
    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mServiceConnectionListener:Lcom/sonyericsson/music/MediaServiceConnection;

    .line 300
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->addMusicServiceConnectedListener(Lcom/sonyericsson/music/MediaServiceConnection;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 306
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onStop()V

    .line 307
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 308
    instance-of v1, v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v1, :cond_0

    .line 309
    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mServiceConnectionListener:Lcom/sonyericsson/music/MediaServiceConnection;

    .line 310
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->removeMusicServiceConnectedListener(Lcom/sonyericsson/music/MediaServiceConnection;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 221
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0900ad

    .line 222
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mEmptySearchState:Landroid/view/View;

    .line 224
    invoke-direct {p0}, Lcom/sonyericsson/music/search/SearchFragment;->getNewAdapter()Lcom/sonyericsson/music/search/SearchAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchAdapter:Lcom/sonyericsson/music/search/SearchAdapter;

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchAdapter:Lcom/sonyericsson/music/search/SearchAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchAdapter:Lcom/sonyericsson/music/search/SearchAdapter;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/search/SearchAdapter;->setListener(Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;)V

    const v0, 0x7f0901bc

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchList:Landroidx/recyclerview/widget/RecyclerView;

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchAdapter:Lcom/sonyericsson/music/search/SearchAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 230
    new-instance v0, Lcom/sonyericsson/music/search/SearchFragment$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/search/SearchFragment$5;-><init>(Lcom/sonyericsson/music/search/SearchFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sonyericsson/music/search/SearchFragment;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const v0, 0x7f090195

    .line 240
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    .line 243
    invoke-static {p1}, Lcom/sonyericsson/music/common/UIUtils;->isTabletLayout(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 244
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/MusicActivity;->setActionBarTitle(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/MusicActivity;->disableCastButtonVisibilityUpdate(Z)V

    if-nez p2, :cond_1

    .line 249
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "query_arg"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 251
    iput-boolean p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mLaunchQueryHandled:Z

    .line 255
    :cond_1
    iput-boolean v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mShouldClose:Z

    return-void
.end method

.method public paddingHeightVisible()I
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    .line 730
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 731
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public populateQuery(Ljava/lang/String;)V
    .locals 2

    .line 745
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mQueryText:Ljava/lang/String;

    .line 746
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchFragment;->mSearchView:Lcom/sonyericsson/music/search/MusicSearchView;

    if-eqz p1, :cond_0

    .line 747
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchFragment;->mQueryText:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method
