.class public Lcom/sonyericsson/music/library/GenreTracksAdapter;
.super Lcom/sonyericsson/music/library/RearrangeAdapter;
.source "GenreTracksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;,
        Lcom/sonyericsson/music/library/GenreTracksAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

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

.field private mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

.field private mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

.field private final mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/RearrangeAdapter;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    .line 52
    new-instance v0, Lcom/sonyericsson/music/library/GenreTracksAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/GenreTracksAdapter$1;-><init>(Lcom/sonyericsson/music/library/GenreTracksAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

    .line 63
    iput-object p1, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0801b4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p2, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08018b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method private getTrackDataFromCursor(Landroid/database/Cursor;)Lcom/sonyericsson/music/common/MenuUtils$TrackData;
    .locals 13

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    iget v0, v0, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;->trackIdColIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 164
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    iget v1, v1, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;->artistIdColIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 167
    iget-object v3, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    iget v3, v3, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;->trackNameColIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 168
    iget-object v3, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    iget v3, v3, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;->artistNameColIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 169
    iget-object v3, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    iget v3, v3, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;->albumNameColIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 171
    iget-object v3, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    iget v3, v3, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;->albumIdColIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 172
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 173
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 174
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 175
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 176
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 178
    invoke-static {v10, v11}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 179
    new-instance p1, Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    .line 180
    invoke-static {v6}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v12

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1
.end method

.method private isNowPlayingTrack(IJ)Z
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 192
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getPlayOrder()I

    move-result v0

    if-eq p1, v0, :cond_1

    return v1

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getTrackUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 198
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long p1, v2, p2

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    return v1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/GenreTracksAdapter$ViewHolder;

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    iget v0, v0, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;->trackIdColIndex:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 112
    iget-object v2, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    iget v2, v2, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;->trackNameColIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    iget v3, v3, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;->artistNameColIndex:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    iget-object v4, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    iget v4, v4, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;->albumNameColIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 116
    iget-object v4, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mHighResTracksIds:Ljava/util/HashSet;

    invoke-static {v0, v1, v4}, Lcom/sonyericsson/music/common/HDAudioUtils;->isHighResContent(JLjava/util/HashSet;)Z

    move-result v4

    .line 117
    iget-object v5, p1, Lcom/sonyericsson/music/library/GenreTracksAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v4, p1, Lcom/sonyericsson/music/library/GenreTracksAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, p1, Lcom/sonyericsson/music/library/GenreTracksAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-static {p2, v3}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-static {v3, v8}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 123
    iget-object v5, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget-object v6, p1, Lcom/sonyericsson/music/library/GenreTracksAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v5 .. v10}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->loadIntoFixedSizeImageViewWithGaw(Landroid/widget/ImageView;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 126
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    invoke-direct {p0, p2, v0, v1}, Lcom/sonyericsson/music/library/GenreTracksAdapter;->isNowPlayingTrack(IJ)Z

    move-result p2

    .line 127
    iget-object p3, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/sonyericsson/music/library/GenreTracksAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    sget-object v1, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->MEDIUM:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {p3, p2, v0, v1}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    .line 128
    iget-object p3, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/sonyericsson/music/library/GenreTracksAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    sget-object v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {p3, p2, p1, v0}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 155
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/library/GenreTracksAdapter;->getTrackDataFromCursor(Landroid/database/Cursor;)Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p2, 0x0

    const p3, 0x7f0c0066

    .line 133
    invoke-static {p1, p3, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 135
    new-instance p3, Lcom/sonyericsson/music/library/GenreTracksAdapter$ViewHolder;

    invoke-direct {p3, p2}, Lcom/sonyericsson/music/library/GenreTracksAdapter$ViewHolder;-><init>(Lcom/sonyericsson/music/library/GenreTracksAdapter$1;)V

    .line 136
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p2, 0x7f0901fc

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/GenreTracksAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const p2, 0x7f0901fd

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/GenreTracksAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const p2, 0x7f0900db

    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/GenreTracksAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const p2, 0x7f090081

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p3, Lcom/sonyericsson/music/library/GenreTracksAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    const p2, 0x7f0900d0

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/GenreTracksAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    .line 142
    iget-object p2, p3, Lcom/sonyericsson/music/library/GenreTracksAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3

    .line 75
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/RearrangeAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mHighResTracksIds:Ljava/util/HashSet;

    if-eqz p1, :cond_1

    .line 79
    iget-object v2, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    if-nez v2, :cond_0

    .line 80
    new-instance v2, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    invoke-direct {v2, v1}, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;-><init>(Lcom/sonyericsson/music/library/GenreTracksAdapter$1;)V

    iput-object v2, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    .line 82
    iget-object v1, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres$Members;->AUDIO_ID:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;->trackIdColIndex:I

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;->trackNameColIndex:I

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    const-string v2, "artist"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;->artistNameColIndex:I

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    const-string v2, "artist_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;->artistIdColIndex:I

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    const-string v2, "album"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;->albumNameColIndex:I

    .line 97
    iget-object v1, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;

    const-string v2, "album_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;->albumIdColIndex:I

    .line 101
    :cond_0
    check-cast p1, Lcom/sonyericsson/music/common/HighResAttachedCursor;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/HighResAttachedCursor;->getHighResMedia()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/GenreTracksAdapter;->mHighResTracksIds:Ljava/util/HashSet;

    :cond_1
    return-object v0
.end method
