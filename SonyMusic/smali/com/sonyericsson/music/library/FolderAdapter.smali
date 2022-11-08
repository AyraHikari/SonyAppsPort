.class public Lcom/sonyericsson/music/library/FolderAdapter;
.super Landroid/widget/CursorAdapter;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/FolderAdapter$ViewHolder;,
        Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;
    }
.end annotation


# instance fields
.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

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

.field private mLocalIndexCache:Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;

.field private mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

.field private final mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 46
    iput-object v0, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;

    .line 50
    new-instance v0, Lcom/sonyericsson/music/library/FolderAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/FolderAdapter$1;-><init>(Lcom/sonyericsson/music/library/FolderAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f08018b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method private isNowPlayingTrack(IJ)Z
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 150
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getPlayOrder()I

    move-result v0

    if-eq p1, v0, :cond_1

    return v1

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getTrackUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 156
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
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

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/FolderAdapter$ViewHolder;

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;

    iget v0, v0, Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;->trackIdColIndex:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 103
    iget-object v2, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;

    iget v2, v2, Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;->trackNameColIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    iget-object v3, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;

    iget v3, v3, Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;->artistNameColIndex:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    iget-object v4, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;

    iget v4, v4, Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;->albumNameColIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 107
    iget-object v4, p1, Lcom/sonyericsson/music/library/FolderAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v2, p1, Lcom/sonyericsson/music/library/FolderAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-static {p2, v3}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static {v3, v8}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 111
    iget-object v5, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget-object v6, p1, Lcom/sonyericsson/music/library/FolderAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v5 .. v10}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->loadIntoFixedSizeImageViewWithGaw(Landroid/widget/ImageView;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 114
    iget-object p2, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mHighResTracksIds:Ljava/util/HashSet;

    invoke-static {v0, v1, p2}, Lcom/sonyericsson/music/common/HDAudioUtils;->isHighResContent(JLjava/util/HashSet;)Z

    move-result p2

    .line 115
    iget-object v2, p1, Lcom/sonyericsson/music/library/FolderAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object p2, p1, Lcom/sonyericsson/music/library/FolderAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    invoke-direct {p0, p2, v0, v1}, Lcom/sonyericsson/music/library/FolderAdapter;->isNowPlayingTrack(IJ)Z

    move-result p2

    .line 120
    iget-object p3, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/sonyericsson/music/library/FolderAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    sget-object v1, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->MEDIUM:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {p3, p2, v0, v1}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    .line 121
    iget-object p3, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/sonyericsson/music/library/FolderAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    sget-object v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {p3, p2, p1, v0}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p2, 0x0

    const p3, 0x7f0c0066

    .line 127
    invoke-static {p1, p3, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 129
    new-instance p3, Lcom/sonyericsson/music/library/FolderAdapter$ViewHolder;

    invoke-direct {p3, p2}, Lcom/sonyericsson/music/library/FolderAdapter$ViewHolder;-><init>(Lcom/sonyericsson/music/library/FolderAdapter$1;)V

    .line 130
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p2, 0x7f0901fc

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/FolderAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const p2, 0x7f0901fd

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/FolderAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const p2, 0x7f0900db

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/FolderAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const p2, 0x7f090081

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p3, Lcom/sonyericsson/music/library/FolderAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    const p2, 0x7f0900d0

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/FolderAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    return-object p1
.end method

.method public setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3

    .line 72
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mHighResTracksIds:Ljava/util/HashSet;

    if-eqz p1, :cond_1

    .line 76
    iget-object v2, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;

    if-nez v2, :cond_0

    .line 77
    new-instance v2, Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;

    invoke-direct {v2, v1}, Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;-><init>(Lcom/sonyericsson/music/library/FolderAdapter$1;)V

    iput-object v2, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;

    .line 79
    iget-object v1, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;

    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;->trackIdColIndex:I

    .line 82
    iget-object v1, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;

    const-string v2, "_display_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;->trackNameColIndex:I

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;

    const-string v2, "artist"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;->artistNameColIndex:I

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;

    const-string v2, "album"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/FolderAdapter$IndexCache;->albumNameColIndex:I

    .line 92
    :cond_0
    check-cast p1, Lcom/sonyericsson/music/common/HighResAttachedCursor;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/HighResAttachedCursor;->getHighResMedia()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/FolderAdapter;->mHighResTracksIds:Ljava/util/HashSet;

    :cond_1
    return-object v0
.end method
