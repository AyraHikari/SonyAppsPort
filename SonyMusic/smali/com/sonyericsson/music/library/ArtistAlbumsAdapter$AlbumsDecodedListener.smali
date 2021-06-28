.class Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$AlbumsDecodedListener;
.super Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;
.source "ArtistAlbumsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumsDecodedListener"
.end annotation


# instance fields
.field private final mImageUri:Ljava/lang/String;

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
.method constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 206
    invoke-direct {p0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;-><init>()V

    .line 207
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$AlbumsDecodedListener;->mImageView:Ljava/lang/ref/WeakReference;

    .line 208
    iput-object p2, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$AlbumsDecodedListener;->mImageUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDecoded(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$AlbumsDecodedListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$AlbumsDecodedListener;->mImageUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
