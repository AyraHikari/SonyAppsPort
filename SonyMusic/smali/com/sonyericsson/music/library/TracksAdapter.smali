.class public Lcom/sonyericsson/music/library/TracksAdapter;
.super Lcom/sonyericsson/music/library/RearrangeAdapter;
.source "TracksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;,
        Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;
    }
.end annotation


# instance fields
.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

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

.field private mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

.field private final mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mShowAlbumArt:Z

.field private final mShowContextMenu:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;ZZ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 63
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/library/TracksAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;ZZZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const-string p4, "title"

    goto :goto_0

    :cond_0
    move-object p4, v0

    .line 68
    :goto_0
    invoke-direct {p0, p1, p4}, Lcom/sonyericsson/music/library/RearrangeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    iput-object v0, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    .line 53
    new-instance p4, Lcom/sonyericsson/music/library/TracksAdapter$1;

    invoke-direct {p4, p0}, Lcom/sonyericsson/music/library/TracksAdapter$1;-><init>(Lcom/sonyericsson/music/library/TracksAdapter;)V

    iput-object p4, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

    .line 69
    iput-boolean p3, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mShowContextMenu:Z

    .line 70
    iput-boolean p5, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mShowAlbumArt:Z

    .line 71
    iput-object p2, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0801b4

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p2, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08018b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method private enableTracks(Landroid/view/View;Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;Z)V
    .locals 1

    xor-int/lit8 v0, p3, 0x1

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 130
    iget-object p1, p2, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 131
    iget-object p1, p2, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 132
    iget-boolean p1, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mShowAlbumArt:Z

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p2, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 135
    :cond_0
    iget-object p1, p2, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 136
    iget-object p1, p2, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 137
    iget-object p1, p2, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private getTrackDataFromCursor(Landroid/database/Cursor;)Lcom/sonyericsson/music/common/MenuUtils$TrackData;
    .locals 13

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    iget v0, v0, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;->mTrackIdColIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 197
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    iget v1, v1, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;->mArtistIdColIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 200
    iget-object v3, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    iget v3, v3, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;->mTrackNameColIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 201
    iget-object v3, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    iget v3, v3, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;->mArtistNameColIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 202
    iget-object v3, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    iget v3, v3, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;->mAlbumNameColIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 204
    iget-object v3, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    iget v3, v3, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;->mAlbumIdColIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 205
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 206
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 207
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 208
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 209
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 210
    invoke-static {v10, v11}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 211
    new-instance p1, Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    .line 212
    invoke-static {v6}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v12

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    iget v1, v1, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;->mTrackIdColIndex:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 109
    iget-object v2, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    iget v2, v2, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;->mTrackNameColIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    iget-object v3, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    iget v3, v3, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;->mArtistNameColIndex:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 111
    iget-object v4, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    iget v4, v4, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;->mAlbumNameColIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    int-to-long v4, v1

    .line 113
    iget-object p3, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mHighResTracksIds:Ljava/util/HashSet;

    invoke-static {v4, v5, p3}, Lcom/sonyericsson/music/common/HDAudioUtils;->isHighResContent(JLjava/util/HashSet;)Z

    move-result p3

    .line 114
    iget-object v1, v0, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object p3, v0, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p3, v0, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-static {p2, v3}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p2, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mShowAlbumArt:Z

    if-eqz p2, :cond_1

    .line 120
    invoke-static {v3, v8}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 121
    iget-object v5, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget-object v6, v0, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v5 .. v10}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->loadIntoFixedSizeImageViewWithGaw(Landroid/widget/ImageView;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_1
    const/4 p2, 0x1

    .line 125
    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/music/library/TracksAdapter;->enableTracks(Landroid/view/View;Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;Z)V

    return-void
.end method

.method getIndex(I)Ljava/lang/String;
    .locals 0

    .line 187
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/TracksAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getTrackName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 178
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 180
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/library/TracksAdapter;->getTrackDataFromCursor(Landroid/database/Cursor;)Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 143
    iget-boolean p2, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mShowAlbumArt:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const p2, 0x7f0c0066

    .line 144
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p2, 0x7f0c0067

    .line 146
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 149
    :goto_0
    new-instance p2, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;-><init>()V

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f0901fb

    .line 151
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const p3, 0x7f0901fc

    .line 152
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    .line 153
    iget-boolean p3, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mShowAlbumArt:Z

    if-eqz p3, :cond_1

    const p3, 0x7f0900db

    .line 154
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    :cond_1
    const p3, 0x7f090080

    .line 156
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    const p3, 0x7f090081

    .line 157
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p2, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    const p3, 0x7f0900d0

    .line 158
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    .line 160
    iget-boolean p3, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mShowContextMenu:Z

    if-eqz p3, :cond_2

    .line 161
    iget-object p2, p2, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 163
    :cond_2
    iget-object p3, p2, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object p2, p2, Lcom/sonyericsson/music/library/TracksAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    return-object p1
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3

    .line 82
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/RearrangeAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    iput-object v1, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mHighResTracksIds:Ljava/util/HashSet;

    if-eqz p1, :cond_1

    .line 86
    iget-object v2, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    if-nez v2, :cond_0

    .line 87
    new-instance v2, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    invoke-direct {v2, v1}, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;-><init>(Lcom/sonyericsson/music/library/TracksAdapter$1;)V

    iput-object v2, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;->mTrackIdColIndex:I

    .line 89
    iget-object v1, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;->mTrackNameColIndex:I

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    const-string v2, "artist"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;->mArtistNameColIndex:I

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    const-string v2, "artist_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;->mArtistIdColIndex:I

    .line 92
    iget-object v1, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    const-string v2, "album_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;->mAlbumIdColIndex:I

    .line 93
    iget-object v1, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;

    const-string v2, "album"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;->mAlbumNameColIndex:I

    .line 96
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/music/common/HighResAttachedCursor;

    if-eqz v1, :cond_1

    .line 97
    check-cast p1, Lcom/sonyericsson/music/common/HighResAttachedCursor;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/HighResAttachedCursor;->getHighResMedia()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/TracksAdapter;->mHighResTracksIds:Ljava/util/HashSet;

    :cond_1
    return-object v0
.end method
