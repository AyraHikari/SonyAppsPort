.class public abstract Lcom/sonyericsson/music/library/PlaylistAdapter;
.super Landroid/widget/CursorAdapter;
.source "PlaylistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/PlaylistAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mContext:Landroid/content/Context;

.field private final mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

.field private mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mHighResTracksIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

.field private mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 41
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 43
    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 53
    new-instance v0, Lcom/sonyericsson/music/library/PlaylistAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/PlaylistAdapter$1;-><init>(Lcom/sonyericsson/music/library/PlaylistAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

    .line 64
    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0801b4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p2, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08018b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    return-void
.end method

.method private isNowPlayingTrack(ILjava/lang/String;)Z
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 146
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getPlayOrder()I

    move-result v0

    if-eq p1, v0, :cond_1

    return v1

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getTrackUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 152
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    return v1

    :cond_3
    return v1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/PlaylistAdapter$ViewHolder;

    .line 114
    invoke-virtual {p0, p3}, Lcom/sonyericsson/music/library/PlaylistAdapter;->getTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p0, p3}, Lcom/sonyericsson/music/library/PlaylistAdapter;->getArtist(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {p0, p3}, Lcom/sonyericsson/music/library/PlaylistAdapter;->getAlbum(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 118
    iget-object v2, p1, Lcom/sonyericsson/music/library/PlaylistAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p1, Lcom/sonyericsson/music/library/PlaylistAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-static {p2, v1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p2, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz p2, :cond_0

    .line 122
    invoke-static {v1, v5}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 123
    iget-object v2, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget-object v3, p1, Lcom/sonyericsson/music/library/PlaylistAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->loadIntoFixedSizeImageViewWithGaw(Landroid/widget/ImageView;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 127
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sonyericsson/music/library/PlaylistAdapter;->getTrackId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2

    .line 128
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p3

    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/music/library/PlaylistAdapter;->isNowPlayingTrack(ILjava/lang/String;)Z

    move-result p3

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/sonyericsson/music/library/PlaylistAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    sget-object v2, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->MEDIUM:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {v0, p3, v1, v2}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/sonyericsson/music/library/PlaylistAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    sget-object v2, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    .line 131
    invoke-static {v0, p3, v1, v2}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    .line 133
    iget-object p3, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mHighResTracksIds:Ljava/util/HashSet;

    invoke-static {p2, p3}, Lcom/sonyericsson/music/common/HDAudioUtils;->isHighResContent(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result p2

    .line 134
    iget-object p1, p1, Lcom/sonyericsson/music/library/PlaylistAdapter$ViewHolder;->highResAudioIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected abstract getAlbum(Landroid/database/Cursor;)Ljava/lang/String;
.end method

.method protected abstract getArtist(Landroid/database/Cursor;)Ljava/lang/String;
.end method

.method protected abstract getTitle(Landroid/database/Cursor;)Ljava/lang/String;
.end method

.method protected abstract getTrackId(Landroid/database/Cursor;)Ljava/lang/String;
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0c0066

    const/4 p3, 0x0

    .line 88
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 90
    new-instance p2, Lcom/sonyericsson/music/library/PlaylistAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/sonyericsson/music/library/PlaylistAdapter$ViewHolder;-><init>()V

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f0901fb

    .line 92
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/sonyericsson/music/library/PlaylistAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const p3, 0x7f0901fc

    .line 93
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/sonyericsson/music/library/PlaylistAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const p3, 0x7f0900db

    .line 94
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/sonyericsson/music/library/PlaylistAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const p3, 0x7f090081

    .line 95
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p2, Lcom/sonyericsson/music/library/PlaylistAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    .line 96
    iget-object p3, p2, Lcom/sonyericsson/music/library/PlaylistAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mContextMenuTouchAreaListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0900d0

    .line 97
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/sonyericsson/music/library/PlaylistAdapter$ViewHolder;->highResAudioIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2

    .line 76
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    .line 78
    iput-object v1, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mHighResTracksIds:Ljava/util/HashSet;

    if-eqz p1, :cond_0

    .line 80
    check-cast p1, Lcom/sonyericsson/music/common/HighResAttachedCursor;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/HighResAttachedCursor;->getHighResMedia()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistAdapter;->mHighResTracksIds:Ljava/util/HashSet;

    :cond_0
    return-object v0
.end method
