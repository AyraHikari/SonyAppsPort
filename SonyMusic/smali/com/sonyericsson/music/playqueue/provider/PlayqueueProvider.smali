.class public Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;
.super Landroid/content/ContentProvider;
.source "PlayqueueProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;,
        Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$SaveObject;,
        Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;,
        Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;,
        Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CloudContentObserver;,
        Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;,
        Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;,
        Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;
    }
.end annotation


# static fields
.field private static final ENTRY_SOURCE_PROJECTION:[Ljava/lang/String;

.field private static final MATCH_ENTRY_SOURCE_ID:I = 0x14

.field private static final MATCH_LAST_PLAYED_INFO:I = 0xa

.field private static final MATCH_PATH_PLAYQUEUE:I = 0x0

.field private static final MATCH_PATH_PLAYQUEUE_ID:I = 0x1

.field private static final PATH_PLAYQUEUE:Ljava/lang/String; = "playqueue"

.field private static final PATH_PLAYQUEUE_ID:Ljava/lang/String; = "playqueue/#"

.field private static final QUERY_PARAMETER_OBSERVER_REGISTRATION:Ljava/lang/String; = "register_observer"

.field private static final REGISTER_OBSERVERS:I = 0x8

.field private static final SAVE_CACHE:I = 0x1

.field private static final SYNC_PLAYQUEUE_ALL:I = 0x7

.field private static final SYNC_PLAYQUEUE_CLOUD:I = 0x5

.field private static final SYNC_PLAYQUEUE_CLOUD_FORCED:I = 0x6

.field private static final SYNC_PLAYQUEUE_MEDIASTORE:I = 0x3

.field private static final SYNC_PLAYQUEUE_MEDIASTORE_FORCED:I = 0x4

.field private static final UNREGISTER_OBSERVERS:I = 0x9

.field private static final UPDATE_CACHE:I = 0x2

.field private static volatile sTestMode:Z


# instance fields
.field mCacheInsertMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloudContentObserver:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CloudContentObserver;

.field final mCloudContentObserverExternalLock:Ljava/lang/Object;

.field volatile mDatabaseHelper:Lcom/sonyericsson/music/playqueue/provider/PlayqueueDatabaseHelper;

.field mInserts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mLatch:Ljava/util/concurrent/CountDownLatch;

.field final mMediaContentObserverExternal:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;

.field final mMediaContentObserverExternalLock:Ljava/lang/Object;

.field private mMediaStoreReceiverRegistered:Z

.field private final mMediaStoreScannerReceiver:Landroid/content/BroadcastReceiver;

.field mMemCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mMemCacheLock:Ljava/lang/Object;

.field private mRegisteredCloudContentObserver:Z

.field private mRegisteredMediaExternalContentObserver:Z

.field final mSyncHandler:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

.field private volatile mTestMode:Z

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    .line 100
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "uri"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "play_order"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->ENTRY_SOURCE_PROJECTION:[Ljava/lang/String;

    .line 107
    sput-boolean v2, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->sTestMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 195
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 105
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mTestMode:Z

    .line 117
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCacheLock:Ljava/lang/Object;

    .line 119
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMediaContentObserverExternalLock:Ljava/lang/Object;

    .line 121
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mCloudContentObserverExternalLock:Ljava/lang/Object;

    .line 127
    new-instance v1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;-><init>(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)V

    iput-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMediaContentObserverExternal:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;

    .line 129
    iput-boolean v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mRegisteredMediaExternalContentObserver:Z

    .line 131
    new-instance v1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CloudContentObserver;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CloudContentObserver;-><init>(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)V

    iput-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mCloudContentObserver:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CloudContentObserver;

    .line 133
    iput-boolean v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mRegisteredCloudContentObserver:Z

    .line 135
    iput-boolean v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMediaStoreReceiverRegistered:Z

    .line 137
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 163
    new-instance v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$1;-><init>(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMediaStoreScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    invoke-static {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;->createPlayQueueProviderHandler(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mSyncHandler:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->unregisterMediaExternalContentObserver()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->registerMediaExternalContentObserver()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mTestMode:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->updatePlayqueueMediaStore(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->updatePlayqueueCloudMusicInfoStore(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->registerObservers()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->unregisterObservers()V

    return-void
.end method

.method static enableTestMode(Z)V
    .locals 0

    .line 1029
    sput-boolean p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->sTestMode:Z

    return-void
.end method

.method public static getContentUriRegisterObserver(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 68
    invoke-static {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->getPlayqueueContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "register_observer"

    const-string v1, "value"

    .line 69
    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getPlayqueueContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f10025f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/playqueue"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private move(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 4

    const-string v0, "play_order"

    .line 959
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 960
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 961
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_0

    return v2

    .line 967
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-ge p1, p2, :cond_4

    .line 969
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    .line 970
    iget v3, v2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    if-ne v3, p1, :cond_2

    .line 971
    iput p2, v2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    goto :goto_0

    :cond_2
    if-le v3, p1, :cond_1

    if-gt v3, p2, :cond_1

    add-int/lit8 v3, v3, -0x1

    .line 973
    iput v3, v2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    goto :goto_0

    :cond_3
    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    move v2, p2

    goto :goto_2

    .line 978
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    .line 979
    iget v3, v2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    if-ne v3, p1, :cond_6

    .line 980
    iput p2, v2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    goto :goto_1

    :cond_6
    if-lt v3, p2, :cond_5

    if-ge v3, p1, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 982
    iput v3, v2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    goto :goto_1

    :cond_7
    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    move v2, p1

    .line 989
    :goto_2
    sget-object p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->sPlayOrderComparator:Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 990
    iput-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    :cond_8
    return v2
.end method

.method private registerCloudContentObserver()V
    .locals 5

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mCloudContentObserverExternalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mRegisteredCloudContentObserver:Z

    if-nez v1, :cond_0

    .line 314
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 315
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mCloudContentObserver:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CloudContentObserver;

    const/4 v4, 0x1

    .line 314
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 316
    iput-boolean v4, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mRegisteredCloudContentObserver:Z

    .line 318
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerMediaExternalContentObserver()V
    .locals 5

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMediaContentObserverExternalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mRegisteredMediaExternalContentObserver:Z

    if-nez v1, :cond_0

    .line 293
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMediaContentObserverExternal:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v1, 0x1

    .line 296
    iput-boolean v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mRegisteredMediaExternalContentObserver:Z

    .line 298
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerObservers()V
    .locals 3

    .line 997
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 999
    iget-boolean v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMediaStoreReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 1000
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 1001
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    .line 1002
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    .line 1003
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1004
    iget-object v2, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMediaStoreScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 1005
    iput-boolean v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMediaStoreReceiverRegistered:Z

    .line 1008
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1011
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->registerMediaExternalContentObserver()V

    .line 1014
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->registerCloudContentObserver()V

    return-void
.end method

.method private unregisterCloudContentObserver()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mCloudContentObserverExternalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mRegisteredCloudContentObserver:Z

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mCloudContentObserver:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CloudContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    .line 325
    iput-boolean v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mRegisteredCloudContentObserver:Z

    .line 327
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unregisterMediaExternalContentObserver()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMediaContentObserverExternalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mRegisteredMediaExternalContentObserver:Z

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMediaContentObserverExternal:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    .line 306
    iput-boolean v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mRegisteredMediaExternalContentObserver:Z

    .line 308
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unregisterObservers()V
    .locals 2

    .line 1018
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1019
    iget-boolean v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMediaStoreReceiverRegistered:Z

    if-eqz v1, :cond_0

    .line 1020
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMediaStoreScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1021
    iput-boolean v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMediaStoreReceiverRegistered:Z

    .line 1024
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->unregisterMediaExternalContentObserver()V

    .line 1025
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->unregisterCloudContentObserver()V

    return-void
.end method

.method private updateDatabase()V
    .locals 5

    .line 942
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mSyncHandler:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 944
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 946
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mInserts:Ljava/util/List;

    if-eqz v1, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 948
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mCacheInsertMap:Ljava/util/List;

    if-eqz v1, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_2
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 951
    :goto_2
    new-instance v1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$SaveObject;

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$SaveObject;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 952
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private updatePlayqueue(Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;Landroid/content/Context;)V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    iget-object v2, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mCacheInsertMap:Ljava/util/List;

    .line 241
    invoke-virtual {p1, p2, v1, v2}, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;->updatePlayqueue(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 244
    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    .line 246
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p2}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->getPlayqueueContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 248
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->updateDatabase()V

    .line 250
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updatePlayqueueCloudMusicInfoStore(Landroid/content/Context;)V
    .locals 1

    .line 234
    new-instance v0, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$UpdateCloudStoreItemsInPlayqueue;

    invoke-direct {v0}, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$UpdateCloudStoreItemsInPlayqueue;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->updatePlayqueue(Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;Landroid/content/Context;)V

    return-void
.end method

.method private updatePlayqueueMediaStore(Landroid/content/Context;)V
    .locals 1

    .line 230
    new-instance v0, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$UpdateMediaStoreItemsInPlayqueue;

    invoke-direct {v0}, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$UpdateMediaStoreItemsInPlayqueue;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->updatePlayqueue(Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;Landroid/content/Context;)V

    return-void
.end method

.method private waitForPersistentData()V
    .locals 1

    .line 935
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 11

    .line 628
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const-string p1, "SemcMusicPlayer"

    const-string p2, "Unauthorized write attempt blocked"

    .line 629
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 633
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->waitForPersistentData()V

    if-eqz p2, :cond_a

    .line 639
    array-length v0, p2

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const-string p2, "SemcMusicPlayer"

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bulkInsert, unexpected uri: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 647
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 649
    array-length v4, p2

    if-lez v4, :cond_7

    const-string v4, "insert_id"

    .line 651
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 656
    sget-object v5, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->sInsertIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 657
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    .line 658
    new-instance v6, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;

    invoke-direct {v6, v5, v4}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;-><init>(ILjava/lang/String;)V

    .line 659
    iget-object v4, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mInserts:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v9, v6

    goto :goto_0

    :cond_2
    move-object v9, v1

    :goto_0
    const-string v4, "position"

    .line 663
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 665
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 666
    iget-object v5, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 667
    monitor-exit v0

    goto :goto_4

    .line 670
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 672
    iget-object v6, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    iget-object v8, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mCacheInsertMap:Ljava/util/List;

    move-object v5, v2

    move-object v7, p2

    invoke-static/range {v4 .. v9}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->insertAtPosition(ILjava/util/List;Ljava/util/List;[Landroid/content/ContentValues;Ljava/util/List;Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;)V

    .line 675
    iput-object v2, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    goto :goto_3

    .line 678
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    .line 679
    invoke-static {v4, v2}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->createMemCache(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    .line 681
    array-length v5, p2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_5

    aget-object v7, p2, v6

    .line 683
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    iget-object v10, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mCacheInsertMap:Ljava/util/List;

    .line 682
    invoke-static {v4, v7, v8, v10, v9}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->addEntryToMemCache(Ljava/util/List;Landroid/content/ContentValues;ILjava/util/List;Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    const-string p2, "shuffle"

    .line 686
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 689
    invoke-static {v4}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 691
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    add-int/lit8 v6, v2, 0x1

    .line 692
    iput v2, v5, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    move v2, v6

    goto :goto_2

    .line 695
    :cond_6
    iput-object v4, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    .line 698
    :goto_3
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    move v2, p2

    :cond_7
    if-lez v2, :cond_8

    .line 701
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->updateDatabase()V

    .line 703
    :cond_8
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :goto_4
    :pswitch_1
    if-lez v2, :cond_9

    .line 719
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_9
    return v2

    :cond_a
    :goto_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 732
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p3

    const/4 v0, 0x0

    if-eq p2, p3, :cond_0

    const-string p1, "SemcMusicPlayer"

    const-string p2, "Unauthorized write attempt blocked"

    .line 733
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string p2, "register_observer"

    .line 740
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 742
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mSyncHandler:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return v0

    .line 746
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->waitForPersistentData()V

    .line 748
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    const-string p2, "SemcMusicPlayer"

    .line 811
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete, unexpected uri: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 793
    :pswitch_0
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCacheLock:Ljava/lang/Object;

    monitor-enter p2

    .line 794
    :try_start_0
    iget-object p3, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    .line 795
    invoke-static {p3, v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->createMemCache(Ljava/util/List;I)Ljava/util/List;

    move-result-object p3

    .line 796
    new-instance v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    invoke-direct {v0}, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;-><init>()V

    .line 797
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    .line 798
    invoke-interface {p3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-lez v0, :cond_2

    .line 800
    invoke-static {p3}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->correctPlayOrder(Ljava/util/List;)V

    .line 801
    iput-object p3, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    .line 802
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->updateDatabase()V

    .line 804
    :cond_2
    monitor-exit p2

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 750
    :pswitch_1
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCacheLock:Ljava/lang/Object;

    monitor-enter p2

    .line 751
    :try_start_1
    iget-object p3, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    if-eqz p3, :cond_5

    const-string p3, "position"

    .line 753
    invoke-virtual {p1, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 755
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 756
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p3, v1, :cond_3

    .line 757
    monitor-exit p2

    goto :goto_1

    .line 760
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    .line 761
    invoke-static {v1, v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->createMemCache(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 762
    invoke-interface {v0, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    .line 763
    invoke-static {v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->correctPlayOrder(Ljava/util/List;)V

    .line 764
    iput-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    const/4 v0, 0x1

    .line 768
    new-instance v1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;

    iget-wide v2, p3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    const/4 p3, -0x1

    invoke-direct {v1, v2, v3, p3, p3}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;-><init>(JII)V

    .line 770
    iget-object v2, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mCacheInsertMap:Ljava/util/List;

    sget-object v3, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;->sIdComparator:Ljava/util/Comparator;

    invoke-static {v2, v1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-le v1, p3, :cond_5

    .line 773
    iget-object p3, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mCacheInsertMap:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 777
    :cond_4
    sget-object p3, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;->MEMCACHE:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    invoke-static {p3, v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->resetIdCounter(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;I)V

    .line 778
    iget-object p3, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 779
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    .line 780
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mCacheInsertMap:Ljava/util/List;

    .line 782
    sget-object v1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;->INSERTS:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    invoke-static {v1, v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->resetIdCounter(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;I)V

    .line 783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mInserts:Ljava/util/List;

    move v0, p3

    :cond_5
    :goto_0
    if-lez v0, :cond_6

    .line 787
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->updateDatabase()V

    .line 789
    :cond_6
    monitor-exit p2

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :goto_1
    if-lez v0, :cond_7

    .line 817
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_7
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "vnd.android.cursor.item/audio"

    goto :goto_0

    :pswitch_1
    const-string p1, "vnd.android.cursor.dir/audio"

    goto :goto_0

    :cond_0
    const-string p1, "vnd.android.cursor.item/last_played_info"

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10

    .line 521
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const-string p1, "SemcMusicPlayer"

    const-string p2, "Unauthorized write attempt blocked"

    .line 522
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const-string v0, "register_observer"

    .line 529
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 531
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mSyncHandler:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    .line 532
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-object v2

    .line 537
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->waitForPersistentData()V

    if-nez p2, :cond_3

    return-object v2

    .line 545
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_0

    const-string p2, "SemcMusicPlayer"

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert, unexpected uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 547
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "insert_id"

    .line 550
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 554
    sget-object v3, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->sInsertIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 555
    new-instance v4, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;

    invoke-direct {v4, v3, v1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;-><init>(ILjava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mInserts:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v4

    goto :goto_0

    :cond_4
    move-object v8, v2

    :goto_0
    const-string v1, "position"

    .line 561
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 563
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 564
    iget-object v4, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v1, v4, :cond_5

    .line 565
    monitor-exit v0

    goto/16 :goto_3

    .line 568
    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 569
    iget-object v5, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    new-array v6, v3, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    aput-object p2, v6, v3

    iget-object v7, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mCacheInsertMap:Ljava/util/List;

    move v3, v1

    move-object v4, v9

    invoke-static/range {v3 .. v8}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->insertAtPosition(ILjava/util/List;Ljava/util/List;[Landroid/content/ContentValues;Ljava/util/List;Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;)V

    .line 571
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    iget-wide v3, p2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    .line 572
    iput-object v9, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    goto :goto_1

    .line 575
    :cond_6
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    .line 576
    invoke-static {v1, v3}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->createMemCache(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 578
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mCacheInsertMap:Ljava/util/List;

    .line 577
    invoke-static {v1, p2, v4, v5, v8}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->addEntryToMemCache(Ljava/util/List;Landroid/content/ContentValues;ILjava/util/List;Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;)V

    .line 579
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    iget-wide v3, p2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    .line 580
    iput-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    .line 583
    :goto_1
    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_7

    const-wide/16 v5, -0x1

    cmp-long p2, v3, v5

    if-eqz p2, :cond_7

    .line 584
    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 586
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->updateDatabase()V

    goto :goto_2

    :cond_7
    move-object p1, v2

    .line 590
    :cond_8
    :goto_2
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 597
    :cond_9
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mDatabaseHelper:Lcom/sonyericsson/music/playqueue/provider/PlayqueueDatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 598
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    const-string v0, "last_played"

    const-string v1, "1"

    .line 601
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "last_played"

    .line 603
    invoke-virtual {p1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 604
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 606
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_3
    :pswitch_1
    move-object p1, v2

    :goto_4
    if-eqz p1, :cond_a

    .line 620
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_a
    return-object p1

    :catchall_1
    move-exception p2

    .line 606
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 607
    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 5

    .line 205
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10025f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "playqueue"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "playqueue/#"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 208
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "lastplayed"

    const/16 v4, 0xa

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 209
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "playqueue_entry_source/#"

    const/16 v4, 0x14

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    sget-boolean v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->sTestMode:Z

    iput-boolean v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mTestMode:Z

    .line 214
    iget-boolean v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mTestMode:Z

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mInserts:Ljava/util/List;

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mCacheInsertMap:Ljava/util/List;

    .line 219
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 219
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 222
    :cond_0
    :goto_0
    new-instance v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mDatabaseHelper:Lcom/sonyericsson/music/playqueue/provider/PlayqueueDatabaseHelper;

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mSyncHandler:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 436
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->waitForPersistentData()V

    .line 444
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3

    const/16 p3, 0x14

    if-eq v0, p3, :cond_0

    goto/16 :goto_1

    .line 480
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p4

    if-ne p3, p4, :cond_7

    if-nez p2, :cond_1

    .line 482
    sget-object p2, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->ENTRY_SOURCE_PROJECTION:[Ljava/lang/String;

    .line 485
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 489
    new-instance p4, Ljava/util/ArrayList;

    iget-object p5, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    invoke-direct {p4, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 490
    new-instance p5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mCacheInsertMap:Ljava/util/List;

    invoke-direct {p5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mInserts:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 493
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_2

    .line 494
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    goto :goto_0

    :cond_2
    move-object p3, v1

    :goto_0
    if-eqz p3, :cond_7

    .line 496
    iget-wide p3, p3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    .line 497
    invoke-static {p3, p4, p2, v0, p5}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->getInsertInfo(J[Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroid/database/Cursor;

    move-result-object p2

    move-object v1, p2

    goto :goto_1

    .line 469
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 470
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mDatabaseHelper:Lcom/sonyericsson/music/playqueue/provider/PlayqueueDatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 471
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string p1, "last_played"

    .line 472
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 473
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1

    :cond_5
    const/4 p3, 0x1

    .line 448
    iget-boolean p4, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mTestMode:Z

    if-nez p4, :cond_6

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x17

    if-lt p4, p5, :cond_6

    .line 449
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p3

    .line 451
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    const-string p5, "android.permission.READ_EXTERNAL_STORAGE"

    .line 452
    invoke-static {p4, p3, p5}, Lcom/sonyericsson/music/common/PermissionUtils;->isPermissionGrantedForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    :cond_6
    if-eqz p3, :cond_7

    .line 459
    iget-object p3, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    if-eqz p3, :cond_7

    .line 460
    new-instance v1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueCursor;

    invoke-direct {v1, p3, p2}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueCursor;-><init>(Ljava/util/List;[Ljava/lang/String;)V

    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 509
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-interface {v1, p2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_8
    return-object v1
.end method

.method removeNonMusicPlayerItems(Landroid/content/Context;)V
    .locals 7

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    const/4 v2, 0x0

    .line 264
    invoke-static {v1, v2}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->createMemCache(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 265
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    .line 268
    iget-object v6, v5, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTrackUri:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/sonyericsson/music/common/DBUtils;->isPlayQueueModeUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 269
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    .line 274
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 279
    invoke-static {v1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->correctPlayOrder(Ljava/util/List;)V

    .line 280
    iput-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    .line 281
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->updateDatabase()V

    .line 283
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->getPlayqueueContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_5
    return-void

    .line 258
    :cond_6
    :goto_2
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 283
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mDatabaseHelper:Lcom/sonyericsson/music/playqueue/provider/PlayqueueDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 405
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mSyncHandler:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 407
    invoke-super {p0}, Landroid/content/ContentProvider;->shutdown()V

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .line 826
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p4

    const/4 v0, 0x0

    if-eq p3, p4, :cond_0

    const-string p1, "SemcMusicPlayer"

    const-string p2, "Unauthorized write attempt blocked"

    .line 827
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 831
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->waitForPersistentData()V

    .line 839
    iget-object p3, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    const/4 p4, 0x0

    packed-switch p3, :pswitch_data_0

    const-string p2, "SemcMusicPlayer"

    .line 921
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update, unexpected uri: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 903
    :pswitch_0
    iget-object p3, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCacheLock:Ljava/lang/Object;

    monitor-enter p3

    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    .line 905
    invoke-static {v1, v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->createMemCache(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 906
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 907
    invoke-static {v1, v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->findPositionForId(ILjava/util/List;)I

    move-result v1

    .line 909
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 908
    invoke-static {v1, p2, v0, v2}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->updateValues(ILandroid/content/ContentValues;Ljava/util/List;Landroid/content/Context;)I

    move-result p2

    .line 910
    iput-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    if-lez p2, :cond_1

    .line 912
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->updateDatabase()V

    .line 914
    :cond_1
    monitor-exit p3

    move v0, p2

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 841
    :pswitch_1
    iget-object p3, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCacheLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_1
    const-string v1, "restore"

    .line 844
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 846
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    .line 847
    invoke-static {v1, v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->createMemCache(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 848
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    .line 849
    iget v4, v3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mBackupPlayOrder:I

    iput v4, v3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    goto :goto_0

    .line 851
    :cond_2
    sget-object v2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->sPlayOrderComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 852
    iput-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    .line 853
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const-string v2, "reshuffle"

    .line 860
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "shuffle"

    .line 863
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_a

    :cond_4
    const/4 v1, -0x1

    if-eqz v3, :cond_5

    .line 867
    invoke-static {p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal;->getPositionParameterFromContentUri(Landroid/net/Uri;)I

    move-result v2

    goto :goto_2

    :cond_5
    const/4 v2, -0x1

    .line 868
    :goto_2
    iget-object v4, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    .line 869
    invoke-static {v4, v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->createMemCache(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    if-le v2, v1, :cond_6

    .line 872
    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    goto :goto_3

    :cond_6
    move-object v1, p4

    .line 874
    :goto_3
    invoke-static {v4}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    if-eqz v1, :cond_7

    .line 876
    invoke-interface {v4, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 879
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    if-eqz v3, :cond_8

    .line 882
    iget v5, v2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    iput v5, v2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mBackupPlayOrder:I

    :cond_8
    add-int/lit8 v5, v0, 0x1

    .line 884
    iput v0, v2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    move v0, v5

    goto :goto_4

    .line 886
    :cond_9
    iput-object v4, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    .line 887
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_a
    const-string v0, "move"

    .line 891
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 893
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->move(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p2

    move v0, p2

    goto :goto_5

    :cond_b
    move v0, v1

    :goto_5
    if-lez v0, :cond_c

    .line 897
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->updateDatabase()V

    .line 899
    :cond_c
    monitor-exit p3

    goto :goto_6

    :catchall_1
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :goto_6
    if-lez v0, :cond_d

    .line 927
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_d
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
