.class public Lcom/sonyericsson/music/library/AlbumFragment;
.super Lcom/sonyericsson/music/library/LibraryListFragment;
.source "AlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/AlbumFragment$ContextMenuData;,
        Lcom/sonyericsson/music/library/AlbumFragment$ArtDecoderListener;
    }
.end annotation


# static fields
.field private static final FADE_IN_FADE_OUT_DURATION:I = 0xc8

.field private static final KEY_AGGREGATOR:Ljava/lang/String; = "aggregator"

.field private static final KEY_ALBUM_ART_URI:Ljava/lang/String; = "album-art-uri-string"

.field private static final KEY_ALBUM_NAME:Ljava/lang/String; = "album-name-string"

.field private static final KEY_ALBUM_URI:Ljava/lang/String; = "album-uri"

.field private static final KEY_ARTIST_NAME:Ljava/lang/String; = "artist-name-string"

.field private static final KEY_ARTIST_URI:Ljava/lang/String; = "artist-uri"

.field private static final KEY_TRACK_URI:Ljava/lang/String; = "track-uri"

.field private static final LOAD_ALBUM_DATA:I = 0x1

.field private static final LOAD_ALBUM_TRACKS:I = 0x2

.field private static final LOAD_ALBUM_URI_FROM_TRACK:I = 0x3

.field private static final LOCAL_ALBUM_COLUMNS:[Ljava/lang/String;

.field private static final LOCAL_TRACK_COLUMNS:[Ljava/lang/String;

.field private static final REQUEST_CODE_METADATA:I = 0x1

.field public static final TAG:Ljava/lang/String; = "album"


# instance fields
.field private mActivity:Lcom/sonyericsson/music/MusicActivity;

.field private mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

.field private mAlbumArtDefaultImage:Landroid/widget/ImageView;

.field private mAlbumArtImage:Landroid/widget/ImageView;

.field private mAlbumArtUri:Landroid/net/Uri;

.field private mAlbumData:Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

.field private mAlbumName:Ljava/lang/String;

.field private mAlbumUri:Landroid/net/Uri;

.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mArtistName:Ljava/lang/String;

.field private mArtistUri:Landroid/net/Uri;

.field private mDefaultArtSize:I

.field private mNumberOfTracks:Landroid/widget/TextView;

.field private mShuffleView:Landroid/view/View;

.field private mTrackListEmpty:Z

.field private mTracksUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    .line 69
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "album_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "album"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "artist"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "artist_id"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lcom/sonyericsson/music/library/AlbumFragment;->LOCAL_TRACK_COLUMNS:[Ljava/lang/String;

    .line 76
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "artist_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/music/library/AlbumFragment;->LOCAL_ALBUM_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;-><init>()V

    return-void
.end method

.method private getAlbumArtUri()Landroid/net/Uri;
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumArtUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 688
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "album-art-uri-string"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumArtUri:Landroid/net/Uri;

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumArtUri:Landroid/net/Uri;

    return-object v0
.end method

.method private getAlbumId()J
    .locals 2

    .line 657
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getAlbumUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 658
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

.method private getAlbumName()Ljava/lang/String;
    .locals 3

    .line 662
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 663
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "album-name-string"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumName:Ljava/lang/String;

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method private getArtistName()Ljava/lang/String;
    .locals 3

    .line 673
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mArtistName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 674
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artist-name-string"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mArtistName:Ljava/lang/String;

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method private getArtistUri()Landroid/net/Uri;
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mArtistUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 695
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artist-uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mArtistUri:Landroid/net/Uri;

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mArtistUri:Landroid/net/Uri;

    return-object v0
.end method

.method private getShuffleView()Landroid/view/View;
    .locals 3

    .line 751
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mShuffleView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 752
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0064

    const/4 v2, 0x0

    .line 753
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mShuffleView:Landroid/view/View;

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mShuffleView:Landroid/view/View;

    return-object v0
.end method

.method private getTrackUri()Landroid/net/Uri;
    .locals 2

    .line 669
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "track-uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public static newInstance(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/AlbumFragment;
    .locals 3

    if-nez p0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "albumUri and trackUri can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_1
    :goto_0
    new-instance v0, Lcom/sonyericsson/music/library/AlbumFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/AlbumFragment;-><init>()V

    .line 147
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_2

    const-string v2, "album-uri"

    .line 149
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    if-eqz p1, :cond_3

    const-string p0, "album-name-string"

    .line 152
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_4

    const-string p0, "artist-name-string"

    .line 155
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p3, :cond_6

    const-string p0, "album-art-uri-string"

    .line 158
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p1, :cond_5

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    .line 159
    :goto_1
    invoke-static {p3, p0}, Lcom/sonyericsson/music/common/PaletteUtils;->getColorPick(Landroid/net/Uri;I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_6

    const-string p1, "key_cached_background_color"

    .line 162
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    if-eqz p6, :cond_7

    const-string p0, "album"

    .line 166
    invoke-virtual {p6, p0}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;->add(Ljava/lang/String;)Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string p0, "aggregator"

    .line 167
    invoke-virtual {v1, p0, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_7
    if-eqz p4, :cond_8

    const-string p0, "track-uri"

    .line 170
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_8
    if-eqz p5, :cond_9

    const-string p0, "artist-uri"

    .line 173
    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 175
    :cond_9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setAlbumData(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 8

    .line 819
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumData:Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 820
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    .line 821
    new-instance v0, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;-><init>(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumData:Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setHeaderInfoAlbumName(Ljava/lang/String;)V
    .locals 1

    .line 701
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 702
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->setHeaderViewWithTitle(Ljava/lang/String;)V

    return-void
.end method

.method private setHeaderInfoArtistName(Ljava/lang/String;)V
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const v1, 0x7f0901ea

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 707
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 708
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setHeaderInfoNbrOfTracks(Landroid/database/Cursor;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 714
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x7f10018d

    .line 716
    new-array v1, v1, [Ljava/lang/Object;

    .line 717
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    .line 716
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const p1, 0x7f10018e

    .line 717
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 718
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mNumberOfTracks:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private validatePlaybackRights(ILcom/sonyericsson/music/MusicActivity;)Z
    .locals 3

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 649
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 651
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/MusicUtils;->validatePlaybackRights(Landroid/net/Uri;Lcom/sonyericsson/music/MusicActivity;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getAdapter()Lcom/sonyericsson/music/library/AlbumTracksAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lcom/sonyericsson/music/library/AlbumTracksAdapter;
    .locals 2

    .line 295
    new-instance v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/library/AlbumTracksAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getAlbumUri()Landroid/net/Uri;
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 681
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "album-uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumUri:Landroid/net/Uri;

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getLoaderIds()[I
    .locals 3

    .line 282
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getAlbumUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 283
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 286
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    :goto_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method protected getMatcherUris()[Lcom/sonyericsson/music/library/BaseFragment$MatcherData;
    .locals 6

    .line 761
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getAlbumUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 763
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 764
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

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x1

    move/from16 v3, p1

    if-ne v3, v2, :cond_0

    const/4 v4, -0x1

    move/from16 v5, p2

    if-ne v5, v4, :cond_1

    const-string v4, "id"

    const-wide/16 v6, -0x1

    .line 474
    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v4, "name"

    .line 475
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "art_uri"

    .line 476
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/net/Uri;

    cmp-long v4, v8, v6

    if-eqz v4, :cond_1

    .line 478
    iget-object v4, v0, Lcom/sonyericsson/music/library/AlbumFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v4}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->clearCaches(Landroid/content/Context;)V

    .line 479
    iget-object v4, v0, Lcom/sonyericsson/music/library/AlbumFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v4

    .line 482
    iget-object v6, v0, Lcom/sonyericsson/music/library/AlbumFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v4, v6}, Lcom/sonyericsson/music/MusicFragmentManager;->popBackStack(Landroid/app/Activity;)V

    .line 483
    sget-object v6, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 484
    invoke-static {v6, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 485
    iget-object v6, v0, Lcom/sonyericsson/music/library/AlbumFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    move-object/from16 v16, v6

    .line 486
    invoke-static/range {v10 .. v16}, Lcom/sonyericsson/music/library/AlbumFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/AlbumFragment;

    move-result-object v6

    const-string v7, "album"

    const/4 v8, 0x0

    .line 487
    invoke-virtual {v4, v6, v7, v8, v2}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    .line 490
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 259
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 260
    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12

    .line 536
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 538
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->getContextMenuData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/AlbumFragment$ContextMenuData;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 539
    iget-object v2, v0, Lcom/sonyericsson/music/library/AlbumFragment$ContextMenuData;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 543
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

    .line 544
    :goto_0
    iget-object v4, v0, Lcom/sonyericsson/music/library/AlbumFragment$ContextMenuData;->mCursor:Landroid/database/Cursor;

    :try_start_0
    const-string v5, "_id"

    .line 547
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 548
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 550
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v6, :pswitch_data_0

    .line 606
    :pswitch_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 597
    :pswitch_1
    :try_start_1
    invoke-static {p0, v7, v8, v3}, Lcom/sonyericsson/music/common/TrackActions;->launchEditMusicInfoWithResult(Landroidx/fragment/app/Fragment;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v3

    :pswitch_2
    const-wide/16 v5, -0x1

    :try_start_2
    const-string p1, "artist_id"

    .line 580
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-wide v7, v5

    :goto_1
    cmp-long p1, v7, v5

    if-eqz p1, :cond_2

    .line 586
    :try_start_3
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 587
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "artist"

    .line 588
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 590
    sget-object v2, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ARTIST_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    invoke-static {v2, p1, v0, v5, v6}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->newInstance(Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/artist/ArtistFragment;

    move-result-object p1

    .line 592
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    const-string v2, "artist"

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 606
    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v3

    .line 600
    :pswitch_3
    :try_start_4
    iget-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1, v7, v8}, Lcom/sonyericsson/music/common/TrackActions;->addToFavourites(Lcom/sonyericsson/music/MusicActivity;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 606
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v3

    .line 555
    :pswitch_4
    :try_start_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 v5, 0x15

    if-ne p1, v5, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    if-eqz v2, :cond_4

    .line 557
    iget v10, v0, Lcom/sonyericsson/music/library/AlbumFragment$ContextMenuData;->mSelectedPosition:I

    .line 558
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getAlbumUri()Landroid/net/Uri;

    move-result-object v9

    .line 559
    iget-object v6, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    invoke-static/range {v6 .. v11}, Lcom/sonyericsson/music/common/TrackActions;->enqueueTrack(Lcom/sonyericsson/music/player/PlayerController;JLandroid/net/Uri;IZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 606
    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v3

    .line 569
    :pswitch_5
    :try_start_6
    iget-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v7, v8}, Lcom/sonyericsson/music/common/Sender;->sendSingleFile(Landroid/content/Context;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 606
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v3

    :pswitch_6
    :try_start_7
    const-string p1, "title"

    .line 573
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 574
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v1, v0, p1}, Lcom/sonyericsson/music/common/TrackActions;->deleteTrack(Lcom/sonyericsson/music/MusicActivity;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 606
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v3

    .line 565
    :pswitch_7
    :try_start_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 566
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v0, v3, v5, p1}, Lcom/sonyericsson/music/common/TrackActions;->addToDialog(Lcom/sonyericsson/music/MusicActivity;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 606
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v3

    :goto_3
    return v1

    :catchall_0
    move-exception p1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 607
    throw p1

    :cond_5
    :goto_4
    return v1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 182
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "aggregator"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    if-eqz p1, :cond_0

    const-string v0, "album-name-string"

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumName:Ljava/lang/String;

    const-string v0, "album-art-uri-string"

    .line 187
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumArtUri:Landroid/net/Uri;

    goto :goto_0

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getAlbumName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumName:Ljava/lang/String;

    .line 190
    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getAlbumArtUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumArtUri:Landroid/net/Uri;

    .line 192
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700c3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mDefaultArtSize:I

    .line 193
    new-instance p1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 194
    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getAlbumId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getArtistName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getArtistUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumArtUri:Landroid/net/Uri;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/library/AlbumFragment;->setAlbumData(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8

    .line 495
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 497
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget p2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 499
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItemViewType(I)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    return-void

    .line 505
    :cond_0
    new-instance v1, Lcom/sonyericsson/music/common/ContextMenuBuilder;

    invoke-direct {v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;-><init>()V

    .line 506
    iget-object v2, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    if-eqz v2, :cond_1

    .line 507
    invoke-virtual {v2}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 509
    invoke-virtual {p0, v3}, Lcom/sonyericsson/music/library/LibraryListFragment;->setContextMenuData(Ljava/lang/Object;)V

    .line 510
    iget-object v3, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v3, p2}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/library/AlbumTracksAdapter$TrackData;

    if-eqz p2, :cond_2

    .line 512
    iget p2, p2, Lcom/sonyericsson/music/library/AlbumTracksAdapter$TrackData;->albumTracksCursorPos:I

    if-ltz p2, :cond_2

    .line 514
    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->copySingleRow(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    .line 515
    new-instance v4, Lcom/sonyericsson/music/library/AlbumFragment$ContextMenuData;

    invoke-direct {v4, v3, p2}, Lcom/sonyericsson/music/library/AlbumFragment$ContextMenuData;-><init>(Landroid/database/Cursor;I)V

    invoke-virtual {p0, v4}, Lcom/sonyericsson/music/library/LibraryListFragment;->setContextMenuData(Ljava/lang/Object;)V

    :cond_2
    const-string p2, "title"

    .line 519
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 521
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 522
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 523
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v4

    goto :goto_1

    :cond_3
    const-wide/16 v4, -0x1

    .line 525
    :goto_1
    iget-wide v6, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long p3, v6, v4

    if-eqz p3, :cond_4

    .line 526
    invoke-virtual {v1, v3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setDeleteFromStorage(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 530
    :cond_4
    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setTitle(Ljava/lang/String;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEnqueue(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setSend(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddTo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    .line 531
    invoke-virtual {p2, v3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGoToArtist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEditMusicInfo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddToFavorites(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

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

    .line 375
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 p2, 0x0

    if-eqz v1, :cond_0

    .line 377
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return-object p2

    .line 397
    :pswitch_0
    new-instance p1, Lcom/sonyericsson/music/common/PermissionCursorLoader;

    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getTrackUri()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/music/library/AlbumFragment;->LOCAL_TRACK_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/common/PermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 380
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getAlbumUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mTracksUri:Landroid/net/Uri;

    .line 382
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryAlbumTracksQueryParams;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 383
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryAlbumTracksQueryParams;->getColumns()[Ljava/lang/String;

    move-result-object v3

    .line 384
    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getAlbumId()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/LibraryAlbumTracksQueryParams;->getSelection(J)Ljava/lang/String;

    move-result-object v4

    .line 385
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryAlbumTracksQueryParams;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v5

    .line 386
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryAlbumTracksQueryParams;->getSortOrder()Ljava/lang/String;

    move-result-object v6

    .line 388
    new-instance p1, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    sget-object v8, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;)V

    return-object p1

    .line 393
    :pswitch_2
    new-instance p1, Lcom/sonyericsson/music/common/PermissionCursorLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getAlbumUri()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/music/library/AlbumFragment;->LOCAL_ALBUM_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/common/PermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumData:Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    if-eqz v0, :cond_0

    const v0, 0x7f0d0003

    .line 412
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 414
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 199
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/LibraryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0c003e

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    .line 203
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const p3, 0x7f0900db

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumArtImage:Landroid/widget/ImageView;

    .line 204
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const p3, 0x7f09008a

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumArtDefaultImage:Landroid/widget/ImageView;

    .line 205
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mTitleHeaderView:Lcom/sonyericsson/music/ui/LibraryImageHeaderLayout;

    const p3, 0x7f0901eb

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mNumberOfTracks:Landroid/widget/TextView;

    .line 206
    iget-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mNumberOfTracks:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getAlbumName()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 210
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/AlbumFragment;->setHeaderInfoAlbumName(Ljava/lang/String;)V

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getArtistName()Ljava/lang/String;

    move-result-object p3

    .line 214
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    invoke-direct {p0, p3}, Lcom/sonyericsson/music/library/AlbumFragment;->setHeaderInfoArtistName(Ljava/lang/String;)V

    .line 218
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getAlbumArtUri()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 222
    invoke-virtual {p0, p3}, Lcom/sonyericsson/music/library/AlbumFragment;->setAlbumArt(Landroid/net/Uri;)V

    :cond_2
    return-object p2
.end method

.method public onDestroy()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 275
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mShuffleView:Landroid/view/View;

    .line 254
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 265
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 613
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItemViewType(I)I

    move-result p1

    const/4 p2, 0x0

    const/4 p4, 0x1

    const/4 p5, -0x2

    if-ne p1, p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 614
    :goto_0
    iget-boolean p5, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mTrackListEmpty:Z

    if-nez p5, :cond_a

    iget-object p5, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mTracksUri:Landroid/net/Uri;

    if-nez p5, :cond_1

    goto :goto_3

    .line 617
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    check-cast p5, Lcom/sonyericsson/music/MusicActivity;

    .line 619
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getHeaderCount()I

    move-result v0

    sub-int/2addr v0, p4

    if-ne p3, v0, :cond_2

    const/4 p2, 0x1

    :cond_2
    if-eqz p5, :cond_9

    .line 623
    invoke-virtual {p5}, Landroid/app/Activity;->isFinishing()Z

    move-result p4

    if-nez p4, :cond_9

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    goto :goto_2

    .line 628
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$TrackData;

    if-nez p2, :cond_4

    if-eqz p1, :cond_8

    :cond_4
    if-eqz p1, :cond_5

    .line 630
    iget p3, p1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$TrackData;->albumTracksCursorPos:I

    goto :goto_1

    :cond_5
    const/4 p3, -0x1

    :goto_1
    if-nez p2, :cond_7

    if-ltz p3, :cond_6

    .line 632
    iget p1, p1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$TrackData;->trackId:I

    invoke-direct {p0, p1, p5}, Lcom/sonyericsson/music/library/AlbumFragment;->validatePlaybackRights(ILcom/sonyericsson/music/MusicActivity;)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    return-void

    .line 636
    :cond_7
    new-instance p1, Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    invoke-direct {p1}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;-><init>()V

    .line 637
    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setTracksPosition(I)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setShuffle(Z)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object p1

    .line 639
    iget-object p2, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mTracksUri:Landroid/net/Uri;

    invoke-virtual {p5, p2, p1}, Lcom/sonyericsson/music/MusicActivity;->openAndPlayContent(Landroid/net/Uri;Lcom/sonyericsson/music/common/OpenAndPlayConditions;)Z

    .line 640
    iget-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    if-eqz p1, :cond_8

    .line 641
    invoke-virtual {p1, p5}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;->sendPlay(Landroid/content/Context;)V

    :cond_8
    return-void

    :cond_9
    :goto_2
    return-void

    :cond_a
    :goto_3
    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 11
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

    .line 300
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mViewDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 304
    iget-boolean v1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mTrackListEmpty:Z

    .line 306
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-eqz p2, :cond_7

    .line 333
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "album_id"

    .line 334
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    .line 335
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumUri:Landroid/net/Uri;

    .line 338
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->initLoader()V

    goto/16 :goto_1

    :pswitch_1
    if-eqz p2, :cond_3

    .line 343
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 351
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 353
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeNoContentHeaderView()V

    .line 354
    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getShuffleView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/music/library/LibraryListFragment;->addHeader(Landroid/view/View;)Z

    .line 355
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/library/AlbumFragment;->setHeaderInfoNbrOfTracks(Landroid/database/Cursor;)V

    .line 357
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    goto/16 :goto_1

    .line 345
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mShuffleView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/music/library/LibraryListFragment;->removeHeader(Landroid/view/View;)V

    .line 346
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->showNoContentHeaderView()V

    .line 347
    iput-boolean v3, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mTrackListEmpty:Z

    .line 348
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/library/AlbumFragment;->setHeaderInfoNbrOfTracks(Landroid/database/Cursor;)V

    .line 349
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryListFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    goto :goto_1

    :pswitch_2
    if-eqz p2, :cond_5

    .line 308
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "album"

    .line 310
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumName:Ljava/lang/String;

    const-string p1, "artist"

    .line 311
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mArtistName:Ljava/lang/String;

    .line 312
    iget-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mArtistName:Ljava/lang/String;

    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 313
    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getAlbumName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/AlbumFragment;->setHeaderInfoAlbumName(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getArtistName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/AlbumFragment;->setHeaderInfoArtistName(Ljava/lang/String;)V

    if-eqz v10, :cond_4

    .line 316
    iput-object v10, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumArtUri:Landroid/net/Uri;

    .line 317
    invoke-virtual {p0, v10}, Lcom/sonyericsson/music/library/AlbumFragment;->setAlbumArt(Landroid/net/Uri;)V

    :cond_4
    const-string p1, "artist_id"

    .line 319
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 320
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    .line 321
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 322
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 323
    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getAlbumId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumName:Ljava/lang/String;

    iget-object v8, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mArtistName:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/music/library/AlbumFragment;->setAlbumData(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 327
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_7

    .line 328
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryListFragment;->popBackStack()V

    .line 362
    :cond_7
    :goto_1
    iget-boolean p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mTrackListEmpty:Z

    if-eq v1, p1, :cond_8

    const/4 v0, 0x1

    :cond_8
    if-eqz v0, :cond_9

    .line 366
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 368
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/AlbumFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onNowPlayingInfoChanged(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 3

    .line 773
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;

    if-eqz p1, :cond_0

    .line 775
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/library/BaseFragment;->matchUri(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 776
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 778
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    .line 780
    :goto_0
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 430
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

    :sswitch_4
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 450
    :sswitch_6
    iget-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 451
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 452
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    const-class v1, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "album_id"

    .line 453
    iget-object v1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumUri:Landroid/net/Uri;

    .line 454
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 453
    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 455
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return v2

    :goto_0
    if-le v0, v1, :cond_1

    .line 462
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumData:Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    iget-object v4, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAggregator:Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    invoke-static {v1, v0, v3, v4}, Lcom/sonyericsson/music/common/MenuUtils;->onAlbumContextMenuSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$AlbumData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 466
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_6
        0x7f090105 -> :sswitch_5
        0x7f090107 -> :sswitch_4
        0x7f09010a -> :sswitch_3
        0x7f09010e -> :sswitch_2
        0x7f09010f -> :sswitch_1
        0x7f090118 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .line 235
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    .line 237
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->removeListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .line 419
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 420
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x14

    .line 421
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_0

    const v1, 0x7f100083

    const/4 v2, 0x0

    .line 422
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 229
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onResume()V

    .line 230
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

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "album-name-string"

    .line 243
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumArtUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    const-string v1, "album-art-uri-string"

    .line 246
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 248
    :cond_1
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method setAlbumArt(Landroid/net/Uri;)V
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 723
    iget-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumArtDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 724
    iget-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumArtImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 727
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 728
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 729
    invoke-direct {p0}, Lcom/sonyericsson/music/library/AlbumFragment;->getAlbumName()Ljava/lang/String;

    move-result-object p1

    .line 730
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 732
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 733
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 734
    new-instance v7, Lcom/sonyericsson/music/library/AlbumFragment$ArtDecoderListener;

    iget-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumArtImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumArtDefaultImage:Landroid/widget/ImageView;

    invoke-direct {v7, p1, v0, v1}, Lcom/sonyericsson/music/library/AlbumFragment$ArtDecoderListener;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 737
    iget-object v1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget v5, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mDefaultArtSize:I

    move v4, v5

    invoke-virtual/range {v1 .. v7}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    goto :goto_0

    .line 740
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumArtDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 741
    iget-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumArtImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 745
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumArtDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 746
    iget-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment;->mAlbumArtImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
