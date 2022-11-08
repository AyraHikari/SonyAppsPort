.class abstract Lcom/sonyericsson/music/landingpage/LandingPageCategory;
.super Ljava/lang/Object;
.source "LandingPageCategory.java"

# interfaces
.implements Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryClickListener;
.implements Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;
    }
.end annotation


# static fields
.field private static final MAX_NBR_OF_ITEMS_IN_GRID_LARGE_MODE:I = 0x8

.field private static final MAX_NBR_OF_ITEMS_IN_GRID_LARGE_MODE_LANDSCAPE:I = 0xc

.field private static final MAX_NBR_OF_ITEMS_IN_GRID_NORMAL_MODE:I = 0x6

.field private static final MAX_NBR_OF_ITEMS_IN_GRID_NORMAL_MODE_LANDSCAPE:I = 0xa

.field private static final NBR_OF_GRID_LAST_CATEGORY_MULTIPLIER:I = 0x2

.field private static final NBR_OF_GRID_ROWS:I = 0x2

.field private static final PREFIX_LANDINGPAGE_LENGTH:I = 0xc


# instance fields
.field mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;

.field mInitialCursor:Landroid/database/Cursor;

.field final mMusicActivity:Lcom/sonyericsson/music/MusicActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;Landroid/database/Cursor;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 68
    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mInitialCursor:Landroid/database/Cursor;

    return-void
.end method

.method static getItemLimit(Landroid/app/Activity;ZI)I
    .locals 2

    if-eqz p0, :cond_4

    .line 108
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->isTabletLayout(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->isPhabletLayout(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    if-ne p2, v1, :cond_1

    const/4 p0, 0x6

    goto :goto_0

    :cond_1
    const/16 p0, 0xa

    :goto_0
    if-eqz p1, :cond_5

    mul-int/lit8 p0, p0, 0x2

    goto :goto_3

    :cond_2
    :goto_1
    if-ne p2, v1, :cond_3

    const/16 p0, 0x8

    goto :goto_2

    :cond_3
    const/16 p0, 0xc

    :goto_2
    if-eqz p1, :cond_5

    mul-int/lit8 p0, p0, 0x2

    goto :goto_3

    :cond_4
    const/4 p0, -0x1

    :cond_5
    :goto_3
    return p0
.end method


# virtual methods
.method deinit()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mInitialCursor:Landroid/database/Cursor;

    return-void
.end method

.method abstract destroy()V
.end method

.method getColumnCount()I
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->getItemLimit(Z)I

    move-result v0

    .line 127
    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getCurrentData()Landroid/database/Cursor;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mInitialCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mInitialCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getCurrentData()Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getGridSpacing()I
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method getItemLimit(Z)I
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 102
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v1, p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->getItemLimit(Landroid/app/Activity;ZI)I

    move-result p1

    return p1
.end method

.method abstract init(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;I)V
.end method

.method public notifyParentFragmentLifecycleChange(Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 88
    sget-object p2, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageFragmentLifecycleStateChange$LifecycleState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->deinit()V

    :goto_0
    return-void
.end method

.method provideAdapterWithPreLayoutValues(I)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->getColumnCount()I

    move-result v0

    .line 177
    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->getGridSpacing()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    mul-int v1, v1, v2

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p1, p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->setCalculatedItemWidth(I)V

    :cond_0
    return-void
.end method

.method abstract resetViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method sendGoogleAnalyticsPlayEvent(Ljava/lang/String;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;)V
    .locals 4

    .line 187
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x0

    goto :goto_0

    :pswitch_0
    const-string p2, "genre"

    goto :goto_0

    :pswitch_1
    const-string p2, "play_queue_track"

    goto :goto_0

    :pswitch_2
    const-string p2, "smart_favorites_playlist"

    goto :goto_0

    :pswitch_3
    const-string p2, "smart_newly_added_playlist"

    goto :goto_0

    :pswitch_4
    const-string p2, "smart_most_played_playlist"

    goto :goto_0

    :pswitch_5
    const-string p2, "smart_recently_played_playlist"

    goto :goto_0

    :pswitch_6
    const-string p2, "local_playlist"

    goto :goto_0

    :pswitch_7
    const-string p2, "local_folder"

    goto :goto_0

    :pswitch_8
    const-string p2, "local_artist"

    goto :goto_0

    :pswitch_9
    const-string p2, "local_album"

    :goto_0
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 226
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    const-string v0, "landingpage_play"

    const-string v1, "content"

    sget v2, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->PREFIX_LANDINGPAGE_LENGTH:I

    .line 229
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-static {p2, v0, v1, v2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 231
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    const-string v0, "landingpage"

    const-string v1, "play"

    const-wide/16 v2, 0x0

    .line 234
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 231
    invoke-static {p2, v0, v1, p1, v2}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
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

.method setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    .line 161
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    .line 162
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 161
    invoke-virtual {p1, v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method abstract setViewHolderData(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method abstract shouldReinitialize(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
.end method

.method swapCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mAdapter:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;->swapCursor(Landroid/database/Cursor;)V

    :cond_0
    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mInitialCursor:Landroid/database/Cursor;

    return-void
.end method

.method swapInitialCursor()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mInitialCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mInitialCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->swapCursor(Landroid/database/Cursor;)V

    :cond_0
    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mInitialCursor:Landroid/database/Cursor;

    return-void
.end method
