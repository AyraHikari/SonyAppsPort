.class public abstract Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;
.super Ljava/lang/Object;
.source "UpdatePlayQueueItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$UpdateCloudStoreItemsInPlayqueue;,
        Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$UpdateMediaStoreItemsInPlayqueue;,
        Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;
    }
.end annotation


# instance fields
.field private final mColumnsMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 29
    array-length v0, p1

    if-lez v0, :cond_0

    .line 30
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;->mColumnsMappings:Ljava/util/List;

    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;->mColumnsMappings:Ljava/util/List;

    :goto_0
    return-void
.end method


# virtual methods
.method public getContentValues(Landroid/database/Cursor;Landroid/content/Context;)Landroid/content/ContentValues;
    .locals 5

    .line 45
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    if-eqz p1, :cond_3

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;->mColumnsMappings:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;

    .line 48
    iget-object v2, v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mDestColumnName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 49
    iget v2, v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mSrcIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 67
    iget v2, v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mSrcIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 68
    iget v3, v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mType:I

    goto :goto_1

    .line 62
    :pswitch_0
    iget-object v2, v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mDestColumnName:Ljava/lang/String;

    iget v1, v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mSrcIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object v2, v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mDestColumnName:Ljava/lang/String;

    iget v1, v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mSrcIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_2
    iget-object v2, v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mDestColumnName:Ljava/lang/String;

    iget v1, v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mSrcIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 53
    :pswitch_3
    iget-object v2, v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mDestColumnName:Ljava/lang/String;

    iget v1, v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mSrcIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :goto_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    iget-object v1, v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mDestColumnName:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_2
    iget-object v1, v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mDestColumnName:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_3
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getItemsInPlayqueue(Ljava/util/List;)Ljava/util/List;
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
.end method

.method protected abstract getStorageItems(Landroid/content/Context;Ljava/util/List;)Landroid/database/Cursor;
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
.end method

.method protected abstract getStorageTrackId(Landroid/database/Cursor;)I
.end method

.method protected abstract isNewMetadataAvailable(Landroid/database/Cursor;)Z
.end method

.method protected abstract isPermissionGranted(Landroid/content/Context;)Z
.end method

.method public updateCursorMappingIndexesFromCursor(Landroid/database/Cursor;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;->mColumnsMappings:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;

    .line 39
    iget-object v2, v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mSrcColumnName:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems$ColumnNameMapping;->mSrcIndex:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updatePlayqueue(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;->isPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 105
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;->getItemsInPlayqueue(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 106
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_7

    .line 109
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;

    .line 114
    iget v4, v4, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;->mTrackId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;->getStorageItems(Landroid/content/Context;Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_c

    const/4 v3, 0x0

    .line 122
    :try_start_0
    invoke-static {p2, v3}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->createMemCache(Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    .line 126
    sget-object v4, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->sIdComparator:Ljava/util/Comparator;

    invoke-static {p2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;->updateCursorMappingIndexesFromCursor(Landroid/database/Cursor;)V

    .line 131
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;

    .line 137
    iget v7, v6, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;->mTrackId:I

    .line 140
    invoke-interface {v2}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 141
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 144
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_6

    .line 145
    invoke-virtual {p0, v2}, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;->getStorageTrackId(Landroid/database/Cursor;)I

    move-result v8

    if-ne v8, v7, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    if-le v8, v7, :cond_6

    goto :goto_2

    .line 153
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_4

    :goto_2
    const/4 v7, 0x0

    .line 155
    :goto_3
    iget-wide v8, v6, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$IdEntry;->mId:J

    long-to-int v6, v8

    invoke-static {v6, p2}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->findPositionForIdBinarySearch(ILjava/util/List;)I

    move-result v6

    if-eqz v7, :cond_7

    .line 159
    invoke-virtual {p0, v2}, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;->isNewMetadataAvailable(Landroid/database/Cursor;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 161
    invoke-virtual {p0, v2, p1}, Lcom/sonyericsson/music/playqueue/provider/UpdatePlayQueueItems;->getContentValues(Landroid/database/Cursor;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v7

    .line 162
    invoke-static {v6, v7, p2, p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->updateValues(ILandroid/content/ContentValues;Ljava/util/List;Landroid/content/Context;)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    :cond_7
    if-ltz v6, :cond_3

    .line 167
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 168
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 175
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 177
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v4, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 180
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 181
    invoke-interface {p2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    .line 182
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 186
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    .line 187
    new-instance v3, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;

    iget-wide v6, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    const/4 v0, -0x1

    invoke-direct {v3, v6, v7, v0, v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;-><init>(JII)V

    .line 188
    invoke-interface {p3, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    if-lez v5, :cond_b

    .line 196
    sget-object p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->sPlayOrderComparator:Ljava/util/Comparator;

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 197
    invoke-static {p2}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->correctPlayOrder(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p2

    .line 201
    :cond_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_0
    move-exception p1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 202
    throw p1

    :cond_c
    :goto_6
    return-object v1

    :cond_d
    :goto_7
    return-object v1
.end method
