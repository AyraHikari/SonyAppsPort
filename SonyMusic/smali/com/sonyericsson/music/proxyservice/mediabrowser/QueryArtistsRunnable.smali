.class Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryArtistsRunnable;
.super Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;
.source "QueryArtistsRunnable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryArtistsRunnable$QueryArtistAlbumsRunnable;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompat$Result;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;Z)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;-><init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompat$Result;Z)V

    return-void
.end method


# virtual methods
.method getMediaItems()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/PermissionUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 52
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 55
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->getArtistsColumns(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->getSelection()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v6

    .line 58
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/music/common/LibraryArtistsQueryParams;->getSortOrder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 60
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 64
    new-instance v3, Lcom/sonyericsson/music/library/ArtistsCursorWrapper;

    invoke-direct {v3, v2}, Lcom/sonyericsson/music/library/ArtistsCursorWrapper;-><init>(Landroid/database/Cursor;)V

    :try_start_0
    const-string v2, "_id"

    .line 67
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v4, "artist_name"

    .line 68
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 70
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 71
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 72
    iget-object v7, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    .line 73
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 72
    invoke-static {v7, v8}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 75
    sget-object v8, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 76
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-static {v8, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 78
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v8, "android.media.extra.BT_FOLDER_TYPE"

    const-wide/16 v9, 0x3

    .line 79
    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->isBrowsable()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 86
    invoke-static {v5, v8}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId;->build(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    .line 88
    :goto_1
    new-instance v8, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v8}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 89
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 90
    invoke-virtual {v8, v5}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 91
    invoke-virtual {v8, v7}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 92
    invoke-virtual {v8, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 93
    invoke-virtual {v8, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 94
    invoke-virtual {v8, v6}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 95
    invoke-virtual {v8}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v5

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->isBrowsable()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x2

    .line 98
    :goto_2
    new-instance v7, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {v7, v5, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 99
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 103
    throw v0

    :cond_4
    :goto_3
    return-object v0
.end method
