.class Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler;
.super Lcom/sonyericsson/music/ViewRequestController$IntentHandler;
.source "ViewRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ViewRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewSearchResultHandler"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)V

    return-void
.end method

.method private handleViewSearchResult(Landroid/content/Intent;)V
    .locals 2

    .line 173
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    invoke-static {v0}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 177
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler;->playTrackFromSearch(Landroid/net/Uri;)V

    goto :goto_1

    .line 180
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler;->viewAlbumFromSearch(Landroid/net/Uri;)V

    goto :goto_1

    :pswitch_2
    const-string v1, "ARTIST"

    .line 184
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 185
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler;->viewArtistFromSearch(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private playTrackFromSearch(Landroid/net/Uri;)V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getDrmUtils()Lcom/sonyericsson/music/common/DrmUtils;

    move-result-object v0

    .line 204
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/common/DrmUtils;->hasValidRights(Landroid/net/Uri;)Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    move-result-object v1

    .line 206
    sget-object v2, Lcom/sonyericsson/music/ViewRequestController$2;->$SwitchMap$com$sonyericsson$music$common$DrmUtils$RightsCheckResult:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 214
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/music/common/DrmUtils;->renewRights(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    const/4 v1, 0x0

    .line 209
    invoke-virtual {v0, p1, v1, v1}, Lcom/sonyericsson/music/player/PlayerController;->open(Landroid/net/Uri;IZ)V

    .line 210
    iget-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1, v1}, Lcom/sonyericsson/music/common/MusicUtils;->openPlayerFragment(Landroid/app/Activity;Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private viewAlbumFromSearch(Landroid/net/Uri;)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    new-instance v1, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler$1;-><init>(Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->doAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method private viewArtistFromSearch(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5

    .line 192
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ARTIST_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    const/4 v2, 0x0

    new-instance v3, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string v4, "external_search"

    invoke-direct {v3, v4}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-static {v1, p1, p2, v2, v3}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->newInstance(Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/artist/ArtistFragment;

    move-result-object p1

    const-string p2, "artist"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public runIntent()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler;->handleViewSearchResult(Landroid/content/Intent;)V

    return-void
.end method
