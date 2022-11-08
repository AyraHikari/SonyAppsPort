.class public Lcom/android/quickstep/TaskThumbnailCache;
.super Ljava/lang/Object;
.source "TaskThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;
    }
.end annotation


# instance fields
.field private final mBgExecutor:Ljava/util/concurrent/Executor;

.field private final mCache:Lcom/android/quickstep/util/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/util/TaskKeyLruCache<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheSize:I

.field private final mEnableTaskSnapshotPreloading:Z

.field private final mHighResLoadingState:Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCache(Lcom/android/quickstep/TaskThumbnailCache;)Lcom/android/quickstep/util/TaskKeyLruCache;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TaskThumbnailCache;->mCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smsupportsLowResThumbnails()Z
    .locals 1

    invoke-static {}, Lcom/android/quickstep/TaskThumbnailCache;->supportsLowResThumbnails()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgExecutor"    # Ljava/util/concurrent/Executor;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/android/quickstep/TaskThumbnailCache;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 95
    new-instance v0, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;-><init>(Landroid/content/Context;Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState-IA;)V

    iput-object v0, p0, Lcom/android/quickstep/TaskThumbnailCache;->mHighResLoadingState:Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$integer;->recentsThumbnailCacheSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/TaskThumbnailCache;->mCacheSize:I

    .line 99
    sget v2, Lcom/android/launcher3/R$bool;->config_enableTaskSnapshotPreloading:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/quickstep/TaskThumbnailCache;->mEnableTaskSnapshotPreloading:Z

    .line 100
    new-instance v2, Lcom/android/quickstep/util/TaskKeyLruCache;

    invoke-direct {v2, v1}, Lcom/android/quickstep/util/TaskKeyLruCache;-><init>(I)V

    iput-object v2, p0, Lcom/android/quickstep/TaskThumbnailCache;->mCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    .line 101
    return-void
.end method

.method static synthetic lambda$updateThumbnailInBackground$1(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0
    .param p0, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "t"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 146
    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 147
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method static synthetic lambda$updateThumbnailInCache$0(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0
    .param p0, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p1, "t"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 114
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    return-void
.end method

.method private static supportsLowResThumbnails()Z
    .locals 5

    .line 222
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 223
    .local v0, "res":Landroid/content/res/Resources;
    const-string v1, "config_lowResTaskSnapshotScale"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 224
    .local v1, "resId":I
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 225
    const/4 v3, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 227
    :cond_1
    return v2
.end method

.method private updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZLjava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;
    .locals 3
    .param p1, "key"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .param p2, "lowResolution"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)",
            "Lcom/android/quickstep/util/CancellableTask;"
        }
    .end annotation

    .line 153
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 155
    iget-object v0, p0, Lcom/android/quickstep/TaskThumbnailCache;->mCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 156
    .local v0, "cachedThumbnail":Lcom/android/systemui/shared/recents/model/ThumbnailData;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->reducedResolution:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    .line 159
    :cond_0
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 160
    const/4 v1, 0x0

    return-object v1

    .line 163
    :cond_1
    new-instance v1, Lcom/android/quickstep/TaskThumbnailCache$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/quickstep/TaskThumbnailCache$1;-><init>(Lcom/android/quickstep/TaskThumbnailCache;Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZLjava/util/function/Consumer;)V

    .line 176
    .local v1, "request":Lcom/android/quickstep/util/CancellableTask;, "Lcom/android/quickstep/util/CancellableTask<Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    iget-object v2, p0, Lcom/android/quickstep/TaskThumbnailCache;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 177
    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/quickstep/TaskThumbnailCache;->mCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskKeyLruCache;->evictAll()V

    .line 185
    return-void
.end method

.method public getCacheSize()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/android/quickstep/TaskThumbnailCache;->mCacheSize:I

    return v0
.end method

.method public getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/quickstep/TaskThumbnailCache;->mHighResLoadingState:Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    return-object v0
.end method

.method public isPreloadingEnabled()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/android/quickstep/TaskThumbnailCache;->mEnableTaskSnapshotPreloading:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/TaskThumbnailCache;->mHighResLoadingState:Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    invoke-static {v0}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->-$$Nest$fgetmVisible(Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 1
    .param p1, "key"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 191
    iget-object v0, p0, Lcom/android/quickstep/TaskThumbnailCache;->mCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 192
    return-void
.end method

.method public updateTaskSnapShot(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "thumbnail"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 122
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 123
    iget-object v0, p0, Lcom/android/quickstep/TaskThumbnailCache;->mCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/util/TaskKeyLruCache;->updateIfAlreadyInCache(ILjava/lang/Object;)V

    .line 124
    return-void
.end method

.method public updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;
    .locals 4
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)",
            "Lcom/android/quickstep/util/CancellableTask;"
        }
    .end annotation

    .line 134
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 136
    iget-object v0, p0, Lcom/android/quickstep/TaskThumbnailCache;->mHighResLoadingState:Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 137
    .local v0, "lowResolution":Z
    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-boolean v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->reducedResolution:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 142
    const/4 v1, 0x0

    return-object v1

    .line 145
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v2, p0, Lcom/android/quickstep/TaskThumbnailCache;->mHighResLoadingState:Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    invoke-virtual {v2}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->isEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    new-instance v3, Lcom/android/quickstep/TaskThumbnailCache$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, p2}, Lcom/android/quickstep/TaskThumbnailCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/android/quickstep/TaskThumbnailCache;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZLjava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object v1

    return-object v1
.end method

.method public updateThumbnailInCache(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 107
    if-nez p1, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 112
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/quickstep/TaskThumbnailCache$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/quickstep/TaskThumbnailCache$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/quickstep/TaskThumbnailCache;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZLjava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    .line 116
    :cond_1
    return-void
.end method
