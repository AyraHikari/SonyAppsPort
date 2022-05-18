.class public Lcom/sonyericsson/music/metadata/cloud/GoogleDrive;
.super Ljava/lang/Object;
.source "GoogleDrive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$FindParentsResult;,
        Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$NoRootFolderException;
    }
.end annotation


# static fields
.field public static final BASE_URL:Ljava/lang/String; = "https://www.googleapis.com/"

.field private static final HOST:Ljava/lang/String; = "www.googleapis.com"

.field public static final ROOT_FOLDER:Ljava/lang/String; = "root"

.field private static final sService:Lcom/sonyericsson/music/metadata/GoogleDriveService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "https://www.googleapis.com/"

    .line 51
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 52
    invoke-static {}, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive;->createOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 53
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 54
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/music/metadata/GoogleDriveService;

    .line 55
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/metadata/GoogleDriveService;

    sput-object v0, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive;->sService:Lcom/sonyericsson/music/metadata/GoogleDriveService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addRootFolder(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/metadata/cloud/DriveFile;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$NoRootFolderException;
        }
    .end annotation

    const-string v0, "root"

    .line 300
    invoke-static {p1, v0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive;->getDriveFile(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/music/metadata/cloud/DriveFile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "root"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->mParents:Ljava/util/List;

    .line 304
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 306
    :cond_0
    new-instance p0, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$NoRootFolderException;

    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$NoRootFolderException;-><init>()V

    throw p0
.end method

.method private static createOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 67
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 68
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8

    .line 163
    new-instance v7, Lcom/sonyericsson/music/metadata/cloud/FileDownload;

    sget-object v1, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive;->sService:Lcom/sonyericsson/music/metadata/GoogleDriveService;

    move-object v0, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/music/metadata/cloud/FileDownload;-><init>(Lcom/sonyericsson/music/metadata/GoogleDriveService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    invoke-virtual {v7}, Lcom/sonyericsson/music/metadata/cloud/FileDownload;->execute()Z

    move-result p0

    return p0
.end method

.method static fetchAndUpdateMetadataForFolder(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonyericsson/music/metadata/cloud/db/AccountTable;->getAccountForId(Landroid/content/ContentResolver;I)Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/authentication/GoogleAccount;->get(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 136
    :try_start_0
    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken;->get(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "file_name COLLATE NOCASE"

    const-string v3, "application/vnd.google-apps.folder"

    invoke-static {v1, p1, p2, v2, v3}, Lcom/sonyericsson/music/metadata/cloud/db/FilesTable;->getCloudFiles(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 142
    new-instance v1, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;

    invoke-direct {v1, p0, p1, v0}, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 143
    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/metadata/cloud/FileMetadataRetriever;->retrieveAndUpdate(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static findParents(Ljava/util/Set;Ljava/util/List;)Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$FindParentsResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/metadata/cloud/DriveFile;",
            ">;)",
            "Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$FindParentsResult;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/music/metadata/cloud/DriveFile;

    .line 244
    iget-object v5, v4, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->mFileId:Ljava/lang/String;

    invoke-interface {p0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 246
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v4}, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->getParents()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 249
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 250
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 253
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_2
    new-instance p0, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$FindParentsResult;

    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$FindParentsResult;-><init>()V

    .line 258
    iput-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$FindParentsResult;->parentIds:Ljava/util/Set;

    .line 259
    iput-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$FindParentsResult;->parentsReferredTo:Ljava/util/List;

    .line 260
    iput-object v2, p0, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$FindParentsResult;->parentsNotReferredTo:Ljava/util/List;

    .line 261
    iput-boolean v3, p0, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$FindParentsResult;->foundParentsReferredTo:Z

    return-object p0
.end method

.method private static getDriveFile(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/music/metadata/cloud/DriveFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    sget-object v0, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive;->sService:Lcom/sonyericsson/music/metadata/GoogleDriveService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/music/metadata/GoogleDriveService;->getFile(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    .line 313
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    .line 315
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 316
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/metadata/cloud/DriveFile;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static mergeAndTrim(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/metadata/cloud/DriveFile;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/metadata/cloud/DriveFile;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/metadata/cloud/DriveFile;",
            ">;"
        }
    .end annotation

    .line 198
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive;->removeFilesWithNoParents(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 204
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 206
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/metadata/cloud/DriveFile;

    .line 207
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->getParents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_1

    .line 216
    invoke-static {v1, p1}, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive;->findParents(Ljava/util/Set;Ljava/util/List;)Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$FindParentsResult;

    move-result-object p0

    .line 218
    iget-boolean p1, p0, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$FindParentsResult;->foundParentsReferredTo:Z

    .line 219
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$FindParentsResult;->parentsReferredTo:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$FindParentsResult;->parentIds:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 221
    iget-object p0, p0, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$FindParentsResult;->parentsNotReferredTo:Ljava/util/List;

    move v3, p1

    move-object p1, p0

    move p0, v3

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private static removeFilesWithNoParents(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/metadata/cloud/DriveFile;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/metadata/cloud/DriveFile;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/metadata/cloud/DriveFile;

    .line 287
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/cloud/DriveFile;->getParents()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 289
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 290
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static synchronize(Landroid/content/Context;I)Z
    .locals 6

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonyericsson/music/metadata/cloud/db/AccountTable;->getAccountForId(Landroid/content/ContentResolver;I)Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/authentication/GoogleAccount;->get(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 92
    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken;->get(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :try_start_1
    invoke-static {p0, p1, v5}, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive;->synchronizeFiles(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken$UnauthorizedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    goto :goto_0

    .line 97
    :catch_0
    :try_start_2
    invoke-static {p0, v5}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken;->clear(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-nez v3, :cond_2

    if-gez v4, :cond_0

    goto :goto_1

    :catch_1
    nop

    goto :goto_1

    .line 108
    :catch_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, p1, v2}, Lcom/sonyericsson/music/metadata/cloud/db/AccountTable;->updateState(Landroid/content/ContentResolver;II)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 117
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    :goto_2
    invoke-static {p0, p1, v1}, Lcom/sonyericsson/music/metadata/cloud/db/AccountTable;->updateSyncState(Landroid/content/ContentResolver;II)I

    return v3
.end method

.method private static synchronizeFiles(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;,
            Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken$UnauthorizedException;
        }
    .end annotation

    .line 170
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/sonyericsson/music/metadata/cloud/DriveFiles;

    sget-object v1, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive;->sService:Lcom/sonyericsson/music/metadata/GoogleDriveService;

    invoke-direct {v0, v1, p2}, Lcom/sonyericsson/music/metadata/cloud/DriveFiles;-><init>(Lcom/sonyericsson/music/metadata/GoogleDriveService;Ljava/lang/String;)V

    const-string v1, "\'me\' in owners AND trashed = false AND (mimeType = \'audio/aac\' OR mimeType = \'audio/aifc\' OR mimeType = \'audio/alac\' OR mimeType = \'audio/amr\' OR mimeType = \'audio/dsd\' OR mimeType = \'audio/flac\' OR mimeType = \'audio/x-flac\' OR mimeType = \'audio/mid\' OR mimeType = \'audio/x-mid\' OR mimeType = \'audio/midi\' OR mimeType = \'audio/x-midi\' OR mimeType = \'x-music/x-midi\' OR mimeType = \'audio/m4a\' OR mimeType = \'audio/x-m4a\' OR mimeType = \'audio/mp3\' OR mimeType = \'audio/x-mp3\' OR mimeType = \'audio/mp4\' OR mimeType = \'audio/mpeg\' OR mimeType = \'audio/mpeg3\' OR mimeType = \'audio/x-mpeg3\' OR mimeType = \'audio/mpg\' OR mimeType = \'audio/x-mpeg\' OR mimeType = \'audio/x-mpg\' OR mimeType = \'audio/ogg\' OR mimeType = \'audio/wav\' OR mimeType = \'audio/x-wav\' OR mimeType = \'audio/x-ms-wma\' OR mimeType = \'audio/x-aiff\')"

    .line 176
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/metadata/cloud/DriveFiles;->fetch(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "\'me\' in owners AND trashed = false AND mimeType = \'application/vnd.google-apps.folder\'"

    .line 177
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/metadata/cloud/DriveFiles;->fetch(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-static {v1, v0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive;->mergeAndTrim(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 182
    :try_start_0
    invoke-static {v0, p2}, Lcom/sonyericsson/music/metadata/cloud/GoogleDrive;->addRootFolder(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonyericsson/music/metadata/cloud/GoogleDrive$NoRootFolderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :catch_0
    new-instance p2, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;

    invoke-direct {p2, p0, p1, v0}, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 187
    invoke-virtual {p2}, Lcom/sonyericsson/music/metadata/cloud/SynchronizeFilesBatch;->perform()V

    :cond_0
    return-void
.end method
