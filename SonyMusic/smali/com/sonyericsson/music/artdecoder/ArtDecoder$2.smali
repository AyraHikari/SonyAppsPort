.class Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;
.super Ljava/lang/Object;
.source "ArtDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field final synthetic val$decodedListener:Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;

.field final synthetic val$diskHash:I

.field final synthetic val$generativeArtworkTitle:Ljava/lang/String;

.field final synthetic val$memHash:I

.field final synthetic val$size:Landroid/graphics/Rect;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/artdecoder/ArtDecoder;Ljava/lang/String;ILandroid/graphics/Rect;Ljava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;I)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->this$0:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iput-object p2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->val$uri:Ljava/lang/String;

    iput p3, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->val$diskHash:I

    iput-object p4, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->val$size:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->val$generativeArtworkTitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->val$decodedListener:Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;

    iput p7, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->val$memHash:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 396
    iget-object v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->val$uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-static {}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->access$100()Lcom/sonyericsson/music/artdecoder/DiskCache;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->val$diskHash:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/artdecoder/DiskCache;->get(I)[B

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->val$size:Landroid/graphics/Rect;

    invoke-static {v1, v2}, Lcom/sonyericsson/music/common/BitmapUtils;->decodeBitmap([BLandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 403
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->this$0:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-static {v2}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->access$200(Lcom/sonyericsson/music/artdecoder/ArtDecoder;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-nez v1, :cond_7

    if-eqz v2, :cond_7

    .line 405
    iget-object v3, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->val$uri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 406
    invoke-static {v3}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v4

    .line 407
    invoke-static {v3}, Lcom/sonyericsson/music/common/DBUtils;->isMediaExtraStoreUri(Landroid/net/Uri;)Z

    move-result v5

    .line 408
    invoke-static {v3}, Lcom/sonyericsson/music/common/DBUtils;->isMusicInfoStoreUri(Landroid/net/Uri;)Z

    move-result v6

    .line 409
    invoke-static {v3}, Lcom/sonyericsson/music/common/DBUtils;->isUriCloudFileType(Landroid/net/Uri;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-eqz v6, :cond_2

    :cond_1
    if-eqz v7, :cond_3

    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v4, :cond_4

    .line 415
    invoke-static {v2}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v6, :cond_5

    if-nez v7, :cond_5

    .line 418
    invoke-static {v2}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v8, 0x1

    :cond_5
    if-nez v5, :cond_6

    if-nez v4, :cond_6

    if-eqz v8, :cond_7

    .line 423
    :cond_6
    iget v1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->val$diskHash:I

    iget-object v4, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->val$size:Landroid/graphics/Rect;

    invoke-static {v3, v1, v2, v4, v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->access$300(Landroid/net/Uri;ILandroid/content/Context;Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_7
    if-nez v1, :cond_8

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->val$generativeArtworkTitle:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 428
    iget-object v1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->val$size:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/GawUtils;->generateArtwork(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_8
    if-nez v1, :cond_9

    .line 432
    iget-object v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->this$0:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget-object v1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->val$decodedListener:Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->access$400(Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)V

    goto :goto_3

    .line 434
    :cond_9
    invoke-static {}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->access$500()Lcom/sonyericsson/music/artdecoder/BitmapMemoryCache;

    move-result-object v0

    iget v2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->val$memHash:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->this$0:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget-object v2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;->val$decodedListener:Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->access$600(Lcom/sonyericsson/music/artdecoder/ArtDecoder;Landroid/graphics/Bitmap;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    :goto_3
    return-void
.end method
