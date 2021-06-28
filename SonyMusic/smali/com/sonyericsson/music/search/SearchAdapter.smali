.class public Lcom/sonyericsson/music/search/SearchAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;,
        Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;,
        Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_LABEL:I = 0x0

.field private static final TYPE_SEARCH_HISTORY:I = 0x1

.field private static final TYPE_SEARCH_RESULT:I = 0x2


# instance fields
.field private final mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private final mCacheMissCache:Landroid/util/SparseBooleanArray;

.field private mData:Lcom/sonyericsson/music/search/SearchResult;

.field private mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mDefaultArtistIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mImageSize:I

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;

.field private mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/artdecoder/ArtDecoder;Landroid/content/Context;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 77
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mCacheMissCache:Landroid/util/SparseBooleanArray;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mItems:Ljava/util/List;

    .line 91
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mResources:Landroid/content/res/Resources;

    .line 92
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 93
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f0801b4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 95
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f0801b5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mDefaultArtistIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 97
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f08018b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 99
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f0700db

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mImageSize:I

    return-void
.end method

.method private bindLabel(Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;Lcom/sonyericsson/music/search/LabelItem;)V
    .locals 3

    .line 287
    iget-object v0, p1, Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/sonyericsson/music/search/LabelItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {p2}, Lcom/sonyericsson/music/search/LabelItem;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p1, Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;->mButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f100033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/search/SearchAdapter;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mListener:Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;

    invoke-virtual {p1, v0, p2}, Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;->bindListener(Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;Lcom/sonyericsson/music/search/LabelItem;)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object p2, p1, Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;->mButton:Landroid/widget/TextView;

    const-string v0, ""

    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/music/search/SearchAdapter;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 294
    invoke-virtual {p1, p2, p2}, Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;->bindListener(Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;Lcom/sonyericsson/music/search/LabelItem;)V

    :goto_0
    return-void
.end method

.method private bindSearchItem(Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;Lcom/sonyericsson/music/search/SearchItem;)V
    .locals 8

    .line 181
    invoke-virtual {p2}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object v0

    .line 182
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mData:Lcom/sonyericsson/music/search/SearchResult;

    invoke-interface {v2}, Lcom/sonyericsson/music/search/SearchResult;->hasHistoryData()Z

    move-result v2

    .line 185
    iget-object v3, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mListener:Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;

    invoke-virtual {p1, v3, p2}, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->bindListener(Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;Lcom/sonyericsson/music/search/SearchItem;)V

    if-eqz v2, :cond_0

    const v3, 0x7f0800a6

    .line 190
    invoke-static {v1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v5, 0x7f10003d

    .line 191
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const v3, 0x7f0800dd

    .line 193
    invoke-static {v1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v5, 0x7f10005a

    .line 194
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 196
    :goto_0
    iget-object v6, p1, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mContextIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v3, p1, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mContextMenuTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {p2}, Lcom/sonyericsson/music/search/SearchItem;->getArtistName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 202
    sget-object v6, Lcom/sonyericsson/music/search/SearchAdapter$1;->$SwitchMap$com$sonyericsson$music$search$SearchConstants$Type:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v6, v0

    packed-switch v0, :pswitch_data_0

    .line 224
    invoke-virtual {p2}, Lcom/sonyericsson/music/search/SearchItem;->getTrackName()Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_3

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f100212

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_3

    .line 212
    :pswitch_0
    invoke-virtual {p2}, Lcom/sonyericsson/music/search/SearchItem;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v1, v0}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_1

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f100126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    .line 217
    :cond_1
    invoke-static {v1, v3}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 219
    :goto_1
    iget-object v1, p1, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mImgArt:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/sonyericsson/music/search/SearchItem;->getArtUri()Landroid/net/Uri;

    move-result-object v4

    move-object v0, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/search/SearchAdapter;->setAlbumArt(Landroid/widget/ImageView;JLandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_4

    .line 204
    :pswitch_1
    invoke-static {v1, v3}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_2

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f10012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    goto :goto_2

    :cond_2
    move-object v7, v5

    .line 208
    :goto_2
    iget-object v1, p1, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mImgArt:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/sonyericsson/music/search/SearchItem;->getArtUri()Landroid/net/Uri;

    move-result-object v4

    move-object v0, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/search/SearchAdapter;->setArtistArt(Landroid/widget/ImageView;JLandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_4

    .line 228
    :cond_3
    invoke-static {v1, v3}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 230
    :goto_3
    iget-object v1, p1, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mImgArt:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/sonyericsson/music/search/SearchItem;->getArtUri()Landroid/net/Uri;

    move-result-object v4

    move-object v0, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/search/SearchAdapter;->setAlbumArt(Landroid/widget/ImageView;JLandroid/net/Uri;Ljava/lang/String;)V

    .line 234
    :goto_4
    iget-object v0, p1, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mTxtPrimary:Landroid/widget/TextView;

    invoke-direct {p0, v0, v6}, Lcom/sonyericsson/music/search/SearchAdapter;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 235
    iget-object v0, p1, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mTxtSecondary:Landroid/widget/TextView;

    invoke-direct {p0, v0, v7}, Lcom/sonyericsson/music/search/SearchAdapter;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private generateIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/lit8 p1, p1, 0x1f

    mul-int/lit8 p1, p1, 0x1f

    .line 282
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method private inflate(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    .line 347
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private setAlbumArt(Landroid/widget/ImageView;JLandroid/net/Uri;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 263
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v10, p5

    invoke-direct {v0, v1, v10}, Lcom/sonyericsson/music/search/SearchAdapter;->generateIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 264
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-eqz p4, :cond_1

    .line 266
    iget-object v1, v0, Lcom/sonyericsson/music/search/SearchAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/sonyericsson/music/search/SearchAdapter;->mCacheMissCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iget-object v11, v0, Lcom/sonyericsson/music/search/SearchAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->hashCode()I

    move-result v13

    iget v14, v0, Lcom/sonyericsson/music/search/SearchAdapter;->mImageSize:I

    new-instance v15, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;

    iget-object v4, v0, Lcom/sonyericsson/music/search/SearchAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, v0, Lcom/sonyericsson/music/search/SearchAdapter;->mCacheMissCache:Landroid/util/SparseBooleanArray;

    .line 273
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;-><init>(Landroid/widget/ImageView;ILandroid/graphics/drawable/BitmapDrawable;Landroid/util/SparseBooleanArray;Landroid/net/Uri;ILandroid/content/Context;)V

    move-object v2, v11

    move-object v3, v12

    move v4, v13

    move v5, v14

    move v6, v14

    move-object/from16 v7, p5

    move-object v8, v15

    .line 270
    invoke-virtual/range {v2 .. v8}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 275
    iget-object v1, v0, Lcom/sonyericsson/music/search/SearchAdapter;->mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 268
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/sonyericsson/music/search/SearchAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setArtistArt(Landroid/widget/ImageView;JLandroid/net/Uri;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 245
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v10, p5

    invoke-direct {v0, v1, v10}, Lcom/sonyericsson/music/search/SearchAdapter;->generateIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 246
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-eqz p4, :cond_1

    .line 248
    iget-object v1, v0, Lcom/sonyericsson/music/search/SearchAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/sonyericsson/music/search/SearchAdapter;->mCacheMissCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object v11, v0, Lcom/sonyericsson/music/search/SearchAdapter;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->hashCode()I

    move-result v13

    iget v14, v0, Lcom/sonyericsson/music/search/SearchAdapter;->mImageSize:I

    new-instance v15, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;

    iget-object v4, v0, Lcom/sonyericsson/music/search/SearchAdapter;->mDefaultArtistIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, v0, Lcom/sonyericsson/music/search/SearchAdapter;->mCacheMissCache:Landroid/util/SparseBooleanArray;

    .line 255
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;-><init>(Landroid/widget/ImageView;ILandroid/graphics/drawable/BitmapDrawable;Landroid/util/SparseBooleanArray;Landroid/net/Uri;ILandroid/content/Context;)V

    move-object v2, v11

    move-object v3, v12

    move v4, v13

    move v5, v14

    move v6, v14

    move-object/from16 v7, p5

    move-object v8, v15

    .line 252
    invoke-virtual/range {v2 .. v8}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    iget-object v1, v0, Lcom/sonyericsson/music/search/SearchAdapter;->mPlaceHolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 250
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/sonyericsson/music/search/SearchAdapter;->mDefaultArtistIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 239
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 240
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_1

    const-string p2, ""

    .line 241
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getData()Lcom/sonyericsson/music/search/SearchResult;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mData:Lcom/sonyericsson/music/search/SearchResult;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    mul-int/lit8 v0, p1, 0x1f

    .line 109
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mData:Lcom/sonyericsson/music/search/SearchResult;

    invoke-interface {v1}, Lcom/sonyericsson/music/search/SearchResult;->hasHistoryData()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/sonyericsson/music/search/SearchItem;

    if-eqz p1, :cond_1

    .line 116
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mData:Lcom/sonyericsson/music/search/SearchResult;

    invoke-interface {p1}, Lcom/sonyericsson/music/search/SearchResult;->hasHistoryData()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 148
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    check-cast p1, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;

    check-cast p2, Lcom/sonyericsson/music/search/SearchItem;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/search/SearchAdapter;->bindSearchItem(Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;Lcom/sonyericsson/music/search/SearchItem;)V

    goto :goto_0

    .line 150
    :pswitch_1
    check-cast p1, Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;

    check-cast p2, Lcom/sonyericsson/music/search/LabelItem;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/search/SearchAdapter;->bindLabel(Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;Lcom/sonyericsson/music/search/LabelItem;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 138
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;

    const v1, 0x7f0c0062

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/music/search/SearchAdapter;->inflate(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;-><init>(Landroid/view/View;I)V

    return-object v0

    .line 135
    :pswitch_1
    new-instance p2, Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;

    const v0, 0x7f0c005d

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/search/SearchAdapter;->inflate(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 161
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 162
    instance-of v0, p1, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 163
    check-cast p1, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;

    .line 164
    invoke-virtual {p1, v1, v1}, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->bindListener(Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;Lcom/sonyericsson/music/search/SearchItem;)V

    goto :goto_0

    .line 165
    :cond_0
    instance-of v0, p1, Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;

    if-eqz v0, :cond_1

    .line 166
    check-cast p1, Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;

    .line 167
    invoke-virtual {p1, v1, v1}, Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;->bindListener(Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;Lcom/sonyericsson/music/search/LabelItem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setListener(Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mListener:Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;

    .line 177
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public swapData(Lcom/sonyericsson/music/search/SearchResult;)V
    .locals 7

    .line 303
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mData:Lcom/sonyericsson/music/search/SearchResult;

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_2

    .line 305
    invoke-interface {p1}, Lcom/sonyericsson/music/search/SearchResult;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 306
    invoke-interface {p1}, Lcom/sonyericsson/music/search/SearchResult;->hasHistoryData()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f100284

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    iget-object v2, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mItems:Ljava/util/List;

    new-instance v3, Lcom/sonyericsson/music/search/LabelItem;

    sget-object v4, Lcom/sonyericsson/music/search/Label;->RECENT_SEARCHES:Lcom/sonyericsson/music/search/Label;

    invoke-direct {v3, v4, v0, v1}, Lcom/sonyericsson/music/search/LabelItem;-><init>(Lcom/sonyericsson/music/search/Label;Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1}, Lcom/sonyericsson/music/search/SearchResult;->toList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 311
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 312
    invoke-interface {p1}, Lcom/sonyericsson/music/search/SearchResult;->toList()Ljava/util/List;

    move-result-object p1

    .line 313
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/search/SearchItem;

    .line 314
    invoke-virtual {v2}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object v3

    .line 315
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 316
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v4, Lcom/sonyericsson/music/search/SearchAdapter$1;->$SwitchMap$com$sonyericsson$music$search$SearchConstants$Type:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 329
    :pswitch_0
    iget-object v3, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f1002b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 330
    sget-object v4, Lcom/sonyericsson/music/search/Label;->TRACK:Lcom/sonyericsson/music/search/Label;

    goto :goto_1

    .line 325
    :pswitch_1
    iget-object v3, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f1002af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 326
    sget-object v4, Lcom/sonyericsson/music/search/Label;->ALBUM:Lcom/sonyericsson/music/search/Label;

    goto :goto_1

    .line 321
    :pswitch_2
    iget-object v3, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f1002b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 322
    sget-object v4, Lcom/sonyericsson/music/search/Label;->ARTIST:Lcom/sonyericsson/music/search/Label;

    .line 337
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mItems:Ljava/util/List;

    new-instance v6, Lcom/sonyericsson/music/search/LabelItem;

    invoke-direct {v6, v4, v3, v1}, Lcom/sonyericsson/music/search/LabelItem;-><init>(Lcom/sonyericsson/music/search/Label;Ljava/lang/String;Z)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/music/search/SearchAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
