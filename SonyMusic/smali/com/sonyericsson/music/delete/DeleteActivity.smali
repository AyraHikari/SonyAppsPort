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

    .line 41
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

    .line 42
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

    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/music/ThemedActivity;-><init>()V

    return-void
.end method

.method private askForVolumeApproval()V
    .locals 4

    .line 346
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mStorageVolumes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 347
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 348
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->createOpenDocumentTreeIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x7c

    .line 350
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

    .line 352
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->createAccessIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x7b

    .line 355
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private buildDocumentUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 400
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-static {p1, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 402
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 404
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    .line 406
    array-length v0, p2

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 413
    aget-object v2, p2, v1

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    .line 415
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
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

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 424
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

    .line 425
    iget-boolean v2, v1, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;->mIsPrimaryStorage:Z

    if-nez v2, :cond_0

    .line 426
    iget-object v2, v1, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;->mPath:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/music/delete/DeleteActivity;->buildDocumentUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 427
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;->setDocumentFileUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static createDeleteAlbumIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/music/delete/DeleteActivity;->createDeleteIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createDeleteArtistIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/music/delete/DeleteActivity;->createDeleteIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createDeleteFolderTrackIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 83
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/music/delete/DeleteActivity;->createDeleteIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static createDeleteIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    if-eqz p2, :cond_0

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    const-class v1, Lcom/sonyericsson/music/delete/DeleteActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 93
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "title"

    .line 94
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "folder_id"

    .line 95
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    .line 88
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Uri is not allowed to be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createDeleteTrackIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/music/delete/DeleteActivity;->createDeleteIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private deleteTracks()V
    .locals 7

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Lcom/sonyericsson/music/delete/DeleteTask;

    iget-object v3, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    iget-object v4, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mTitle:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->isSingleItem()Z

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mFolderId:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/delete/DeleteTask;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    .line 383
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

    .line 496
    iget-object v1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mRootUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "root"

    const-string v2, "tree"

    .line 498
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 499
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

    .line 321
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

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mStorageVolumes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object v2

    .line 329
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 330
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriPermission;

    .line 331
    invoke-virtual {v3}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 332
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

    .line 334
    iput-object v3, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mRootUri:Landroid/net/Uri;

    :cond_1
    return v1
.end method

.method private isSingleItem()Z
    .locals 2

    .line 505
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

    .line 173
    invoke-static {p0}, Lcom/sonyericsson/music/delete/DeleteDialog;->find(Landroidx/fragment/app/FragmentActivity;)Lcom/sonyericsson/music/delete/DeleteDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/delete/DeleteActivity;->showDeleteDialog(Ljava/lang/String;Landroid/net/Uri;)Z

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/delete/DeleteDialog;->setListener(Lcom/sonyericsson/music/delete/DeleteDialog$ConfirmationListener;)V

    :goto_0
    return-void
.end method

.method private showDeleteDialog(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 2

    .line 359
    invoke-static {p0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 360
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 365
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

    .line 370
    invoke-static {p0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 375
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/music/delete/LaunchDirectoryAccessDialog;->show(Landroidx/fragment/app/FragmentActivity;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 247
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 490
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    goto/16 :goto_1

    :pswitch_0
    if-eqz p3, :cond_2

    .line 465
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 468
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->getReplacedRootUri()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 469
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/delete/DeleteActivity;->completeWithDocumentUri(Landroid/net/Uri;)V

    .line 471
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 473
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result p3

    and-int/lit8 p3, p3, 0x2

    .line 472
    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 474
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->deleteTracks()V

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    goto :goto_1

    .line 482
    :cond_1
    iput-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShouldShowRetryDialog:Z

    goto :goto_1

    .line 485
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    goto :goto_1

    :pswitch_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_5

    .line 440
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->showLaunchDirectoryAccessDialog()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 441
    iput-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mLaunchedDirectoryAccessDlg:Z

    goto :goto_1

    .line 443
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_7

    .line 446
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 448
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/delete/DeleteActivity;->completeWithDocumentUri(Landroid/net/Uri;)V

    .line 450
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 452
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result p3

    and-int/lit8 p3, p3, 0x2

    .line 451
    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 454
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mTitle:Ljava/lang/String;

    iget-object p2, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteUri:Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/delete/DeleteActivity;->showDeleteDialog(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 455
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    .line 457
    :cond_6
    iput-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShowingDeleteDialog:Z

    goto :goto_1

    .line 459
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Lcom/sonyericsson/music/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteUri:Landroid/net/Uri;

    const-string v1, "title"

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mTitle:Ljava/lang/String;

    const-string v1, "folder_id"

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mFolderId:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 109
    new-instance p1, Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteUri:Landroid/net/Uri;

    sget-object v1, Lcom/sonyericsson/music/delete/DeleteActivity;->RETAIN_KEY_PREPARE_TASK:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1}, Lcom/sonyericsson/music/delete/PrepareDeletionTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    .line 111
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 112
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 114
    :cond_0
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object p1

    .line 116
    sget-object v0, Lcom/sonyericsson/music/delete/DeleteActivity;->RETAIN_KEY_PREPARE_TASK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    iput-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    .line 117
    sget-object v0, Lcom/sonyericsson/music/delete/DeleteActivity;->RETAIN_KEY_DELETE_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    if-nez v0, :cond_5

    if-eqz p1, :cond_6

    .line 121
    iget-object v0, p1, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;->mDeleteFiles:Ljava/util/List;

    iput-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    .line 122
    iget-object v0, p1, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;->mStorageVolumes:Ljava/util/List;

    iput-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mStorageVolumes:Ljava/util/List;

    .line 123
    iget-boolean v0, p1, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;->mShowingDeleteDialog:Z

    iput-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShowingDeleteDialog:Z

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 128
    iget-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShowingDeleteDialog:Z

    if-eqz v0, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->recoverDeleteDialog()V

    goto :goto_0

    .line 131
    :cond_1
    iget-boolean v0, p1, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;->mLaunchedSdcardAccessDlg:Z

    iput-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mLaunchedSdcardAccessDlg:Z

    .line 132
    iget p1, p1, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;->mSdcardAccessDialogType:I

    iput p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mSdcardAccessDialogType:I

    .line 134
    iget-boolean p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mLaunchedSdcardAccessDlg:Z

    if-eqz p1, :cond_6

    .line 136
    invoke-static {p0}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->find(Landroidx/fragment/app/FragmentActivity;)Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;

    move-result-object p1

    if-nez p1, :cond_2

    .line 138
    iget p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mSdcardAccessDialogType:I

    .line 139
    invoke-static {p0, p1, p0}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->show(Landroidx/fragment/app/FragmentActivity;ILcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;)V

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->setListener(Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x1c

    if-ne v0, v1, :cond_4

    .line 147
    iget-boolean p1, p1, Lcom/sonyericsson/music/delete/DeleteActivity$RetainData;->mLaunchedDirectoryAccessDlg:Z

    iput-boolean p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mLaunchedDirectoryAccessDlg:Z

    .line 152
    iget-boolean p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mLaunchedDirectoryAccessDlg:Z

    if-nez p1, :cond_6

    .line 153
    iget-boolean p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShowingDeleteDialog:Z

    if-eqz p1, :cond_6

    .line 154
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->recoverDeleteDialog()V

    goto :goto_0

    .line 160
    :cond_4
    iget-boolean p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShowingDeleteDialog:Z

    if-eqz p1, :cond_6

    .line 161
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->recoverDeleteDialog()V

    goto :goto_0

    .line 167
    :cond_5
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onDeletionConfirmed()V
    .locals 2

    .line 296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->hasExternalStorageContent()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 298
    iput-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShowingDeleteDialog:Z

    .line 300
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->isSdcardAccessAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 301
    iput v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mSdcardAccessDialogType:I

    .line 302
    iget v1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mSdcardAccessDialogType:I

    invoke-static {p0, v1, p0}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->show(Landroidx/fragment/app/FragmentActivity;ILcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;)V

    .line 303
    iput-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mLaunchedSdcardAccessDlg:Z

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mRootUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/delete/DeleteActivity;->completeWithDocumentUri(Landroid/net/Uri;)V

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->deleteTracks()V

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    goto :goto_0

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 314
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->deleteTracks()V

    .line 316
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onDeletionDenied()V
    .locals 0

    .line 288
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 230
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 232
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    .line 235
    sget-object v1, Lcom/sonyericsson/music/delete/DeleteActivity;->RETAIN_KEY_DELETE_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    sget-object v1, Lcom/sonyericsson/music/delete/DeleteActivity;->RETAIN_KEY_PREPARE_TASK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 239
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    const/4 v1, 0x1

    .line 240
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onLaunchingSdcardAccessCanceled()V
    .locals 0

    .line 394
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    return-void
.end method

.method public onLaunchingSdcardAccessConfirmed()V
    .locals 0

    .line 389
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->askForVolumeApproval()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 210
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/delete/DeleteActivity;->RETAIN_KEY_PREPARE_TASK:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 188
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    if-nez v0, :cond_0

    .line 191
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/delete/DeleteActivity;->RETAIN_KEY_PREPARE_TASK:Ljava/lang/String;

    .line 192
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/RetainManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    iput-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 199
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShouldShowRetryDialog:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShouldShowRetryDialog:Z

    const/4 v0, 0x2

    .line 202
    iput v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mSdcardAccessDialogType:I

    .line 203
    iget v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mSdcardAccessDialogType:I

    invoke-static {p0, v0, p0}, Lcom/sonyericsson/music/delete/LaunchSdcardAccessDialog;->show(Landroidx/fragment/app/FragmentActivity;ILcom/sonyericsson/music/delete/LaunchSdcardAccessDialog$ConfirmationListener;)V

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mLaunchedSdcardAccessDlg:Z

    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 9

    .line 220
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 222
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

    .line 258
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 259
    iput-object v0, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mPrepareDeletionTask:Lcom/sonyericsson/music/delete/PrepareDeletionTask;

    .line 261
    check-cast p2, Lcom/sonyericsson/music/delete/PrepareDeletionTask$PreparedData;

    if-eqz p2, :cond_3

    .line 264
    iget-object p1, p2, Lcom/sonyericsson/music/delete/PrepareDeletionTask$PreparedData;->mStorageVolumes:Ljava/util/List;

    iput-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mStorageVolumes:Ljava/util/List;

    .line 265
    iget-object p1, p2, Lcom/sonyericsson/music/delete/PrepareDeletionTask$PreparedData;->mDeleteFiles:Ljava/util/List;

    iput-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    .line 267
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteFiles:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 270
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->hasExternalStorageContent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->askForVolumeApproval()V

    goto :goto_0

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mTitle:Ljava/lang/String;

    iget-object p2, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mDeleteUri:Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/delete/DeleteActivity;->showDeleteDialog(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    :cond_1
    const/4 p1, 0x1

    .line 276
    iput-boolean p1, p0, Lcom/sonyericsson/music/delete/DeleteActivity;->mShowingDeleteDialog:Z

    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/music/delete/DeleteActivity;->finish()V

    goto :goto_0

    .line 282
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

    .line 183
    sget-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->DEFAULT_TRANSPARENT:Lcom/sonyericsson/music/ThemedActivity$Theme;

    return-object v0
.end method
