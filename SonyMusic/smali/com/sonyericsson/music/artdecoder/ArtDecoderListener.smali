.class public Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;
.super Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;
.source "ArtDecoderListener.java"


# instance fields
.field private final mCache:Landroid/util/SparseBooleanArray;

.field private final mDefaultIcon:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdentifier:I

.field private final mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mSquareImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/ui/SquareImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;ILandroid/graphics/drawable/BitmapDrawable;Landroid/util/SparseBooleanArray;Landroid/net/Uri;ILandroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p5, p6, p7}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;-><init>(Landroid/net/Uri;ILandroid/content/Context;)V

    .line 49
    iput-object p4, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mCache:Landroid/util/SparseBooleanArray;

    .line 50
    iput p2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mIdentifier:I

    .line 51
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mImageView:Ljava/lang/ref/WeakReference;

    .line 52
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mSquareImageView:Ljava/lang/ref/WeakReference;

    .line 53
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mDefaultIcon:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/music/ui/SquareImageView;ILandroid/graphics/drawable/BitmapDrawable;Landroid/util/SparseBooleanArray;Landroid/net/Uri;ILandroid/content/Context;)V
    .locals 0

    .line 70
    invoke-direct {p0, p5, p6, p7}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;-><init>(Landroid/net/Uri;ILandroid/content/Context;)V

    .line 71
    iput-object p4, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mCache:Landroid/util/SparseBooleanArray;

    .line 72
    iput p2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mIdentifier:I

    .line 73
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mImageView:Ljava/lang/ref/WeakReference;

    .line 74
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mSquareImageView:Ljava/lang/ref/WeakReference;

    .line 75
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mDefaultIcon:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDecoded(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 80
    invoke-super {p0, p1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->onDecoded(Landroid/graphics/Bitmap;)V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 82
    iget-object v1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mSquareImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/ui/SquareImageView;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mIdentifier:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mDefaultIcon:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_3

    .line 89
    iget-object v1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mCache:Landroid/util/SparseBooleanArray;

    iget v3, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mIdentifier:I

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 90
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 93
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mIdentifier:I

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {v1, p1}, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mDefaultIcon:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_3

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mCache:Landroid/util/SparseBooleanArray;

    iget v3, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoderListener;->mIdentifier:I

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 101
    invoke-virtual {v1, p1}, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void
.end method
