.class public Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;
.super Lcom/sonyericsson/music/common/BackgroundLoader;
.source "ArtObservingBackgroundLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/music/common/BackgroundLoader<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mAppContext:Landroid/content/Context;

.field private final mOrderBy:Ljava/lang/String;

.field mPermission:Ljava/lang/String;

.field private mPermissionForLatestLoad:Ljava/lang/Boolean;

.field private final mPlaylistArtObserver:Landroid/database/ContentObserver;

.field private mPlaylistArtObserverRegistered:Z

.field private final mProjection:[Ljava/lang/String;

.field private final mRegisterPlaylistArtObserver:Z

.field private final mSelection:Ljava/lang/String;

.field private final mSelectionArgs:[Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private final mUriObserver:Landroid/database/ContentObserver;

.field private mUriObserverRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/common/BackgroundLoader;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Landroidx/loader/content/Loader;)V

    iput-object v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mUriObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mPermissionForLatestLoad:Ljava/lang/Boolean;

    .line 41
    new-instance v1, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader$1;-><init>(Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mPlaylistArtObserver:Landroid/database/ContentObserver;

    .line 62
    iput-object p8, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mPermission:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mAppContext:Landroid/content/Context;

    .line 64
    iput-boolean p7, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mRegisterPlaylistArtObserver:Z

    .line 66
    iput-object p2, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mUri:Landroid/net/Uri;

    if-eqz p3, :cond_0

    .line 67
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mProjection:[Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mSelection:Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 70
    array-length p1, p5

    invoke-static {p5, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    :cond_1
    iput-object v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 71
    iput-object p6, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mOrderBy:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 106
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->close(Landroid/database/Cursor;)V

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isPermissionGranted()Z
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mPermission:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mPermission:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/PermissionUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 7

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->loadPermissionForLatestLoad()V

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mPermissionForLatestLoad:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mSelection:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v6, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mOrderBy:Ljava/lang/String;

    .line 89
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected loadPermissionForLatestLoad()V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->isPermissionGranted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mPermissionForLatestLoad:Ljava/lang/Boolean;

    return-void
.end method

.method protected onReset()V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mRegisterPlaylistArtObserver:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mPlaylistArtObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 136
    iput-boolean v1, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mPlaylistArtObserverRegistered:Z

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mPlaylistArtObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mUriObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 142
    iput-boolean v1, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mUriObserverRegistered:Z

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mUriObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 145
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 147
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/sonyericsson/music/common/BackgroundLoader;->onReset()V

    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mRegisterPlaylistArtObserver:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mPlaylistArtObserverRegistered:Z

    if-nez v0, :cond_0

    .line 115
    iput-boolean v1, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mPlaylistArtObserverRegistered:Z

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/playlist/provider/PlaylistArtStore;->getBaseUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 117
    iget-object v2, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mPlaylistArtObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mUriObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    iput-boolean v1, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mUriObserverRegistered:Z

    .line 126
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 128
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/sonyericsson/music/common/BackgroundLoader;->onStartLoading()V

    return-void
.end method

.method public playlistArtChanged(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public shouldLoaderBeRestarted()Z
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->isPermissionGranted()Z

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mPermission:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mPermissionForLatestLoad:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
