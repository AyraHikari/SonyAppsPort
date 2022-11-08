.class public Lcom/sonyericsson/music/artdecoder/ArtDecoder;
.super Ljava/lang/Object;
.source "ArtDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/artdecoder/ArtDecoder$CachingColorOnDecodedListener;,
        Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MEMORY_HEAP_CACHE_SIZE:I = 0x400000

.field private static final DISC_CACHE_SIZE:I = 0x1400000

.field private static final DOWNLOAD_AUTHORITY:Ljava/lang/String; = "download"

.field private static final MEDIA_STORE_AUTHORITY:Ljava/lang/String; = "media"

.field private static sDiskCache:Lcom/sonyericsson/music/artdecoder/DiskCache;

.field private static sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static sInitCounter:I

.field private static sMemoryCache:Lcom/sonyericsson/music/artdecoder/BitmapMemoryCache;


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreProcessExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mResultsInMainThread:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 163
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 9

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xa

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v8, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->mPreProcessExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->mContext:Ljava/lang/ref/WeakReference;

    .line 179
    iput-boolean p2, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->mResultsInMainThread:Z

    return-void

    .line 175
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parent must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->useDiskCacheForUri(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()Lcom/sonyericsson/music/artdecoder/DiskCache;
    .locals 1

    .line 43
    sget-object v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->sDiskCache:Lcom/sonyericsson/music/artdecoder/DiskCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/artdecoder/ArtDecoder;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->mContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$300(Landroid/net/Uri;ILandroid/content/Context;Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 0

    .line 43
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->getBitmapFromSource(Landroid/net/Uri;ILandroid/content/Context;Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->onImageRetrieveFail(Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)V

    return-void
.end method

.method static synthetic access$500()Lcom/sonyericsson/music/artdecoder/BitmapMemoryCache;
    .locals 1

    .line 43
    sget-object v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->sMemoryCache:Lcom/sonyericsson/music/artdecoder/BitmapMemoryCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/music/artdecoder/ArtDecoder;Landroid/graphics/Bitmap;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->onImageRetrieveSuccess(Landroid/graphics/Bitmap;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/music/artdecoder/ArtDecoder;Landroid/graphics/Bitmap;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->callOnDecodedMain(Landroid/graphics/Bitmap;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)V

    return-void
.end method

.method private callOnDecodedMain(Landroid/graphics/Bitmap;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)V
    .locals 1

    .line 473
    new-instance v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$5;-><init>(Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static clearDefaultCache()V
    .locals 1

    .line 267
    sget-object v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->sDiskCache:Lcom/sonyericsson/music/artdecoder/DiskCache;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/DiskCache;->evictAll()V

    .line 271
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->sMemoryCache:Lcom/sonyericsson/music/artdecoder/BitmapMemoryCache;

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    :cond_1
    return-void
.end method

.method public static declared-synchronized deinit()V
    .locals 2

    const-class v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    monitor-enter v0

    .line 257
    :try_start_0
    sget v1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->sInitCounter:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->sInitCounter:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_0

    .line 258
    sget-object v1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getBitmapFromSource(Landroid/net/Uri;ILandroid/content/Context;Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 491
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    .line 492
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 493
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p2, "http"

    .line 494
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "https"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_1

    .line 495
    :cond_3
    :goto_0
    new-instance p2, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    const/4 p2, 0x0

    .line 496
    invoke-virtual {p0, p2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 497
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 525
    :goto_1
    :try_start_1
    invoke-static {p0}, Lcom/sonyericsson/music/common/IOUtils;->readInputStreamFully(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_5

    if-eqz p4, :cond_4

    .line 531
    array-length p2, p0

    if-lez p2, :cond_4

    .line 532
    sget-object p2, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->sDiskCache:Lcom/sonyericsson/music/artdecoder/DiskCache;

    invoke-virtual {p2, p1, p0}, Lcom/sonyericsson/music/artdecoder/DiskCache;->put(I[B)V

    .line 535
    :cond_4
    invoke-static {p0, p3}, Lcom/sonyericsson/music/common/BitmapUtils;->decodeBitmap([BLandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v0

    :catch_1
    move-exception p0

    .line 514
    invoke-static {v0}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 516
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string p2, "eng"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string p2, "userdebug"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    return-object v0

    .line 517
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p0

    .line 506
    invoke-static {v0}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 508
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string p2, "eng"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string p2, "userdebug"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    return-object v0

    .line 509
    :cond_7
    new-instance p1, Ljava/lang/SecurityException;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 503
    :catch_3
    invoke-static {v0}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    .line 500
    :catch_4
    invoke-static {v0}, Lcom/sonyericsson/music/common/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Z)V
    .locals 10

    const-class v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    monitor-enter v0

    .line 238
    :try_start_0
    sget v1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->sInitCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->sInitCounter:I

    if-nez v1, :cond_1

    .line 239
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide/16 v6, 0xa

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Lcom/sonyericsson/music/artdecoder/BlockingStack;

    invoke-direct {v9}, Lcom/sonyericsson/music/artdecoder/BlockingStack;-><init>()V

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 240
    sget-object v1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 241
    sget-object v1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 242
    new-instance v1, Lcom/sonyericsson/music/artdecoder/DiskCache;

    const/high16 v2, 0x1400000

    invoke-direct {v1, p0, v2, p1}, Lcom/sonyericsson/music/artdecoder/DiskCache;-><init>(Landroid/content/Context;IZ)V

    sput-object v1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->sDiskCache:Lcom/sonyericsson/music/artdecoder/DiskCache;

    .line 244
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v3, p0, v1

    if-gez v3, :cond_0

    long-to-double p0, p0

    const-wide v1, 0x3fb999999999999aL    # 0.1

    .line 246
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v1

    double-to-int p0, p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x400000

    .line 248
    :goto_0
    :try_start_1
    new-instance p1, Lcom/sonyericsson/music/artdecoder/BitmapMemoryCache;

    invoke-direct {p1, p0}, Lcom/sonyericsson/music/artdecoder/BitmapMemoryCache;-><init>(I)V

    sput-object p1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->sMemoryCache:Lcom/sonyericsson/music/artdecoder/BitmapMemoryCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private onImageRetrieveFail(Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)V
    .locals 1

    .line 464
    new-instance v0, Lcom/sonyericsson/music/artdecoder/ArtDecoder$4;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$4;-><init>(Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onImageRetrieveSuccess(Landroid/graphics/Bitmap;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z
    .locals 3

    if-eqz p1, :cond_2

    .line 446
    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;->preProcessSynchronous(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->isMain()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 450
    iget-object v1, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->mPreProcessExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/sonyericsson/music/artdecoder/ArtDecoder$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$3;-><init>(Lcom/sonyericsson/music/artdecoder/ArtDecoder;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 447
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;->preProcess(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->callOnDecodedMain(Landroid/graphics/Bitmap;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 458
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->callOnDecodedMain(Landroid/graphics/Bitmap;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)V

    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private onUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 214
    iget-boolean v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->mResultsInMainThread:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 220
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 221
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    .line 215
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static useDiskCacheForUri(Ljava/lang/String;)Z
    .locals 3

    .line 279
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "content"

    .line 281
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "media"

    .line 282
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "download"

    .line 283
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sonyericsson.music.musicinfo"

    .line 284
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->mPreProcessExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public load(Ljava/lang/String;IIILcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 352
    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    move-result p1

    return p1
.end method

.method public load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 372
    invoke-direct {p0, p6}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->onImageRetrieveFail(Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)V

    return v0

    :cond_0
    if-eqz p6, :cond_2

    .line 380
    new-instance v5, Landroid/graphics/Rect;

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    const/4 v0, 0x0

    invoke-direct {v5, v0, v0, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 382
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    mul-int/lit8 p2, p2, 0x1f

    add-int v4, p3, p2

    .line 384
    invoke-static {v4, v5}, Lcom/sonyericsson/music/artdecoder/BitmapMemoryCache;->makeHash(ILandroid/graphics/Rect;)I

    move-result v8

    .line 386
    sget-object p2, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->sMemoryCache:Lcom/sonyericsson/music/artdecoder/BitmapMemoryCache;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    .line 389
    invoke-direct {p0, p2, p6}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->onImageRetrieveSuccess(Landroid/graphics/Bitmap;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    move-result p1

    return p1

    .line 392
    :cond_1
    sget-object p2, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p3, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$2;-><init>(Lcom/sonyericsson/music/artdecoder/ArtDecoder;Ljava/lang/String;ILandroid/graphics/Rect;Ljava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;I)V

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return v0

    .line 377
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "OnDecodedListener must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadIntoFixedSizeImageViewWithGaw(Landroid/widget/ImageView;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 8

    if-nez p2, :cond_0

    .line 303
    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 309
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 313
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 314
    iget v4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_1

    iget v5, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v5, :cond_1

    const/4 v3, 0x0

    .line 315
    new-instance v7, Lcom/sonyericsson/music/artdecoder/ArtDecoder$1;

    invoke-direct {v7, p0, v0, v2}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$1;-><init>(Lcom/sonyericsson/music/artdecoder/ArtDecoder;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    move-object v1, p0

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 331
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method
