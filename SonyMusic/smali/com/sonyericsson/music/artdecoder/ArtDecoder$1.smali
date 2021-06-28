.class Lcom/sonyericsson/music/artdecoder/ArtDecoder$1;
.super Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;
.source "ArtDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/artdecoder/ArtDecoder;->loadIntoFixedSizeImageViewWithGaw(Landroid/widget/ImageView;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field final synthetic val$imageView:Ljava/lang/ref/WeakReference;

.field final synthetic val$uriString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/artdecoder/ArtDecoder;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$1;->this$0:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iput-object p2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$1;->val$imageView:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$1;->val$uriString:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecoded(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$1;->val$imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 323
    iget-object v2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$1;->val$uriString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
