.class public Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;
.super Ljava/lang/Object;
.source "LandingPageArtUriCache.java"


# static fields
.field private static INSTANCE:Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache; = null

.field private static final MAX_SIZE:I = 0x32


# instance fields
.field private final mUriCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;

    invoke-direct {v0}, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->INSTANCE:Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->mUriCache:Landroidx/collection/LruCache;

    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;
    .locals 1

    .line 24
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->INSTANCE:Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addDefaultToCache(Landroid/net/Uri;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 29
    monitor-exit p0

    return-void

    .line 31
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->mUriCache:Landroidx/collection/LruCache;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addUriToCache(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->mUriCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 36
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized clearCache()V
    .locals 1

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->mUriCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCacheByUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 43
    monitor-exit p0

    return-object p1

    .line 45
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->mUriCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeFromCache(Landroid/net/Uri;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 54
    monitor-exit p0

    return-void

    .line 56
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtUriCache;->mUriCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
