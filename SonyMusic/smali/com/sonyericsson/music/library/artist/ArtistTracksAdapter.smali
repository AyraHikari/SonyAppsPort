.class public Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;
.super Landroid/widget/CursorAdapter;
.source "ArtistTracksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;,
        Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;
    }
.end annotation


# instance fields
.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mArtistName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mHighResTracksIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalIndexCache:Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;

.field private mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

.field private final mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 46
    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;

    .line 52
    new-instance v0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$1;-><init>(Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

    .line 62
    iput-object p3, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mArtistName:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0801b4

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p2, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08018b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method private enableListItem(Landroid/view/View;Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;Z)V
    .locals 1

    xor-int/lit8 v0, p3, 0x1

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 123
    iget-object p1, p2, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 124
    iget-object p1, p2, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 125
    iget-object p1, p2, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 126
    iget-object p1, p2, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 127
    iget-object p1, p2, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private isNowPlayingTrack(II)Z
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 156
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getPlayOrder()I

    move-result v0

    if-eq p1, v0, :cond_1

    return v1

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getTrackUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 162
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    return v1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;

    iget v0, v0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;->trackIdColIndex:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;

    iget v1, v1, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;->trackNameColIndex:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;

    iget v2, v2, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;->albumNameColIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    .line 105
    invoke-direct {p0, p1, p2, v2}, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->enableListItem(Landroid/view/View;Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;Z)V

    .line 106
    iget-object p1, p2, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p1, p2, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mArtistName:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 110
    iget-object v3, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget-object v4, p2, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v3 .. v8}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->loadIntoFixedSizeImageViewWithGaw(Landroid/widget/ImageView;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    int-to-long v1, v0

    .line 113
    iget-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mHighResTracksIds:Ljava/util/HashSet;

    invoke-static {v1, v2, p1}, Lcom/sonyericsson/music/common/HDAudioUtils;->isHighResContent(JLjava/util/HashSet;)Z

    move-result p1

    .line 114
    iget-object v1, p2, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->isNowPlayingTrack(II)Z

    move-result p1

    .line 117
    iget-object p3, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p2, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    sget-object v1, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->MEDIUM:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {p3, p1, v0, v1}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    .line 118
    iget-object p3, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p2, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    sget-object v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {p3, p1, p2, v0}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 p2, 0x0

    const p3, 0x7f0c0066

    .line 132
    invoke-static {p1, p3, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 134
    new-instance p3, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;

    invoke-direct {p3, p2}, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;-><init>(Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$1;)V

    .line 135
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p2, 0x7f0901fb

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const p2, 0x7f0901fc

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const p2, 0x7f0900db

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const p2, 0x7f090080

    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    const p2, 0x7f090081

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p3, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    .line 141
    iget-object p2, p3, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900d0

    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    return-object p1
.end method

.method setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3

    .line 75
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mHighResTracksIds:Ljava/util/HashSet;

    if-eqz p1, :cond_1

    .line 79
    iget-object v2, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;

    if-nez v2, :cond_0

    .line 80
    new-instance v2, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;

    invoke-direct {v2, v1}, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;-><init>(Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$1;)V

    iput-object v2, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;

    .line 82
    iget-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;

    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;->trackIdColIndex:I

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;

    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;->trackNameColIndex:I

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;

    const-string v2, "album"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;->albumNameColIndex:I

    .line 92
    :cond_0
    check-cast p1, Lcom/sonyericsson/music/common/HighResAttachedCursor;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/HighResAttachedCursor;->getHighResMedia()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;->mHighResTracksIds:Ljava/util/HashSet;

    :cond_1
    return-object v0
.end method
