.class public Lcom/sonyericsson/music/library/FolderLoader;
.super Landroidx/loader/content/CursorLoader;
.source "FolderLoader.java"


# instance fields
.field private mFolderId:Ljava/lang/String;

.field private volatile mIsObserverRegistered:Z

.field private mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance p1, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-direct {p1, p0}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Landroidx/loader/content/Loader;)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/FolderLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/sonyericsson/music/library/FolderLoader;->mIsObserverRegistered:Z

    .line 34
    iput-object p2, p0, Lcom/sonyericsson/music/library/FolderLoader;->mFolderId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 5

    .line 41
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 44
    iget-object v2, p0, Lcom/sonyericsson/music/library/FolderLoader;->mFolderId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sonyericsson/music/common/FolderUtils;->getAudioFilesFromFolder(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    invoke-static {v1, v3, v4}, Lcom/sonyericsson/music/common/HDAudioUtils;->getHDContent(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;)Ljava/util/HashSet;

    move-result-object v1

    .line 50
    new-instance v3, Lcom/sonyericsson/music/common/HighResAttachedCursor;

    invoke-direct {v3, v2, v1}, Lcom/sonyericsson/music/common/HighResAttachedCursor;-><init>(Landroid/database/Cursor;Ljava/util/HashSet;)V

    move-object v1, v3

    .line 53
    :cond_0
    iget-boolean v2, p0, Lcom/sonyericsson/music/library/FolderLoader;->mIsObserverRegistered:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isReset()Z

    move-result v2

    if-nez v2, :cond_2

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-boolean v2, p0, Lcom/sonyericsson/music/library/FolderLoader;->mIsObserverRegistered:Z

    if-nez v2, :cond_1

    const-string v2, "external"

    .line 56
    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 57
    iget-object v3, p0, Lcom/sonyericsson/music/library/FolderLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 59
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/library/FolderLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/FolderLoader;->mIsObserverRegistered:Z

    .line 63
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/FolderLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 2

    .line 72
    invoke-super {p0}, Landroidx/loader/content/CursorLoader;->onReset()V

    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/FolderLoader;->mIsObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/music/library/FolderLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/FolderLoader;->mIsObserverRegistered:Z

    .line 80
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
