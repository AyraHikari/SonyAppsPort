.class Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;
.super Ljava/lang/Object;
.source "PlayqueueProviderUtils.java"


# static fields
.field private static final CLOUD_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;

.field static sInsertIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field static sMemCacheIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x8

    .line 36
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "album"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "album_id"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "artist"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "artist_id"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "duration"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "title"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "_data"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sput-object v1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->PROJECTION:[Ljava/lang/String;

    .line 43
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "title"

    aput-object v1, v0, v7

    const-string v1, "file_path"

    aput-object v1, v0, v8

    const-string v1, "art_path"

    aput-object v1, v0, v9

    const-string v1, "has_metadata"

    aput-object v1, v0, v10

    sput-object v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->CLOUD_PROJECTION:[Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->sMemCacheIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->sInsertIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addEntryToMemCache(Ljava/util/List;Landroid/content/ContentValues;ILjava/util/List;Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;",
            "Landroid/content/ContentValues;",
            "I",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;",
            ">;",
            "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 281
    new-instance v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    invoke-direct {v0}, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;-><init>()V

    .line 283
    sget-object v1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->sMemCacheIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    int-to-long v2, v1

    .line 284
    iput-wide v2, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    .line 285
    iput p2, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    .line 286
    iput v1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mBackupPlayOrder:I

    const-string p2, "album"

    .line 287
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbum:Ljava/lang/String;

    const-string p2, "artist"

    .line 288
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtist:Ljava/lang/String;

    const-string p2, "track_uri"

    .line 289
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTrackUri:Ljava/lang/String;

    const-string p2, "title"

    .line 290
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTitle:Ljava/lang/String;

    const-string p2, "_data"

    .line 291
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mData:Ljava/lang/String;

    const-string p2, "duration"

    .line 292
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mDuration:J

    const-string p2, "available"

    .line 293
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    const-string p2, "available"

    .line 294
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    .line 293
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long p2, v5, v7

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 294
    :goto_0
    iput-boolean p2, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAvailable:Z

    const-string p2, "album_id"

    .line 295
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p2

    const-wide/16 v5, -0x1

    if-eqz p2, :cond_2

    const-string p2, "album_id"

    .line 296
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    .line 295
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_1

    :cond_2
    move-wide v7, v5

    .line 296
    :goto_1
    iput-wide v7, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbumId:J

    const-string p2, "artist_id"

    .line 297
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "artist_id"

    .line 298
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    .line 297
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 298
    :cond_3
    iput-wide v5, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtistId:J

    const-string p2, "hd_audio"

    .line 299
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "hd_audio"

    .line 300
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 299
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    .line 300
    :goto_2
    iput-boolean v4, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mHDAudio:Z

    .line 302
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_7

    const-string p0, "source_play_order"

    .line 307
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "source_play_order"

    .line 308
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 307
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 309
    :cond_6
    new-instance p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;

    iget p1, p4, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;->mId:I

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;-><init>(JII)V

    .line 311
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method static correctPlayOrder(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;)V"
        }
    .end annotation

    .line 194
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    .line 195
    iput v0, v1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static createListOfCloudItemsInPlayqueue(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    .line 164
    iget-object v2, v1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTrackUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTrackUri:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/music/common/DBUtils;->isUriCloudFileType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, v1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTrackUri:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->getTrackIdFromTrackUri(Ljava/lang/String;)I

    move-result v2

    .line 166
    new-instance v3, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;

    invoke-direct {v3}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;-><init>()V

    .line 167
    iget-wide v4, v1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    iput-wide v4, v3, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;->mId:J

    .line 168
    iput v2, v3, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;->mTrackId:I

    .line 169
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static createListOfMediaStoreItemsInPlayqueue(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    .line 140
    iget-object v3, v2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTrackUri:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, v2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTrackUri:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->getTrackIdFromTrackUri(Ljava/lang/String;)I

    move-result v3

    .line 142
    new-instance v4, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;

    invoke-direct {v4}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;-><init>()V

    .line 143
    iget-wide v5, v2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    iput-wide v5, v4, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;->mId:J

    .line 144
    iput v3, v4, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;->mTrackId:I

    .line 145
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static createMemCache(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 415
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, p1

    goto :goto_1

    .line 415
    :cond_1
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    return-object p0
.end method

.method static findPositionForId(ILjava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 209
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 210
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    .line 211
    iget-wide v1, v1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    int-to-long v3, p0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static findPositionForIdBinarySearch(ILjava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;)I"
        }
    .end annotation

    .line 227
    new-instance v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    invoke-direct {v0}, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;-><init>()V

    int-to-long v1, p0

    .line 228
    iput-wide v1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    .line 229
    sget-object p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->sIdComparator:Ljava/util/Comparator;

    invoke-static {p1, v0, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    return p0
.end method

.method static getCloudItemsWithIds(Landroid/content/Context;Ljava/util/List;)Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 112
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\'"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ","

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, ")"

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "_id"

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->CLOUD_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static getInsertInfo(J[Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroid/database/Cursor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 375
    new-instance v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;-><init>(JII)V

    .line 376
    sget-object p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;->sIdComparator:Ljava/util/Comparator;

    invoke-static {p4, v0, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    const/4 p1, 0x0

    if-le p0, v1, :cond_2

    .line 380
    invoke-interface {p4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;

    .line 381
    iget p4, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;->mInsertId:I

    .line 382
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;

    .line 383
    iget v2, v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;->mId:I

    if-ne v2, p4, :cond_0

    .line 384
    iget-object p3, v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;->mUri:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p3, p1

    .line 388
    :goto_0
    iget p0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;->mSourcePlayOrder:I

    goto :goto_1

    :cond_2
    move-object p3, p1

    const/4 p0, -0x1

    :goto_1
    if-eqz p3, :cond_6

    if-le p0, v1, :cond_6

    .line 392
    new-instance p1, Landroid/database/MatrixCursor;

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 393
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 394
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    aget-object v2, p2, v1

    const-string v3, "uri"

    .line 395
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 396
    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    const-string v3, "play_order"

    .line 398
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 399
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 402
    :cond_5
    invoke-virtual {p1, p4}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    :cond_6
    return-object p1
.end method

.method static getMediaStoreItemsWithIds(Landroid/content/Context;Ljava/util/List;)Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 80
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\'"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ","

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, ")"

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "_id"

    const/4 p1, 0x0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method static getTrackIdFromTrackUri(Ljava/lang/String;)I
    .locals 2

    const-string v0, "/"

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 183
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static insertAtPosition(ILjava/util/List;Ljava/util/List;[Landroid/content/ContentValues;Ljava/util/List;Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;[",
            "Landroid/content/ContentValues;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;",
            ">;",
            "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 250
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_0
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 256
    aget-object v1, p3, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v1, v2, p4, p5}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->addEntryToMemCache(Ljava/util/List;Landroid/content/ContentValues;ILjava/util/List;Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge p0, p3, :cond_2

    .line 262
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    .line 263
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    iput p4, p3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    .line 264
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static resetIdCounter(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;I)V
    .locals 1

    .line 321
    sget-object v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils$1;->$SwitchMap$com$sonyericsson$music$playqueue$provider$PlayqueueProvider$TableType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 327
    :pswitch_0
    sget-object p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->sInsertIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 323
    :pswitch_1
    sget-object p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->sMemCacheIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static updateValues(ILandroid/content/ContentValues;Ljava/util/List;Landroid/content/Context;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/ContentValues;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    if-ltz p0, :cond_3

    .line 346
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge p0, p3, :cond_3

    .line 348
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    .line 349
    new-instance v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    invoke-direct {v0, p3}, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;-><init>(Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;)V

    const-string v1, "album"

    .line 350
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbum:Ljava/lang/String;

    const-string v1, "artist"

    .line 351
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtist:Ljava/lang/String;

    const-string v1, "title"

    .line 352
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTitle:Ljava/lang/String;

    const-string v1, "duration"

    .line 353
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    iput-wide v1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mDuration:J

    const-string v1, "album_id"

    .line 355
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    const-string v1, "album_id"

    .line 356
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 355
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide v4, v2

    .line 356
    :goto_1
    iput-wide v4, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbumId:J

    const-string v1, "artist_id"

    .line 357
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "artist_id"

    .line 358
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    .line 357
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 358
    :cond_2
    iput-wide v2, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtistId:J

    .line 359
    invoke-virtual {v0, p3}, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 361
    invoke-interface {p2, p0, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return p1
.end method
