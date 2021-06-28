.class Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory$PopupMenuClickListener;
.super Ljava/lang/Object;
.source "LandingPageNewlyAddedCategory.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PopupMenuClickListener"
.end annotation


# instance fields
.field private final mAlbumData:Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

.field private final mCategoryItemType:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

.field private final mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

.field private final mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;Lcom/sonyericsson/music/common/MenuUtils$AlbumData;Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory$PopupMenuClickListener;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 231
    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory$PopupMenuClickListener;->mCategoryItemType:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    .line 232
    iput-object p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory$PopupMenuClickListener;->mAlbumData:Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    .line 233
    iput-object p4, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory$PopupMenuClickListener;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 239
    new-instance v0, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string v1, "LandingPageFragment"

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    .line 242
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory$PopupMenuClickListener;->mCategoryItemType:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 250
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory$PopupMenuClickListener;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory$PopupMenuClickListener;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory$PopupMenuClickListener;->mPlaylistData:Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    invoke-static {v1, p1, v2, v0}, Lcom/sonyericsson/music/common/MenuUtils;->onPlaylistContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$PlaylistData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory$PopupMenuClickListener;->mAlbumData:Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory$PopupMenuClickListener;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageNewlyAddedCategory$PopupMenuClickListener;->mAlbumData:Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    invoke-static {v1, p1, v2, v0}, Lcom/sonyericsson/music/common/MenuUtils;->onAlbumContextMenuSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$AlbumData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
