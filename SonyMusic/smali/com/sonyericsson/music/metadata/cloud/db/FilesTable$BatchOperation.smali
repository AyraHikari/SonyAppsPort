.class public Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;
.super Ljava/lang/Object;
.source "FilesTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchOperation"
.end annotation


# instance fields
.field private final contentProviderOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final deleteFileIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final insertValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->contentProviderOperations:Ljava/util/ArrayList;

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->deleteFileIds:Ljava/util/ArrayList;

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->insertValues:Ljava/util/ArrayList;

    .line 287
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->mContext:Landroid/content/Context;

    return-void
.end method

.method static createSubLists(Ljava/util/ArrayList;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;>;"
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v2, v0

    const/4 v3, 0x0

    :goto_0
    if-lez v2, :cond_1

    if-lt v2, p1, :cond_0

    .line 354
    new-instance v4, Ljava/util/ArrayList;

    mul-int v5, v3, p1

    add-int v6, v5, p1

    invoke-virtual {p0, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 356
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    mul-int v5, v3, p1

    invoke-virtual {p0, v5, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, p1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public appendDelete(I)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->deleteFileIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendInsert(Landroid/content/ContentValues;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->insertValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendUpdateDownloadState(Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;I)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->contentProviderOperations:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->addUpdateDownloadStateOperation(Ljava/util/List;Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;ILjava/lang/String;)V

    return-void
.end method

.method public perform()V
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->deleteFileIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->contentProviderOperations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->deleteFileIds:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->addDeleteOperation(Ljava/util/List;Ljava/util/List;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->insertValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->contentProviderOperations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->insertValues:Ljava/util/ArrayList;

    .line 311
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ContentValues;

    .line 310
    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->addInsertOperations(Ljava/util/List;[Landroid/content/ContentValues;)V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->contentProviderOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->contentProviderOperations:Ljava/util/ArrayList;

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->createSubLists(Ljava/util/ArrayList;I)Ljava/util/List;

    move-result-object v0

    .line 322
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 324
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.sonyericsson.music.musicinfo"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->contentProviderOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 334
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->deleteFileIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 335
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable$BatchOperation;->insertValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
