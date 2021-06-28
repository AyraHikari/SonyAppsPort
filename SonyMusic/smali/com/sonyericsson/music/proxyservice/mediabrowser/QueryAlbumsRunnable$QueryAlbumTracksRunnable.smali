.class Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryAlbumsRunnable$QueryAlbumTracksRunnable;
.super Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;
.source "QueryAlbumsRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryAlbumsRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryAlbumTracksRunnable"
.end annotation


# instance fields
.field private final mAlbumUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p3, v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;-><init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompat$Result;Z)V

    .line 117
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryAlbumsRunnable$QueryAlbumTracksRunnable;->mAlbumUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getMediaItems()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/PermissionUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 126
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryAlbumsRunnable$QueryAlbumTracksRunnable;->mAlbumUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/common/DBUtils;->parseMediaStoreAlbumId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 130
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryAlbumTracksQueryParams;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 131
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryAlbumTracksQueryParams;->getColumns()[Ljava/lang/String;

    move-result-object v6

    .line 132
    invoke-static {v2, v3}, Lcom/sonyericsson/music/common/LibraryAlbumTracksQueryParams;->getSelection(J)Ljava/lang/String;

    move-result-object v7

    .line 133
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryAlbumTracksQueryParams;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v8

    .line 134
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryAlbumTracksQueryParams;->getSortOrder()Ljava/lang/String;

    move-result-object v9

    .line 136
    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "title"

    .line 142
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "album"

    .line 143
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 145
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 146
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 147
    iget-object v9, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    .line 148
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 147
    invoke-static {v9, v10}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 150
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v11, "android.media.extra.BT_FOLDER_TYPE"

    const-wide/16 v12, 0x1

    .line 151
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 154
    sget-object v11, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 155
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 154
    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    add-int/lit8 v12, v5, 0x1

    invoke-static {v11, v5}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId;->build(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    .line 157
    new-instance v11, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v11}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 158
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 159
    invoke-virtual {v11, v5}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 160
    invoke-virtual {v11, v8}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 161
    invoke-virtual {v11, v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 162
    invoke-virtual {v11, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 163
    invoke-virtual {v11, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 164
    invoke-virtual {v11}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v5

    .line 166
    new-instance v8, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    const/4 v9, 0x2

    invoke-direct {v8, v5, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 167
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v12

    goto :goto_0

    .line 170
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 171
    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method
