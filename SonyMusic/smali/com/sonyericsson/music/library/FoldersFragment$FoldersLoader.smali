.class Lcom/sonyericsson/music/library/FoldersFragment$FoldersLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "FoldersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/FoldersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FoldersLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Ljava/util/Set<",
        "Lcom/sonyericsson/music/common/Folder;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private volatile mIsObserverRegistered:Z

.field private mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader<",
            "Ljava/util/Set<",
            "Lcom/sonyericsson/music/common/Folder;",
            ">;>.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 355
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/FoldersFragment$FoldersLoader;->mIsObserverRegistered:Z

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/FoldersFragment$FoldersLoader;->mAppContext:Landroid/content/Context;

    .line 357
    new-instance p1, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-direct {p1, p0}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Landroidx/loader/content/Loader;)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/FoldersFragment$FoldersLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 346
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/FoldersFragment$FoldersLoader;->loadInBackground()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sonyericsson/music/common/Folder;",
            ">;"
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment$FoldersLoader;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/common/FolderUtils;->getFolderSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 369
    iget-boolean v1, p0, Lcom/sonyericsson/music/library/FoldersFragment$FoldersLoader;->mIsObserverRegistered:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isReset()Z

    move-result v1

    if-nez v1, :cond_2

    .line 370
    monitor-enter p0

    .line 371
    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/music/library/FoldersFragment$FoldersLoader;->mIsObserverRegistered:Z

    if-nez v1, :cond_0

    const-string v1, "external"

    .line 372
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 373
    iget-object v2, p0, Lcom/sonyericsson/music/library/FoldersFragment$FoldersLoader;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/music/library/FoldersFragment$FoldersLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v1, 0x1

    .line 375
    iput-boolean v1, p0, Lcom/sonyericsson/music/library/FoldersFragment$FoldersLoader;->mIsObserverRegistered:Z

    .line 377
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected onReset()V
    .locals 2

    .line 392
    invoke-super {p0}, Landroidx/loader/content/Loader;->onReset()V

    .line 394
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    .line 395
    monitor-enter p0

    .line 396
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/FoldersFragment$FoldersLoader;->mIsObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment$FoldersLoader;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/library/FoldersFragment$FoldersLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v0, 0x0

    .line 399
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/FoldersFragment$FoldersLoader;->mIsObserverRegistered:Z

    .line 400
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onStartLoading()V
    .locals 0

    .line 386
    invoke-super {p0}, Landroidx/loader/content/Loader;->onStartLoading()V

    .line 387
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    return-void
.end method
