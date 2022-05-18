.class public Lcom/sonyericsson/music/delete/DeletePlaylistActivity;
.super Lcom/sonyericsson/music/ThemedActivity;
.source "DeletePlaylistActivity.java"

# interfaces
.implements Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;


# static fields
.field private static final DELETE_PLAYLIST_PERMISSION_REQUEST_CODE_FROM_R:I = 0x7b

.field private static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mDeleteUri:Landroid/net/Uri;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/sonyericsson/music/ThemedActivity;-><init>()V

    return-void
.end method

.method private static createDeleteIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    if-eqz p2, :cond_0

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    const-class v1, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 51
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "title"

    .line 52
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Uri is not allowed to be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createDeletePlaylistIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->createDeleteIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private showDeleteDialog(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 1

    .line 135
    invoke-static {p0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 136
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 140
    invoke-static {p0, p1, p2, p0}, Lcom/sonyericsson/music/delete/DeleteDialog;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ZLcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;)V

    return p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x7b

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const p1, 0x7f1002bd

    .line 126
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f100134

    .line 128
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    .line 130
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 58
    invoke-super {p0, p1}, Lcom/sonyericsson/music/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->mDeleteUri:Landroid/net/Uri;

    const-string v1, "title"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->mTitle:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->mDeleteUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->showDeleteDialog(Ljava/lang/String;Landroid/net/Uri;)Z

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/music/delete/DeleteDialog;->find(Landroidx/fragment/app/FragmentActivity;)Lcom/sonyericsson/music/delete/DeleteDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/delete/DeleteDialog;->setListener(Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDeletionConfirmed()V
    .locals 8

    .line 92
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    int-to-long v1, v1

    .line 96
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistMediaStoreId(Landroid/content/ContentResolver;J)J

    move-result-wide v0

    const-string v2, "external"

    .line 99
    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 101
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 103
    new-instance v1, Landroidx/collection/ArraySet;

    invoke-direct {v1}, Landroidx/collection/ArraySet;-><init>()V

    .line 104
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/MediaStore;->createDeleteRequest(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 107
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/16 v3, 0x7b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroidx/fragment/app/FragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    goto :goto_0

    .line 114
    :cond_1
    new-instance v0, Lcom/sonyericsson/music/delete/DeletePlaylistTask;

    iget-object v2, p0, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->mDeleteUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/music/delete/DeletePlaylistTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->finish()V

    return-void
.end method

.method public onDeletionDenied()V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->finish()V

    return-void
.end method

.method protected provideTheme()Lcom/sonyericsson/music/ThemedActivity$Theme;
    .locals 1

    .line 76
    sget-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->DEFAULT_TRANSPARENT:Lcom/sonyericsson/music/ThemedActivity$Theme;

    return-object v0
.end method
