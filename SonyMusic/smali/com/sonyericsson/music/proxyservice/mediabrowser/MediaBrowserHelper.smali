.class public Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;
.super Ljava/lang/Object;
.source "MediaBrowserHelper.java"


# static fields
.field private static final ROOT:Ljava/lang/String; = "com.sonyericsson.music.mediabrowser.root"

.field private static final ROOT_FULL_LIBRARY_BROWSE:Ljava/lang/String; = "com.sonyericsson.music.mediabrowser.root.full_library_browse"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageValidator:Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;

.field private mQueryHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    .line 52
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "QueryThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    .line 57
    new-instance p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mPackageValidator:Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;

    return-void
.end method

.method private createCategoriesForRoot(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    sget-object v1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->RECENTLY_PLAYED:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->getCategoryDescription(Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;Z)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v1

    .line 220
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->PLAYLISTS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->getCategoryDescription(Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;Z)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v1

    .line 223
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->ARTISTS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->getCategoryDescription(Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;Z)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v1

    .line 226
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->ALBUMS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->getCategoryDescription(Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;Z)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v1

    .line 229
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 232
    sget-object p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->TRACKS_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->getCategoryDescription(Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;Z)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object p1

    .line 233
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_0
    sget-object p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->TRACKS_NON_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->getCategoryDescription(Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;Z)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object p1

    .line 236
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method private getCategoryDescription(Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;Z)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 4

    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.media.extra.BT_FOLDER_TYPE"

    .line 245
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->getBluetoothCategoryType()J

    move-result-wide v2

    .line 244
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 247
    new-instance v1, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 248
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->getMediaBrowserId(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 249
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->getMediaBrowserIdAsUri(Z)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    .line 250
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->getNameResourceId()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    const/4 p2, 0x0

    .line 251
    invoke-virtual {v1, p2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 252
    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 253
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p2

    .line 255
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->isBrowsable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 256
    :goto_0
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {v0, p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-object v0
.end method

.method private getLibraryContainerChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 170
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 175
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QuerySmartPlaylistTracksRunnable;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QuerySmartPlaylistTracksRunnable;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 176
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    .line 208
    invoke-virtual {p2, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 196
    :pswitch_0
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 198
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryAlbumsRunnable$QueryAlbumTracksRunnable;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryAlbumsRunnable$QueryAlbumTracksRunnable;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 199
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 188
    :pswitch_1
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 190
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryArtistsRunnable$QueryArtistAlbumsRunnable;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryArtistsRunnable$QueryArtistAlbumsRunnable;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 191
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 182
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryPlaylistsRunnable$QueryPlaylistTracksRunnable;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryPlaylistsRunnable$QueryPlaylistTracksRunnable;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 183
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRootCategoryChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)Z"
        }
    .end annotation

    const-string v0, "com.sonyericsson.music.mediabrowser.root"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "com.sonyericsson.music.mediabrowser.root.full_library_browse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 131
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->RECENTLY_PLAYED:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 134
    new-instance p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRecentlyPlayedRunnable;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRecentlyPlayedRunnable;-><init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 135
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 136
    :cond_1
    sget-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->PLAYLISTS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 139
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->isFullLibraryBrowse(Ljava/lang/String;)Z

    move-result p1

    .line 140
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryPlaylistsRunnable;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryPlaylistsRunnable;-><init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompat$Result;Z)V

    .line 141
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 142
    :cond_2
    sget-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->ARTISTS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 145
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->isFullLibraryBrowse(Ljava/lang/String;)Z

    move-result p1

    .line 146
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryArtistsRunnable;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryArtistsRunnable;-><init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompat$Result;Z)V

    .line 147
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 148
    :cond_3
    sget-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->ALBUMS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 151
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->isFullLibraryBrowse(Ljava/lang/String;)Z

    move-result p1

    .line 152
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryAlbumsRunnable;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryAlbumsRunnable;-><init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompat$Result;Z)V

    .line 153
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 154
    :cond_4
    sget-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->TRACKS_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->equals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 155
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 157
    new-instance p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryTracksRunnable;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryTracksRunnable;-><init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 158
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    :goto_0
    const-string v0, "com.sonyericsson.music.mediabrowser.root.full_library_browse"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->createCategoriesForRoot(Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method


# virtual methods
.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;
    .locals 3

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mPackageValidator:Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;->isCallerAllowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;

    move-result-object p1

    .line 85
    iget-boolean p2, p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;->usageAllowed:Z

    if-eqz p2, :cond_3

    .line 91
    sget-boolean p2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const-string p2, "android.service.media.extra.RECENT"

    .line 92
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 94
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "android.service.media.extra.RECENT"

    const/4 p3, 0x1

    .line 95
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    new-instance p2, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    sget-object p3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 97
    invoke-virtual {p3}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p2

    .line 105
    :cond_1
    iget-boolean p1, p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;->fullLibraryBrowseAllowed:Z

    if-eqz p1, :cond_2

    const-string p1, "com.sonyericsson.music.mediabrowser.root.full_library_browse"

    goto :goto_0

    :cond_2
    const-string p1, "com.sonyericsson.music.mediabrowser.root"

    .line 106
    :goto_0
    new-instance p2, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    invoke-direct {p2, p1, v1}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p2

    :cond_3
    return-object v1
.end method

.method public onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->getRootCategoryChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->getLibraryContainerChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method
