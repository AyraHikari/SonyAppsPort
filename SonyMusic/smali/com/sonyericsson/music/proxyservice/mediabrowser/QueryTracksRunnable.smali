.class public Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryTracksRunnable;
.super Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;
.source "QueryTracksRunnable.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;-><init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompat$Result;Z)V

    return-void
.end method


# virtual methods
.method getMediaItems()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/PermissionUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 50
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryTracksQueryParams;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 53
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryTracksQueryParams;->getColumns()[Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryTracksQueryParams;->getSelection()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryTracksQueryParams;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryTracksQueryParams;->getSortOrder()Ljava/lang/String;

    move-result-object v7

    .line 58
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "title"

    .line 64
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "artist"

    .line 65
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 67
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 69
    iget-object v7, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    .line 70
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-static {v7, v8}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "android.media.extra.BT_FOLDER_TYPE"

    const-wide/16 v10, 0x1

    .line 73
    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 76
    sget-object v9, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->TRACKS_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    .line 77
    invoke-virtual {v9}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->getMediaBrowserIdAsUri()Landroid/net/Uri;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    .line 76
    invoke-static {v9, v3}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId;->build(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    .line 79
    new-instance v9, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 80
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 81
    invoke-virtual {v9, v3}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 82
    invoke-virtual {v9, v6}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 83
    invoke-virtual {v9, v7}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 84
    invoke-virtual {v9, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 85
    invoke-virtual {v9, v8}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 86
    invoke-virtual {v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v3

    .line 88
    new-instance v6, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    const/4 v7, 0x2

    invoke-direct {v6, v3, v7}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 89
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v10

    goto :goto_0

    .line 92
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 93
    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public bridge synthetic isBrowsable()Z
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->isBrowsable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic run()V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->run()V

    return-void
.end method
