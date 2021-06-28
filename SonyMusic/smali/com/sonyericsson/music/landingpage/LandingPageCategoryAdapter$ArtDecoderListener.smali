.class Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ArtDecoderListener;
.super Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;
.source "LandingPageCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtDecoderListener"
.end annotation


# instance fields
.field private final mArt:Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;

.field private final mBitmapUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mViewHolder:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;Landroid/content/Context;)V
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;-><init>()V

    .line 434
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ArtDecoderListener;->mContext:Landroid/content/Context;

    .line 435
    invoke-virtual {p2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->getArtUri()Landroid/net/Uri;

    move-result-object p3

    iput-object p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ArtDecoderListener;->mBitmapUri:Landroid/net/Uri;

    .line 436
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ArtDecoderListener;->mViewHolder:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;

    .line 437
    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ArtDecoderListener;->mArt:Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;

    return-void
.end method


# virtual methods
.method public onDecoded(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ArtDecoderListener;->mViewHolder:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;

    if-eqz v0, :cond_1

    .line 443
    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;->access$000(Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ItemViewHolder;)Lcom/sonyericsson/music/ui/LandingPageItemView;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ArtDecoderListener;->mArt:Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;

    .line 445
    invoke-virtual {v2}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->getImageViewIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 448
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ArtDecoderListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ArtDecoderListener;->mArt:Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;

    .line 449
    invoke-virtual {v1}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryItemArt;->getDefaultArtId()I

    move-result v1

    .line 448
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 450
    invoke-static {}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->getInstance()Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$ArtDecoderListener;->mBitmapUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->addDefaultToCache(Landroid/net/Uri;)V

    .line 452
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/LandingPageItemView;->setAlbumArt(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 454
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
