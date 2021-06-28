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

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    .line 51
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "QueryThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    .line 56
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

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    sget-object v1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->RECENTLY_PLAYED:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->getCategoryDescription(Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;Z)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v1

    .line 209
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->PLAYLISTS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->getCategoryDescription(Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;Z)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v1

    .line 212
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->ARTISTS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->getCategoryDescription(Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;Z)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v1

    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->ALBUMS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->getCategoryDescription(Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;Z)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v1

    .line 218
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 221
    sget-object p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->TRACKS_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->getCategoryDescription(Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;Z)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object p1

    .line 222
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_0
    sget-object p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->TRACKS_NON_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->getCategoryDescription(Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;Z)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object p1

    .line 225
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method private getCategoryDescription(Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;Z)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 4

    .line 232
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.media.extra.BT_FOLDER_TYPE"

    .line 234
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->getBluetoothCategoryType()J

    move-result-wide v2

    .line 233
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 236
    new-instance v1, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 237
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->getMediaBrowserId(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 238
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->getMediaBrowserIdAsUri(Z)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->getNameResourceId()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    const/4 p2, 0x0

    .line 240
    invoke-virtual {v1, p2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 241
    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 242
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p2

    .line 244
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->isBrowsable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 245
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

    .line 159
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 164
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QuerySmartPlaylistTracksRunnable;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QuerySmartPlaylistTracksRunnable;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 165
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    .line 197
    invoke-virtual {p2, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 185
    :pswitch_0
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 187
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryAlbumsRunnable$QueryAlbumTracksRunnable;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryAlbumsRunnable$QueryAlbumTracksRunnable;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 188
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 177
    :pswitch_1
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 179
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryArtistsRunnable$QueryArtistAlbumsRunnable;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryArtistsRunnable$QueryArtistAlbumsRunnable;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 180
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 171
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryPlaylistsRunnable$QueryPlaylistTracksRunnable;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryPlaylistsRunnable$QueryPlaylistTracksRunnable;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 172
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

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "com.sonyericsson.music.mediabrowser.root.full_library_browse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 120
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->RECENTLY_PLAYED:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 123
    new-instance p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRecentlyPlayedRunnable;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryRecentlyPlayedRunnable;-><init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 124
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 125
    :cond_1
    sget-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->PLAYLISTS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 128
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->isFullLibraryBrowse(Ljava/lang/String;)Z

    move-result p1

    .line 129
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryPlaylistsRunnable;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryPlaylistsRunnable;-><init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompat$Result;Z)V

    .line 130
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 131
    :cond_2
    sget-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->ARTISTS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 134
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->isFullLibraryBrowse(Ljava/lang/String;)Z

    move-result p1

    .line 135
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryArtistsRunnable;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryArtistsRunnable;-><init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompat$Result;Z)V

    .line 136
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 137
    :cond_3
    sget-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->ALBUMS:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 140
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->isFullLibraryBrowse(Ljava/lang/String;)Z

    move-result p1

    .line 141
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryAlbumsRunnable;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryAlbumsRunnable;-><init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompat$Result;Z)V

    .line 142
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 143
    :cond_4
    sget-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->TRACKS_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->equals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 144
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    .line 146
    new-instance p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryTracksRunnable;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/QueryTracksRunnable;-><init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 147
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    :goto_0
    const-string v0, "com.sonyericsson.music.mediabrowser.root.full_library_browse"

    .line 118
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
    .locals 2

    .line 69
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x17

    if-lt p3, v1, :cond_0

    .line 70
    iget-object p3, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    return-object v0

    .line 82
    :cond_0
    iget-object p3, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mPackageValidator:Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v1, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;->isCallerAllowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;

    move-result-object p1

    .line 84
    iget-boolean p2, p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;->usageAllowed:Z

    if-eqz p2, :cond_2

    .line 94
    iget-boolean p1, p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;->fullLibraryBrowseAllowed:Z

    if-eqz p1, :cond_1

    const-string p1, "com.sonyericsson.music.mediabrowser.root.full_library_browse"

    goto :goto_0

    :cond_1
    const-string p1, "com.sonyericsson.music.mediabrowser.root"

    .line 95
    :goto_0
    new-instance p2, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    invoke-direct {p2, p1, v0}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p2

    :cond_2
    return-object v0
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

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->getRootCategoryChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->getLibraryContainerChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->mQueryHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method
