.class public Lcom/sonyericsson/music/delete/DeletePlaylistActivity;
.super Lcom/sonyericsson/music/ThemedActivity;
.source "DeletePlaylistActivity.java"

# interfaces
.implements Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;


# static fields
.field private static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mDeleteUri:Landroid/net/Uri;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/sonyericsson/music/ThemedActivity;-><init>()V

    return-void
.end method

.method private static createDeleteIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    if-eqz p2, :cond_0

    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 36
    const-class v1, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 37
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "title"

    .line 38
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Uri is not allowed to be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createDeletePlaylistIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 0

    .line 27
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->createDeleteIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private showDeleteDialog(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 1

    .line 83
    invoke-static {p0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 84
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 88
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

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/sonyericsson/music/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->mDeleteUri:Landroid/net/Uri;

    const-string v1, "title"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->mTitle:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->mDeleteUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->showDeleteDialog(Ljava/lang/String;Landroid/net/Uri;)Z

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/music/delete/DeleteDialog;->find(Landroidx/fragment/app/FragmentActivity;)Lcom/sonyericsson/music/delete/DeleteDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/delete/DeleteDialog;->setListener(Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDeletionConfirmed()V
    .locals 3

    .line 78
    new-instance v0, Lcom/sonyericsson/music/delete/DeletePlaylistTask;

    iget-object v1, p0, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->mDeleteUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/delete/DeletePlaylistTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->finish()V

    return-void
.end method

.method public onDeletionDenied()V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeletePlaylistActivity;->finish()V

    return-void
.end method

.method protected provideTheme()Lcom/sonyericsson/music/ThemedActivity$Theme;
    .locals 1

    .line 62
    sget-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->DEFAULT_TRANSPARENT:Lcom/sonyericsson/music/ThemedActivity$Theme;

    return-object v0
.end method
