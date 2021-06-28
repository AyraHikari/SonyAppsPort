.class public Lcom/sonyericsson/music/library/store/StoreAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/store/StoreAdapter$ArtDecoderListener;,
        Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;,
        Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;,
        Lcom/sonyericsson/music/library/store/StoreAdapter$TopPaddingHolder;,
        Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final SPINNER_POSITION:I = 0x1

.field public static final STATIC_VIEW_TYPES_COUNT:I = 0x2

.field private static final TOP_PADDING_POSITION:I = 0x0

.field private static final VIEW_TYPE_CATEGORY_GRID_STORE_ITEM:I = 0x4

.field private static final VIEW_TYPE_CATEGORY_LIST_STORE_ITEM:I = 0x3

.field private static final VIEW_TYPE_CATEGORY_SPINNER:I = 0x2

.field private static final VIEW_TYPE_CATEGORY_TOP_PADDING:I = 0x1


# instance fields
.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private final mCacheMissCache:Landroid/util/SparseBooleanArray;

.field private mContentType:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

.field private mContext:Landroid/content/Context;

.field private mCurrentStorePagePosition:I

.field private mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mGridIconDimension:I

.field private final mListIconDimension:I

.field private mShowRank:Z

.field private mStoreItemListener:Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;

.field private mStorePageContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/store/StorePageContent;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreResponse:Lcom/sonyericsson/music/library/store/StoreResponse;

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;Ljava/util/List;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/store/StorePageContent;",
            ">;IZ)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 76
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mCacheMissCache:Landroid/util/SparseBooleanArray;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    const v0, 0x7f0801b4

    .line 99
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 100
    iput-object p2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mStoreItemListener:Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;

    .line 101
    iput-object p3, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mStorePageContentList:Ljava/util/List;

    .line 102
    iput p4, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mCurrentStorePagePosition:I

    .line 103
    iput-boolean p5, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mShowRank:Z

    .line 105
    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700da

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mListIconDimension:I

    const p2, 0x7f0a001d

    .line 107
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/UIUtils;->getEstimatedGridItemWidth(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mGridIconDimension:I

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/library/store/StoreAdapter;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mCurrentStorePagePosition:I

    return p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/music/library/store/StoreAdapter;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mCurrentStorePagePosition:I

    return p1
.end method

.method static synthetic access$302(Lcom/sonyericsson/music/library/store/StoreAdapter;Lcom/sonyericsson/music/library/store/StoreResponse;)Lcom/sonyericsson/music/library/store/StoreResponse;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mStoreResponse:Lcom/sonyericsson/music/library/store/StoreResponse;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/library/store/StoreAdapter;)Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mStoreItemListener:Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;

    return-object p0
.end method


# virtual methods
.method applyTopPadding(I)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mTopPadding:I

    return-void
.end method

.method destroy()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mStoreResponse:Lcom/sonyericsson/music/library/store/StoreResponse;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/sonyericsson/music/library/store/StoreResponse;->getSize()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method public getItemViewType(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 183
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mContentType:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    sget-object v0, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;->TRACKS:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x2

    return p1

    :pswitch_1
    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x4

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getTopPaddingView(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 211
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/store/StoreAdapter$TopPaddingHolder;

    if-eqz p1, :cond_0

    .line 212
    invoke-static {p1}, Lcom/sonyericsson/music/library/store/StoreAdapter$TopPaddingHolder;->access$000(Lcom/sonyericsson/music/library/store/StoreAdapter$TopPaddingHolder;)Landroid/widget/FrameLayout;

    move-result-object p1

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    packed-switch p2, :pswitch_data_0

    add-int/lit8 p2, p2, -0x2

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mStoreResponse:Lcom/sonyericsson/music/library/store/StoreResponse;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/library/store/StoreResponse;->getWebListSizeImage(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mStoreResponse:Lcom/sonyericsson/music/library/store/StoreResponse;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/library/store/StoreResponse;->getWebListSizeImage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 145
    iget-object v1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mCacheMissCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 146
    check-cast p1, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;

    .line 147
    iget-object v1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mStoreResponse:Lcom/sonyericsson/music/library/store/StoreResponse;

    iget-boolean v2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mShowRank:Z

    invoke-virtual {p1, p2, v1, v2}, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->bindViewHolder(ILcom/sonyericsson/music/library/store/StoreResponse;Z)V

    .line 148
    iget-object v1, p1, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mImageView:Lcom/sonyericsson/music/ui/SquareImageView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 149
    iget-object v1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mContentType:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    sget-object v2, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;->ALBUMS:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mGridIconDimension:I

    goto :goto_0

    .line 135
    :pswitch_0
    check-cast p1, Lcom/sonyericsson/music/library/store/StoreAdapter$TopPaddingHolder;

    .line 136
    iget p2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mTopPadding:I

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/library/store/StoreAdapter$TopPaddingHolder;->bindViewHolder(I)V

    goto :goto_2

    .line 149
    :cond_0
    iget v1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mListIconDimension:I

    :goto_0
    move v7, v1

    .line 151
    iget-object v1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mContentType:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    sget-object v2, Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;->ALBUMS:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mStoreResponse:Lcom/sonyericsson/music/library/store/StoreResponse;

    .line 152
    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/library/store/StoreResponse;->getFullSizeImage(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mStoreResponse:Lcom/sonyericsson/music/library/store/StoreResponse;

    .line 153
    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/library/store/StoreResponse;->getWebListSizeImage(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_2

    .line 155
    iget-object v8, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    new-instance v9, Lcom/sonyericsson/music/library/store/StoreAdapter$ArtDecoderListener;

    iget-object v4, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mCacheMissCache:Landroid/util/SparseBooleanArray;

    move-object v1, v9

    move-object v2, p1

    move v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/library/store/StoreAdapter$ArtDecoderListener;-><init>(Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;ILandroid/graphics/drawable/BitmapDrawable;Landroid/util/SparseBooleanArray;Landroid/net/Uri;)V

    move-object v1, v8

    move-object v2, p2

    move v4, v7

    move v5, v7

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 159
    iget-object p1, p1, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mImageView:Lcom/sonyericsson/music/ui/SquareImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 162
    :cond_2
    iget-object p1, p1, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mImageView:Lcom/sonyericsson/music/ui/SquareImageView;

    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_2
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 125
    :pswitch_0
    new-instance p2, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00b8

    .line 126
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mStoreItemListener:Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;

    invoke-direct {p2, p1, v0}, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;-><init>(Landroid/view/View;Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;)V

    return-object p2

    .line 122
    :pswitch_1
    new-instance p2, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00b9

    .line 123
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mStoreItemListener:Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;

    invoke-direct {p2, p1, v0}, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;-><init>(Landroid/view/View;Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;)V

    return-object p2

    .line 118
    :pswitch_2
    new-instance p2, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00bb

    .line 119
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mStorePageContentList:Ljava/util/List;

    invoke-direct {p2, p1, v0, p0}, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;-><init>(Landroid/view/View;Ljava/util/List;Lcom/sonyericsson/music/library/store/StoreAdapter;)V

    return-object p2

    .line 115
    :pswitch_3
    new-instance p2, Lcom/sonyericsson/music/library/store/StoreAdapter$TopPaddingHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00be

    .line 116
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sonyericsson/music/library/store/StoreAdapter$TopPaddingHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method swapStoreResponse(Lcom/sonyericsson/music/library/store/StoreResponse;Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mStoreResponse:Lcom/sonyericsson/music/library/store/StoreResponse;

    .line 190
    iput-object p2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter;->mContentType:Lcom/sonyericsson/music/library/store/StorePageContent$ContentType;

    .line 191
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
