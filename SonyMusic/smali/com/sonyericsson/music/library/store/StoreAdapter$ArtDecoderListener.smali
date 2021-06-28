.class Lcom/sonyericsson/music/library/store/StoreAdapter$ArtDecoderListener;
.super Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;
.source "StoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/store/StoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtDecoderListener"
.end annotation


# instance fields
.field private final mBitmapUri:Landroid/net/Uri;

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

.field protected final mHashCode:I

.field private final mViewHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;ILandroid/graphics/drawable/BitmapDrawable;Landroid/util/SparseBooleanArray;Landroid/net/Uri;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;-><init>()V

    .line 355
    iput-object p5, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ArtDecoderListener;->mBitmapUri:Landroid/net/Uri;

    .line 356
    iput p2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ArtDecoderListener;->mHashCode:I

    .line 357
    iput-object p4, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ArtDecoderListener;->mCache:Landroid/util/SparseBooleanArray;

    .line 358
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ArtDecoderListener;->mViewHolder:Ljava/lang/ref/WeakReference;

    .line 359
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ArtDecoderListener;->mDefaultIcon:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDecoded(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 364
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ArtDecoderListener;->mViewHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;

    if-eqz v0, :cond_1

    .line 366
    iget-object v1, v0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mImageView:Lcom/sonyericsson/music/ui/SquareImageView;

    if-eqz v1, :cond_1

    .line 367
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mImageView:Lcom/sonyericsson/music/ui/SquareImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ArtDecoderListener;->mBitmapUri:Landroid/net/Uri;

    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 371
    iget-object v0, v0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mImageView:Lcom/sonyericsson/music/ui/SquareImageView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 373
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ArtDecoderListener;->mDefaultIcon:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ArtDecoderListener;->mCache:Landroid/util/SparseBooleanArray;

    iget v2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ArtDecoderListener;->mHashCode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 376
    iget-object v0, v0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mImageView:Lcom/sonyericsson/music/ui/SquareImageView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/landingpage/DrawableSourceView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method
