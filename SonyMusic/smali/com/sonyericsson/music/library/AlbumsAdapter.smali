.class public Lcom/sonyericsson/music/library/AlbumsAdapter;
.super Lcom/sonyericsson/music/library/LabelCursorAdapter;
.source "AlbumsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;,
        Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mCacheMissCache:Landroid/util/SparseBooleanArray;

.field private mContext:Landroid/content/Context;

.field private final mContextMenuIconListener:Landroid/view/View$OnClickListener;

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

.field private mIsGridView:Z

.field private mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;

.field private mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

.field private mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mShowContextMenu:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;ZZ)V
    .locals 2

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/library/LabelCursorAdapter;-><init>(Landroid/content/Context;Z)V

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;

    .line 49
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mCacheMissCache:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    .line 59
    iput-boolean v1, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mShowContextMenu:Z

    .line 61
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mIsGridView:Z

    .line 65
    new-instance v0, Lcom/sonyericsson/music/library/AlbumsAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/AlbumsAdapter$1;-><init>(Lcom/sonyericsson/music/library/AlbumsAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mContextMenuIconListener:Landroid/view/View$OnClickListener;

    .line 76
    iput-boolean p4, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mIsGridView:Z

    .line 77
    iput-boolean p3, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mShowContextMenu:Z

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/library/AlbumsAdapter;->init(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;)V

    return-void
.end method

.method private enableListItem(Landroid/view/View;Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;Z)V
    .locals 1

    xor-int/lit8 v0, p3, 0x1

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 238
    iget-object p1, p2, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 239
    iget-object p1, p2, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 240
    iget-object p1, p2, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 241
    iget-object p1, p2, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 242
    iget-object p1, p2, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private generateIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/lit8 p1, p1, 0x1f

    mul-int/lit8 p1, p1, 0x1f

    .line 231
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method private getAlbumDataFromCursor(Landroid/database/Cursor;Landroid/content/Context;)Lcom/sonyericsson/music/common/MenuUtils$AlbumData;
    .locals 8

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;

    iget v0, v0, Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;->mAlbumIdColIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;

    iget v0, v0, Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;->mArtistIdColIndex:I

    const/4 v1, 0x0

    const/4 v4, -0x1

    if-le v0, v4, :cond_0

    .line 255
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 256
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 257
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v1

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;

    iget v0, v0, Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;->mAlbumNameColIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    iget-object v4, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;

    iget v4, v4, Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;->mArtistNameColIndex:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 263
    invoke-static {p2, v0}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 264
    invoke-static {p2, p1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    if-eqz v7, :cond_1

    .line 267
    new-instance p1, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;-><init>(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object p1

    :cond_1
    return-object v1
.end method

.method private init(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 85
    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08018b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 93
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mIsGridView:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0002

    .line 94
    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/UIUtils;->getEstimatedGridItemWidth(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700db

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mImageSize:I

    .line 97
    iput-object p2, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    return-void

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null context is not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setAlbumArt(Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    move-object v0, p0

    move-object v8, p1

    if-eqz p3, :cond_1

    .line 210
    iget-object v1, v0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mCacheMissCache:Landroid/util/SparseBooleanArray;

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    iget-object v9, v0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v10

    iget v11, v0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mImageSize:I

    iget-object v3, v0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, v0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mCacheMissCache:Landroid/util/SparseBooleanArray;

    .line 215
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 216
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    iget-object v7, v0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mContext:Landroid/content/Context;

    move-object v1, p1

    move/from16 v2, p4

    .line 214
    invoke-virtual/range {v1 .. v7}, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->getArtDecoderListener(ILandroid/graphics/drawable/BitmapDrawable;Landroid/util/SparseBooleanArray;Landroid/net/Uri;ILandroid/content/Context;)Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;

    move-result-object v7

    move-object v1, v9

    move-object v2, p3

    move v3, v10

    move v4, v11

    move v5, v11

    move-object v6, p2

    .line 213
    invoke-virtual/range {v1 .. v7}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    move-result v1

    goto :goto_0

    .line 218
    :cond_0
    iget-object v1, v0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->setImage(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    .line 222
    iget-object v1, v0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 225
    :cond_1
    iget-object v1, v0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->setImage(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public bindContentView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;

    .line 165
    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/music/library/AlbumsAdapter;->getAlbumDataFromCursor(Landroid/database/Cursor;Landroid/content/Context;)Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 168
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getAlbumName()Ljava/lang/String;

    move-result-object p3

    .line 169
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 171
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getAlbumId()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    move-object v1, p3

    move-object v2, v1

    .line 174
    :goto_0
    iget-object v5, v0, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v5, v0, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/library/AlbumsAdapter;->isNowPlayingView(Lcom/sonyericsson/music/common/MenuUtils$AlbumData;)Z

    move-result p2

    .line 178
    iget-object v1, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    sget-object v6, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->MEDIUM:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {v1, p2, v5, v6}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    .line 179
    iget-object v1, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    sget-object v6, Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;->SMALL_SECONDARY:Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;

    invoke-static {v1, p2, v5, v6}, Lcom/sonyericsson/music/common/TextStyleUtil;->setTextStyle(Landroid/content/Context;ZLandroid/widget/TextView;Lcom/sonyericsson/music/common/TextStyleUtil$TextStyle;)V

    .line 181
    iget-object p2, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mHighResAlbumIds:Ljava/util/HashSet;

    invoke-static {v3, v4, p2}, Lcom/sonyericsson/music/common/HDAudioUtils;->isHighResContent(JLjava/util/HashSet;)Z

    move-result p2

    .line 182
    iget-object v1, v0, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz p2, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    const/16 v7, 0x8

    :goto_1
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v1, v0, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->highResAudioIndicatorSpacing:Landroid/view/View;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    .line 184
    iget-boolean p2, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mShowContextMenu:Z

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    .line 185
    :goto_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/4 p2, 0x1

    .line 188
    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/music/library/AlbumsAdapter;->enableListItem(Landroid/view/View;Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;Z)V

    if-eqz v2, :cond_5

    .line 190
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 191
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->getImageTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 192
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/music/library/AlbumsAdapter;->generateIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 193
    invoke-virtual {v0}, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->getImageTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p1, p2, :cond_5

    .line 194
    :cond_4
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/music/library/AlbumsAdapter;->generateIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->setImageTag(Ljava/lang/Object;)V

    .line 197
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p3, p2, p1}, Lcom/sonyericsson/music/library/AlbumsAdapter;->setAlbumArt(Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public getColumnCount()I
    .locals 2

    .line 202
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mIsGridView:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected getIndexer()Lcom/sonyericsson/music/library/LabelCursorAdapter$Indexer;
    .locals 2

    .line 153
    new-instance v0, Lcom/sonyericsson/music/library/LabelCursorAdapter$DefaultIndexer;

    const-string v1, "album"

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/library/LabelCursorAdapter$DefaultIndexer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getItem(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 247
    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/music/library/AlbumsAdapter;->getAlbumDataFromCursor(Landroid/database/Cursor;Landroid/content/Context;)Lcom/sonyericsson/music/common/MenuUtils$AlbumData;

    move-result-object p1

    return-object p1
.end method

.method isNowPlayingView(Lcom/sonyericsson/music/common/MenuUtils$AlbumData;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 285
    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 287
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getAlbumId()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public newContentView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 128
    iget-boolean p2, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mIsGridView:Z

    if-eqz p2, :cond_0

    const p2, 0x7f0c0046

    goto :goto_0

    :cond_0
    const p2, 0x7f0c005b

    :goto_0
    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 131
    new-instance p2, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;

    iget-boolean p3, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mIsGridView:Z

    xor-int/lit8 p3, p3, 0x1

    invoke-direct {p2, p3}, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;-><init>(Z)V

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f0901fb

    .line 133
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const p3, 0x7f0901fc

    .line 134
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const p3, 0x7f0900db

    .line 135
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->setImageView(Landroid/view/View;)V

    const p3, 0x7f090080

    .line 136
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    const p3, 0x7f090081

    .line 137
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p2, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    const p3, 0x7f0900d0

    .line 138
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->highResAudioIndicator:Landroid/widget/ImageView;

    const p3, 0x7f0900d1

    .line 139
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p2, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->highResAudioIndicatorSpacing:Landroid/view/View;

    .line 141
    iget-boolean p3, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mShowContextMenu:Z

    if-eqz p3, :cond_1

    .line 142
    iget-object p2, p2, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mContextMenuIconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 144
    :cond_1
    iget-object p3, p2, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object p2, p2, Lcom/sonyericsson/music/library/AlbumsAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    return-object p1
.end method

.method setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mHighResAlbumIds:Ljava/util/HashSet;

    if-eqz p1, :cond_0

    .line 105
    move-object v1, p1

    check-cast v1, Lcom/sonyericsson/music/common/HighResAttachedCursor;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/HighResAttachedCursor;->getHighResMedia()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mHighResAlbumIds:Ljava/util/HashSet;

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sonyericsson/music/common/DBUtils;->getCursorWithId(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;

    if-nez v1, :cond_1

    .line 108
    new-instance v1, Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;

    invoke-direct {v1, v0}, Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;-><init>(Lcom/sonyericsson/music/library/AlbumsAdapter$1;)V

    iput-object v1, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;

    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;->mArtistNameColIndex:I

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;

    const-string v1, "album"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;->mAlbumNameColIndex:I

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;

    const-string v1, "artist_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;->mArtistIdColIndex:I

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/music/library/AlbumsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/music/library/AlbumsAdapter$IndexCache;->mAlbumIdColIndex:I

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 123
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LabelCursorAdapter;->swapCursor(Landroid/database/Cursor;)V

    return-void
.end method
