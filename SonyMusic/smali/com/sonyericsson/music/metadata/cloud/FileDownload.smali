.class public Lcom/sonyericsson/music/metadata/cloud/FileDownload;
.super Ljava/lang/Object;
.source "FileDownload.java"


# static fields
.field private static final DOWNLOAD_FILE_BASE_URL:Ljava/lang/String; = "https://www.googleapis.com/drive/v3/files"


# instance fields
.field private final mAccountId:I

.field private final mAccountName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mFileId:Ljava/lang/String;

.field private final mFileName:Ljava/lang/String;

.field private final mService:Lcom/sonyericsson/music/metadata/GoogleDriveService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/metadata/GoogleDriveService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mService:Lcom/sonyericsson/music/metadata/GoogleDriveService;

    .line 59
    iput-object p2, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mContext:Landroid/content/Context;

    .line 60
    iput-object p3, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mFileId:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mFileName:Ljava/lang/String;

    .line 62
    iput p5, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mAccountId:I

    .line 63
    iput-object p6, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mAccountName:Ljava/lang/String;

    return-void
.end method

.method private static downloadFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/sonyericsson/music/metadata/GoogleDriveService;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken$UnauthorizedException;
        }
    .end annotation

    .line 155
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "media"

    invoke-interface {p3, p0, p2, v0}, Lcom/sonyericsson/music/metadata/GoogleDriveService;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    .line 157
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 160
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sonyericsson/music/common/IOUtils;->writeResponseBodyToFile(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 161
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lretrofit2/Response;->code()I

    move-result p0

    const/16 p1, 0x191

    if-eq p0, p1, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    new-instance p0, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken$UnauthorizedException;

    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken$UnauthorizedException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLink(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const-string v0, "https://www.googleapis.com/drive/v3/files"

    .line 147
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "alt"

    const-string v1, "media"

    .line 148
    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method execute()Z
    .locals 10

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mContext:Landroid/content/Context;

    const v1, 0x7f100263

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mContext:Landroid/content/Context;

    const/16 v2, 0x64

    .line 76
    invoke-static {v1, v0, v2}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->get(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveUtils;->isDownloadAllowed(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 79
    invoke-static {}, Lcom/sonyericsson/music/common/MusicUtils;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/music/authentication/GoogleAccount;->get(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 85
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mFileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/music/metadata/cloud/DownloadDirectory;->create(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken$UnauthorizedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mFileName:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/music/metadata/cloud/DownloadDirectory;->getNextAvailable(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 92
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 94
    iget-object v4, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x2

    iget v6, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mAccountId:I

    iget-object v7, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mFileId:Ljava/lang/String;

    invoke-static {v4, v5, v3, v6, v7}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->updateDownloadState(Landroid/content/ContentResolver;ILjava/lang/String;ILjava/lang/String;)I

    .line 97
    iget-object v4, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken;->get(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken$UnauthorizedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_1 .. :try_end_1} :catch_4

    .line 98
    :try_start_2
    iget-object v4, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mFileId:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mService:Lcom/sonyericsson/music/metadata/GoogleDriveService;

    invoke-static {v0, v2, v4, v5}, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->downloadFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/sonyericsson/music/metadata/GoogleDriveService;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    .line 103
    iget-object v4, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x3

    .line 106
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mAccountId:I

    iget-object v9, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mFileId:Ljava/lang/String;

    .line 103
    invoke-static {v4, v6, v7, v8, v9}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->updateDownloadState(Landroid/content/ContentResolver;ILjava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 111
    iget-object v6, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mContext:Landroid/content/Context;

    new-array v7, v5, [Ljava/lang/String;

    .line 112
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    .line 111
    invoke-static {v6, v7, v3, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_2
    .catch Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken$UnauthorizedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_2 .. :try_end_2} :catch_4

    if-lez v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-object v0, v3

    goto :goto_1

    :catch_1
    move-object v2, v3

    goto :goto_2

    :catch_2
    move-object v0, v3

    move-object v2, v0

    .line 118
    :catch_3
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken;->clear(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    .line 121
    :catch_4
    :goto_2
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    goto :goto_3

    :cond_3
    move-object v2, v3

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 127
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 128
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5

    .line 129
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x4

    iget v4, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mAccountId:I

    iget-object v5, p0, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->mFileId:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->updateDownloadState(Landroid/content/ContentResolver;ILjava/lang/String;ILjava/lang/String;)I

    :cond_6
    return v1
.end method
