.class public Lcom/sonyericsson/music/artdecoder/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"

# interfaces
.implements Lcom/sonyericsson/music/artdecoder/FileSizeLruCache$FileSizeLruCacheListener;


# static fields
.field private static final CACHE_REINITIALIZATION_INTERVAL:J = 0x5265c00L

.field private static final MILLISECONDS_UNTIL_AUTO_EVICTION:J = 0x240c8400L

.field private static final SERVICE_CACHE_DIR:Ljava/lang/String; = "/service_cache/"

.field private static final UI_CACHE_DIR:Ljava/lang/String; = "/cache/"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mInitializedDate:J

.field private final mIsServiceProcess:Z

.field private mLruCache:Lcom/sonyericsson/music/artdecoder/FileSizeLruCache;

.field private final mMaxSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/artdecoder/DiskCache;->mAppContext:Landroid/content/Context;

    .line 43
    iput p2, p0, Lcom/sonyericsson/music/artdecoder/DiskCache;->mMaxSize:I

    .line 44
    new-instance p1, Lcom/sonyericsson/music/artdecoder/FileSizeLruCache;

    iget p2, p0, Lcom/sonyericsson/music/artdecoder/DiskCache;->mMaxSize:I

    invoke-direct {p1, p2, p0}, Lcom/sonyericsson/music/artdecoder/FileSizeLruCache;-><init>(ILcom/sonyericsson/music/artdecoder/FileSizeLruCache$FileSizeLruCacheListener;)V

    iput-object p1, p0, Lcom/sonyericsson/music/artdecoder/DiskCache;->mLruCache:Lcom/sonyericsson/music/artdecoder/FileSizeLruCache;

    .line 45
    iput-boolean p3, p0, Lcom/sonyericsson/music/artdecoder/DiskCache;->mIsServiceProcess:Z

    return-void
.end method

.method private getCachePath()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 62
    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/music/artdecoder/DiskCache;->mIsServiceProcess:Z

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/sonyericsson/music/artdecoder/DiskCache;->mAppContext:Landroid/content/Context;

    const-string v2, "/service_cache/"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/artdecoder/DiskCache;->mAppContext:Landroid/content/Context;

    const-string v2, "/cache/"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    return-object v0
.end method

.method private declared-synchronized initAsNeeded()Ljava/io/File;
    .locals 11

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/music/artdecoder/DiskCache;->getCachePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_5

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 126
    iget-wide v4, p0, Lcom/sonyericsson/music/artdecoder/DiskCache;->mInitializedDate:J

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    iget-wide v4, p0, Lcom/sonyericsson/music/artdecoder/DiskCache;->mInitializedDate:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    .line 127
    :cond_1
    iput-wide v2, p0, Lcom/sonyericsson/music/artdecoder/DiskCache;->mInitializedDate:J

    .line 129
    new-instance v0, Lcom/sonyericsson/music/artdecoder/FileSizeLruCache;

    iget v4, p0, Lcom/sonyericsson/music/artdecoder/DiskCache;->mMaxSize:I

    invoke-direct {v0, v4, p0}, Lcom/sonyericsson/music/artdecoder/FileSizeLruCache;-><init>(ILcom/sonyericsson/music/artdecoder/FileSizeLruCache$FileSizeLruCacheListener;)V

    iput-object v0, p0, Lcom/sonyericsson/music/artdecoder/DiskCache;->mLruCache:Lcom/sonyericsson/music/artdecoder/FileSizeLruCache;

    .line 130
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 131
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 133
    new-instance v4, Lcom/sonyericsson/music/artdecoder/DiskCache$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/music/artdecoder/DiskCache$1;-><init>(Lcom/sonyericsson/music/artdecoder/DiskCache;)V

    invoke-static {v0, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 141
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 145
    invoke-static {v6}, Lcom/sonyericsson/music/common/IOUtils;->deleteRecursive(Ljava/io/File;)V

    goto :goto_2

    .line 150
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    const-wide/32 v9, 0x240c8400

    add-long/2addr v7, v9

    cmp-long v9, v2, v7

    if-gtz v9, :cond_4

    .line 151
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v9, v2, v7

    if-gez v9, :cond_3

    goto :goto_1

    .line 154
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/music/artdecoder/DiskCache;->mLruCache:Lcom/sonyericsson/music/artdecoder/FileSizeLruCache;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 152
    :cond_4
    :goto_1
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 159
    :catch_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 166
    :cond_5
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method


# virtual methods
.method public declared-synchronized evictAll()V
    .locals 1

    monitor-enter p0

    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/music/artdecoder/DiskCache;->initAsNeeded()Ljava/io/File;

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/music/artdecoder/DiskCache;->mLruCache:Lcom/sonyericsson/music/artdecoder/FileSizeLruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(I)[B
    .locals 4

    monitor-enter p0

    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/music/artdecoder/DiskCache;->initAsNeeded()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/sonyericsson/music/artdecoder/DiskCache;->mLruCache:Lcom/sonyericsson/music/artdecoder/FileSizeLruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 92
    invoke-static {v1}, Lcom/sonyericsson/music/common/IOUtils;->readFileFully(Ljava/io/File;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 95
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onEntryRemoved(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    if-nez p4, :cond_1

    .line 106
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/music/artdecoder/DiskCache;->getCachePath()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 108
    new-instance p3, Ljava/io/File;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(I[B)V
    .locals 4

    monitor-enter p0

    .line 78
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/music/artdecoder/DiskCache;->initAsNeeded()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/sonyericsson/music/artdecoder/DiskCache;->mLruCache:Lcom/sonyericsson/music/artdecoder/FileSizeLruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    invoke-static {v1, p2}, Lcom/sonyericsson/music/common/IOUtils;->writeFileFully(Ljava/io/File;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
