.class public Lcom/android/quickstep/util/TaskKeyLruCache;
.super Ljava/lang/Object;
.source "TaskKeyLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;,
        Lcom/android/quickstep/util/TaskKeyLruCache$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMap:Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 34
    .local p0, "this":Lcom/android/quickstep/util/TaskKeyLruCache;, "Lcom/android/quickstep/util/TaskKeyLruCache<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    invoke-direct {v0, p1}, Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskKeyLruCache;->mMap:Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    .line 36
    return-void
.end method

.method static synthetic lambda$removeAll$0(Ljava/util/function/Predicate;Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "keyCheck"    # Ljava/util/function/Predicate;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 56
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;

    iget-object v0, v0, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;->mKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-interface {p0, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized evictAll()V
    .locals 1

    .local p0, "this":Lcom/android/quickstep/util/TaskKeyLruCache;, "Lcom/android/quickstep/util/TaskKeyLruCache<TV;>;"
    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/android/quickstep/util/TaskKeyLruCache;->mMap:Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 41
    .end local p0    # "this":Lcom/android/quickstep/util/TaskKeyLruCache;, "Lcom/android/quickstep/util/TaskKeyLruCache<TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lcom/android/quickstep/util/TaskKeyLruCache;, "Lcom/android/quickstep/util/TaskKeyLruCache<TV;>;"
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/quickstep/util/TaskKeyLruCache;->mMap:Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;

    .line 65
    .local v0, "entry":Lcom/android/quickstep/util/TaskKeyLruCache$Entry;, "Lcom/android/quickstep/util/TaskKeyLruCache$Entry<TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;->mKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    iget v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;->mKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-wide v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    iget-wide v3, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 67
    iget-object v1, v0, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;->mValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 69
    .end local p0    # "this":Lcom/android/quickstep/util/TaskKeyLruCache;, "Lcom/android/quickstep/util/TaskKeyLruCache<TV;>;"
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 62
    .end local v0    # "entry":Lcom/android/quickstep/util/TaskKeyLruCache$Entry;, "Lcom/android/quickstep/util/TaskKeyLruCache$Entry<TV;>;"
    .end local p1    # "key":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "TV;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/quickstep/util/TaskKeyLruCache;, "Lcom/android/quickstep/util/TaskKeyLruCache<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 78
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/quickstep/util/TaskKeyLruCache;->mMap:Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;

    invoke-direct {v2, p1, p2}, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    .end local p0    # "this":Lcom/android/quickstep/util/TaskKeyLruCache;, "Lcom/android/quickstep/util/TaskKeyLruCache<TV;>;"
    :cond_0
    const-string v0, "TaskKeyCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected null key or value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    .end local p1    # "key":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 2
    .param p1, "key"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .local p0, "this":Lcom/android/quickstep/util/TaskKeyLruCache;, "Lcom/android/quickstep/util/TaskKeyLruCache<TV;>;"
    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/android/quickstep/util/TaskKeyLruCache;->mMap:Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 48
    .end local p0    # "this":Lcom/android/quickstep/util/TaskKeyLruCache;, "Lcom/android/quickstep/util/TaskKeyLruCache<TV;>;"
    .end local p1    # "key":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAll(Ljava/util/function/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/quickstep/util/TaskKeyLruCache;, "Lcom/android/quickstep/util/TaskKeyLruCache<TV;>;"
    .local p1, "keyCheck":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/systemui/shared/recents/model/Task$TaskKey;>;"
    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/quickstep/util/TaskKeyLruCache;->mMap:Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/util/TaskKeyLruCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/quickstep/util/TaskKeyLruCache$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Predicate;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 55
    .end local p0    # "this":Lcom/android/quickstep/util/TaskKeyLruCache;, "Lcom/android/quickstep/util/TaskKeyLruCache<TV;>;"
    .end local p1    # "keyCheck":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/systemui/shared/recents/model/Task$TaskKey;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateIfAlreadyInCache(ILjava/lang/Object;)V
    .locals 2
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/quickstep/util/TaskKeyLruCache;, "Lcom/android/quickstep/util/TaskKeyLruCache<TV;>;"
    .local p2, "data":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/quickstep/util/TaskKeyLruCache;->mMap:Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;

    .line 90
    .local v0, "entry":Lcom/android/quickstep/util/TaskKeyLruCache$Entry;, "Lcom/android/quickstep/util/TaskKeyLruCache$Entry<TV;>;"
    if-eqz v0, :cond_0

    .line 91
    iput-object p2, v0, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;->mValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local p0    # "this":Lcom/android/quickstep/util/TaskKeyLruCache;, "Lcom/android/quickstep/util/TaskKeyLruCache<TV;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 88
    .end local v0    # "entry":Lcom/android/quickstep/util/TaskKeyLruCache$Entry;, "Lcom/android/quickstep/util/TaskKeyLruCache$Entry<TV;>;"
    .end local p1    # "taskId":I
    .end local p2    # "data":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
