.class Lcom/sonyericsson/music/library/GenresAdapter$GenreImageDecodedListener;
.super Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;
.source "GenresAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/GenresAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenreImageDecodedListener"
.end annotation


# instance fields
.field private final mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;ILandroid/content/Context;)V
    .locals 0

    .line 177
    invoke-direct {p0, p2, p3, p4}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;-><init>(Landroid/net/Uri;ILandroid/content/Context;)V

    .line 178
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sonyericsson/music/library/GenresAdapter$GenreImageDecodedListener;->mImageView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDecoded(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 183
    invoke-super {p0, p1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->onDecoded(Landroid/graphics/Bitmap;)V

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/music/library/GenresAdapter$GenreImageDecodedListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 186
    iget-object v1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->mBitmapUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f080189

    .line 190
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
