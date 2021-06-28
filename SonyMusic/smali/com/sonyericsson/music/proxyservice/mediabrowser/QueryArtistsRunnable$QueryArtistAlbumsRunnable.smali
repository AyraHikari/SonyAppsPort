.class Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryArtistsRunnable$QueryArtistAlbumsRunnable;
.super Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;
.source "QueryArtistsRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryArtistsRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryArtistAlbumsRunnable"
.end annotation


# instance fields
.field private final mArtistUri:Ljava/lang/String;


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

    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, p1, p3, v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;-><init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompat$Result;Z)V

    .line 118
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryArtistsRunnable$QueryArtistAlbumsRunnable;->mArtistUri:Ljava/lang/String;

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

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/PermissionUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 128
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryArtistsRunnable$QueryArtistAlbumsRunnable;->mArtistUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/common/DBUtils;->parseMediaStoreArtistId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 132
    invoke-static {v2, v3}, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->getUri(J)Landroid/net/Uri;

    move-result-object v5

    .line 133
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->getColumns(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->getSelection()Ljava/lang/String;

    move-result-object v7

    .line 135
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v8

    .line 136
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryArtistAlbumsQueryParams;->getSortOrder()Ljava/lang/String;

    move-result-object v9

    .line 139
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 144
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sonyericsson/music/common/DBUtils;->getCursorWithId(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    :try_start_1
    const-string v4, "_id"

    .line 147
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "album"

    .line 148
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "artist"

    .line 149
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 151
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 152
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 153
    iget-object v9, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    .line 154
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 153
    invoke-static {v9, v10}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 155
    iget-object v10, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    .line 156
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 155
    invoke-static {v10, v11}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 158
    sget-object v11, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 160
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 158
    invoke-static {v11, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 162
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v11, "android.media.extra.BT_FOLDER_TYPE"

    const-wide/16 v12, 0x2

    .line 163
    invoke-virtual {v8, v11, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 167
    new-instance v11, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v11}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 169
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 170
    invoke-virtual {v11, v7}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 171
    invoke-virtual {v11, v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 172
    invoke-virtual {v11, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 173
    invoke-virtual {v11, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 174
    invoke-virtual {v11, v8}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 175
    invoke-virtual {v11}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v7

    .line 177
    new-instance v8, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    const/4 v9, 0x1

    invoke-direct {v8, v7, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 179
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v1, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 185
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v3, :cond_3

    .line 188
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_3
    throw v0

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 185
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v1, :cond_6

    .line 188
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v0
.end method
