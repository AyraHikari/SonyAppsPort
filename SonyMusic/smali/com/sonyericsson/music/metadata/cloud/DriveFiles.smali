.class public Lcom/sonyericsson/music/metadata/cloud/DriveFiles;
.super Ljava/lang/Object;
.source "DriveFiles.java"


# static fields
.field private static final FIELDS:Ljava/lang/String; = "nextPageToken, files(id, name, mimeType, parents)"

.field static final FILES:Ljava/lang/String; = "\'me\' in owners AND trashed = false AND (mimeType = \'audio/aac\' OR mimeType = \'audio/aifc\' OR mimeType = \'audio/alac\' OR mimeType = \'audio/amr\' OR mimeType = \'audio/dsd\' OR mimeType = \'audio/flac\' OR mimeType = \'audio/x-flac\' OR mimeType = \'audio/mid\' OR mimeType = \'audio/x-mid\' OR mimeType = \'audio/midi\' OR mimeType = \'audio/x-midi\' OR mimeType = \'x-music/x-midi\' OR mimeType = \'audio/m4a\' OR mimeType = \'audio/x-m4a\' OR mimeType = \'audio/mp3\' OR mimeType = \'audio/x-mp3\' OR mimeType = \'audio/mp4\' OR mimeType = \'audio/mpeg\' OR mimeType = \'audio/mpeg3\' OR mimeType = \'audio/x-mpeg3\' OR mimeType = \'audio/mpg\' OR mimeType = \'audio/x-mpeg\' OR mimeType = \'audio/x-mpg\' OR mimeType = \'audio/ogg\' OR mimeType = \'audio/wav\' OR mimeType = \'audio/x-wav\' OR mimeType = \'audio/x-ms-wma\' OR mimeType = \'audio/x-aiff\')"

.field static final FOLDERS:Ljava/lang/String; = "\'me\' in owners AND trashed = false AND mimeType = \'application/vnd.google-apps.folder\'"

.field private static final MIME_TYPE_AAC:Ljava/lang/String; = "audio/aac"

.field private static final MIME_TYPE_AIFC:Ljava/lang/String; = "audio/aifc"

.field private static final MIME_TYPE_ALAC:Ljava/lang/String; = "audio/alac"

.field private static final MIME_TYPE_AMR:Ljava/lang/String; = "audio/amr"

.field private static final MIME_TYPE_DSD:Ljava/lang/String; = "audio/dsd"

.field private static final MIME_TYPE_FLAC:Ljava/lang/String; = "audio/flac"

.field public static final MIME_TYPE_FOLDER:Ljava/lang/String; = "application/vnd.google-apps.folder"

.field private static final MIME_TYPE_M4A:Ljava/lang/String; = "audio/m4a"

.field private static final MIME_TYPE_MID:Ljava/lang/String; = "audio/mid"

.field private static final MIME_TYPE_MIDI:Ljava/lang/String; = "audio/midi"

.field private static final MIME_TYPE_MP3:Ljava/lang/String; = "audio/mp3"

.field private static final MIME_TYPE_MP4:Ljava/lang/String; = "audio/mp4"

.field private static final MIME_TYPE_MPEG:Ljava/lang/String; = "audio/mpeg"

.field private static final MIME_TYPE_MPEG3:Ljava/lang/String; = "audio/mpeg3"

.field private static final MIME_TYPE_MPG:Ljava/lang/String; = "audio/mpg"

.field private static final MIME_TYPE_OGG:Ljava/lang/String; = "audio/ogg"

.field private static final MIME_TYPE_WAV:Ljava/lang/String; = "audio/wav"

.field private static final MIME_TYPE_XAIFF:Ljava/lang/String; = "audio/x-aiff"

.field private static final MIME_TYPE_XFLAC:Ljava/lang/String; = "audio/x-flac"

.field private static final MIME_TYPE_XM4A:Ljava/lang/String; = "audio/x-m4a"

.field private static final MIME_TYPE_XMID:Ljava/lang/String; = "audio/x-mid"

.field private static final MIME_TYPE_XMIDI:Ljava/lang/String; = "audio/x-midi"

.field private static final MIME_TYPE_XMP3:Ljava/lang/String; = "audio/x-mp3"

.field private static final MIME_TYPE_XMPEG:Ljava/lang/String; = "audio/x-mpeg"

.field private static final MIME_TYPE_XMPEG3:Ljava/lang/String; = "audio/x-mpeg3"

.field private static final MIME_TYPE_XMPG:Ljava/lang/String; = "audio/x-mpg"

.field private static final MIME_TYPE_XMSWMA:Ljava/lang/String; = "audio/x-ms-wma"

.field private static final MIME_TYPE_XMUSIC_XMIDI:Ljava/lang/String; = "x-music/x-midi"

.field private static final MIME_TYPE_XWAV:Ljava/lang/String; = "audio/x-wav"

.field private static final PAGE_SIZE:I = 0x3e8


# instance fields
.field private final mDriveService:Lcom/sonyericsson/music/metadata/GoogleDriveService;

.field private final mToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/metadata/GoogleDriveService;Ljava/lang/String;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/DriveFiles;->mDriveService:Lcom/sonyericsson/music/metadata/GoogleDriveService;

    .line 107
    iput-object p2, p0, Lcom/sonyericsson/music/metadata/cloud/DriveFiles;->mToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final fetch(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/metadata/cloud/DriveFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken$UnauthorizedException;
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/cloud/DriveFiles;->mDriveService:Lcom/sonyericsson/music/metadata/GoogleDriveService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/music/metadata/cloud/DriveFiles;->mToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "nextPageToken, files(id, name, mimeType, parents)"

    const/16 v6, 0x3e8

    move-object v4, p1

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lcom/sonyericsson/music/metadata/GoogleDriveService;->getFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    .line 122
    invoke-interface {v2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/metadata/cloud/DriveFileList;

    iget-object v1, v1, Lcom/sonyericsson/music/metadata/cloud/DriveFileList;->mFiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/metadata/cloud/DriveFileList;

    iget-object v1, v1, Lcom/sonyericsson/music/metadata/cloud/DriveFileList;->mNextPageToken:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v2}, Lretrofit2/Response;->code()I

    move-result v2

    const/16 v3, 0x191

    if-eq v2, v3, :cond_2

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    .line 137
    :cond_2
    new-instance p1, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken$UnauthorizedException;

    invoke-direct {p1}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken$UnauthorizedException;-><init>()V

    throw p1

    return-void
.end method
