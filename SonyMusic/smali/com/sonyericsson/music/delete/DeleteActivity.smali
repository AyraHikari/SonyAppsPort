.class public Lcom/sonyericsson/music/delete/DeleteActivity;
.super Lcom/sonyericsson/music/ThemedActivity;
.source "DeleteActivity.java"

# interfaces
.implements Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;
.implements Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;
.implements Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;
    }
.end annotation


# static fields
.field private static final COLON:Ljava/lang/String; = "%3A"

.field private static final DELETE_PERMISSION_REQUEST_CODE:I = 0x7b

.field private static final DELETE_PERMISSION_REQUEST_CODE_FROM_Q:I = 0x7c

.field private static final DELETE_PERMISSION_REQUEST_CODE_FROM_R:I = 0x7d

.field private static final EXTERNAL_STORAGE_PATH_ROOT_DEPTH:I = 0x3

.field private static final FOLDER_ID:Ljava/lang/String; = "folder_id"

.field private static final RETAIN_KEY_DELETE_DATA:Ljava/lang/String;

.field private static final RETAIN_KEY_PREPARE_TASK:Ljava/lang/String;

.field private static final ROOT:Ljava/lang/String; = "root"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final TREE:Ljava/lang/String; = "tree"


# instance fields
.field private mDeleteFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteUri:Landroid/net/Uri;

.field private mFolderId:Ljava/lang/String;

.field private mLaunchedDirectoryAccessDlg:Z

.field private mLaunchedSdcardAccessDlg:Z

.field private mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

.field private mRootUri:Landroid/net/Uri;

.field private mSdcardAccessDialogType:I

.field private mShouldShowRetryDialog:Z

.field private mShowingDeleteDialog:Z

.field private mStorageVolumes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/music/delete/DeleteActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_prepare_delete_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/delete/DeleteActivity;->RETAIN_KEY_PREPARE_TASK:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/music/delete/DeleteActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_delete_data_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/delete/DeleteActivity;->RETAIN_KEY_DELETE_DATA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/sonyericsson/music/ThemedActivity;-><init>()V

    return-void
.end method

.method private askForVolumeApproval()V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mStorageVolumes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 374
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 375
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->createOpenDocumentTreeIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x7c

    .line 377
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.provider.extra.INITIAL_URI"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mRootUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 379
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->createAccessIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x7b

    .line 382
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private buildDocumentUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 427
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {p1, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 429
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 431
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    .line 433
    array-length v0, p2

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 437
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 440
    aget-object v2, p2, v1

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    .line 442
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private completeWithDocumentUri(Landroid/net/Uri;)V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 451
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;

    .line 452
    iget-boolean v2, v1, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;->mIsPrimaryStorage:Z

    if-nez v2, :cond_0

    .line 453
    iget-object v2, v1, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;->mPath:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/music/delete/DeleteActivity;->buildDocumentUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 454
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;->setDocumentFileUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static createDeleteAlbumIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/music/delete/DeleteActivity;->createDeleteIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createDeleteArtistIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/music/delete/DeleteActivity;->createDeleteIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createDeleteFolderTrackIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 94
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/music/delete/DeleteActivity;->createDeleteIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static createDeleteIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    if-eqz p2, :cond_0

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    const-class v1, Lcom/sonyericsson/music/delete/DeleteActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 104
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "title"

    .line 105
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "folder_id"

    .line 106
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    .line 99
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Uri is not allowed to be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createDeleteTrackIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/music/delete/DeleteActivity;->createDeleteIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private deleteTracks()V
    .locals 7

    .line 407
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Lcom/sonyericsson/music/delete/DeleteTask;

    iget-object v3, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    iget-object v4, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mTitle:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->isSingleItem()Z

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mFolderId:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/delete/DeleteTask;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    .line 410
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private getReplacedRootUri()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 536
    iget-object v1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mRootUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 537
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "root"

    const-string v2, "tree"

    .line 538
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%3A"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private hasExternalStorageContent()Z
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mStorageVolumes:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSdcardAccessAllowed()Z
    .locals 7

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mStorageVolumes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object v2

    .line 356
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 357
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriPermission;

    .line 358
    invoke-virtual {v3}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 359
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%3A"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 361
    iput-object v3, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mRootUri:Landroid/net/Uri;

    :cond_1
    return v1
.end method

.method private isSingleItem()Z
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private recoverDeleteDialog()V
    .locals 2

    .line 184
    invoke-static {p0}, Lcom/sonyericsson/music/delete/DeleteDialog;->find(Landroidx/fragment/app/FragmentActivity;)Lcom/sonyericsson/music/delete/DeleteDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/delete/DeleteActivity;->showDeleteDialog(Ljava/lang/String;Landroid/net/Uri;)Z

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/delete/DeleteDialog;->setListener(Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;)V

    :goto_0
    return-void
.end method

.method private showDeleteDialog(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 2

    .line 386
    invoke-static {p0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 387
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    invoke-static {p0, p1, v1, p0}, Lcom/sonyericsson/music/delete/DeleteDialog;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ZLcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private showLaunchDirectoryAccessDialog()Z
    .locals 1

    .line 397
    invoke-static {p0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 402
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog;->show(Landroidx/fragment/app/FragmentActivity;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 258
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 530
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    goto/16 :goto_2

    :pswitch_0
    if-ne p2, v0, :cond_1

    .line 518
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mFolderId:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 519
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/FolderActions;->refreshFolderArts(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const p1, 0x7f1002bd

    .line 521
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p1, 0x7f100135

    .line 523
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 525
    :goto_0
    invoke-static {p0, p1, v1}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 526
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    goto/16 :goto_2

    :pswitch_1
    if-eqz p3, :cond_4

    .line 492
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 495
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->getReplacedRootUri()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 496
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/delete/DeleteActivity;->completeWithDocumentUri(Landroid/net/Uri;)V

    .line 498
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 500
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result p3

    and-int/lit8 p3, p3, 0x2

    .line 499
    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 501
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 502
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->deleteTracks()V

    .line 504
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    goto :goto_2

    .line 509
    :cond_3
    iput-boolean v1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShouldShowRetryDialog:Z

    goto :goto_2

    .line 512
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    goto :goto_2

    :pswitch_2
    if-ne p2, v0, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_7

    .line 467
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->showLaunchDirectoryAccessDialog()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 468
    iput-boolean v1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mLaunchedDirectoryAccessDlg:Z

    goto :goto_2

    .line 470
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_9

    .line 473
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 475
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/delete/DeleteActivity;->completeWithDocumentUri(Landroid/net/Uri;)V

    .line 477
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 479
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result p3

    and-int/lit8 p3, p3, 0x2

    .line 478
    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 481
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mTitle:Ljava/lang/String;

    iget-object p2, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteUri:Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/delete/DeleteActivity;->showDeleteDialog(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 482
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    .line 484
    :cond_8
    iput-boolean v1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShowingDeleteDialog:Z

    goto :goto_2

    .line 486
    :cond_9
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 112
    invoke-super {p0, p1}, Lcom/sonyericsson/music/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteUri:Landroid/net/Uri;

    const-string v1, "title"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mTitle:Ljava/lang/String;

    const-string v1, "folder_id"

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mFolderId:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 120
    new-instance p1, Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteUri:Landroid/net/Uri;

    sget-object v1, Lcom/sonyericsson/music/delete/DeleteActivity;->RETAIN_KEY_PREPARE_TASK:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1}, Lcom/sonyericsson/music/delete/PrepareDeletionTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    .line 122
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 123
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 125
    :cond_0
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object p1

    .line 127
    sget-object v0, Lcom/sonyericsson/music/delete/DeleteActivity;->RETAIN_KEY_PREPARE_TASK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    iput-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    .line 128
    sget-object v0, Lcom/sonyericsson/music/delete/DeleteActivity;->RETAIN_KEY_DELETE_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    if-nez v0, :cond_5

    if-eqz p1, :cond_6

    .line 132
    iget-object v0, p1, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;->mDeleteFiles:Ljava/util/List;

    iput-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    .line 133
    iget-object v0, p1, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;->mStorageVolumes:Ljava/util/List;

    iput-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mStorageVolumes:Ljava/util/List;

    .line 134
    iget-boolean v0, p1, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;->mShowingDeleteDialog:Z

    iput-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShowingDeleteDialog:Z

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 139
    iget-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShowingDeleteDialog:Z

    if-eqz v0, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->recoverDeleteDialog()V

    goto :goto_0

    .line 142
    :cond_1
    iget-boolean v0, p1, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;->mLaunchedSdcardAccessDlg:Z

    iput-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mLaunchedSdcardAccessDlg:Z

    .line 143
    iget p1, p1, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;->mSdcardAccessDialogType:I

    iput p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mSdcardAccessDialogType:I

    .line 145
    iget-boolean p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mLaunchedSdcardAccessDlg:Z

    if-eqz p1, :cond_6

    .line 147
    invoke-static {p0}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->find(Landroidx/fragment/app/FragmentActivity;)Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;

    move-result-object p1

    if-nez p1, :cond_2

    .line 149
    iget p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mSdcardAccessDialogType:I

    .line 150
    invoke-static {p0, p1, p0}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->show(Landroidx/fragment/app/FragmentActivity;ILcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->setListener(Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x1c

    if-ne v0, v1, :cond_4

    .line 158
    iget-boolean p1, p1, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;->mLaunchedDirectoryAccessDlg:Z

    iput-boolean p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mLaunchedDirectoryAccessDlg:Z

    .line 163
    iget-boolean p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mLaunchedDirectoryAccessDlg:Z

    if-nez p1, :cond_6

    .line 164
    iget-boolean p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShowingDeleteDialog:Z

    if-eqz p1, :cond_6

    .line 165
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->recoverDeleteDialog()V

    goto :goto_0

    .line 171
    :cond_4
    iget-boolean p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShowingDeleteDialog:Z

    if-eqz p1, :cond_6

    .line 172
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->recoverDeleteDialog()V

    goto :goto_0

    .line 178
    :cond_5
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onDeletionConfirmed()V
    .locals 8

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 308
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 309
    iget-object v1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;

    const-string v3, "external"

    .line 310
    iget v2, v2, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;->mId:I

    int-to-long v4, v2

    .line 311
    invoke-static {v3, v4, v5}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 313
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/MediaStore;->createDeleteRequest(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 318
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/16 v3, 0x7d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroidx/fragment/app/FragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 321
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_5

    .line 323
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->hasExternalStorageContent()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShowingDeleteDialog:Z

    .line 327
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->isSdcardAccessAllowed()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 328
    iput v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mSdcardAccessDialogType:I

    .line 329
    iget v1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mSdcardAccessDialogType:I

    invoke-static {p0, v1, p0}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->show(Landroidx/fragment/app/FragmentActivity;ILcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;)V

    .line 330
    iput-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mLaunchedSdcardAccessDlg:Z

    goto :goto_1

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mRootUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/delete/DeleteActivity;->completeWithDocumentUri(Landroid/net/Uri;)V

    .line 334
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 335
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->deleteTracks()V

    .line 337
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    goto :goto_1

    .line 340
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 341
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->deleteTracks()V

    .line 343
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    :goto_1
    return-void
.end method

.method public onDeletionDenied()V
    .locals 0

    .line 299
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 241
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 243
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    .line 246
    sget-object v1, Lcom/sonyericsson/music/delete/DeleteActivity;->RETAIN_KEY_DELETE_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 248
    sget-object v1, Lcom/sonyericsson/music/delete/DeleteActivity;->RETAIN_KEY_PREPARE_TASK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 250
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    const/4 v1, 0x1

    .line 251
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onLaunchingSdcardAccessCanceled()V
    .locals 0

    .line 421
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    return-void
.end method

.method public onLaunchingSdcardAccessConfirmed()V
    .locals 0

    .line 416
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->askForVolumeApproval()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 221
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    if-eqz v0, :cond_0

    .line 224
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/delete/DeleteActivity;->RETAIN_KEY_PREPARE_TASK:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 199
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/delete/DeleteActivity;->RETAIN_KEY_PREPARE_TASK:Ljava/lang/String;

    .line 203
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/RetainManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    iput-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 210
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShouldShowRetryDialog:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShouldShowRetryDialog:Z

    const/4 v0, 0x2

    .line 213
    iput v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mSdcardAccessDialogType:I

    .line 214
    iget v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mSdcardAccessDialogType:I

    invoke-static {p0, v0, p0}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->show(Landroidx/fragment/app/FragmentActivity;ILcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;)V

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mLaunchedSdcardAccessDlg:Z

    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 9

    .line 231
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 233
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/music/delete/DeleteActivity;->RETAIN_KEY_DELETE_DATA:Ljava/lang/String;

    new-instance v8, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;

    iget-object v2, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    iget-object v3, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mStorageVolumes:Ljava/util/List;

    iget-boolean v4, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShowingDeleteDialog:Z

    iget-boolean v5, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mLaunchedDirectoryAccessDlg:Z

    iget-boolean v6, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mLaunchedSdcardAccessDlg:Z

    iget v7, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mSdcardAccessDialogType:I

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;-><init>(Ljava/util/List;Ljava/util/List;ZZZI)V

    invoke-virtual {p1, v0, v8}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTaskDone(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;Ljava/lang/Object;)V
    .locals 1

    .line 269
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 270
    iput-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    .line 272
    check-cast p2, Lcom/sonyericsson/music/delete/PrepareDeletionTask$PreparedData;

    if-eqz p2, :cond_3

    .line 275
    iget-object p1, p2, Lcom/sonyericsson/music/delete/PrepareDeletionTask$PreparedData;->mStorageVolumes:Ljava/util/List;

    iput-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mStorageVolumes:Ljava/util/List;

    .line 276
    iget-object p1, p2, Lcom/sonyericsson/music/delete/PrepareDeletionTask$PreparedData;->mDeleteFiles:Ljava/util/List;

    iput-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    .line 278
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 281
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->hasExternalStorageContent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->askForVolumeApproval()V

    goto :goto_0

    .line 284
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mTitle:Ljava/lang/String;

    iget-object p2, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteUri:Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/delete/DeleteActivity;->showDeleteDialog(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    :cond_1
    const/4 p1, 0x1

    .line 287
    iput-boolean p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShowingDeleteDialog:Z

    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    goto :goto_0

    .line 293
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onTaskPreExecute(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;)V
    .locals 0

    return-void
.end method

.method protected provideTheme()Lcom/sonyericsson/music/ThemedActivity$Theme;
    .locals 1

    .line 194
    sget-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->DEFAULT_TRANSPARENT:Lcom/sonyericsson/music/ThemedActivity$Theme;

    return-object v0
.end method
