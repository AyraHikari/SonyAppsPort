.class public Lcom/airbnb/lottie/manager/ImageAssetManager;
.super Ljava/lang/Object;
.source "ImageAssetManager.java"


# static fields
.field private static final bitmapHashLock:Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;

.field private delegate:Lcom/airbnb/lottie/ImageAssetDelegate;

.field private final imageAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private imagesFolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmapHashLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/ImageAssetDelegate;Ljava/util/Map;)V
    .locals 3
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;
    .param p2, "imagesFolder"    # Ljava/lang/String;
    .param p3, "delegate"    # Lcom/airbnb/lottie/ImageAssetDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable$Callback;",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/ImageAssetDelegate;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p4, "imageAssets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 38
    :cond_0
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_1

    .line 39
    const-string v0, "LottieDrawable must be inside of a view for images to work."

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    .line 42
    return-void

    .line 45
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    .line 46
    iput-object p4, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 47
    invoke-virtual {p0, p3}, Lcom/airbnb/lottie/manager/ImageAssetManager;->setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 48
    return-void
.end method

.method private putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 126
    sget-object v0, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmapHashLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-virtual {v1, p2}, Lcom/airbnb/lottie/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    monitor-exit v0

    return-object p2

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieImageAsset;

    .line 71
    .local v0, "asset":Lcom/airbnb/lottie/LottieImageAsset;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 72
    return-object v1

    .line 74
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 75
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 76
    return-object v2

    .line 79
    :cond_1
    iget-object v3, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->delegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    if-eqz v3, :cond_3

    .line 80
    invoke-interface {v3, v0}, Lcom/airbnb/lottie/ImageAssetDelegate;->fetchBitmap(Lcom/airbnb/lottie/LottieImageAsset;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 81
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 82
    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 84
    :cond_2
    return-object v1

    .line 87
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "filename":Ljava/lang/String;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    .local v4, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 90
    const/16 v6, 0xa0

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 92
    const-string v6, "data:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "base64,"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_4

    .line 96
    const/16 v6, 0x2c

    :try_start_0
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .local v1, "data":[B
    nop

    .line 101
    array-length v5, v1

    invoke-static {v1, v6, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 102
    invoke-direct {p0, p1, v2}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5

    .line 97
    .end local v1    # "data":[B
    :catch_0
    move-exception v5

    .line 98
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "data URL did not have correct base64 format."

    invoke-static {v6, v5}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    return-object v1

    .line 107
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 111
    iget-object v5, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .local v5, "is":Ljava/io/InputStream;
    nop

    .line 116
    invoke-static {v5, v1, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 117
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getHeight()I

    move-result v6

    invoke-static {v1, v2, v6}, Lcom/airbnb/lottie/utils/Utils;->resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 118
    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 108
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    :try_start_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "asset":Lcom/airbnb/lottie/LottieImageAsset;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local p0    # "this":Lcom/airbnb/lottie/manager/ImageAssetManager;
    .end local p1    # "id":Ljava/lang/String;
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 112
    .restart local v0    # "asset":Lcom/airbnb/lottie/LottieImageAsset;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local p0    # "this":Lcom/airbnb/lottie/manager/ImageAssetManager;
    .restart local p1    # "id":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 113
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "Unable to open asset."

    invoke-static {v6, v5}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    return-object v1
.end method

.method public hasSameContext(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .locals 0
    .param p1, "assetDelegate"    # Lcom/airbnb/lottie/ImageAssetDelegate;

    .line 51
    iput-object p1, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->delegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    .line 52
    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 58
    if-nez p2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieImageAsset;

    .line 60
    .local v0, "asset":Lcom/airbnb/lottie/LottieImageAsset;
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 61
    .local v1, "ret":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    return-object v1

    .line 64
    .end local v0    # "asset":Lcom/airbnb/lottie/LottieImageAsset;
    .end local v1    # "ret":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    .local v0, "prevBitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 66
    return-object v0
.end method
