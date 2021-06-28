.class public final Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;
.super Ljava/lang/Object;
.source "CloudFile.java"


# instance fields
.field private final mAccountId:I

.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mArtworkPath:Ljava/lang/String;

.field private final mDownloadState:I

.field private mDuration:I

.field private final mFileId:Ljava/lang/String;

.field private final mFilePath:Ljava/lang/String;

.field private final mId:I

.field private mMetadataRetryCount:I

.field private mMetadataStatus:I

.field private final mMimeType:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mParents:[Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mMetadataStatus:I

    .line 30
    iput v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mMetadataRetryCount:I

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mTitle:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mAlbum:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mArtist:Ljava/lang/String;

    .line 34
    iput v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mDuration:I

    .line 35
    iput-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mArtworkPath:Ljava/lang/String;

    .line 39
    iput p1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mId:I

    .line 40
    iput-object p2, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mName:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mFileId:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mMimeType:Ljava/lang/String;

    .line 43
    invoke-virtual {p5}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mParents:[Ljava/lang/String;

    .line 44
    iput p6, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mDownloadState:I

    .line 45
    iput p7, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mAccountId:I

    .line 46
    iput-object p8, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mMetadataStatus:I

    .line 30
    iput v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mMetadataRetryCount:I

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mTitle:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mAlbum:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mArtist:Ljava/lang/String;

    .line 34
    iput v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mDuration:I

    .line 35
    iput-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mArtworkPath:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/sonyericsson/music/common/CursorWrapper;->wrap(Landroid/database/Cursor;)Lcom/sonyericsson/music/common/CursorWrapper;

    move-result-object p1

    const-string v0, "_id"

    .line 52
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/CursorWrapper;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mId:I

    const-string v0, "file_name"

    .line 53
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/CursorWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mName:Ljava/lang/String;

    const-string v0, "file_id"

    .line 54
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/CursorWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mFileId:Ljava/lang/String;

    const-string v0, "mime_type"

    .line 55
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/CursorWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mMimeType:Ljava/lang/String;

    const-string v0, "parents"

    .line 57
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/CursorWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 58
    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mParents:[Ljava/lang/String;

    const-string v0, "download_state"

    .line 60
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/CursorWrapper;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mDownloadState:I

    const-string v0, "account_id"

    .line 61
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/CursorWrapper;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mAccountId:I

    const-string v0, "file_path"

    .line 62
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/CursorWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 182
    instance-of v0, p1, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;

    if-nez v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    check-cast p1, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;

    .line 188
    new-instance v0, Lcom/sonyericsson/music/metadata/cloud/equator/FileEquator;

    .line 189
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getFileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getParents()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getParents()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/sonyericsson/music/metadata/cloud/equator/FileEquator;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/cloud/equator/FileEquator;->check()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAccountId()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mAccountId:I

    return v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getArtworkPath()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mArtworkPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadState()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mDownloadState:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mDuration:I

    return v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mFileId:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mId:I

    return v0
.end method

.method public getMetadataRetryCount()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mMetadataRetryCount:I

    return v0
.end method

.method public getMetadataStatus()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mMetadataStatus:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParents()[Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mParents:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mFileId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 176
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getParents()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mAlbum:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mArtist:Ljava/lang/String;

    return-void
.end method

.method public setArtworkPath(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mArtworkPath:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mDuration:I

    return-void
.end method

.method public setMetadataRetryCount(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mMetadataRetryCount:I

    return-void
.end method

.method public setMetadataStatus(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mMetadataStatus:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nfileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mFileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nparents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    iget-object v2, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mParents:[Ljava/lang/String;

    .line 159
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ndownloadState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mDownloadState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\naccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mAccountId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nfilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmetadataStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mMetadataStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmetadataRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mMetadataRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ntitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nalbum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nartist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nduration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nartworkPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->mArtworkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
