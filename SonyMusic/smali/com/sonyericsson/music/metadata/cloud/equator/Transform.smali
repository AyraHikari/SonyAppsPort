.class public Lcom/sonyericsson/music/metadata/cloud/equator/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toCloudFile(Lcom/sonyericsson/music/metadata/cloud/DriveFile;)Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;
    .locals 10

    .line 53
    new-instance v9, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;

    iget-object v2, p0, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->mFileId:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->mMimeType:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->getParentsArray()[Ljava/lang/String;

    move-result-object v5

    const/4 v1, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILjava/lang/String;)V

    return-object v9
.end method

.method public static toCloudFiles(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/metadata/cloud/DriveFile;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/metadata/cloud/DriveFile;

    .line 74
    invoke-static {v1}, Lcom/sonyericsson/music/metadata/cloud/equator/Transform;->toCloudFile(Lcom/sonyericsson/music/metadata/cloud/DriveFile;)Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method static toDriveFile(Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;)Lcom/sonyericsson/music/metadata/cloud/DriveFile;
    .locals 2

    .line 26
    new-instance v0, Lcom/sonyericsson/music/metadata/cloud/DriveFile;

    invoke-direct {v0}, Lcom/sonyericsson/music/metadata/cloud/DriveFile;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getFileId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->mFileId:Ljava/lang/String;

    .line 29
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->mName:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->mMimeType:Ljava/lang/String;

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getParents()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->mParents:Ljava/util/List;

    return-object v0
.end method

.method public static toDriveFiles(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/metadata/cloud/DriveFile;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;

    .line 44
    invoke-static {v1}, Lcom/sonyericsson/music/metadata/cloud/equator/Transform;->toDriveFile(Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;)Lcom/sonyericsson/music/metadata/cloud/DriveFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method
