.class public Lcom/sonyericsson/music/library/store/StoreFragment;
.super Lcom/sonyericsson/music/library/BaseFragment;
.source "StoreFragment.java"

# interfaces
.implements Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/store/StoreFragment$GetStoreResponseTask;,
        Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;
    }
.end annotation


# static fields
.field private static final DELAY_PROGRESS_BAR:I = 0x12c

.field private static final KEY_CONTEXT_GROUP_ID:Ljava/lang/String; = "context_group_id"

.field private static final KEY_SCROLL_POSITION:Ljava/lang/String; = "scroll_position"

.field private static final KEY_SHOW_RANK:Ljava/lang/String; = "show_rank"

.field private static final KEY_STORE_PAGE_CONTENT:Ljava/lang/String; = "store_page_content"

.field private static final KEY_STORE_PAGE_POSITION:Ljava/lang/String; = "store_page_position"

.field private static final MORA_HTTP_CACHE_SUB_FOLDER:Ljava/lang/String; = "mora_http"


# instance fields
.field private mCurrentScrollPosition:I

.field mCurrentStorePageContent:Lcom/sonyericsson/music/library/store/StorePageContent;

.field private mCurrentStorePagePosition:I

.field private mErrorText:Landroid/widget/TextView;

.field private mGetStoreResponseTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Lcom/sonyericsson/music/library/store/StoreResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRefreshMenuItem:Landroid/view/MenuItem;

.field private mScrollListener:Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;

.field mStoreAdapter:Lcom/sonyericsson/music/library/store/StoreAdapter;

.field private mTimerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;-><init>()V

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mTimerHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mCurrentStorePagePosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/library/store/StoreFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/library/store/StoreFragment;)Lcom/sonyericsson/music/ToolbarControl;
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/library/store/StoreFragment;)Lcom/sonyericsson/music/ToolbarControl;
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(ILjava/util/ArrayList;Z)Lcom/sonyericsson/music/library/store/StoreFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/library/store/StorePageContent;",
            ">;Z)",
            "Lcom/sonyericsson/music/library/store/StoreFragment;"
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/sonyericsson/music/library/store/StoreFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/store/StoreFragment;-><init>()V

    .line 108
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "context_group_id"

    .line 109
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "store_page_content"

    .line 110
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "show_rank"

    .line 111
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private refreshLayout(ZZ)V
    .locals 5

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v3, 0x7f100153

    invoke-static {p2, v3, v0}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    .line 300
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mErrorText:Landroid/widget/TextView;

    const/4 v3, 0x2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mStoreAdapter:Lcom/sonyericsson/music/library/store/StoreAdapter;

    .line 301
    invoke-virtual {p1}, Lcom/sonyericsson/music/library/store/StoreAdapter;->getItemCount()I

    move-result p1

    if-gt p1, v3, :cond_1

    const/4 v2, 0x0

    .line 300
    :cond_1
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    if-eqz p1, :cond_2

    .line 306
    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 308
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 309
    sget-object p2, Lcom/sonyericsson/music/library/store/StoreFragment$3;->$SwitchMap$com$sonyericsson$music$library$store$StorePageContent$ContentType:[I

    iget-object v2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mCurrentStorePageContent:Lcom/sonyericsson/music/library/store/StorePageContent;

    invoke-virtual {v2}, Lcom/sonyericsson/music/library/store/StorePageContent;->getContentType()Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p2, p2, v2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 329
    :pswitch_0
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p2, 0x1

    invoke-direct {v1, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 331
    new-instance v2, Lcom/sonyericsson/music/ui/LibraryDividerItemDecoration;

    invoke-direct {v2, p1, p2}, Lcom/sonyericsson/music/ui/LibraryDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 333
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0

    .line 311
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0a001d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 312
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v1, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 314
    new-instance v0, Lcom/sonyericsson/music/library/store/StoreFragment$2;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/music/library/store/StoreFragment$2;-><init>(Lcom/sonyericsson/music/library/store/StoreFragment;I)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 322
    new-instance v0, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;

    .line 324
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0700bf

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 325
    invoke-static {p1}, Lcom/sonyericsson/music/common/UIUtils;->isRTL(Landroid/content/Context;)Z

    move-result v4

    invoke-direct {v0, v3, p2, v2, v4}, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;-><init>(IIIZ)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 326
    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/sonyericsson/music/common/ThemeColor;->window(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 342
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 343
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onApplyTopPadding(II)I
    .locals 1

    add-int/2addr p2, p1

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mStoreAdapter:Lcom/sonyericsson/music/library/store/StoreAdapter;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/library/store/StoreAdapter;->applyTopPadding(I)V

    .line 203
    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 204
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 207
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 208
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 237
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f090114

    .line 239
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mRefreshMenuItem:Landroid/view/MenuItem;

    .line 240
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mRefreshMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 241
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "show_rank"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const/4 v0, 0x1

    .line 121
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "store_page_content"

    .line 124
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    if-eqz p3, :cond_0

    const-string v1, "store_page_position"

    .line 132
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mCurrentStorePagePosition:I

    const-string v1, "scroll_position"

    .line 133
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mCurrentScrollPosition:I

    .line 136
    :cond_0
    iget p3, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mCurrentStorePagePosition:I

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/music/library/store/StorePageContent;

    iput-object p3, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mCurrentStorePageContent:Lcom/sonyericsson/music/library/store/StorePageContent;

    const p3, 0x7f0c00b7

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901e5

    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0901e4

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mErrorText:Landroid/widget/TextView;

    .line 141
    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 142
    new-instance p2, Lcom/sonyericsson/music/library/store/StoreAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v6, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mCurrentStorePagePosition:I

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/music/library/store/StoreAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;Ljava/util/List;IZ)V

    iput-object p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mStoreAdapter:Lcom/sonyericsson/music/library/store/StoreAdapter;

    .line 145
    new-instance p2, Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;

    iget-object p3, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mStoreAdapter:Lcom/sonyericsson/music/library/store/StoreAdapter;

    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    invoke-virtual {p3, v0}, Lcom/sonyericsson/music/library/store/StoreAdapter;->getTopPaddingView(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;-><init>(Lcom/sonyericsson/music/library/store/StoreFragment;Landroid/view/View;)V

    iput-object p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mScrollListener:Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;

    .line 147
    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mScrollListener:Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 149
    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mStoreAdapter:Lcom/sonyericsson/music/library/store/StoreAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p2, 0x7f09019a

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 152
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/library/store/StoreFragment;->requestStoreResponse(Z)V

    return-object p1

    .line 127
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument key=store_page_content can not return a null value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mGetStoreResponseTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 188
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 189
    iput-object v1, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mGetStoreResponseTask:Landroid/os/AsyncTask;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mStoreAdapter:Lcom/sonyericsson/music/library/store/StoreAdapter;

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0}, Lcom/sonyericsson/music/library/store/StoreAdapter;->destroy()V

    .line 193
    iput-object v1, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mStoreAdapter:Lcom/sonyericsson/music/library/store/StoreAdapter;

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 196
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 176
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mScrollListener:Lcom/sonyericsson/music/library/store/StoreFragment$StoreOnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mRefreshMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 181
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 247
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090114

    if-eq v0, v1, :cond_0

    .line 252
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 249
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/store/StoreFragment;->requestStoreResponse(Z)V

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "store_page_position"

    .line 215
    iget v1, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mCurrentStorePagePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mGetStoreResponseTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mCurrentStorePageContent:Lcom/sonyericsson/music/library/store/StorePageContent;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    sget-object v1, Lcom/sonyericsson/music/library/store/StoreFragment$3;->$SwitchMap$com$sonyericsson$music$library$store$StorePageContent$ContentType:[I

    iget-object v2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mCurrentStorePageContent:Lcom/sonyericsson/music/library/store/StorePageContent;

    invoke-virtual {v2}, Lcom/sonyericsson/music/library/store/StorePageContent;->getContentType()Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "scroll_position"

    .line 226
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 227
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 226
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    const-string v1, "scroll_position"

    .line 222
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 223
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 222
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStoreItemClicked(ILcom/sonyericsson/music/library/store/StoreResponse;)V
    .locals 1

    .line 168
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/sonyericsson/music/library/store/StoreResponse;->getLaunchIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onStorePageContentChanged(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/store/StorePageContent;",
            ">;)V"
        }
    .end annotation

    .line 160
    iput p1, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mCurrentStorePagePosition:I

    .line 161
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/store/StorePageContent;

    iput-object p1, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mCurrentStorePageContent:Lcom/sonyericsson/music/library/store/StorePageContent;

    const/4 p1, 0x0

    .line 162
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/store/StoreFragment;->requestStoreResponse(Z)V

    return-void
.end method

.method requestStoreResponse(Z)V
    .locals 5

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mErrorText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mTimerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/music/library/store/StoreFragment$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/library/store/StoreFragment$1;-><init>(Lcom/sonyericsson/music/library/store/StoreFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mGetStoreResponseTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 269
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/library/store/StoreFragment$GetStoreResponseTask;

    new-instance v2, Ljava/io/File;

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "mora_http"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, p0, v2, p1}, Lcom/sonyericsson/music/library/store/StoreFragment$GetStoreResponseTask;-><init>(Lcom/sonyericsson/music/library/store/StoreFragment;Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mGetStoreResponseTask:Landroid/os/AsyncTask;

    .line 271
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mGetStoreResponseTask:Landroid/os/AsyncTask;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mCurrentStorePageContent:Lcom/sonyericsson/music/library/store/StorePageContent;

    .line 272
    invoke-virtual {v3}, Lcom/sonyericsson/music/library/store/StorePageContent;->getUri()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 271
    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method setStoreResponse(Lcom/sonyericsson/music/library/store/StoreResponse;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 281
    :goto_0
    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/music/library/store/StoreFragment;->refreshLayout(ZZ)V

    if-eqz p1, :cond_1

    .line 283
    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mStoreAdapter:Lcom/sonyericsson/music/library/store/StoreAdapter;

    iget-object v1, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mCurrentStorePageContent:Lcom/sonyericsson/music/library/store/StorePageContent;

    .line 284
    invoke-virtual {v1}, Lcom/sonyericsson/music/library/store/StorePageContent;->getContentType()Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/sonyericsson/music/library/store/StoreAdapter;->swapStoreResponse(Lcom/sonyericsson/music/library/store/StoreResponse;Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;)V

    .line 286
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mCurrentScrollPosition:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 287
    iput v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment;->mCurrentScrollPosition:I

    return-void
.end method
