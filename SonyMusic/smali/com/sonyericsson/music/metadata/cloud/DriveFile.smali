.class public Lcom/sonyericsson/music/metadata/cloud/DriveFile;
.super Ljava/lang/Object;
.source "DriveFile.java"


# instance fields
.field public mFileId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public mMimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mimeType"
    .end annotation
.end field

.field public mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public mParents:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parents"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 56
    instance-of v0, p1, Lcom/sonyericsson/music/metadata/cloud/DriveFile;

    if-nez v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    check-cast p1, Lcom/sonyericsson/music/metadata/cloud/DriveFile;

    .line 62
    new-instance v0, Lcom/sonyericsson/music/metadata/cloud/equator/FileEquator;

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->getFileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->getParentsArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->getParentsArray()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/sonyericsson/music/metadata/cloud/equator/FileEquator;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/cloud/equator/FileEquator;->check()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->mFileId:Ljava/lang/String;

    return-object v0
.end method

.method public getParents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->mParents:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getParentsArray()[Ljava/lang/String;
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->getParents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->mFileId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->getParentsArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
