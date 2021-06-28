.class Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;
.super Ljava/lang/Object;
.source "SynchronizeFilesBatch.java"


# instance fields
.field private final mAccountId:I

.field private final mBatch:Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;

.field private final mContext:Landroid/content/Context;

.field private mLocalFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/metadata/cloud/DriveFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/metadata/cloud/DriveFile;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->mBatch:Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;

    .line 42
    iput p2, p0, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->mAccountId:I

    .line 44
    iput-object p3, p0, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->mRemoteFiles:Ljava/util/List;

    return-void
.end method

.method private addNewFiles()V
    .locals 4

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->mRemoteFiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->mLocalFiles:Ljava/util/List;

    invoke-static {v1}, Lcom/sonyericsson/music/metadata/cloud/equator/Transform;->toDriveFiles(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 95
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/metadata/cloud/DriveFile;

    .line 96
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->mBatch:Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;

    iget v3, p0, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->mAccountId:I

    invoke-static {v1, v3}, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->getContentValues(Lcom/sonyericsson/music/metadata/cloud/DriveFile;I)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->appendInsert(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getContentValues(Lcom/sonyericsson/music/metadata/cloud/DriveFile;I)Landroid/content/ContentValues;
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->mParents:Ljava/util/List;

    .line 125
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    .line 127
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "parents"

    .line 129
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    :goto_0
    const-string v0, "mime_type"

    .line 134
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "account_id"

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "file_id"

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->mFileId:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "file_name"

    .line 137
    iget-object p0, p0, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->mName:Ljava/lang/String;

    invoke-virtual {v1, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getLocalCloudFiles()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->mAccountId:I

    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->getCloudFiles(Landroid/content/ContentResolver;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->mLocalFiles:Ljava/util/List;

    return-void
.end method

.method private static isEmpty(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 143
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private removeFilesDeletedOnDrive()V
    .locals 3

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->mLocalFiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->mRemoteFiles:Ljava/util/List;

    invoke-static {v1}, Lcom/sonyericsson/music/metadata/cloud/equator/Transform;->toCloudFiles(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 80
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;

    .line 81
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->mBatch:Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->appendDelete(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateDownloadState()V
    .locals 4

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->mLocalFiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->mRemoteFiles:Ljava/util/List;

    invoke-static {v1}, Lcom/sonyericsson/music/metadata/cloud/equator/Transform;->toCloudFiles(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    .line 111
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;

    .line 113
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/common/FileUtils;->fileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->mBatch:Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->appendUpdateDownloadState(Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method perform()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->getLocalCloudFiles()V

    .line 59
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->removeFilesDeletedOnDrive()V

    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->addNewFiles()V

    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->updateDownloadState()V

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->mBatch:Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->perform()V

    return-void
.end method
