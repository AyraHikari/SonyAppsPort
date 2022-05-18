.class public Lcom/sonyericsson/music/common/PlaylistActions;
.super Ljava/lang/Object;
.source "PlaylistActions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deleteLocalPlaylist(Lcom/sonyericsson/music/MusicActivity;J)V
    .locals 1

    .line 43
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    long-to-int p2, p1

    .line 45
    invoke-static {v0, p2}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object p2

    .line 47
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->createDeletePlaylistIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static editPlaylist(Lcom/sonyericsson/music/MusicActivity;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "?"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "date_updated"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_1
    const/4 p4, 0x1

    .line 147
    invoke-static {p4, p2, p3}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/music/library/PlaylistOperationFragment;

    move-result-object p2

    .line 149
    invoke-static {p4}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->getTag(I)Ljava/lang/String;

    move-result-object p3

    .line 150
    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const p4, 0x7f010014

    const p5, 0x7f010015

    const v0, 0x7f010013

    .line 151
    invoke-virtual {p1, p4, v0, p5, v0}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 153
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p0

    .line 154
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/music/MusicFragmentManager;->placeContent(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method static enqueueLocalOrPermanentPlaylist(Lcom/sonyericsson/music/player/PlayerController;JZ)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/music/common/PlaylistActions;->enqueueLocalPlaylist(Lcom/sonyericsson/music/player/PlayerController;JZ)V

    return-void
.end method

.method public static enqueueLocalPlaylist(Lcom/sonyericsson/music/player/PlayerController;JZ)V
    .locals 4

    if-eqz p0, :cond_4

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    long-to-int p2, p1

    .line 95
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    xor-long/2addr p1, v1

    long-to-int p2, p1

    const/4 p1, -0x1

    if-lt p2, p1, :cond_2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 109
    :pswitch_0
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 106
    :pswitch_1
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 103
    :pswitch_2
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 100
    :pswitch_3
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    const/4 p1, 0x3

    .line 115
    invoke-virtual {p0, v0, p1, p3}, Lcom/sonyericsson/music/player/PlayerController;->enqueue(Landroid/net/Uri;IZ)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static launchCreatePlaylistDialog(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 2

    .line 120
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 125
    invoke-static {v0}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->newUnknownInstance(Ljava/lang/String;)Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "input_dialog"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static renameLocalPlaylist(Lcom/sonyericsson/music/MusicActivity;Landroidx/fragment/app/FragmentManager;J)V
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 163
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 164
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    long-to-int v1, p2

    .line 166
    invoke-static {p0, v1}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-static {p0, v0, p2, p3}, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->newInstance(Ljava/lang/String;Landroid/net/Uri;J)Landroidx/fragment/app/DialogFragment;

    move-result-object p0

    const-string p2, "rename_dialog"

    .line 167
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static sendPlaylist(Lcom/sonyericsson/music/MusicActivity;J)V
    .locals 2

    .line 54
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/sonyericsson/music/common/PlaylistActions$1;

    invoke-direct {v1, v0, p1, p2, p0}, Lcom/sonyericsson/music/common/PlaylistActions$1;-><init>(Landroid/content/Context;JLcom/sonyericsson/music/MusicActivity;)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/MusicActivity;->doAsync(Ljava/lang/Runnable;)V

    return-void
.end method
