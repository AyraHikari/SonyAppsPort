.class public Lcom/sonyericsson/music/library/AlbumTracksAdapter;
.super Lcom/sonyericsson/music/library/LabelCursorAdapter;
.source "AlbumTracksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/AlbumTracksAdapter$TrackData;,
        Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;,
        Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;,
        Lcom/sonyericsson/music/library/AlbumTracksAdapter$DiscIndexer;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

.field private mHasNoNumbering:Z

.field private mHighResTracksIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;

.field private mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/library/LabelCursorAdapter;-><init>(Landroid/content/Context;Z)V

    .line 39
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mHasNoNumbering:Z

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;

    .line 45
    new-instance v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/AlbumTracksAdapter$1;-><init>(Lcom/sonyericsson/music/library/AlbumTracksAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;

    .line 71
    iget-object v1, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;

    iget v1, v1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;->trackIdColIndex:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 72
    iget-object v2, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;

    iget v2, v2, Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;->trackNameColIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;

    iget v3, v3, Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;->artistNameColIndex:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 74
    iget-object v4, v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mHasNoNumbering:Z

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-boolean v4, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mHasNoNumbering:Z

    if-eqz v4, :cond_1

    .line 76
    iget-object v4, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700e0

    .line 77
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 78
    iget-object v5, v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->mainContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v7, v7, v7}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    goto :goto_1

    .line 80
    :cond_1
    iget-object v4, v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->mainContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    :goto_1
    int-to-long v4, v1

    .line 83
    iget-object v8, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mHighResTracksIds:Ljava/util/HashSet;

    invoke-static {v4, v5, v8}, Lcom/sonyericsson/music/common/HDAudioUtils;->isHighResContent(JLjava/util/HashSet;)Z

    move-result v4

    .line 84
    iget-object v5, v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    const/4 v6, 0x0

    :cond_2
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    invoke-direct {p0, p3}, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->getTrackNumber(Landroid/database/Cursor;)I

    move-result p3

    .line 91
    invoke-static {p3}, Lcom/sonyericsson/music/common/MusicUtils;->mediaStoreTrackNumberToDiscAndTrackNumber(I)Landroid/util/Pair;

    move-result-object p3

    .line 92
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v4, 0x1

    .line 93
    invoke-direct {p0, p1, v0, v4}, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->enableListItem(Landroid/view/View;Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;Z)V

    .line 95
    iget-object p1, v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-static {p2, v3}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    if-eqz p3, :cond_3

    .line 98
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    const-string p2, "-"

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p1, v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->isNowPlayingTrack(I)Z

    move-result p1

    .line 103
    iget-object p2, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mContext:Landroid/content/Context;

    iget-object p3, v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    sget-object v1, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->MEDIUM:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {p2, p1, p3, v1}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    .line 104
    iget-object p2, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mContext:Landroid/content/Context;

    iget-object p3, v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    sget-object v1, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->MEDIUM:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {p2, p1, p3, v1}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    .line 105
    iget-object p2, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mContext:Landroid/content/Context;

    iget-object p3, v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    sget-object v0, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {p2, p1, p3, v0}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    return-void
.end method

.method private enableListItem(Landroid/view/View;Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;Z)V
    .locals 1

    xor-int/lit8 v0, p3, 0x1

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 60
    iget-object p1, p2, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 61
    iget-object p1, p2, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 62
    iget-object p1, p2, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 63
    iget-object p1, p2, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 64
    iget-object p1, p2, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 65
    iget-object p1, p2, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private getTrackNumber(Landroid/database/Cursor;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;

    iget v1, v1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;->trackNumberColIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method

.method private isNowPlayingTrack(I)Z
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 196
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getTrackUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 198
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method private newView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f0c006b

    .line 109
    invoke-static {p1, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 111
    new-instance v1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;-><init>(Lcom/sonyericsson/music/library/AlbumTracksAdapter$1;)V

    .line 112
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0901fc

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const v0, 0x7f0901fd

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const v0, 0x7f090080

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    const v0, 0x7f090081

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    const v0, 0x7f0900d0

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    const v0, 0x7f090220

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->trackNumber:Landroid/widget/TextView;

    const v0, 0x7f090100

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$ViewHolder;->mainContainer:Landroid/widget/LinearLayout;

    return-object p1
.end method


# virtual methods
.method public bindContentView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method

.method protected getIndexer()Lcom/sonyericsson/music/library/LabelCursorAdapter$Indexer;
    .locals 2

    .line 188
    new-instance v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$DiscIndexer;

    const-string v1, "track"

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/library/AlbumTracksAdapter$DiscIndexer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getItem(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .line 176
    new-instance p1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$TrackData;

    invoke-direct {p1}, Lcom/sonyericsson/music/library/AlbumTracksAdapter$TrackData;-><init>()V

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;

    iget v0, v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;->trackIdColIndex:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$TrackData;->trackId:I

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;

    iget v0, v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;->trackNameColIndex:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$TrackData;->trackName:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;

    iget v0, v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;->artistNameColIndex:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$TrackData;->artistName:Ljava/lang/String;

    .line 180
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->getTrackNumber(Landroid/database/Cursor;)I

    move-result v0

    iput v0, p1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$TrackData;->trackNumber:I

    .line 181
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/library/LabelCursorAdapter;->getContentPosition(I)I

    move-result p2

    iput p2, p1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$TrackData;->albumTracksCursorPos:I

    return-object p1
.end method

.method public newContentView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->newView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mHasNoNumbering:Z

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mHighResTracksIds:Ljava/util/HashSet;

    if-eqz p1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;

    invoke-direct {v1, v0}, Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;-><init>(Lcom/sonyericsson/music/library/AlbumTracksAdapter$1;)V

    iput-object v1, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;->trackIdColIndex:I

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;

    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;->trackNameColIndex:I

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;

    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;->artistNameColIndex:I

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;

    const-string v1, "track"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$IndexCache;->trackNumberColIndex:I

    .line 160
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/music/common/HighResAttachedCursor;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/HighResAttachedCursor;->getHighResMedia()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mHighResTracksIds:Ljava/util/HashSet;

    :cond_1
    if-eqz p1, :cond_4

    .line 163
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->getTrackNumber(Landroid/database/Cursor;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter;->mHasNoNumbering:Z

    goto :goto_0

    .line 169
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LabelCursorAdapter;->swapCursor(Landroid/database/Cursor;)V

    return-void
.end method
