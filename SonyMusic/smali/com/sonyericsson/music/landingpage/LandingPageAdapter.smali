.class public Lcom/sonyericsson/music/landingpage/LandingPageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LandingPageAdapter.java"

# interfaces
.implements Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;
.implements Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;,
        Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;,
        Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;,
        Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemTopPadding;,
        Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;,
        Lcom/sonyericsson/music/landingpage/LandingPageAdapter$AdapterInteractionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/sonyericsson/music/landingpage/card/LandingPageCard$AdapterCardListener;",
        "Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange;"
    }
.end annotation


# static fields
.field public static final FIRST_ADAPTER_CONTENT_POSITION:I = 0x1

.field private static final NBR_OF_CARD_CONCURRENTLY_VISIBLE:I = 0x1

.field public static final VIEW_TYPE_CARD:I = 0x4

.field private static final VIEW_TYPE_CATEGORY_NEWLY_ADDED:I = 0x3

.field private static final VIEW_TYPE_CATEGORY_PLAYQUEUE:I = 0x1

.field private static final VIEW_TYPE_CATEGORY_RECENTLY_PLAYED:I = 0x2

.field private static final VIEW_TYPE_INVALID:I = -0x1

.field private static final VIEW_TYPE_TOP_PADDING:I


# instance fields
.field private final mAdapterInteractionClickListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/landingpage/LandingPageAdapter$AdapterInteractionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdapterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private final mCardQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/landingpage/card/LandingPageCard;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field private final mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

.field private mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

.field private final mOrientationChange:Z

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mVhPreInflatedNewlyAddedCategory:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private mVhPreInflatedPlayqueueCategory:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private mVhPreInflatedRecentlyPlayedCategory:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/landingpage/LandingPageAdapter$AdapterInteractionListener;Z)V
    .locals 2

    .line 88
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mCardQueue:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mVhPreInflatedPlayqueueCategory:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 76
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mVhPreInflatedRecentlyPlayedCategory:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 78
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mVhPreInflatedNewlyAddedCategory:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 80
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mCategoryRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 91
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterInteractionClickListenerRef:Ljava/lang/ref/WeakReference;

    .line 93
    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 95
    iput-boolean p4, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mOrientationChange:Z

    .line 97
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    new-instance p2, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemTopPadding;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, v0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemTopPadding;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageAdapter;ILandroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/landingpage/LandingPageAdapter;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterInteractionClickListenerRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/landingpage/LandingPageAdapter;Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->initializeItem(Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method private createCategoryViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const v0, 0x7f0c004c

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    move-object p1, v2

    goto :goto_0

    .line 175
    :pswitch_0
    new-instance p1, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;

    iget-object v3, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 176
    invoke-virtual {v3, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 171
    :pswitch_1
    new-instance p1, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;

    iget-object v3, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 172
    invoke-virtual {v3, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/landingpage/GridCategoryHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 167
    :pswitch_2
    new-instance p1, Lcom/sonyericsson/music/landingpage/PlayQueueCategoryHolder;

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0c004f

    .line 168
    invoke-virtual {v0, v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/landingpage/PlayQueueCategoryHolder;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findStaticAdapterItem(I)Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 551
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->isViewTypeCategory(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    if-nez v1, :cond_2

    return-object v2

    .line 562
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_4

    .line 564
    iget-object v3, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    .line 565
    invoke-virtual {v3}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->getViewType()I

    move-result v4

    if-ne v4, p1, :cond_3

    move-object v2, v3

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-object v2
.end method

.method private getAdapterItem(I)Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getPreInflatedViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 155
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mVhPreInflatedNewlyAddedCategory:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mVhPreInflatedRecentlyPlayedCategory:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 149
    :pswitch_2
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mVhPreInflatedPlayqueueCategory:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getViewTypeInAdapterCount(I)I
    .locals 4

    .line 392
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 394
    iget-object v3, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    invoke-virtual {v3}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->getViewType()I

    move-result v3

    if-ne v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private initializeItem(Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 368
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->getCurrentData()Landroid/database/Cursor;

    move-result-object v0

    .line 369
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->deinit()V

    .line 370
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 371
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 378
    :cond_0
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->setTotalAvailableWidth(I)V

    .line 381
    :cond_1
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->init(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 382
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;->swapData(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private isViewTypeCategory(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq v0, p1, :cond_1

    const/4 v1, 0x2

    if-eq v1, p1, :cond_1

    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private refreshCategoryItems()V
    .locals 3

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 528
    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    .line 529
    invoke-virtual {v2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->getViewType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->isViewTypeCategory(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 532
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private resetPreInflatedViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    move-object p1, v0

    goto :goto_0

    .line 196
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mVhPreInflatedNewlyAddedCategory:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 197
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mVhPreInflatedNewlyAddedCategory:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 192
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mVhPreInflatedRecentlyPlayedCategory:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 193
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mVhPreInflatedRecentlyPlayedCategory:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 188
    :pswitch_2
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mVhPreInflatedPlayqueueCategory:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 189
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mVhPreInflatedPlayqueueCategory:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addCard(Lcom/sonyericsson/music/landingpage/card/LandingPageCard;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 403
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;->getViewType()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageAdapter;ILcom/sonyericsson/music/landingpage/card/LandingPageCard;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 405
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 406
    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    invoke-virtual {v2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->getViewType()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x4

    .line 409
    invoke-direct {p0, v2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->getViewTypeInAdapterCount(I)I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 413
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    .line 414
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->getViewType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->isCardViewType(I)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 p1, v3, 0x1

    move v4, p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 420
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->refreshCategoryItems()V

    .line 421
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {p1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 422
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_1

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mCardQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public categoriesAvailable()Z
    .locals 2

    const/4 v0, 0x1

    .line 117
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->findStaticAdapterItem(I)Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 118
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->findStaticAdapterItem(I)Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 119
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->findStaticAdapterItem(I)Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method dismissCard(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 486
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->isCardViewType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 490
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    .line 491
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;

    .line 492
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;->dismissCard(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    .line 111
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->getViewType()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method getTopPaddingView(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 593
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;

    if-eqz p1, :cond_0

    .line 594
    iget-object p1, p1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;->mTopPadding:Landroid/widget/FrameLayout;

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method isCardViewType(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyParentFragmentLifecycleChange(Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 575
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 577
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    .line 578
    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v3, v0, 0x1

    .line 579
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 580
    invoke-virtual {v1, p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->notifyParentFragmentLifecycleChange(Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    move v0, v3

    goto :goto_0

    .line 583
    :cond_0
    sget-object p2, Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;->ON_DESTROY_VIEW:Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;

    if-ne p1, p2, :cond_1

    .line 584
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x1

    .line 138
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->createCategoryViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mVhPreInflatedPlayqueueCategory:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 p1, 0x2

    .line 139
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->createCategoryViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mVhPreInflatedRecentlyPlayedCategory:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 p1, 0x3

    .line 141
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->createCategoryViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mVhPreInflatedNewlyAddedCategory:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 260
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->getAdapterItem(I)Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    move-result-object p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->setViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x0

    goto :goto_0

    .line 235
    :pswitch_0
    new-instance p2, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c004b

    .line 236
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sonyericsson/music/landingpage/card/CardHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 225
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->getPreInflatedViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 229
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->resetPreInflatedViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    goto :goto_0

    .line 231
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->createCategoryViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    goto :goto_0

    .line 217
    :pswitch_2
    new-instance p2, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0050

    .line 218
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$TopPaddingHolder;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageAdapter;Landroid/view/View;)V

    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    const/4 p1, 0x0

    .line 208
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 250
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->getAdapterItem(I)Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->attachedToWindow()V

    :cond_0
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 271
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->getAdapterItem(I)Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public removeCard(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 498
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->isCardViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 502
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->refreshCategoryItems()V

    .line 505
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    .line 506
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;

    .line 507
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 508
    invoke-virtual {v1, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;->resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 510
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterInteractionClickListenerRef:Ljava/lang/ref/WeakReference;

    .line 511
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$AdapterInteractionListener;

    if-eqz p1, :cond_0

    .line 513
    invoke-virtual {v1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;->getCard()Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$AdapterInteractionListener;->onCardRemoved(Lcom/sonyericsson/music/landingpage/card/LandingPageCard;)V

    .line 517
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mCardQueue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 518
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mCardQueue:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    .line 519
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->addCard(Lcom/sonyericsson/music/landingpage/card/LandingPageCard;)V

    :cond_1
    return-void
.end method

.method removeCard(Lcom/sonyericsson/music/landingpage/card/LandingPageCard;)V
    .locals 4

    .line 432
    invoke-direct {p0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->refreshCategoryItems()V

    const/4 v0, 0x0

    .line 436
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 437
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    .line 438
    invoke-virtual {v1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->getViewType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 439
    check-cast v1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;

    .line 440
    invoke-virtual {v1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;->getCard()Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 441
    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 442
    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 443
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 444
    instance-of v3, v2, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    if-eqz v3, :cond_0

    .line 445
    check-cast v2, Lcom/sonyericsson/music/landingpage/card/CardHolder;

    .line 446
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;->resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 449
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 450
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mCardQueue:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 2

    .line 600
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    const/4 v0, 0x0

    .line 601
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 602
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    .line 603
    invoke-virtual {v1, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method swapAllCategoryCursors(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 280
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 281
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 282
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 283
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 285
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    xor-int/2addr v2, v1

    .line 286
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->swapCategoryCursor(Landroid/database/Cursor;IZZ)V

    goto :goto_0

    .line 289
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    .line 290
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->swapCategoryCursor(Landroid/database/Cursor;I)V

    :cond_1
    return-void
.end method

.method swapCategoryCursor(Landroid/database/Cursor;I)V
    .locals 1

    const/4 v0, 0x0

    .line 296
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->swapCategoryCursor(Landroid/database/Cursor;IZZ)V

    return-void
.end method

.method swapCategoryCursor(Landroid/database/Cursor;IZZ)V
    .locals 11

    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_0

    const/4 p2, -0x1

    goto :goto_0

    :pswitch_0
    const/4 p2, 0x3

    goto :goto_0

    :pswitch_1
    const/4 p2, 0x2

    goto :goto_0

    :pswitch_2
    const/4 p2, 0x1

    :goto_0
    if-eq p2, v0, :cond_7

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 317
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 318
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->findStaticAdapterItem(I)Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    move-result-object v1

    if-nez v1, :cond_2

    .line 320
    new-instance v10, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;

    iget-object v4, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    iget-object v5, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget-object v7, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mCategoryRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    iget-object v8, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    iget-boolean v9, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mOrientationChange:Z

    move-object v1, v10

    move-object v2, p0

    move v3, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v9}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageAdapter;ILcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Landroid/database/Cursor;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;Z)V

    .line 324
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    invoke-virtual {v1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->getViewType()I

    move-result v1

    .line 328
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->isViewTypeCategory(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-le v1, p2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 332
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {p1, v0, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 333
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->getPreInflatedViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-direct {p0, v10, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->initializeItem(Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCategory;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    if-nez p3, :cond_6

    .line 335
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_4

    .line 338
    :cond_2
    invoke-virtual {v1, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->swapData(Ljava/lang/Object;)V

    goto :goto_4

    .line 342
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_3
    if-ge v0, p1, :cond_6

    .line 344
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    invoke-virtual {v1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->getViewType()I

    move-result v1

    if-ne v1, p2, :cond_5

    .line 345
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    .line 346
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->deinit()V

    .line 347
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_4

    .line 348
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    .line 349
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 351
    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->destroy()V

    if-nez p3, :cond_6

    .line 353
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-eqz p4, :cond_7

    .line 361
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateCard(Lcom/sonyericsson/music/landingpage/card/LandingPageCard;)V
    .locals 6

    .line 462
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 463
    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    invoke-virtual {v2}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;->getViewType()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 466
    iget-object v4, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mAdapterList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItem;

    if-eqz v4, :cond_0

    .line 467
    instance-of v5, v4, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;

    if-eqz v5, :cond_0

    .line 468
    check-cast v4, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;

    .line 469
    invoke-static {v4}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;->access$000(Lcom/sonyericsson/music/landingpage/LandingPageAdapter$LandingPageAdapterItemCard;)Lcom/sonyericsson/music/landingpage/card/LandingPageCard;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 470
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    .line 475
    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->mCardQueue:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 480
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageAdapter;->addCard(Lcom/sonyericsson/music/landingpage/card/LandingPageCard;)V

    :cond_3
    return-void
.end method
