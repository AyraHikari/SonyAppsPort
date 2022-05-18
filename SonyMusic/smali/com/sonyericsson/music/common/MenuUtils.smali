.class public final Lcom/sonyericsson/music/common/MenuUtils;
.super Ljava/lang/Object;
.source "MenuUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/MenuUtils$FolderData;,
        Lcom/sonyericsson/music/common/MenuUtils$ArtistData;,
        Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;,
        Lcom/sonyericsson/music/common/MenuUtils$GenreData;,
        Lcom/sonyericsson/music/common/MenuUtils$AlbumData;,
        Lcom/sonyericsson/music/common/MenuUtils$TrackData;
    }
.end annotation


# static fields
.field public static final CONTEXT_OPTION_ADD_TO:I = 0x7

.field public static final CONTEXT_OPTION_ADD_TO_FAVOURITES:I = 0xf

.field public static final CONTEXT_OPTION_DELETE:I = 0x16

.field public static final CONTEXT_OPTION_DELETE_FROM_STORAGE:I = 0x8

.field public static final CONTEXT_OPTION_EDIT:I = 0x9

.field public static final CONTEXT_OPTION_EDIT_MUSIC_INFO:I = 0x14

.field public static final CONTEXT_OPTION_ENQUEUE:I = 0xc

.field public static final CONTEXT_OPTION_ENQUEUE_LAST:I = 0x15

.field public static final CONTEXT_OPTION_GO_TO_ALBUM:I = 0x11

.field public static final CONTEXT_OPTION_GO_TO_ARTIST:I = 0x10

.field public static final CONTEXT_OPTION_OPEN:I = 0x12

.field public static final CONTEXT_OPTION_REMOVE_FROM_FAVORITES:I = 0x13

.field public static final CONTEXT_OPTION_REMOVE_FROM_PLAYLIST:I = 0xb

.field public static final CONTEXT_OPTION_REMOVE_FROM_PLAYQUEUE:I = 0xe

.field public static final CONTEXT_OPTION_RENAME_PLAYLIST:I = 0xd

.field public static final CONTEXT_OPTION_SEND:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlbumContextMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$AlbumData;Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 2

    .line 410
    new-instance v0, Lcom/sonyericsson/music/common/ContextMenuBuilder;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;-><init>()V

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 418
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result p0

    .line 419
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getAlbumName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setTitle(Ljava/lang/String;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p1

    .line 420
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddTo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p1

    .line 421
    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEnqueue(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p0

    .line 422
    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setDeleteFromStorage(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p0

    .line 423
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setSend(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p0

    .line 424
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGoToArtist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p0

    const p1, 0x7f100237

    .line 425
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setOpenText(I)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    return-object v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getArtistMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$ArtistData;Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 2

    .line 473
    new-instance v0, Lcom/sonyericsson/music/common/ContextMenuBuilder;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;-><init>()V

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p0

    .line 480
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result p0

    .line 482
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$ArtistData;->getArtistName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setTitle(Ljava/lang/String;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setSend(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setDeleteFromStorage(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p1

    .line 483
    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEnqueue(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p0

    const p1, 0x7f100237

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setOpenText(I)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getFolderMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$FolderData;)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p0

    .line 461
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result p0

    .line 463
    new-instance v0, Lcom/sonyericsson/music/common/ContextMenuBuilder;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;-><init>()V

    .line 464
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$FolderData;->getFolderName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setTitle(Ljava/lang/String;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEnqueue(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddTo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p0

    const p1, 0x7f100237

    .line 465
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setOpenText(I)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    return-object v0

    .line 457
    :cond_1
    :goto_0
    new-instance p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;

    invoke-direct {p0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;-><init>()V

    return-object p0
.end method

.method public static getGenreMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$GenreData;)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 2

    .line 488
    new-instance v0, Lcom/sonyericsson/music/common/ContextMenuBuilder;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;-><init>()V

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p0

    .line 495
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result p0

    .line 497
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$GenreData;->getGenreName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setTitle(Ljava/lang/String;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddTo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEnqueue(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p0

    const p1, 0x7f100237

    .line 498
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setOpenText(I)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getLandingpagePlayqueueTrackMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$TrackData;)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 4

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_2

    .line 357
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/common/ContextMenuBuilder;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;-><init>()V

    .line 360
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p0

    .line 361
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 364
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getTrackUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v1

    .line 366
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGoToAlbum(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v2

    .line 367
    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGoToArtist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v2

    .line 368
    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddTo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v2

    .line 369
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setTitle(Ljava/lang/String;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v2

    .line 370
    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setSend(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v2

    if-eqz p0, :cond_2

    .line 371
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getTrackUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v2, p0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setDequeue(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p0

    .line 372
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEditMusicInfo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p0

    .line 373
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddToFavorites(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    return-object v0

    .line 355
    :cond_3
    :goto_2
    new-instance p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;

    invoke-direct {p0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;-><init>()V

    return-object p0
.end method

.method public static getPlaylistData(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;Landroid/database/Cursor;)Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;
    .locals 13

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const-string p0, "playlist_name"

    .line 516
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 515
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "path"

    .line 517
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "_id"

    .line 518
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 519
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v0

    const-string v4, "mediastore_id"

    .line 520
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    move-object v8, p0

    move v12, p2

    move-object v7, v0

    move-object v6, v1

    goto :goto_0

    :cond_0
    return-object v1

    .line 525
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getNameResourceId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 526
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaPlaybackConstant()I

    move-result p2

    xor-int/2addr p2, v0

    int-to-long v2, p2

    move-object v8, p0

    move-object v6, v1

    move-object v7, v6

    const/4 v12, -0x1

    .line 529
    :goto_0
    new-instance p0, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;

    .line 530
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v12}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;-><init>(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;I)V

    return-object p0
.end method

.method public static getPlaylistMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 2

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/common/ContextMenuBuilder;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;-><init>()V

    .line 437
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p0

    .line 438
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result p0

    .line 440
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v1

    if-nez v1, :cond_2

    .line 443
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getPlaylistPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/DBUtils;->isPlaylistUserCreated(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setDelete(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEditPlaylist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object v1

    .line 445
    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setRenamePlaylist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    :cond_1
    const/4 p2, 0x1

    .line 447
    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setSend(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 450
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setTitle(Ljava/lang/String;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEnqueue(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p0

    const p1, 0x7f100237

    .line 451
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setOpenText(I)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    return-object v0

    .line 433
    :cond_3
    :goto_0
    new-instance p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;

    invoke-direct {p0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;-><init>()V

    return-object p0
.end method

.method public static getTrackContextMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$TrackData;)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 7

    .line 380
    new-instance v0, Lcom/sonyericsson/music/common/ContextMenuBuilder;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;-><init>()V

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p0

    .line 387
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 388
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x1

    .line 391
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getTrackUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x1

    cmp-long v6, v3, v1

    if-eqz v6, :cond_2

    .line 393
    invoke-virtual {v0, v5}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setDeleteFromStorage(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    .line 396
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getTrackName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setTitle(Ljava/lang/String;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p1

    .line 397
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEnqueue(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p0

    .line 398
    invoke-virtual {p0, v5}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddTo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p0

    .line 399
    invoke-virtual {p0, v5}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setSend(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p0

    .line 400
    invoke-virtual {p0, v5}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGoToAlbum(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p0

    .line 401
    invoke-virtual {p0, v5}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setGoToArtist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p0

    .line 402
    invoke-virtual {p0, v5}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setEditMusicInfo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p0

    .line 403
    invoke-virtual {p0, v5}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->setAddToFavorites(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static onAlbumContextMenuSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$AlbumData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 618
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 619
    invoke-virtual {v3}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 621
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getAlbumId()J

    move-result-wide v6

    .line 622
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    if-eq v1, v9, :cond_8

    const/16 v9, 0xc

    const/16 v10, 0x15

    if-eq v1, v9, :cond_5

    const/16 v9, 0x10

    if-eq v1, v9, :cond_3

    const/16 v9, 0x12

    if-eq v1, v9, :cond_2

    if-eq v1, v10, :cond_5

    packed-switch v1, :pswitch_data_0

    return v2

    .line 626
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 627
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 629
    invoke-static {v0, v2, v1}, Lcom/sonyericsson/music/common/AlbumActions;->deleteAlbum(Lcom/sonyericsson/music/MusicActivity;Landroid/net/Uri;Ljava/lang/String;)V

    return v4

    .line 643
    :pswitch_1
    new-instance v1, Lcom/sonyericsson/music/common/AlbumActions$CreatePlaylistFromAlbumData;

    .line 644
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 645
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v8, v2, v3}, Lcom/sonyericsson/music/common/AlbumActions$CreatePlaylistFromAlbumData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/sonyericsson/music/common/AlbumActions;->addToDialog(Lcom/sonyericsson/music/MusicActivity;Landroidx/fragment/app/FragmentManager;Lcom/sonyericsson/music/common/AlbumActions$CreatePlaylistFromAlbumData;)V

    return v4

    .line 659
    :cond_2
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 661
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getAlbumName()Ljava/lang/String;

    move-result-object v10

    .line 662
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getArtistName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getImageUri()Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getArtistUri()Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v15, p3

    .line 661
    invoke-static/range {v9 .. v15}, Lcom/sonyericsson/music/library/AlbumFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/AlbumFragment;

    move-result-object v1

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    const-string v3, "album"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    return v4

    .line 650
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getArtistUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 651
    sget-object v1, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ARTIST_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    .line 652
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getArtistUri()Landroid/net/Uri;

    move-result-object v3

    .line 653
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$AlbumData;->getArtistName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v7, p3

    .line 651
    invoke-static {v1, v3, v5, v6, v7}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->newInstance(Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/artist/ArtistFragment;

    move-result-object v1

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    const-string v3, "artist"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    :cond_4
    return v4

    :cond_5
    if-ne v1, v10, :cond_6

    const/4 v2, 0x1

    :cond_6
    if-eqz v5, :cond_7

    .line 639
    invoke-static {v3, v6, v7, v2}, Lcom/sonyericsson/music/common/AlbumActions;->enqueueLocalAlbum(Lcom/sonyericsson/music/player/PlayerController;JZ)V

    :cond_7
    return v4

    .line 632
    :cond_8
    invoke-static {v0, v6, v7}, Lcom/sonyericsson/music/common/AlbumActions;->sendLocalAlbum(Lcom/sonyericsson/music/MusicActivity;J)V

    return v4

    :cond_9
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static onArtistContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$ArtistData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-nez p2, :cond_0

    goto :goto_1

    .line 732
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 733
    invoke-virtual {v1}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 735
    :goto_0
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$ArtistData;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0x8

    if-eq p1, v6, :cond_7

    const/16 v6, 0xa

    if-eq p1, v6, :cond_6

    const/16 v6, 0xc

    const/16 v7, 0x15

    if-eq p1, v6, :cond_3

    const/16 v6, 0x12

    if-eq p1, v6, :cond_2

    if-eq p1, v7, :cond_3

    return v0

    .line 752
    :cond_2
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 753
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$ArtistData;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 752
    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 754
    sget-object v1, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ARTIST_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    .line 755
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$ArtistData;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 756
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$ArtistData;->getArtistArtUri()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 754
    invoke-static {v1, p1, v3, p2, p3}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->newInstance(Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/artist/ArtistFragment;

    move-result-object p1

    .line 757
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p0

    const-string p2, "artist"

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    return v2

    :cond_3
    if-ne p1, v7, :cond_4

    const/4 v0, 0x1

    :cond_4
    if-eqz v3, :cond_5

    .line 742
    invoke-static {v1, v4, v5, v0}, Lcom/sonyericsson/music/common/ArtistActions;->enqueueArtist(Lcom/sonyericsson/music/player/PlayerController;JZ)V

    :cond_5
    return v2

    .line 746
    :cond_6
    invoke-static {p0, v4, v5}, Lcom/sonyericsson/music/common/ArtistActions;->sendArtist(Lcom/sonyericsson/music/MusicActivity;J)V

    return v2

    .line 749
    :cond_7
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$ArtistData;->getArtistName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v4, v5, p1}, Lcom/sonyericsson/music/common/ArtistActions;->deleteArtist(Lcom/sonyericsson/music/MusicActivity;JLjava/lang/String;)V

    return v2

    :cond_8
    :goto_1
    return v0
.end method

.method public static onFolderContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$FolderData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    if-nez p0, :cond_0

    goto :goto_1

    .line 773
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 774
    invoke-virtual {v1}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v4, "external"

    .line 776
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$FolderData;->getId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x7

    if-eq p1, v5, :cond_6

    const/16 v5, 0xc

    const/16 v6, 0x15

    if-eq p1, v5, :cond_3

    const/16 v5, 0x12

    if-eq p1, v5, :cond_2

    if-eq p1, v6, :cond_3

    return v0

    .line 791
    :cond_2
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$FolderData;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 792
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$FolderData;->getPathDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$FolderData;->getFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$FolderData;->getFolderArtUri()Landroid/net/Uri;

    move-result-object p2

    .line 791
    invoke-static {p1, v1, v3, p2, p3}, Lcom/sonyericsson/music/library/FolderFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/FolderFragment;

    move-result-object p1

    .line 793
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p0

    const-string p2, "folder"

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    return v2

    :cond_3
    if-ne p1, v6, :cond_4

    const/4 v0, 0x1

    :cond_4
    if-eqz v3, :cond_5

    .line 783
    invoke-static {v1, v4, v0}, Lcom/sonyericsson/music/common/FolderActions;->enqueueFolder(Lcom/sonyericsson/music/player/PlayerController;Landroid/net/Uri;Z)V

    :cond_5
    return v2

    .line 787
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 788
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$FolderData;->getFolderName()Ljava/lang/String;

    move-result-object p2

    .line 787
    invoke-static {p0, p1, v4, p2, v0}, Lcom/sonyericsson/music/common/FolderActions;->addFolderToDialog(Lcom/sonyericsson/music/MusicActivity;Landroidx/fragment/app/FragmentManager;Landroid/net/Uri;Ljava/lang/String;Z)V

    return v2

    :cond_7
    :goto_1
    return v0
.end method

.method public static onGenreContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$GenreData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    if-nez p0, :cond_0

    goto :goto_1

    .line 809
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 810
    invoke-virtual {v1}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x7

    if-eq p1, v4, :cond_6

    const/16 v4, 0xc

    const/16 v5, 0x15

    if-eq p1, v4, :cond_3

    const/16 v4, 0x12

    if-eq p1, v4, :cond_2

    if-eq p1, v5, :cond_3

    return v0

    .line 826
    :cond_2
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$GenreData;->getGenreId()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$GenreData;->getGenreName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$GenreData;->getTrackCount()I

    move-result v9

    .line 827
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$GenreData;->getArtUri()Landroid/net/Uri;

    move-result-object v10

    move-object v11, p3

    .line 826
    invoke-static/range {v6 .. v11}, Lcom/sonyericsson/music/library/GenreFragment;->newInstance(JLjava/lang/String;ILandroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/GenreFragment;

    move-result-object p1

    .line 828
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p0

    const-string p2, "genre"

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    return v2

    :cond_3
    if-eqz v3, :cond_5

    if-ne p1, v5, :cond_4

    const/4 v0, 0x1

    .line 818
    :cond_4
    invoke-static {v1, p2, v0}, Lcom/sonyericsson/music/common/GenreActions;->enqueueGenre(Lcom/sonyericsson/music/player/PlayerController;Lcom/sonyericsson/music/common/MenuUtils$GenreData;Z)V

    :cond_5
    return v2

    .line 822
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/common/GenreActions;->addToDialog(Lcom/sonyericsson/music/MusicActivity;Landroidx/fragment/app/FragmentManager;Lcom/sonyericsson/music/common/MenuUtils$GenreData;)V

    return v2

    :cond_7
    :goto_1
    return v0
.end method

.method public static onPlaylistContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$PlaylistData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    if-nez p0, :cond_0

    goto/16 :goto_3

    .line 678
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 679
    invoke-virtual {v1}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 681
    :goto_0
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    .line 696
    :sswitch_0
    invoke-static {p0, v4, v5}, Lcom/sonyericsson/music/common/PlaylistActions;->deleteLocalPlaylist(Lcom/sonyericsson/music/MusicActivity;J)V

    return v2

    .line 709
    :sswitch_1
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 712
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, v1, p2}, Lcom/sonyericsson/music/library/SmartPlaylistFragment;->newInstance(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;Landroid/net/Uri;Ljava/lang/String;)Lcom/sonyericsson/music/library/SmartPlaylistFragment;

    move-result-object p1

    const-string p2, "SmartPlaylist"

    goto :goto_1

    .line 715
    :cond_2
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getPlaylistPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isPlaylistUserCreated(Ljava/lang/String;)Z

    move-result v7

    .line 716
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getPlaylistUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    .line 717
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getMediaStorePlaylistId()I

    move-result v5

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v8, p3

    .line 716
    invoke-static/range {v3 .. v8}, Lcom/sonyericsson/music/library/PlaylistFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;ZLcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/PlaylistFragment;

    move-result-object p1

    const-string p2, "playlist"

    .line 721
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 704
    :sswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 703
    invoke-static {p0, p1, v4, v5}, Lcom/sonyericsson/music/common/PlaylistActions;->renameLocalPlaylist(Lcom/sonyericsson/music/MusicActivity;Landroidx/fragment/app/FragmentManager;J)V

    return v2

    :sswitch_3
    const/16 p0, 0x15

    if-ne p1, p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 689
    invoke-static {v1, v4, v5, v0}, Lcom/sonyericsson/music/common/PlaylistActions;->enqueueLocalOrPermanentPlaylist(Lcom/sonyericsson/music/player/PlayerController;JZ)V

    :cond_4
    return v2

    .line 693
    :sswitch_4
    invoke-static {p0, v4, v5}, Lcom/sonyericsson/music/common/PlaylistActions;->sendPlaylist(Lcom/sonyericsson/music/MusicActivity;J)V

    return v2

    .line 699
    :sswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    .line 700
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getTracksUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->getModifiedDate()J

    move-result-wide v10

    move-object v6, p0

    .line 699
    invoke-static/range {v6 .. v11}, Lcom/sonyericsson/music/common/PlaylistActions;->editPlaylist(Lcom/sonyericsson/music/MusicActivity;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;J)V

    return v2

    :goto_2
    return v0

    :cond_5
    :goto_3
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_2
        0x12 -> :sswitch_1
        0x15 -> :sswitch_3
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public static onTrackContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$TrackData;ILcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 540
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 541
    invoke-virtual {v4}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 543
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->isLocal()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 544
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getTrackUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_1

    :cond_2
    const-wide/16 v8, -0x1

    :goto_1
    const/4 v10, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return v3

    :pswitch_1
    if-eqz v7, :cond_3

    .line 602
    invoke-static {v0, v8, v9}, Lcom/sonyericsson/music/common/TrackActions;->launchEditMusicInfo(Landroid/app/Activity;J)V

    :cond_3
    return v5

    .line 594
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getAlbumUri()Landroid/net/Uri;

    move-result-object v11

    .line 595
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getAlbumName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getArtistName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getAlbumArtUri()Landroid/net/Uri;

    move-result-object v14

    .line 596
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getTrackUri()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getArtistUri()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v17, p4

    .line 594
    invoke-static/range {v11 .. v17}, Lcom/sonyericsson/music/library/AlbumFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/AlbumFragment;

    move-result-object v1

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    const-string v2, "album"

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    return v5

    .line 586
    :pswitch_3
    sget-object v1, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ARTIST_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    .line 587
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getArtistUri()Landroid/net/Uri;

    move-result-object v2

    .line 588
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getArtistName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, p4

    .line 586
    invoke-static {v1, v2, v4, v10, v6}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->newInstance(Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/artist/ArtistFragment;

    move-result-object v1

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    const-string v2, "artist"

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    return v5

    :pswitch_4
    if-eqz v7, :cond_4

    .line 582
    invoke-static {v0, v8, v9}, Lcom/sonyericsson/music/common/TrackActions;->addToFavourites(Lcom/sonyericsson/music/MusicActivity;J)V

    :cond_4
    return v5

    :pswitch_5
    if-eqz v6, :cond_5

    if-ltz v2, :cond_5

    .line 550
    invoke-virtual {v4, v2}, Lcom/sonyericsson/music/player/PlayerController;->removeTrack(I)V

    :cond_5
    return v5

    :pswitch_6
    const/16 v0, 0x15

    if-ne v1, v0, :cond_6

    const/4 v3, 0x1

    :cond_6
    if-eqz v7, :cond_7

    if-eqz v6, :cond_7

    .line 558
    invoke-static {v4, v8, v9, v3}, Lcom/sonyericsson/music/common/TrackActions;->enqueueTrack(Lcom/sonyericsson/music/player/PlayerController;JZ)V

    :cond_7
    return v5

    :pswitch_7
    if-eqz v7, :cond_8

    .line 567
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    long-to-int v1, v8

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/Sender;->sendSingleFile(Landroid/content/Context;J)V

    :cond_8
    return v5

    .line 571
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getTrackName()Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_9

    .line 573
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 574
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getTrackUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 573
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :cond_9
    if-eqz v10, :cond_a

    .line 577
    invoke-static {v0, v10, v1}, Lcom/sonyericsson/music/common/TrackActions;->deleteTrack(Lcom/sonyericsson/music/MusicActivity;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_a
    return v5

    .line 562
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getTrackUri()Landroid/net/Uri;

    move-result-object v1

    .line 563
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 562
    invoke-static {v0, v7, v1, v10}, Lcom/sonyericsson/music/common/TrackActions;->addToDialog(Lcom/sonyericsson/music/MusicActivity;ZLjava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_b
    :goto_2
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method
