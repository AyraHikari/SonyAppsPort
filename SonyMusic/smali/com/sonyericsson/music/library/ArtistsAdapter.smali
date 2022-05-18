.class public Lcom/sonyericsson/music/library/ArtistsAdapter;
.super Lcom/sonyericsson/music/library/LabelCursorAdapter;
.source "ArtistsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/ArtistsAdapter$IndexCache;,
        Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private final mCacheMissCache:Landroid/util/SparseBooleanArray;

.field private final mContextMenuIcon:Landroid/view/View$OnClickListener;

.field private final mDefaultArtistIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mImageSize:I

.field private mLocalIndexCache:Lcom/sonyericsson/music/library/ArtistsAdapter$IndexCache;

.field private final mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mShowContextMenu:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;)V
    .locals 1

    const/4 v0, 0x1

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/library/ArtistsAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/library/LabelCursorAdapter;-><init>(Landroid/content/Context;Z)V

    .line 44
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mCacheMissCache:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mShowContextMenu:Z

    .line 50
    new-instance v0, Lcom/sonyericsson/music/library/ArtistsAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/ArtistsAdapter$1;-><init>(Lcom/sonyericsson/music/library/ArtistsAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mContextMenuIcon:Landroid/view/View$OnClickListener;

    .line 77
    iput-object p2, p0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0801b5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p2, p0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mDefaultArtistIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f08018b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p2, p0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700db

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mImageSize:I

    .line 87
    iput-boolean p3, p0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mShowContextMenu:Z

    return-void
.end method

.method private enableListItem(Landroid/view/View;Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;Z)V
    .locals 1

    xor-int/lit8 v0, p3, 0x1

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 141
    iget-object p1, p2, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 142
    iget-object p1, p2, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 143
    iget-object p1, p2, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 144
    iget-object p1, p2, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private generateIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/lit8 p1, p1, 0x1f

    mul-int/lit8 p1, p1, 0x1f

    .line 180
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method private setArtistArt(Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    .line 148
    iget-object v3, v1, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v3, :cond_6

    if-nez v7, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v3, "_id"

    .line 152
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 153
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/sonyericsson/music/library/ArtistsAdapter;->generateIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 154
    iget-object v2, v1, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 156
    iget-object v6, v0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mDefaultArtistIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    .line 158
    iget-object v3, v0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mCacheMissCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 159
    invoke-static/range {p3 .. p3}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistArtUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 161
    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 163
    iget-object v2, v0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    iget v5, v0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mImageSize:I

    new-instance v16, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;

    iget-object v9, v1, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v11, v0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mDefaultArtistIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v12, v0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mCacheMissCache:Landroid/util/SparseBooleanArray;

    .line 166
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v14

    iget-object v15, v0, Lcom/sonyericsson/music/library/LabelCursorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v8, v16

    invoke-direct/range {v8 .. v15}, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;-><init>(Landroid/widget/ImageView;ILandroid/graphics/drawable/BitmapDrawable;Landroid/util/SparseBooleanArray;Landroid/net/Uri;ILandroid/content/Context;)V

    move v8, v5

    move-object v9, v6

    move v6, v8

    move-object/from16 v7, p3

    move-object/from16 v8, v16

    .line 163
    invoke-virtual/range {v2 .. v8}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 168
    iget-object v6, v0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object v9, v6

    goto :goto_0

    :cond_1
    move-object v9, v6

    goto :goto_0

    :cond_2
    move-object v9, v6

    goto :goto_0

    :cond_3
    move-object v9, v6

    :cond_4
    :goto_0
    if-nez v2, :cond_5

    .line 174
    iget-object v1, v1, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public bindContentView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;

    const-string v1, "number_of_tracks"

    .line 123
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 122
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "artist_name"

    .line 125
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 124
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {p2, v2}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const v4, 0x7f10018d

    .line 129
    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {p2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const v1, 0x7f10018e

    .line 131
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 132
    :goto_0
    iget-object v1, v0, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, v0, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-direct {p0, p1, v0, v3}, Lcom/sonyericsson/music/library/ArtistsAdapter;->enableListItem(Landroid/view/View;Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;Z)V

    .line 136
    invoke-direct {p0, v0, p3, v2}, Lcom/sonyericsson/music/library/ArtistsAdapter;->setArtistArt(Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method

.method protected getIndexer()Lcom/sonyericsson/music/library/LabelCursorAdapter$Indexer;
    .locals 2

    .line 92
    new-instance v0, Lcom/sonyericsson/music/library/LabelCursorAdapter$DefaultIndexer;

    const-string v1, "artist_name"

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/library/LabelCursorAdapter$DefaultIndexer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getItem(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/ArtistsAdapter$IndexCache;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/sonyericsson/music/library/ArtistsAdapter$IndexCache;

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/library/ArtistsAdapter$IndexCache;-><init>(Lcom/sonyericsson/music/library/ArtistsAdapter$1;)V

    const-string v2, "artist_name"

    .line 195
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sonyericsson/music/library/ArtistsAdapter$IndexCache;->mArtistNameColIndex:I

    const-string v2, "_id"

    .line 197
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sonyericsson/music/library/ArtistsAdapter$IndexCache;->mArtistIdColIndex:I

    .line 198
    iput-object v0, p0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mLocalIndexCache:Lcom/sonyericsson/music/library/ArtistsAdapter$IndexCache;

    .line 201
    :cond_0
    iget v2, v0, Lcom/sonyericsson/music/library/ArtistsAdapter$IndexCache;->mArtistIdColIndex:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    iget v2, v0, Lcom/sonyericsson/music/library/ArtistsAdapter$IndexCache;->mArtistNameColIndex:I

    if-le v2, v3, :cond_2

    .line 202
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {p1, v2}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 205
    iget v0, v0, Lcom/sonyericsson/music/library/ArtistsAdapter$IndexCache;->mArtistIdColIndex:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 206
    invoke-static {p1}, Lcom/sonyericsson/music/common/ArtistImageUtils;->getArtistArtUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 208
    new-instance v0, Lcom/sonyericsson/music/common/MenuUtils$ArtistData;

    if-eqz p2, :cond_1

    .line 209
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {v0, v2, v3, p1, v1}, Lcom/sonyericsson/music/common/MenuUtils$ArtistData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method public newContentView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0c0052

    const/4 p3, 0x0

    .line 98
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 100
    new-instance p2, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;-><init>()V

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f0901fb

    .line 102
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const p3, 0x7f0901fc

    .line 103
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const p3, 0x7f0900db

    .line 104
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const p3, 0x7f090081

    .line 105
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p2, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    const p3, 0x7f090080

    .line 106
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    .line 108
    iget-boolean p3, p0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mShowContextMenu:Z

    if-eqz p3, :cond_0

    .line 109
    iget-object p2, p2, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/sonyericsson/music/library/ArtistsAdapter;->mContextMenuIcon:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p3, p2, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;->contextMenuTouchArea:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 112
    iget-object p2, p2, Lcom/sonyericsson/music/library/ArtistsAdapter$ViewHolder;->contextMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-object p1
.end method
