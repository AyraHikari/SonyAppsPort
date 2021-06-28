.class public Lcom/sonyericsson/music/common/FolderActions;
.super Ljava/lang/Object;
.source "FolderActions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFolderToDialog(Lcom/sonyericsson/music/MusicActivity;Landroidx/fragment/app/FragmentManager;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result p4

    if-eqz p4, :cond_1

    if-eqz p2, :cond_1

    .line 50
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 54
    invoke-static {p2, p3, p0}, Lcom/sonyericsson/music/dialogs/AddToDialog;->newInstance(Landroid/net/Uri;Ljava/lang/String;Z)Lcom/sonyericsson/music/dialogs/AddToDialog;

    move-result-object p0

    const-string p2, "addto_dialog"

    .line 55
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static addFolderTrackToDialog(Lcom/sonyericsson/music/MusicActivity;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result p4

    if-eqz p4, :cond_1

    if-eqz p2, :cond_1

    .line 35
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    sget-object p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 p2, 0x1

    .line 40
    invoke-static {p0, p3, p2}, Lcom/sonyericsson/music/dialogs/AddToDialog;->newInstance(Landroid/net/Uri;Ljava/lang/String;Z)Lcom/sonyericsson/music/dialogs/AddToDialog;

    move-result-object p0

    const-string p2, "addto_dialog"

    .line 41
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static deleteFolderTrack(Lcom/sonyericsson/music/MusicActivity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 86
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {p0, p2, p1, p3}, Lcom/sonyericsson/music/delete/DeleteActivity;->createDeleteFolderTrackIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static enqueueFolder(Lcom/sonyericsson/music/player/PlayerController;Landroid/net/Uri;Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 77
    invoke-virtual {p0, p1, v0, p2}, Lcom/sonyericsson/music/player/PlayerController;->enqueue(Landroid/net/Uri;IZ)V

    :cond_0
    return-void
.end method

.method public static enqueueFolderTrack(Lcom/sonyericsson/music/player/PlayerController;JLandroid/net/Uri;IZ)V
    .locals 7

    if-eqz p0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p3

    move v4, p4

    move v6, p5

    .line 66
    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/music/player/PlayerController;->enqueueTrack(Landroid/net/Uri;Landroid/net/Uri;IIZ)V

    :cond_0
    return-void
.end method

.method public static refreshFolderArts(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "external"

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    .line 97
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/RefreshPlaylistArtService;->update(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
