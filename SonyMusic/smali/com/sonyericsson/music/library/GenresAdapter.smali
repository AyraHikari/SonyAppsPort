.class public Lcom/sonyericsson/music/library/GenresAdapter;
.super Landroid/widget/CursorAdapter;
.source "GenresAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/GenresAdapter$ViewHolder;,
        Lcom/sonyericsson/music/library/GenresAdapter$GenreImageDecodedListener;
    }
.end annotation


# instance fields
.field private final mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mContext:Landroid/content/Context;

.field private final mContextMenuIconListener:Landroid/view/View$OnClickListener;

.field private mGenresArtUris:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconDimension:I

.field private mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 48
    new-instance v0, Lcom/sonyericsson/music/library/GenresAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/GenresAdapter$1;-><init>(Lcom/sonyericsson/music/library/GenresAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/GenresAdapter;->mContextMenuIconListener:Landroid/view/View$OnClickListener;

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/music/library/GenresAdapter;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/sonyericsson/music/library/GenresAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 60
    iget-object p1, p0, Lcom/sonyericsson/music/library/GenresAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700da

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/library/GenresAdapter;->mIconDimension:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/GenresAdapter$ViewHolder;

    const-string v0, "_id"

    .line 108
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/music/library/GenresAdapter;->isNowPlayingView(J)Z

    move-result v2

    .line 111
    iget-object v3, p0, Lcom/sonyericsson/music/library/GenresAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/sonyericsson/music/library/GenresAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    sget-object v5, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->MEDIUM:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {v3, v2, v4, v5}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    .line 112
    iget-object v3, p0, Lcom/sonyericsson/music/library/GenresAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/sonyericsson/music/library/GenresAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    sget-object v5, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {v3, v2, v4, v5}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    const-string v2, "name"

    .line 114
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 115
    iget-object v2, p1, Lcom/sonyericsson/music/library/GenresAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "_count"

    .line 117
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p3, v2, :cond_0

    const v4, 0x7f10018d

    .line 118
    new-array v2, v2, [Ljava/lang/Object;

    .line 119
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v3

    .line 118
    invoke-virtual {p2, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const p3, 0x7f10018e

    .line 120
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 121
    :goto_0
    iget-object p3, p1, Lcom/sonyericsson/music/library/GenresAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object p2, p0, Lcom/sonyericsson/music/library/GenresAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2, v0, v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$GenreArtUri;->getUriWithId(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object p2

    .line 125
    iget-object p3, p0, Lcom/sonyericsson/music/library/GenresAdapter;->mGenresArtUris:Landroid/util/LongSparseArray;

    if-eqz p3, :cond_1

    .line 126
    invoke-virtual {p3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 127
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_3

    .line 132
    iget-object p3, p1, Lcom/sonyericsson/music/library/GenresAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-eqz v8, :cond_2

    .line 133
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result p3

    move v5, p3

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 134
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/music/library/GenresAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iget v7, p0, Lcom/sonyericsson/music/library/GenresAdapter;->mIconDimension:I

    new-instance v9, Lcom/sonyericsson/music/library/GenresAdapter$GenreImageDecodedListener;

    iget-object p3, p1, Lcom/sonyericsson/music/library/GenresAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sonyericsson/music/library/GenresAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v9, p3, p2, v5, v0}, Lcom/sonyericsson/music/library/GenresAdapter$GenreImageDecodedListener;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;ILandroid/content/Context;)V

    move v6, v7

    invoke-virtual/range {v3 .. v9}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    move-result v3

    :cond_3
    if-nez v3, :cond_4

    .line 140
    iget-object p1, p1, Lcom/sonyericsson/music/library/GenresAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const p2, 0x7f080189

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7

    .line 147
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "_id"

    .line 153
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/music/library/GenresAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore$GenreArtUri;->getUriWithId(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/sonyericsson/music/library/GenresAdapter;->mGenresArtUris:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 158
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    move-object v6, v0

    goto :goto_0

    :cond_2
    move-object v6, v0

    .line 161
    :goto_0
    new-instance v0, Lcom/sonyericsson/music/common/MenuUtils$GenreData;

    const-string v1, "name"

    .line 162
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "_count"

    .line 163
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/common/MenuUtils$GenreData;-><init>(JLjava/lang/String;ILandroid/net/Uri;)V

    return-object v0
.end method

.method isNowPlayingView(J)Z
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/music/library/GenresAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 91
    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 94
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 95
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_1

    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p2, 0x0

    const p3, 0x7f0c005b

    .line 65
    invoke-static {p1, p3, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 67
    new-instance p3, Lcom/sonyericsson/music/library/GenresAdapter$ViewHolder;

    invoke-direct {p3, p2}, Lcom/sonyericsson/music/library/GenresAdapter$ViewHolder;-><init>(Lcom/sonyericsson/music/library/GenresAdapter$1;)V

    .line 68
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p2, 0x7f0901fc

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/GenresAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const p2, 0x7f0901fd

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/GenresAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const p2, 0x7f0900db

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p3, Lcom/sonyericsson/music/library/GenresAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const p2, 0x7f090081

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p3, Lcom/sonyericsson/music/library/GenresAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    .line 73
    iget-object p2, p3, Lcom/sonyericsson/music/library/GenresAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/sonyericsson/music/library/GenresAdapter;->mContextMenuIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public setGenresArtUri(Landroid/util/LongSparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/sonyericsson/music/library/GenresAdapter;->mGenresArtUris:Landroid/util/LongSparseArray;

    .line 170
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/sonyericsson/music/library/GenresAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    return-void
.end method
