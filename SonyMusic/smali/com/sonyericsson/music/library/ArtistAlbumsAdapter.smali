.class public Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;
.super Landroid/widget/CursorAdapter;
.source "ArtistAlbumsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;,
        Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;,
        Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$AlbumsDecodedListener;
    }
.end annotation


# instance fields
.field private mCalendar:Ljava/util/GregorianCalendar;

.field private mContext:Landroid/content/Context;

.field private final mContextTouchAreaListener:Landroid/view/View$OnClickListener;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mHighResAlbumIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImageSize:I

.field private mLocalIndexCache:Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;

.field private mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 52
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mCalendar:Ljava/util/GregorianCalendar;

    .line 58
    new-instance v0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$1;-><init>(Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mContextTouchAreaListener:Landroid/view/View$OnClickListener;

    .line 71
    iput-object p1, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700db

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mImageSize:I

    .line 76
    iput-object p2, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    return-void
.end method

.method private enableAlbum(Landroid/view/View;Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;Z)V
    .locals 1

    xor-int/lit8 v0, p3, 0x1

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 141
    iget-object p1, p2, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 142
    iget-object p1, p2, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 143
    iget-object p1, p2, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 144
    iget-object p1, p2, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 145
    iget-object p1, p2, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;

    .line 101
    iget-object v1, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;

    iget v1, v1, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;->artistNameColIndex:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;

    iget v2, v2, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;->albumNameColIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;

    iget v3, v3, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;->firstYearColIndex:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    iget-object v4, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;

    iget v4, v4, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;->albumIdColIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p3, v4, v6

    if-eqz p3, :cond_0

    .line 108
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 111
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mHighResAlbumIds:Ljava/util/HashSet;

    invoke-static {p3, v4}, Lcom/sonyericsson/music/common/HDAudioUtils;->isHighResContent(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v4

    .line 112
    iget-object v5, v0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v4, 0x1

    .line 114
    invoke-direct {p0, p1, v0, v4}, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->enableAlbum(Landroid/view/View;Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;Z)V

    .line 116
    invoke-static {p2, v2}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 117
    iget-object p1, v0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p1, v0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mCalendar:Ljava/util/GregorianCalendar;

    iget-object v5, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v4, v5, v3}, Lcom/sonyericsson/music/common/StringUtils;->formatYearYYYY(Ljava/util/GregorianCalendar;Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p0, p3}, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->isNowPlayingView(Ljava/lang/String;)Z

    move-result p1

    .line 121
    iget-object p3, v0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    sget-object v3, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->MEDIUM:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {p2, p1, p3, v3}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    .line 122
    iget-object p3, v0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    sget-object v3, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {p2, p1, p3, v3}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    .line 124
    invoke-static {v1, v2}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 126
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v7

    .line 128
    iget-object p1, v0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 130
    iget-object v5, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget v9, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mImageSize:I

    new-instance v11, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$AlbumsDecodedListener;

    iget-object p1, v0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-direct {v11, p1, v6}, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$AlbumsDecodedListener;-><init>(Landroid/widget/ImageView;Ljava/lang/String;)V

    move v8, v9

    .line 131
    invoke-virtual/range {v5 .. v11}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 134
    iget-object p1, v0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method isNowPlayingView(Ljava/lang/String;)Z
    .locals 6

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 195
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 p2, 0x0

    const p3, 0x7f0c0059

    .line 81
    invoke-static {p1, p3, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 83
    new-instance p3, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;

    invoke-direct {p3, p2}, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;-><init>(Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$1;)V

    .line 84
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p2, 0x7f0901fc

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const p2, 0x7f0901fd

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const p2, 0x7f0900db

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const p2, 0x7f090081

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p3, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    const p2, 0x7f090080

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    .line 90
    iget-object p2, p3, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mContextTouchAreaListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p2, p3, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 92
    iget-object p2, p3, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p2, 0x7f0900d0

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    return-object p1
.end method

.method public setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3

    .line 150
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 151
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mCalendar:Ljava/util/GregorianCalendar;

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mHighResAlbumIds:Ljava/util/HashSet;

    if-eqz p1, :cond_0

    .line 155
    move-object v1, p1

    check-cast v1, Lcom/sonyericsson/music/common/HighResAttachedCursor;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/HighResAttachedCursor;->getHighResMedia()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mHighResAlbumIds:Ljava/util/HashSet;

    .line 162
    iget-object v1, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sonyericsson/music/common/DBUtils;->getCursorWithId(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;

    if-nez v1, :cond_0

    .line 165
    new-instance v1, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;

    invoke-direct {v1, v0}, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;-><init>(Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$1;)V

    iput-object v1, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;->albumIdColIndex:I

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;

    const-string v1, "album"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;->albumNameColIndex:I

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;

    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;->artistNameColIndex:I

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;

    const-string v1, "minyear"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;->firstYearColIndex:I

    .line 177
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
