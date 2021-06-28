.class Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;
.super Ljava/lang/Object;
.source "LandingPageRecentlyPlayedCategory.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PopupMenuClickListener"
.end annotation


# instance fields
.field private final mAlbumData:Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

.field private final mArtistData:Lcom/sonyericsson/music/common/MenuUtils$ArtistData;

.field private final mCategoryItemType:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

.field private final mFolderData:Lcom/sonyericsson/music/common/MenuUtils$FolderData;

.field private final mGenreData:Lcom/sonyericsson/music/common/MenuUtils$GenreData;

.field private final mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

.field private final mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;Lcom/sonyericsson/music/common/MenuUtils$FolderData;Lcom/sonyericsson/music/common/MenuUtils$ArtistData;Lcom/sonyericsson/music/common/MenuUtils$AlbumData;Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;Lcom/sonyericsson/music/common/MenuUtils$GenreData;)V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 335
    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mCategoryItemType:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    .line 336
    iput-object p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mFolderData:Lcom/sonyericsson/music/common/MenuUtils$FolderData;

    .line 337
    iput-object p4, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mArtistData:Lcom/sonyericsson/music/common/MenuUtils$ArtistData;

    .line 338
    iput-object p5, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mAlbumData:Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    .line 339
    iput-object p6, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    .line 340
    iput-object p7, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mGenreData:Lcom/sonyericsson/music/common/MenuUtils$GenreData;

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 346
    new-instance v0, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string v1, "LandingPageFragment"

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    .line 349
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mCategoryItemType:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 369
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    invoke-static {v1, p1, v2, v0}, Lcom/sonyericsson/music/common/MenuUtils;->onPlaylistContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$PlaylistData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    goto :goto_0

    .line 375
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mGenreData:Lcom/sonyericsson/music/common/MenuUtils$GenreData;

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mGenreData:Lcom/sonyericsson/music/common/MenuUtils$GenreData;

    invoke-static {v1, p1, v2, v0}, Lcom/sonyericsson/music/common/MenuUtils;->onGenreContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$GenreData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    goto :goto_0

    .line 363
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mAlbumData:Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mAlbumData:Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    invoke-static {v1, p1, v2, v0}, Lcom/sonyericsson/music/common/MenuUtils;->onAlbumContextMenuSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$AlbumData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    goto :goto_0

    .line 357
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mArtistData:Lcom/sonyericsson/music/common/MenuUtils$ArtistData;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mArtistData:Lcom/sonyericsson/music/common/MenuUtils$ArtistData;

    invoke-static {v1, p1, v2, v0}, Lcom/sonyericsson/music/common/MenuUtils;->onArtistContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$ArtistData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    goto :goto_0

    .line 351
    :pswitch_4
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mFolderData:Lcom/sonyericsson/music/common/MenuUtils$FolderData;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageRecentlyPlayedCategory$PopupMenuClickListener;->mFolderData:Lcom/sonyericsson/music/common/MenuUtils$FolderData;

    invoke-static {v1, p1, v2, v0}, Lcom/sonyericsson/music/common/MenuUtils;->onFolderContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$FolderData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
