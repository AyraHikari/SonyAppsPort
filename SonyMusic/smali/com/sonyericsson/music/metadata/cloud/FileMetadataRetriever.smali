.class Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;
.super Ljava/lang/Object;
.source "FileMetadataRetriever.java"


# static fields
.field private static final MIME_TYPE_FOLDER:Ljava/lang/String; = "application/vnd.google-apps.folder"


# instance fields
.field private final mAccountId:I

.field private final mContext:Landroid/content/Context;

.field private final mToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;->mContext:Landroid/content/Context;

    .line 46
    iput p2, p0, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;->mAccountId:I

    .line 47
    iput-object p3, p0, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;->mToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method retrieveAndUpdate(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 55
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;->mToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {v0}, Lcom/sonymobile/music/common/NetworkConnectivityUtil;->getConnectedNetworkType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 58
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;

    .line 61
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getMetadataStatus()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    if-eq v3, v1, :cond_0

    const-string v5, "application/vnd.google-apps.folder"

    .line 64
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;->mAccountId:I

    invoke-static {v5, v6}, Lcom/sonyericsson/music/metadata/cloud/db/AccountTable;->getAccountForId(Landroid/content/ContentResolver;I)Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 71
    iget-object v5, p0, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_4

    .line 77
    :cond_2
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getFileId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->getLink(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 79
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "Authorization"

    .line 80
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bearer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;->mToken:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    .line 83
    :try_start_0
    invoke-virtual {v0, v5, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v5, 0x7

    .line 85
    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-virtual {v0, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9

    .line 88
    invoke-virtual {v0, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    .line 98
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 99
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .line 104
    :goto_1
    invoke-virtual {v2, v5}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->setTitle(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2, v6}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->setAlbum(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2, v8}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->setArtist(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2, v9}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->setDuration(I)V

    .line 109
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v6

    .line 110
    iget-object v8, p0, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getFileId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Lcom/sonyericsson/music/common/AlbumArtUtils;->saveGoogleDriveArtwork(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v6

    .line 118
    invoke-virtual {v2, v6}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->setArtworkPath(Ljava/lang/String;)V

    .line 120
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 121
    invoke-virtual {v2, v4}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->setMetadataStatus(I)V

    goto :goto_2

    .line 123
    :cond_4
    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->setMetadataStatus(I)V

    .line 126
    :goto_2
    iget-object v5, p0, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;->mAccountId:I

    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getFileId()Ljava/lang/String;

    move-result-object v8

    .line 126
    invoke-static {v5, v6, v8, v2}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->updateMetadata(Landroid/content/ContentResolver;ILjava/lang/String;Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;)I
    :try_end_0
    .catch Lcom/sonyericsson/music/common/AlbumArtUtils$ExternalStorageNotMountedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    .line 136
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getMetadataRetryCount()I

    move-result v5

    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    if-lt v5, v4, :cond_5

    .line 152
    invoke-virtual {v2, v4}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->setMetadataStatus(I)V

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 157
    invoke-virtual {v2, v5}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->setMetadataRetryCount(I)V

    goto :goto_3

    .line 164
    :cond_6
    invoke-virtual {v2, v6}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->setMetadataStatus(I)V

    add-int/lit8 v5, v5, 0x1

    .line 165
    invoke-virtual {v2, v5}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->setMetadataRetryCount(I)V

    .line 168
    :goto_3
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;->mAccountId:I

    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getFileId()Ljava/lang/String;

    move-result-object v5

    .line 168
    invoke-static {v3, v4, v5, v2}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->updateMetadata(Landroid/content/ContentResolver;ILjava/lang/String;Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;)I

    .line 171
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 172
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    goto/16 :goto_0

    .line 129
    :catch_1
    invoke-virtual {v2, v7}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->setMetadataStatus(I)V

    .line 131
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;->mAccountId:I

    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getFileId()Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-static {v3, v4, v5, v2}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->updateMetadata(Landroid/content/ContentResolver;ILjava/lang/String;Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;)I

    goto/16 :goto_0

    .line 176
    :cond_7
    :goto_4
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_8
    return-void
.end method
