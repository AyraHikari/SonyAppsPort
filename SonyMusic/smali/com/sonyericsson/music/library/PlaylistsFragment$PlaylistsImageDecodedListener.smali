.class Lcom/sonyericsson/music/library/PlaylistsFragment$PlaylistsImageDecodedListener;
.super Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;
.source "PlaylistsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/PlaylistsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistsImageDecodedListener"
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

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 845
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;-><init>(Landroid/net/Uri;ILandroid/content/Context;)V

    .line 846
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/sonyericsson/music/library/PlaylistsFragment$PlaylistsImageDecodedListener;->mImageView:Ljava/lang/ref/WeakReference;

    .line 847
    iput-object p2, p0, Lcom/sonyericsson/music/library/PlaylistsFragment$PlaylistsImageDecodedListener;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDecoded(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 852
    invoke-super {p0, p1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;->onDecoded(Landroid/graphics/Bitmap;)V

    .line 854
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistsFragment$PlaylistsImageDecodedListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/library/PlaylistsFragment$PlaylistsImageDecodedListener;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 856
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
