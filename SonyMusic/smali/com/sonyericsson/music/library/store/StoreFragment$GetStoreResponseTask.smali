.class Lcom/sonyericsson/music/library/store/StoreFragment$GetStoreResponseTask;
.super Landroid/os/AsyncTask;
.source "StoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/store/StoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetStoreResponseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/music/library/store/StoreResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x500000

.field private static final CACHE_TIME_EXPIRE:I = 0xa

.field private static sOkHttpClient:Lokhttp3/OkHttpClient;


# instance fields
.field private final mCacheDirectory:Ljava/io/File;

.field private final mForceNoCache:Z

.field private mFragRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/library/store/StoreFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/store/StoreFragment;Ljava/io/File;Z)V
    .locals 1

    .line 413
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 414
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment$GetStoreResponseTask;->mFragRef:Ljava/lang/ref/WeakReference;

    .line 415
    iput-object p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment$GetStoreResponseTask;->mCacheDirectory:Ljava/io/File;

    .line 416
    iput-boolean p3, p0, Lcom/sonyericsson/music/library/store/StoreFragment$GetStoreResponseTask;->mForceNoCache:Z

    return-void
.end method

.method private static declared-synchronized getOkHttpClient(Ljava/io/File;)Lokhttp3/OkHttpClient;
    .locals 5

    const-class v0, Lcom/sonyericsson/music/library/store/StoreFragment$GetStoreResponseTask;

    monitor-enter v0

    .line 468
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/library/store/StoreFragment$GetStoreResponseTask;->sOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 469
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 470
    new-instance v2, Lokhttp3/Cache;

    const-wide/32 v3, 0x500000

    invoke-direct {v2, p0, v3, v4}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 471
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/music/library/store/StoreFragment$GetStoreResponseTask;->sOkHttpClient:Lokhttp3/OkHttpClient;

    .line 473
    :cond_0
    sget-object p0, Lcom/sonyericsson/music/library/store/StoreFragment$GetStoreResponseTask;->sOkHttpClient:Lokhttp3/OkHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/sonyericsson/music/library/store/StoreResponse;
    .locals 6

    const/4 v0, 0x0

    .line 424
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 425
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreFragment$GetStoreResponseTask;->mCacheDirectory:Ljava/io/File;

    invoke-static {p1}, Lcom/sonyericsson/music/library/store/StoreFragment$GetStoreResponseTask;->getOkHttpClient(Ljava/io/File;)Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 426
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 429
    iget-boolean v3, p0, Lcom/sonyericsson/music/library/store/StoreFragment$GetStoreResponseTask;->mForceNoCache:Z

    if-eqz v3, :cond_0

    .line 430
    new-instance v3, Lokhttp3/CacheControl$Builder;

    invoke-direct {v3}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v3}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    invoke-virtual {v3}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v3

    goto :goto_0

    .line 432
    :cond_0
    new-instance v3, Lokhttp3/CacheControl$Builder;

    invoke-direct {v3}, Lokhttp3/CacheControl$Builder;-><init>()V

    const/16 v4, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 433
    invoke-virtual {v3, v4, v5}, Lokhttp3/CacheControl$Builder;->maxAge(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    invoke-virtual {v3}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v3

    .line 435
    :goto_0
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 436
    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 437
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/gson/JsonIOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 439
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object p1

    const-class v3, Lcom/sonyericsson/music/library/store/MoraResponse;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/store/StoreResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/gson/JsonIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, p1

    :cond_1
    if-eqz v1, :cond_2

    .line 450
    :try_start_2
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 452
    sget-object v1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const-class v2, Lcom/sonyericsson/music/library/store/StoreFragment;

    invoke-virtual {v1, v2, p1}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception p1

    move-object v1, v0

    .line 446
    :goto_1
    :try_start_3
    sget-object v2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const-class v3, Lcom/sonyericsson/music/library/store/StoreFragment;

    invoke-virtual {v2, v3, p1}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    .line 450
    :try_start_4
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_5
    move-exception p1

    move-object v1, v0

    .line 444
    :goto_2
    :try_start_5
    sget-object v2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const-class v3, Lcom/sonyericsson/music/library/store/StoreFragment;

    invoke-virtual {v2, v3, p1}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_2

    .line 450
    :try_start_6
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :catch_6
    move-exception p1

    move-object v1, v0

    .line 442
    :goto_3
    :try_start_7
    sget-object v2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const-class v3, Lcom/sonyericsson/music/library/store/StoreFragment;

    invoke-virtual {v2, v3, p1}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_2

    .line 450
    :try_start_8
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_2
    :goto_4
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_3

    :try_start_9
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    move-exception v0

    .line 452
    sget-object v1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const-class v2, Lcom/sonyericsson/music/library/store/StoreFragment;

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 455
    :cond_3
    :goto_6
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 396
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/store/StoreFragment$GetStoreResponseTask;->doInBackground([Ljava/lang/String;)Lcom/sonyericsson/music/library/store/StoreResponse;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/sonyericsson/music/library/store/StoreResponse;)V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment$GetStoreResponseTask;->mFragRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/store/StoreFragment;

    if-eqz v0, :cond_0

    .line 463
    iget-boolean v1, p0, Lcom/sonyericsson/music/library/store/StoreFragment$GetStoreResponseTask;->mForceNoCache:Z

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/music/library/store/StoreFragment;->setStoreResponse(Lcom/sonyericsson/music/library/store/StoreResponse;Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 396
    check-cast p1, Lcom/sonyericsson/music/library/store/StoreResponse;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/store/StoreFragment$GetStoreResponseTask;->onPostExecute(Lcom/sonyericsson/music/library/store/StoreResponse;)V

    return-void
.end method
