.class public Lcom/sonyericsson/music/library/artist/ArtistFragment;
.super Lcom/sonyericsson/music/library/LibraryListFragment;
.source "ArtistFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/artist/ArtistFragment$ContextMenuData;,
        Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtDecoderListener;,
        Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;
    }
.end annotation


# static fields
.field private static final FADE_IN_FADE_OUT_DURATION:I = 0xc8

.field private static final KEY_AGGREGATOR:Ljava/lang/String; = "artist-aggregator"

.field private static final KEY_ARTIST_ART_URI:Ljava/lang/String; = "artist-art-uri"

.field private static final KEY_ARTIST_NAME:Ljava/lang/String; = "artist-name"

.field private static final KEY_LOAD_TYPE:Ljava/lang/String; = "load-type"

.field private static final KEY_LOAD_URI:Ljava/lang/String; = "load-uri"

.field private static final LOAD_ARTIST_DATA:I = 0x2

.field private static final LOAD_ARTIST_OBSERVER:I = 0x4

.field private static final LOAD_ARTIST_TRACK_COUNT:I = 0x3

.field private static final LOAD_LOCAL_ALBUMS:I = 0x1

.field private static final LOCAL_ALBUM_COLUMNS:[Ljava/lang/String;

.field private static final LOCAL_TRACK_COLUMNS:[Ljava/lang/String;

.field private static final REQUEST_CODE_METADATA:I = 0x1

.field public static final TAG:Ljava/lang/String; = "artist"


# instance fields
.field private mActivity:Lcom/sonyericsson/music/MusicActivity;

.field private mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

.field private mAllTracksHeaderPosition:I

.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mArtistAlbumCount:Landroid/widget/TextView;

.field private mArtistAllTracksHeader:Landroid/view/View;

.field private mArtistArtDefaultImage:Landroid/widget/ImageView;

.field private mArtistArtImage:Landroid/widget/ImageView;

.field private mArtistArtUri:Landroid/net/Uri;

.field private mArtistData:Lcom/sonyericsson/music/common/MenuUtils$ArtistData;

.field private mArtistName:Ljava/lang/String;

.field private mArtistTracksCount:Landroid/widget/TextView;

.field private mArtistUri:Landroid/net/Uri;

.field private mDefaultArtSize:I

.field private mDiscographyHeader:Landroid/widget/TextView;

.field private mLoadedAlbum:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    .line 67
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "artist_id"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "artist"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "album_id"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->LOCAL_TRACK_COLUMNS:[Ljava/lang/String;

    .line 74
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "artist_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->LOCAL_ALBUM_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;-><init>()V

    return-void
.end method

.method private getArtistAllTracksHeader()Landroid/view/View;
    .locals 3

    .line 688
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistAllTracksHeader:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    const v1, 0x7f0c003c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistAllTracksHeader:Landroid/view/View;

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistAllTracksHeader:Landroid/view/View;

    return-object v0
.end method

.method private getArtistArtUri()Landroid/net/Uri;
    .locals 2

    .line 730
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 731
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artist-art-uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtUri:Landroid/net/Uri;

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtUri:Landroid/net/Uri;

    return-object v0
.end method

.method private getArtistDiscographyHeader()Landroid/widget/TextView;
    .locals 3

    .line 696
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mDiscographyHeader:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    const v1, 0x7f0c0056

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mDiscographyHeader:Landroid/widget/TextView;

    .line 700
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    const v1, 0x7f10012b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 701
    iget-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mDiscographyHeader:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mDiscographyHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method private getArtistId()J
    .locals 2

    .line 708
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private getArtistName()Ljava/lang/String;
    .locals 3

    .line 715
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 716
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artist-name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistName:Ljava/lang/String;

    .line 717
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    iget-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistName:Ljava/lang/String;

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method private getLoadType()Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;
    .locals 2

    .line 746
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "load-type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    return-object v0
.end method

.method private getLoadUri()Landroid/net/Uri;
    .locals 2

    .line 738
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getLoadType()Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ALBUM_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    if-eq v0, v1, :cond_1

    .line 739
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getLoadType()Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->TRACK_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 740
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "load-uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :goto_1
    return-object v0
.end method

.method private getLocalDataFromCursor(Landroid/database/Cursor;)V
    .locals 4

    const-string v0, "artist_id"

    .line 476
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 477
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistUri:Landroid/net/Uri;

    const-string v2, "artist"

    .line 479
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistName:Ljava/lang/String;

    .line 480
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistName:Ljava/lang/String;

    invoke-static {p1}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistArtUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 481
    iget-object v2, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    iget-object v3, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistName:Ljava/lang/String;

    .line 482
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->setArtistArt(Landroid/net/Uri;)V

    .line 483
    iget-object v2, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->setArtistData(JLjava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 484
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public static newInstance(Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/artist/ArtistFragment;
    .locals 3

    .line 153
    new-instance v0, Lcom/sonyericsson/music/library/artist/ArtistFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;-><init>()V

    .line 155
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "load-type"

    .line 157
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz p1, :cond_0

    const-string p0, "load-uri"

    .line 159
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "artist-name"

    .line 162
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_3

    const-string p0, "artist-art-uri"

    .line 165
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p2, :cond_2

    .line 167
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 166
    :goto_0
    invoke-static {p3, p0}, Lcom/sonyericsson/music/common/PaletteUtils;->getColorPick(Landroid/net/Uri;I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p1, "key_cached_background_color"

    .line 169
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    if-eqz p4, :cond_4

    const-string p0, "artist"

    .line 174
    invoke-virtual {p4, p0}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;->add(Ljava/lang/String;)Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string p0, "artist-aggregator"

    .line 175
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 178
    :cond_4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private openLocalAlbum(IJ)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    .line 665
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 668
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_2

    .line 670
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 671
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistName()Ljava/lang/String;

    move-result-object v3

    const/4 p2, 0x0

    const-string p3, "album"

    .line 673
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    .line 675
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    goto :goto_0

    :cond_1
    move-object v2, p2

    .line 678
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "artist-name"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 680
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    .line 679
    invoke-static/range {v1 .. v7}, Lcom/sonyericsson/music/library/AlbumFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/AlbumFragment;

    move-result-object p1

    .line 682
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p2}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p2

    const-string p3, "album"

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private resetCursors()V
    .locals 1

    const/4 v0, 0x0

    .line 502
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mLoadedAlbum:Z

    return-void
.end method

.method private setArtistArt(Landroid/net/Uri;)V
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 813
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 814
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 817
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 818
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz p1, :cond_2

    .line 819
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistName()Ljava/lang/String;

    move-result-object v6

    .line 820
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 821
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 822
    new-instance v7, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtDecoderListener;

    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtDefaultImage:Landroid/widget/ImageView;

    invoke-direct {v7, p1, v0, v1}, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtDecoderListener;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 825
    iget-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget v5, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mDefaultArtSize:I

    move v4, v5

    invoke-virtual/range {v1 .. v7}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    goto :goto_0

    .line 828
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 829
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 833
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 834
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setArtistData(JLjava/lang/String;Landroid/net/Uri;)Z
    .locals 3

    .line 855
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistData:Lcom/sonyericsson/music/common/MenuUtils$ArtistData;

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 856
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 857
    new-instance v0, Lcom/sonyericsson/music/common/MenuUtils$ArtistData;

    if-eqz p4, :cond_0

    .line 858
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sonyericsson/music/common/MenuUtils$ArtistData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistData:Lcom/sonyericsson/music/common/MenuUtils$ArtistData;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private setArtistTracksCount(I)V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistTracksCount:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    const/4 v1, 0x0

    .line 538
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f10018d

    const/4 v2, 0x1

    .line 539
    new-array v2, v2, [Ljava/lang/Object;

    .line 540
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    .line 539
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistTracksCount:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 543
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setLocalData(Landroid/database/Cursor;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 507
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 510
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistAllTracksHeader:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeHeader(Landroid/view/View;)V

    .line 511
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mDiscographyHeader:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeHeader(Landroid/view/View;)V

    .line 512
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->showNoContentHeaderView()V

    goto :goto_2

    .line 514
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeNoContentHeaderView()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const v2, 0x7f10002f

    .line 516
    new-array v1, v1, [Ljava/lang/Object;

    .line 517
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    .line 516
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const p1, 0x7f100030

    .line 517
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 518
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistAlbumCount:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistAllTracksHeader:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeHeader(Landroid/view/View;)V

    .line 521
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mDiscographyHeader:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeHeader(Landroid/view/View;)V

    .line 523
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mAllTracksHeaderPosition:I

    .line 524
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistAllTracksHeader()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 526
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->addHeader(Landroid/view/View;)Z

    .line 528
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistDiscographyHeader()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 530
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/library/LibraryListFragment;->addHeader(Landroid/view/View;Z)Z

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/CursorAdapter;
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 368
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;

    iget-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    iget-object v2, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;)V

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getArtistUri()Landroid/net/Uri;
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getLoadType()Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ARTIST_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    if-ne v0, v1, :cond_0

    .line 724
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "load-uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistUri:Landroid/net/Uri;

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getLoaderIds()[I
    .locals 3

    .line 351
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getLoadType()Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    move-result-object v0

    .line 352
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->TRACK_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ALBUM_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    if-ne v0, v1, :cond_1

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getLoadUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 355
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 357
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    :goto_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x3
    .end array-data
.end method

.method protected getMatcherUris()[Lcom/sonyericsson/music/library/BaseFragment$MatcherData;
    .locals 5

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 791
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 792
    new-array v1, v2, [Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    new-instance v3, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    .line 794
    sget-boolean v4, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v4, :cond_0

    const-string v4, "com.sonyericsson.music.musicinfo"

    goto :goto_0

    :cond_0
    const-string v4, "media"

    :goto_0
    invoke-direct {v3, v2, v0, v4}, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object v3, v1, v0

    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const-string v1, "id"

    const-wide/16 v2, -0x1

    .line 233
    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "name"

    .line 234
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "art_uri"

    .line 235
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    cmp-long v7, v4, v2

    if-eqz v7, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->clearCaches(Landroid/content/Context;)V

    .line 238
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 239
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 242
    iget-object v3, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v3

    .line 243
    iget-object v4, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/music/MusicFragmentManager;->popBackStack(Landroid/app/Activity;)V

    .line 245
    sget-object v4, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ARTIST_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    iget-object v5, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    .line 246
    invoke-static {v4, v2, v1, v6, v5}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->newInstance(Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/artist/ArtistFragment;

    move-result-object v1

    const-string v2, "artist"

    const/4 v4, 0x0

    .line 248
    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 251
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 337
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 338
    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    iput-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 612
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 614
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getContextMenuData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ContextMenuData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 619
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 620
    :goto_0
    iget-wide v4, v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ContextMenuData;->mLocalId:J

    .line 623
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    return v1

    .line 655
    :sswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1, v4, v5}, Lcom/sonyericsson/music/common/AlbumActions;->launchEditMusicInfo(Landroid/app/Activity;J)V

    return v3

    .line 628
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 v0, 0x15

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 630
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    invoke-static {p1, v4, v5, v1}, Lcom/sonyericsson/music/common/AlbumActions;->enqueueLocalAlbum(Lcom/sonyericsson/music/player/PlayerController;JZ)V

    :cond_3
    return v3

    .line 643
    :sswitch_2
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1, v4, v5}, Lcom/sonyericsson/music/common/AlbumActions;->sendLocalAlbum(Lcom/sonyericsson/music/MusicActivity;J)V

    return v3

    .line 649
    :sswitch_3
    iget-object p1, v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ContextMenuData;->mName:Ljava/lang/String;

    .line 650
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 651
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 650
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v1, v0, p1}, Lcom/sonyericsson/music/common/AlbumActions;->deleteAlbum(Lcom/sonyericsson/music/MusicActivity;Landroid/net/Uri;Ljava/lang/String;)V

    return v3

    .line 634
    :sswitch_4
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 635
    iget-object v0, v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ContextMenuData;->mName:Ljava/lang/String;

    .line 636
    new-instance v1, Lcom/sonyericsson/music/common/AlbumActions$CreatePlaylistFromAlbumData;

    .line 637
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lcom/sonyericsson/music/common/AlbumActions$CreatePlaylistFromAlbumData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/common/AlbumActions;->addToDialog(Lcom/sonyericsson/music/MusicActivity;Landroidx/fragment/app/FragmentManager;Lcom/sonyericsson/music/common/AlbumActions$CreatePlaylistFromAlbumData;)V

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0xa -> :sswitch_2
        0xc -> :sswitch_1
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 256
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artist-aggregator"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    if-eqz p1, :cond_0

    const-string v0, "artist-art-uri"

    .line 260
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtUri:Landroid/net/Uri;

    goto :goto_0

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistArtUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtUri:Landroid/net/Uri;

    .line 264
    :goto_0
    new-instance p1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 265
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mDefaultArtSize:I

    .line 266
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistId()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistArtUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->setArtistData(JLjava/lang/String;Landroid/net/Uri;)Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .line 568
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 570
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result p2

    .line 571
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-ge v0, p2, :cond_0

    .line 574
    iget v1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mAllTracksHeaderPosition:I

    if-ne v0, v1, :cond_0

    return-void

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "album"

    .line 588
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 589
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 591
    iget-wide v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    .line 592
    new-instance p3, Lcom/sonyericsson/music/library/artist/ArtistFragment$ContextMenuData;

    sub-int/2addr v0, p2

    invoke-direct {p3, v2, v3, v1, v0}, Lcom/sonyericsson/music/library/artist/ArtistFragment$ContextMenuData;-><init>(JLjava/lang/String;I)V

    .line 593
    invoke-virtual {p0, p3}, Lcom/sonyericsson/music/library/LibraryListFragment;->setContextMenuData(Ljava/lang/Object;)V

    .line 595
    iget-object p2, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 596
    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 597
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p3, 0x1

    .line 599
    :cond_3
    new-instance v0, Lcom/sonyericsson/music/common/ContextMenuBuilder;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;-><init>()V

    .line 600
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setTitle(Ljava/lang/String;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v0

    .line 601
    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEnqueue(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    .line 602
    invoke-virtual {p2, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setSend(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    .line 603
    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setDeleteFromStorage(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    .line 604
    invoke-virtual {p2, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddTo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    .line 605
    invoke-virtual {p2, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEditMusicInfoAlbum(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    .line 606
    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->build(Landroid/view/ContextMenu;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 9
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

    .line 373
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 p2, 0x0

    if-eqz v1, :cond_2

    .line 375
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 410
    :pswitch_0
    new-instance p1, Lcom/sonyericsson/music/common/PermissionCursorLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/common/PermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 414
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistId()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    .line 416
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistTracksQueryParams;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 417
    invoke-static {v0}, Lcom/sonyericsson/music/common/LibraryArtistTracksQueryParams;->getColumns(Z)[Ljava/lang/String;

    move-result-object v3

    .line 418
    invoke-static {v4, v5}, Lcom/sonyericsson/music/common/LibraryArtistTracksQueryParams;->getSelection(J)Ljava/lang/String;

    move-result-object v4

    .line 419
    new-instance p1, Lcom/sonyericsson/music/common/PermissionCursorLoader;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/common/PermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 395
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getLoadUri()Landroid/net/Uri;

    move-result-object v2

    .line 397
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getLoadType()Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    move-result-object p1

    .line 398
    sget-object v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->TRACK_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    if-ne p1, v0, :cond_0

    .line 399
    sget-object p1, Lcom/sonyericsson/music/library/artist/ArtistFragment;->LOCAL_TRACK_COLUMNS:[Ljava/lang/String;

    move-object v3, p1

    goto :goto_0

    .line 400
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ALBUM_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    if-ne p1, v0, :cond_1

    .line 401
    sget-object p1, Lcom/sonyericsson/music/library/artist/ArtistFragment;->LOCAL_ALBUM_COLUMNS:[Ljava/lang/String;

    move-object v3, p1

    goto :goto_0

    :cond_1
    move-object v3, p2

    .line 404
    :goto_0
    iput-object p2, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistName:Ljava/lang/String;

    .line 405
    iput-object p2, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistUri:Landroid/net/Uri;

    .line 406
    new-instance p1, Lcom/sonyericsson/music/common/PermissionCursorLoader;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/common/PermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 378
    :pswitch_3
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mLoadedAlbum:Z

    .line 380
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistId()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    .line 382
    invoke-static {v4, v5}, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->getUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 383
    invoke-static {v1}, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->getColumns(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 384
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->getSelection()Ljava/lang/String;

    move-result-object v4

    .line 385
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v5

    .line 386
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->getSortOrder()Ljava/lang/String;

    move-result-object v6

    .line 388
    new-instance p1, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    sget-object v8, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->ALBUM:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;)V

    return-object p1

    :cond_2
    :goto_1
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistData:Lcom/sonyericsson/music/common/MenuUtils$ArtistData;

    if-eqz v0, :cond_0

    const v0, 0x7f0d0004

    .line 470
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 472
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 277
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0c003e

    const/4 v0, 0x0

    .line 279
    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    .line 281
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const p3, 0x7f0900db

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtImage:Landroid/widget/ImageView;

    .line 282
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const p3, 0x7f09008a

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtDefaultImage:Landroid/widget/ImageView;

    .line 283
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtDefaultImage:Landroid/widget/ImageView;

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0801ad

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 283
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const p3, 0x7f0901eb

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistAlbumCount:Landroid/widget/TextView;

    .line 286
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const p3, 0x7f0901ec

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistTracksCount:Landroid/widget/TextView;

    .line 288
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistArtUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 290
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->setArtistArt(Landroid/net/Uri;)V

    goto :goto_0

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistName()Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 294
    invoke-static {p1}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistArtUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtUri:Landroid/net/Uri;

    .line 295
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->setArtistArt(Landroid/net/Uri;)V

    .line 300
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 301
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistName()Ljava/lang/String;

    move-result-object p3

    .line 300
    invoke-static {p1, p3}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->setHeaderViewWithTitle(Ljava/lang/String;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    const/4 v0, 0x0

    .line 322
    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 324
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistAllTracksHeader:Landroid/view/View;

    .line 330
    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mDiscographyHeader:Landroid/widget/TextView;

    .line 332
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 343
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

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

    .line 550
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItemViewType(I)I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 551
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 555
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v1

    if-lt p3, v1, :cond_2

    if-nez p1, :cond_2

    .line 557
    invoke-direct {p0, p3, p4, p5}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->openLocalAlbum(IJ)V

    goto :goto_1

    :cond_2
    if-ge p3, v1, :cond_3

    .line 558
    iget p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mAllTracksHeaderPosition:I

    if-ne p3, p1, :cond_3

    .line 559
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistUri()Landroid/net/Uri;

    move-result-object p1

    .line 560
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistArtUri()Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getArtistName()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    .line 559
    invoke-static {p1, p3, p4, p5}, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;->newInstance(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;

    move-result-object p1

    .line 561
    iget-object p3, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p3}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p3

    const-string p4, "artist_tracks"

    invoke-virtual {p3, p1, p4, v0, p2}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
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

    .line 431
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mViewDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 435
    :cond_0
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p2, :cond_1

    .line 454
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 455
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->popBackStack()V

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_2

    .line 461
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->setArtistTracksCount(I)V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_2

    .line 437
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 438
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->getLocalDataFromCursor(Landroid/database/Cursor;)V

    .line 440
    iget-boolean p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mLoadedAlbum:Z

    if-nez p1, :cond_2

    .line 441
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->initLoader()V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    .line 447
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mLoadedAlbum:Z

    .line 449
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->setLocalData(Landroid/database/Cursor;)V

    .line 450
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 497
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->resetCursors()V

    .line 498
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoaderReset(Landroidx/loader/content/Loader;)V

    return-void
.end method

.method public onNowPlayingInfoChanged(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 3

    .line 800
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;

    if-eqz p1, :cond_0

    .line 802
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/library/BaseFragment;->matchUri(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 804
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 806
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    .line 808
    :goto_0
    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    goto :goto_0

    :sswitch_0
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x15

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 210
    :sswitch_4
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 211
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    const-class v1, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "artist_id"

    .line 213
    iget-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistUri:Landroid/net/Uri;

    .line 214
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 213
    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return v2

    :goto_0
    if-le v0, v1, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistData:Lcom/sonyericsson/music/common/MenuUtils$ArtistData;

    iget-object v4, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    invoke-static {v1, v0, v3, v4}, Lcom/sonyericsson/music/common/MenuUtils;->onArtistContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$ArtistData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 224
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_4
        0x7f09010a -> :sswitch_3
        0x7f09010e -> :sswitch_2
        0x7f09010f -> :sswitch_1
        0x7f090119 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .line 490
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->resetCursors()V

    .line 491
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->removeListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    .line 492
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .line 185
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x14

    .line 187
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_0

    const v1, 0x7f100084

    const/4 v2, 0x0

    .line 188
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 271
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onResume()V

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->addListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistArtUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const-string v1, "artist-art-uri"

    .line 309
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    const-string v0, "load-type"

    .line 312
    sget-object v1, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ARTIST_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "load-uri"

    .line 313
    iget-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment;->mArtistUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 315
    :cond_1
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
