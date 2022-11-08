.class public Lcom/sonyericsson/music/common/PlaylistActions;
.super Ljava/lang/Object;
.source "PlaylistActions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deleteLocalPlaylist(Lcom/sonyericsson/music/MusicActivity;J)V
    .locals 1

    .line 53
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    long-to-int p2, p1

    .line 55
    invoke-static {v0, p2}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object p2

    .line 57
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->createDeletePlaylistIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static editPlaylist(Lcom/sonyericsson/music/MusicActivity;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "?"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "date_updated"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_1
    const/4 p4, 0x1

    .line 157
    invoke-static {p4, p2, p3}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/music/library/PlaylistOperationFragment;

    move-result-object p2

    .line 159
    invoke-static {p4}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->getTag(I)Ljava/lang/String;

    move-result-object p3

    .line 160
    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const p4, 0x7f010014

    const p5, 0x7f010015

    const v0, 0x7f010013

    .line 161
    invoke-virtual {p1, p4, v0, p5, v0}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 163
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p0

    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/music/MusicFragmentManager;->placeContent(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method static enqueueLocalOrPermanentPlaylist(Lcom/sonyericsson/music/player/PlayerController;JZ)V
    .locals 0

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/music/common/PlaylistActions;->enqueueLocalPlaylist(Lcom/sonyericsson/music/player/PlayerController;JZ)V

    return-void
.end method

.method public static enqueueLocalPlaylist(Lcom/sonyericsson/music/player/PlayerController;JZ)V
    .locals 4

    if-eqz p0, :cond_4

    .line 99
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

    .line 105
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

    .line 119
    :pswitch_0
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_1
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 113
    :pswitch_2
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 110
    :pswitch_3
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    const/4 p1, 0x3

    .line 125
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

    .line 130
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 135
    invoke-static {v0}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->newUnknownInstance(Ljava/lang/String;)Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "input_dialog"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static renameLocalPlaylist(Lcom/sonyericsson/music/MusicActivity;Landroidx/fragment/app/FragmentManager;J)V
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 173
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 174
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    long-to-int v1, p2

    .line 176
    invoke-static {p0, v1}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object p0

    .line 175
    invoke-static {p0, v0, p2, p3}, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->newInstance(Ljava/lang/String;Landroid/net/Uri;J)Landroidx/fragment/app/DialogFragment;

    move-result-object p0

    const-string p2, "rename_dialog"

    .line 177
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static requestWritePermission(Landroidx/fragment/app/Fragment;IJ)Z
    .locals 10

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 184
    sget-boolean v2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 187
    invoke-static {v0, p2, p3}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistMediaStoreId(Landroid/content/ContentResolver;J)J

    move-result-wide p2

    const-string v2, "external_primary"

    .line 188
    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 189
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 190
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 191
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 192
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 193
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-static {v0, p3}, Landroid/provider/MediaStore;->createWriteRequest(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;

    move-result-object p2

    .line 196
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v2 .. v9}, Landroidx/fragment/app/Fragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method static sendPlaylist(Lcom/sonyericsson/music/MusicActivity;J)V
    .locals 2

    .line 64
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/sonyericsson/music/common/PlaylistActions$1;

    invoke-direct {v1, v0, p1, p2, p0}, Lcom/sonyericsson/music/common/PlaylistActions$1;-><init>(Landroid/content/Context;JLcom/sonyericsson/music/MusicActivity;)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/MusicActivity;->doAsync(Ljava/lang/Runnable;)V

    return-void
.end method
