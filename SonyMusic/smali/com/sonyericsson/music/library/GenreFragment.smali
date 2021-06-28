.class public Lcom/sonyericsson/music/library/GenreFragment;
.super Lcom/sonyericsson/music/library/LibraryListFragment;
.source "GenreFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/GenreFragment$ArtDecoderListener;
    }
.end annotation


# static fields
.field private static final KEY_AGGREGATOR:Ljava/lang/String; = "aggregator"

.field private static final KEY_ART_URI_REFRESHED:Ljava/lang/String; = "key_art_uri_refreshed"

.field private static final KEY_GENRE_ART_URI:Ljava/lang/String; = "key_genre_art_uri"

.field private static final KEY_GENRE_COUNT:Ljava/lang/String; = "key_genre_count"

.field private static final KEY_GENRE_ID:Ljava/lang/String; = "key_genre_id"

.field private static final KEY_GENRE_NAME:Ljava/lang/String; = "key_genre_name"

.field private static final LOADER_GENRE:I = 0x0

.field private static final LOADER_GENRE_ART:I = 0x1

.field public static final TAG:Ljava/lang/String; = "genre"

.field private static final WHERE:Ljava/lang/String; = "is_music <> 0"


# instance fields
.field private mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private final mArtReceiver:Landroid/content/BroadcastReceiver;

.field private mArtUriRefreshDone:Z

.field private mBroadcastReceiverRegistered:Z

.field private mDefaultArtSize:I

.field private mGenreArtImage:Landroid/widget/ImageView;

.field private mGenreArtUri:Landroid/net/Uri;

.field private mGenreData:Lcom/sonyericsson/music/common/MenuUtils$GenreData;

.field private mGenreDefaultImage:Landroid/widget/ImageView;

.field private mNumberOfTracks:Landroid/widget/TextView;

.field private mShuffleView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/GenreFragment;->mArtUriRefreshDone:Z

    .line 104
    new-instance v0, Lcom/sonyericsson/music/library/GenreFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/GenreFragment$1;-><init>(Lcom/sonyericsson/music/library/GenreFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/GenreFragment;->mArtReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/library/GenreFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->refreshGenreArt()V

    return-void
.end method

.method private getAggregator()Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;
    .locals 2

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "aggregator"

    .line 178
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getGenreArtUri()Landroid/net/Uri;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/music/library/GenreFragment;->mGenreArtUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "key_genre_art_uri"

    .line 162
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/sonyericsson/music/library/GenreFragment;->mGenreArtUri:Landroid/net/Uri;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/library/GenreFragment;->mGenreArtUri:Landroid/net/Uri;

    return-object v0
.end method

.method private getGenreId()J
    .locals 4

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    const-string v3, "key_genre_id"

    .line 146
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_0
    return-wide v1
.end method

.method private getGenreName()Ljava/lang/String;
    .locals 2

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "key_genre_name"

    .line 151
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private getGenreTrackCount()I
    .locals 3

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "key_genre_count"

    .line 156
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method private getShuffleView()Landroid/view/View;
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/sonyericsson/music/library/GenreFragment;->mShuffleView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 384
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0063

    const/4 v2, 0x0

    .line 385
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/GenreFragment;->mShuffleView:Landroid/view/View;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/GenreFragment;->mShuffleView:Landroid/view/View;

    return-object v0
.end method

.method private getUri()Landroid/net/Uri;
    .locals 3

    const-string v0, "external"

    .line 173
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->getGenreId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(JLjava/lang/String;ILandroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/GenreFragment;
    .locals 3

    .line 118
    new-instance v0, Lcom/sonyericsson/music/library/GenreFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/GenreFragment;-><init>()V

    .line 120
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_genre_id"

    .line 121
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "key_genre_name"

    .line 122
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_genre_count"

    .line 123
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p4, :cond_1

    const-string p0, "key_genre_art_uri"

    .line 126
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p2, :cond_0

    .line 128
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p4, p0}, Lcom/sonyericsson/music/common/PaletteUtils;->getColorPick(Landroid/net/Uri;I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "key_cached_background_color"

    .line 130
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    if-eqz p5, :cond_2

    const-string p0, "genre"

    .line 135
    invoke-virtual {p5, p0}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;->add(Ljava/lang/String;)Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string p0, "aggregator"

    .line 136
    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private refreshGenreArt()V
    .locals 3

    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .line 207
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-boolean v1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mBroadcastReceiverRegistered:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 209
    iput-boolean v1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mBroadcastReceiverRegistered:Z

    .line 210
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sonyericsson.music.PLAYLIST_ART_UPDATED"

    .line 211
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sonyericsson.music.PLAYLIST_ART_UPDATED_ALL"

    .line 212
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 214
    iget-object v2, p0, Lcom/sonyericsson/music/library/GenreFragment;->mArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method private sendGaPlayEvent(Landroid/content/Context;)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/sonyericsson/music/library/GenreFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;->sendPlay(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private setGenreArtUri(Landroid/net/Uri;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mGenreArtUri:Landroid/net/Uri;

    return-void
.end method

.method private setGenreData(JLjava/lang/String;ILandroid/net/Uri;)Z
    .locals 7

    .line 528
    iget-object v0, p0, Lcom/sonyericsson/music/library/GenreFragment;->mGenreData:Lcom/sonyericsson/music/common/MenuUtils$GenreData;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p4, :cond_0

    .line 530
    new-instance v0, Lcom/sonyericsson/music/common/MenuUtils$GenreData;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/common/MenuUtils$GenreData;-><init>(JLjava/lang/String;ILandroid/net/Uri;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/GenreFragment;->mGenreData:Lcom/sonyericsson/music/common/MenuUtils$GenreData;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setHeaderInfoNbrOfTracks(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const v1, 0x7f10018b

    .line 377
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 378
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    .line 377
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f10018c

    .line 378
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 379
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/GenreFragment;->mNumberOfTracks:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setHeaderInfoNbrOfTracks(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 371
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 373
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/GenreFragment;->setHeaderInfoNbrOfTracks(I)V

    return-void
.end method

.method private setNewArtUri(Landroid/database/Cursor;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 354
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "playlist_art_uri"

    .line 355
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 357
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->getGenreArtUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/GenreFragment;->setGenreArtUri(Landroid/net/Uri;)V

    .line 362
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->getGenreArtUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->getGenreName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/library/GenreFragment;->setGenreArt(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-boolean v1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mBroadcastReceiverRegistered:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 221
    iput-boolean v1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mBroadcastReceiverRegistered:Z

    .line 223
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/CursorAdapter;
    .locals 3

    .line 409
    new-instance v0, Lcom/sonyericsson/music/library/GenreTracksAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/library/GenreFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/library/GenreTracksAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;)V

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/GenreFragment;->getAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getLoaderIds()[I
    .locals 1

    const/4 v0, 0x2

    .line 305
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method protected getMatcherUris()[Lcom/sonyericsson/music/library/BaseFragment$MatcherData;
    .locals 6

    .line 506
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 508
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/#/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "members"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    new-array v1, v2, [Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    const/4 v3, 0x0

    new-instance v4, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    sget-boolean v5, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v5, :cond_0

    const-string v5, "com.sonyericsson.music.musicinfo"

    goto :goto_0

    :cond_0
    const-string v5, "media"

    :goto_0
    invoke-direct {v4, v2, v0, v5}, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v3

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 431
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 433
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getContextMenuData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    .line 435
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 436
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v3, p0, Lcom/sonyericsson/music/library/GenreFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    invoke-static {v2, p1, v0, v1, v3}, Lcom/sonyericsson/music/common/MenuUtils;->onTrackContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$TrackData;ILcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 183
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 185
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->registerBroadcastReceiver()V

    .line 187
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->getAggregator()Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/GenreFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/library/GenreFragment;->mDefaultArtSize:I

    .line 191
    new-instance v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/GenreFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz p1, :cond_0

    const-string v0, "key_art_uri_refreshed"

    .line 194
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mArtUriRefreshDone:Z

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->getGenreId()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->getGenreName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->getGenreTrackCount()I

    move-result v4

    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->getGenreArtUri()Landroid/net/Uri;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/library/GenreFragment;->setGenreData(JLjava/lang/String;ILandroid/net/Uri;)Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 414
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 416
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result p2

    .line 417
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget p3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-ge p3, p2, :cond_0

    return-void

    .line 423
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    .line 424
    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->setContextMenuData(Ljava/lang/Object;)V

    .line 426
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/sonyericsson/music/common/MenuUtils;->getTrackContextMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$TrackData;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->build(Landroid/view/ContextMenu;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 18
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

    move/from16 v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/library/GenreFragment;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 319
    invoke-static {v1}, Lcom/sonyericsson/music/common/DBUtils;->getGenreProjection(Z)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "is_music <> 0"

    const/4 v7, 0x0

    const-string v8, "title_key"

    const-string v9, "android.permission.READ_EXTERNAL_STORAGE"

    sget-object v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 324
    new-instance v0, Landroidx/loader/content/CursorLoader;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    .line 325
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/library/GenreFragment;->getGenreId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$GenreArtUri;->getUriWithId(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/music/library/GenreFragment;->mGenreData:Lcom/sonyericsson/music/common/MenuUtils$GenreData;

    if-eqz v0, :cond_0

    const v0, 0x7f0d0009

    .line 443
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 445
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 231
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0c003e

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    .line 235
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const p3, 0x7f0900db

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mGenreArtImage:Landroid/widget/ImageView;

    .line 236
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const p3, 0x7f09008a

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mGenreDefaultImage:Landroid/widget/ImageView;

    .line 238
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const p3, 0x7f0901ea

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mNumberOfTracks:Landroid/widget/TextView;

    .line 239
    iget-object p1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mNumberOfTracks:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->getGenreTrackCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/GenreFragment;->setHeaderInfoNbrOfTracks(I)V

    .line 242
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->getGenreName()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 244
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->setHeaderViewWithTitle(Ljava/lang/String;)V

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->getGenreArtUri()Landroid/net/Uri;

    move-result-object p3

    .line 248
    invoke-virtual {p0, p3, p1}, Lcom/sonyericsson/music/library/GenreFragment;->setGenreArt(Landroid/net/Uri;Ljava/lang/String;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/music/library/GenreFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    .line 402
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->unregisterBroadcastReceiver()V

    .line 404
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lcom/sonyericsson/music/library/GenreFragment;->mShuffleView:Landroid/view/View;

    .line 394
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroyView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 471
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    if-eqz p1, :cond_2

    .line 473
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_2

    .line 475
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result p2

    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sub-int v1, p3, p2

    .line 482
    sget-object p2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 483
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .line 482
    invoke-static {p2, p3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 485
    invoke-static {p2, p1}, Lcom/sonyericsson/music/common/MusicUtils;->validatePlaybackRights(Landroid/net/Uri;Lcom/sonyericsson/music/MusicActivity;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 490
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->getUri()Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    invoke-direct {p3}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;-><init>()V

    .line 491
    invoke-virtual {p3, v1}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setTracksPosition(I)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setShuffle(Z)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object p3

    .line 490
    invoke-virtual {p1, p2, p3}, Lcom/sonyericsson/music/MusicActivity;->openAndPlayContent(Landroid/net/Uri;Lcom/sonyericsson/music/common/OpenAndPlayConditions;)Z

    .line 493
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/GenreFragment;->sendGaPlayEvent(Landroid/content/Context;)V

    :cond_2
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

    .line 333
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mViewDestroyed:Z

    if-nez v0, :cond_2

    .line 334
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 335
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeNoContentHeaderView()V

    .line 337
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->getShuffleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/LibraryListFragment;->addHeader(Landroid/view/View;)Z

    goto :goto_0

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->getShuffleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeHeader(Landroid/view/View;)V

    .line 340
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->showNoContentHeaderView()V

    .line 341
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->popBackStack()V

    .line 344
    :goto_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/library/GenreFragment;->setHeaderInfoNbrOfTracks(Landroid/database/Cursor;)V

    .line 346
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    goto :goto_1

    .line 347
    :cond_1
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 348
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/library/GenreFragment;->setNewArtUri(Landroid/database/Cursor;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/GenreFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onNowPlayingInfoChanged(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 3

    .line 518
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/GenreTracksAdapter;

    if-eqz p1, :cond_0

    .line 519
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/library/BaseFragment;->matchUri(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 520
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/GenreTracksAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 522
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/GenreTracksAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    .line 524
    :goto_0
    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 451
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090105

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x15

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    if-le v0, v2, :cond_1

    .line 462
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/library/GenreFragment;->mGenreData:Lcom/sonyericsson/music/common/MenuUtils$GenreData;

    iget-object v3, p0, Lcom/sonyericsson/music/library/GenreFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    invoke-static {v1, v0, v2, v3}, Lcom/sonyericsson/music/common/MenuUtils;->onGenreContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$GenreData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 466
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f09010e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .line 295
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->removeListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 285
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onResume()V

    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->addListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 201
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_art_uri_refreshed"

    .line 203
    iget-boolean v1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mArtUriRefreshDone:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method setGenreArt(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 10

    .line 254
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 264
    new-instance v9, Lcom/sonyericsson/music/library/GenreFragment$ArtDecoderListener;

    iget-object p1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mGenreArtImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mGenreDefaultImage:Landroid/widget/ImageView;

    invoke-direct {v9, v0, p1, v1}, Lcom/sonyericsson/music/library/GenreFragment$ArtDecoderListener;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 267
    iget-object v3, p0, Lcom/sonyericsson/music/library/GenreFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    iget v7, p0, Lcom/sonyericsson/music/library/GenreFragment;->mDefaultArtSize:I

    move v6, v7

    move-object v8, p2

    invoke-virtual/range {v3 .. v9}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    goto :goto_0

    .line 270
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mGenreDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f080099

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object p1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mGenreDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    iget-object p1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mGenreArtImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    :goto_0
    iget-boolean p1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mArtUriRefreshDone:Z

    if-nez p1, :cond_2

    .line 277
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreFragment;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->update(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 p1, 0x1

    .line 279
    iput-boolean p1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mArtUriRefreshDone:Z

    :cond_2
    return-void

    .line 257
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mGenreDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object p1, p0, Lcom/sonyericsson/music/library/GenreFragment;->mGenreArtImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
