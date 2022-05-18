.class abstract Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LandingPageCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;,
        Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ProcessUri;,
        Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ArtDecoderListener;,
        Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;,
        Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;,
        Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;
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
.field static final CATEGORY_ADAPTER_VIEW_TYPE_GRID_LAYOUT:I = 0x1

.field static final CATEGORY_ADAPTER_VIEW_TYPE_LINEAR_LAYOUT:I = 0x0

.field static final NO_LIMIT:I = -0x1

.field static final NO_VALUE_SET:I = -0x1

.field static final PAYLOAD_NOW_PLAYING:I = 0x1


# instance fields
.field private final mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mCalculatedItemWidth:I

.field final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mItemClickListener:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;

.field private final mMaxCount:I

.field private mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

.field private final mViewType:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;ILcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;I)V
    .locals 1

    .line 134
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mCalculatedItemWidth:I

    .line 135
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    .line 136
    iput p4, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mMaxCount:I

    .line 137
    iput-object p5, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    .line 138
    iput p6, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mViewType:I

    if-eqz p2, :cond_0

    .line 147
    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 148
    iput-object p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mItemClickListener:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;

    return-void

    .line 145
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method private processUriAsync(Landroid/content/Context;Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;)V
    .locals 4

    .line 311
    invoke-static {}, Lcom/sonymobile/music/common/LongRunningTasks;->isOKToRunUITask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ProcessUri;

    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {v0, p1, p0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ProcessUri;-><init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;)V

    sget-object p1, Lcom/sonymobile/music/common/LongRunningTasks;->LRT_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/util/Pair;

    const/4 v2, 0x0

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method


# virtual methods
.method createItemData(Landroid/database/Cursor;ILcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;)Lcom/sonyericsson/music/landingpage/LandingPageItemData;
    .locals 3

    .line 152
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageItemData;

    invoke-direct {v0}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;-><init>()V

    .line 154
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getCategoryItemType(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->setCategoryItemType(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getContainerUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->setContainerUri(Landroid/net/Uri;)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getContainerId(Landroid/database/Cursor;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->setContainerId(J)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getContainerSubId(Landroid/database/Cursor;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->setContainerSubId(J)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getContainerTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->setContainerTitle(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getContainerSubTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->setContainerSubTitle(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getContainerData(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->setContainerData(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 161
    invoke-virtual {p3}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->getArtUri()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->setContainerArtUri(Landroid/net/Uri;)V

    .line 162
    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->setItemViewPosition(I)V

    return-object v0
.end method

.method createItemSubString(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 347
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    const/4 p2, 0x0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f100155

    .line 373
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_1
    const p1, 0x7f1001db

    .line 370
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_2
    const p1, 0x7f100151

    .line 367
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_3
    const p1, 0x7f10012e

    .line 364
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_4
    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f100126

    .line 359
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_5
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f100214

    .line 352
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method abstract getArtData(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;
.end method

.method abstract getCategoryItemType(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;
.end method

.method abstract getContainerData(Landroid/database/Cursor;)Ljava/lang/String;
.end method

.method abstract getContainerId(Landroid/database/Cursor;)J
.end method

.method abstract getContainerSubId(Landroid/database/Cursor;)J
.end method

.method abstract getContainerSubTitle(Landroid/database/Cursor;)Ljava/lang/String;
.end method

.method abstract getContainerTitle(Landroid/database/Cursor;)Ljava/lang/String;
.end method

.method abstract getContainerUri(Landroid/database/Cursor;)Landroid/net/Uri;
.end method

.method public getCurrentData()Landroid/database/Cursor;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method getDefaultResource(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)I
    .locals 1

    .line 382
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f080180

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0801b2

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0801b0

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0801af

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0801b1

    goto :goto_0

    :pswitch_4
    const p1, 0x7f080182

    goto :goto_0

    :pswitch_5
    const p1, 0x7f080183

    goto :goto_0

    :pswitch_6
    const p1, 0x7f080181

    goto :goto_0

    :pswitch_7
    const p1, 0x7f08017f

    goto :goto_0

    :pswitch_8
    const p1, 0x7f08017e

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    iget v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mMaxCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mMaxCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method abstract getItemTitle(Landroid/database/Cursor;)Ljava/lang/String;
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 170
    iget p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mViewType:I

    return p1
.end method

.method abstract getSubString(Landroid/database/Cursor;)Ljava/lang/String;
.end method

.method abstract isNowPlayingItem(Landroid/database/Cursor;Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 194
    check-cast p1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 200
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 201
    instance-of v2, v1, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    if-nez v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getItemTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->setTitle(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getSubString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->setSubTitle(Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->showHDAudioIndicator(Landroid/database/Cursor;)Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->setHDAudioVisibility(Z)V

    .line 216
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getArtData(Landroid/database/Cursor;)Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;

    move-result-object v0

    .line 219
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->setArtAndColor(Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;)V

    goto :goto_1

    :cond_2
    move-object v0, p3

    .line 223
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, p2, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->createItemData(Landroid/database/Cursor;ILcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;)Lcom/sonyericsson/music/landingpage/LandingPageItemData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->setItemData(Lcom/sonyericsson/music/landingpage/LandingPageItemData;)V

    .line 224
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mItemClickListener:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->setItemViewClickListener(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;)V

    .line 226
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    if-eqz p2, :cond_3

    .line 227
    iget-object p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p3, p2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->isNowPlayingItem(Landroid/database/Cursor;Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->setNowPlaying(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;)V

    goto :goto_2

    .line 229
    :cond_3
    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->setNowPlaying(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;)V

    goto :goto_2

    .line 232
    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->resetItemViewHolder()V

    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 175
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c004d

    const/4 v2, 0x0

    .line 176
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-nez p2, :cond_0

    .line 180
    new-instance p2, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;

    iget v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mCalculatedItemWidth:I

    invoke-direct {p2, p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;-><init>(Landroid/view/View;I)V

    goto :goto_0

    .line 182
    :cond_0
    new-instance p2, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;

    const/4 v0, -0x1

    invoke-direct {p2, p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;-><init>(Landroid/view/View;I)V

    :goto_0
    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 243
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 245
    check-cast p1, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;

    .line 246
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->resetItemViewHolder()V

    return-void
.end method

.method setArtAndColor(Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;)V
    .locals 8

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 251
    invoke-static {p2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->access$000(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;)Lcom/sonyericsson/music/ui/LandingPageItemView;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 253
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->getImageViewIdentifier()I

    move-result v2

    .line 252
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 255
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->getImageViewIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 257
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->getArtUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 260
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->getArtUri()Landroid/net/Uri;

    move-result-object v0

    .line 261
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->getArtCacheHashCode()I

    move-result v3

    .line 262
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->getGenerativeArtworkString()Ljava/lang/String;

    move-result-object v6

    .line 264
    invoke-static {}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->getInstance()Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->getCacheByUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 265
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->setDefaultArt(Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;)V

    goto :goto_1

    .line 266
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mCalculatedItemWidth:I

    new-instance v7, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ArtDecoderListener;

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v7, p2, p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ArtDecoderListener;-><init>(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;Landroid/content/Context;)V

    move v4, v5

    invoke-virtual/range {v1 .. v7}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    goto :goto_1

    .line 272
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->getUriProcessor()Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 274
    invoke-static {}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->getInstance()Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;

    move-result-object v0

    .line 275
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->getUriProcessor()Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$AsyncUriProcessor;->getProcessingUri()Landroid/net/Uri;

    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->getCacheByUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_4

    .line 279
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->processUriAsync(Landroid/content/Context;Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;)V

    goto :goto_1

    .line 281
    :cond_4
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 282
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->finalizeArtUri(Landroid/net/Uri;)V

    .line 283
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->setArtAndColor(Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;)V

    goto :goto_1

    .line 287
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->setDefaultArt(Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;)V

    goto :goto_1

    .line 292
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->setDefaultArt(Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public setCalculatedItemWidth(I)V
    .locals 0

    .line 423
    iput p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mCalculatedItemWidth:I

    return-void
.end method

.method setDefaultArt(Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 300
    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->getDefaultArtId()I

    move-result p1

    if-eqz p1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 303
    invoke-static {p2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->access$000(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;)Lcom/sonyericsson/music/ui/LandingPageItemView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setAlbumArt(Landroid/graphics/Bitmap;)V

    .line 304
    invoke-static {p2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->access$000(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;)Lcom/sonyericsson/music/ui/LandingPageItemView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    return-void
.end method

.method showDlnaIndicator(Landroid/content/Context;Landroid/database/Cursor;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method abstract showHDAudioIndicator(Landroid/database/Cursor;)Z
.end method

.method swapCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    return-void

    .line 334
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->mCursor:Landroid/database/Cursor;

    .line 336
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
