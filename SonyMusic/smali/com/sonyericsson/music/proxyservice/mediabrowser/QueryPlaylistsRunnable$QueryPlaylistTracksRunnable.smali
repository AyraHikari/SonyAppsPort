.class Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryPlaylistsRunnable$QueryPlaylistTracksRunnable;
.super Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;
.source "QueryPlaylistsRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryPlaylistsRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryPlaylistTracksRunnable"
.end annotation


# instance fields
.field private final mPlaylistUri:Ljava/lang/String;


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

    .line 138
    invoke-direct {p0, p1, p3, v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;-><init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompat$Result;Z)V

    .line 140
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryPlaylistsRunnable$QueryPlaylistTracksRunnable;->mPlaylistUri:Ljava/lang/String;

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

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/PermissionUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 149
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryPlaylistsRunnable$QueryPlaylistTracksRunnable;->mPlaylistUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v2

    .line 153
    invoke-static {v2}, Lcom/sonyericsson/music/common/LibraryPlaylistTracksQueryParams;->getUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 154
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryPlaylistTracksQueryParams;->getColumns()[Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryPlaylistTracksQueryParams;->getSelection()Ljava/lang/String;

    move-result-object v6

    .line 156
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryPlaylistTracksQueryParams;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-static {}, Lcom/sonyericsson/music/common/LibraryPlaylistTracksQueryParams;->getSortOrder()Ljava/lang/String;

    move-result-object v8

    .line 159
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "audio_id"

    .line 165
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "title"

    .line 166
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "artist"

    .line 167
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 169
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 170
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 171
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 172
    iget-object v9, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRunnable;->mAppContext:Landroid/content/Context;

    .line 173
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 172
    invoke-static {v9, v10}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 175
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v11, "android.media.extra.BT_FOLDER_TYPE"

    const-wide/16 v12, 0x1

    .line 176
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    add-int/lit8 v11, v4, 0x1

    .line 179
    invoke-static {v2, v4}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId;->build(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    .line 180
    new-instance v12, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v12}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 181
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 182
    invoke-virtual {v12, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 183
    invoke-virtual {v12, v8}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 184
    invoke-virtual {v12, v9}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 185
    invoke-virtual {v12, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 186
    invoke-virtual {v12, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 187
    invoke-virtual {v12}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v4

    .line 189
    new-instance v8, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    const/4 v9, 0x2

    invoke-direct {v8, v4, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 190
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v11

    goto :goto_0

    .line 193
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 194
    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method
