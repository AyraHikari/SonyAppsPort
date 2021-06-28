.class public Lcom/sonyericsson/music/http/HttpTask;
.super Ljava/lang/Object;
.source "HttpTask.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpRequestHandler;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/music/http/HttpTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Ljava/io/OutputStream;Lorg/apache/http/RequestLine;Lcom/sonyericsson/music/http/RangeFile;Lcom/sonyericsson/music/http/ByteRange;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/music/http/HttpTask;->sendAsFixedLength(Ljava/io/OutputStream;Lorg/apache/http/RequestLine;Lcom/sonyericsson/music/http/RangeFile;Lcom/sonyericsson/music/http/ByteRange;)V

    return-void
.end method

.method static synthetic access$100(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-static {p0, p1}, Lcom/sonyericsson/music/http/HttpTask;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    .line 220
    new-array v0, v0, [B

    .line 222
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 223
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 226
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private getAlbumArtInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 1

    const-string v0, "album_art"

    .line 201
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/high16 p3, 0x7f0f0000

    if-eqz p4, :cond_0

    .line 203
    iget-object p1, p0, Lcom/sonyericsson/music/http/HttpTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 206
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 211
    :catch_0
    iget-object p1, p0, Lcom/sonyericsson/music/http/HttpTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getLocalAlbumArtUrl(Ljava/lang/String;)Landroid/net/Uri;
    .locals 8

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/music/http/HttpTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 p1, 0x2

    new-array v3, p1, [Ljava/lang/String;

    const-string p1, "album"

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const-string p1, "artist"

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 186
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "artist"

    .line 187
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "album"

    .line 189
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 193
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object p1, v0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 194
    throw v0

    :cond_1
    move-object p1, v0

    .line 197
    :goto_1
    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private static sendAsFixedLength(Ljava/io/OutputStream;Lorg/apache/http/RequestLine;Lcom/sonyericsson/music/http/RangeFile;Lcom/sonyericsson/music/http/ByteRange;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    :try_start_0
    invoke-virtual {p2}, Lcom/sonyericsson/music/http/RangeFile;->getFileLength()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    if-eqz p3, :cond_0

    .line 236
    invoke-virtual {p3, v0, v1}, Lcom/sonyericsson/music/http/ByteRange;->getStart(J)J

    move-result-wide v4

    .line 237
    invoke-virtual {p3, v0, v1}, Lcom/sonyericsson/music/http/ByteRange;->getEnd(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    sub-long/2addr v0, v2

    .line 243
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string p3, "HEAD"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const/16 p1, 0x2000

    .line 244
    new-array p1, p1, [B

    .line 248
    array-length p3, p1

    sub-long v6, v0, v4

    add-long/2addr v6, v2

    int-to-long v8, p3

    cmp-long v10, v6, v8

    if-gez v10, :cond_1

    long-to-int p3, v6

    .line 253
    :cond_1
    invoke-virtual {p2, p1, v4, v5, p3}, Lcom/sonyericsson/music/http/RangeFile;->getRange([BJI)I

    move-result v6

    :cond_2
    :goto_1
    cmp-long v7, v4, v0

    if-gez v7, :cond_4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    const/4 v7, 0x0

    .line 255
    invoke-virtual {p0, p1, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v7, v6

    add-long/2addr v4, v7

    sub-long v7, v0, v4

    add-long/2addr v7, v2

    int-to-long v9, p3

    cmp-long v11, v7, v9

    if-gez v11, :cond_3

    long-to-int p3, v7

    :cond_3
    cmp-long v7, v4, v0

    if-gez v7, :cond_2

    .line 263
    invoke-virtual {p2, p1, v4, v5, p3}, Lcom/sonyericsson/music/http/RangeFile;->getRange([BJI)I

    move-result v6

    goto :goto_1

    .line 267
    :cond_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :cond_5
    invoke-virtual {p2}, Lcom/sonyericsson/music/http/RangeFile;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Lcom/sonyericsson/music/http/RangeFile;->close()V

    .line 271
    throw p0

    return-void
.end method


# virtual methods
.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 51
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    .line 54
    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, ""

    .line 58
    iget-object v2, v7, Lcom/sonyericsson/music/http/HttpTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 61
    invoke-static {}, Lcom/sonyericsson/music/http/CastCipher;->getInstance()Lcom/sonyericsson/music/http/CastCipher;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sonyericsson/music/http/CastCipher;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, "/"

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    .line 66
    aget-object v11, v0, v10

    const/4 v2, 0x1

    .line 67
    aget-object v0, v0, v2

    const-string v3, "track"

    .line 69
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 73
    invoke-static {v9, v0}, Lcom/sonyericsson/music/common/DBUtils;->getDataPathForUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 74
    sget-object v3, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    move-object v13, v0

    const/4 v0, 0x0

    const/4 v12, 0x0

    goto :goto_2

    :cond_1
    const-string v3, "album_art"

    .line 78
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 81
    invoke-direct {v7, v0}, Lcom/sonyericsson/music/http/HttpTask;->getLocalAlbumArtUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 82
    iget-object v3, v7, Lcom/sonyericsson/music/http/HttpTask;->mContext:Landroid/content/Context;

    const-string v6, "art_path"

    invoke-static {v3, v0, v6}, Lcom/sonyericsson/music/common/DBUtils;->getArtDataFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 84
    :goto_1
    sget-object v6, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    move-object v13, v0

    move v12, v3

    const/4 v0, 0x0

    goto :goto_2

    .line 88
    :cond_4
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    move-object v13, v5

    const/4 v0, 0x1

    const/4 v12, 0x0

    :goto_2
    if-nez v0, :cond_e

    const-string v3, "Range"

    move-object/from16 v6, p1

    .line 96
    invoke-interface {v6, v3}, Lorg/apache/http/HttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 97
    array-length v6, v3

    if-lez v6, :cond_5

    .line 98
    aget-object v3, v3, v10

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 100
    :try_start_0
    invoke-static {v3}, Lcom/sonyericsson/music/http/ByteRange;->parse(Ljava/lang/String;)Lcom/sonyericsson/music/http/ByteRange;

    move-result-object v3
    :try_end_0
    .catch Lcom/sonyericsson/music/http/ByteRange$RangeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v3

    const/4 v15, 0x1

    goto :goto_3

    :catch_0
    :cond_5
    move-object v14, v5

    const/4 v15, 0x0

    .line 109
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v2

    goto :goto_4

    :cond_6
    move-object/from16 v16, v5

    .line 110
    :goto_4
    invoke-direct {v7, v9, v13, v11, v12}, Lcom/sonyericsson/music/http/HttpTask;->getAlbumArtInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v6

    if-eqz v16, :cond_7

    .line 112
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v17, 0x0

    cmp-long v3, v1, v17

    if-gtz v3, :cond_8

    :cond_7
    if-eqz v6, :cond_e

    :cond_8
    const-wide/16 v17, -0x1

    if-eqz v6, :cond_9

    .line 116
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    move-wide/from16 v19, v0

    goto :goto_5

    :cond_9
    move-wide/from16 v19, v17

    .line 117
    :goto_5
    new-instance v5, Lcom/sonyericsson/music/http/HttpTask$1;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, v16

    move-object v10, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/music/http/HttpTask$1;-><init>(Lcom/sonyericsson/music/http/HttpTask;Ljava/lang/String;Ljava/io/File;Lorg/apache/http/RequestLine;Lcom/sonyericsson/music/http/ByteRange;Ljava/io/InputStream;)V

    const-string v0, "Accept-Ranges"

    const-string v1, "bytes"

    .line 139
    invoke-interface {v8, v0, v1}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "track"

    .line 140
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v16, :cond_a

    if-eqz v13, :cond_a

    .line 141
    invoke-virtual {v9, v13}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Disposition"

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment; filename="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v10, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v17

    move-wide/from16 v0, v17

    goto :goto_7

    :cond_a
    const-string v0, "album_art"

    .line 145
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v13, :cond_c

    .line 146
    invoke-virtual {v9, v13}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v12, :cond_b

    const-string v0, "image/jpeg"

    .line 148
    invoke-virtual {v10, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    goto :goto_6

    .line 150
    :cond_b
    invoke-virtual {v10, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    :goto_6
    const-string v0, "Content-Disposition"

    const-string v1, "attachment; filename=album_art"

    .line 152
    invoke-interface {v8, v0, v1}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v0, v19

    goto :goto_7

    :cond_c
    move-wide/from16 v0, v17

    :goto_7
    if-eqz v15, :cond_d

    .line 157
    invoke-virtual {v14, v0, v1}, Lcom/sonyericsson/music/http/ByteRange;->getContentRange(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Range"

    .line 158
    invoke-interface {v8, v3, v2}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xce

    .line 159
    invoke-interface {v8, v2}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 160
    invoke-virtual {v14, v0, v1}, Lcom/sonyericsson/music/http/ByteRange;->getSize(J)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    goto :goto_8

    :cond_d
    const/16 v2, 0xc8

    .line 162
    invoke-interface {v8, v2}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 163
    invoke-virtual {v10, v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 166
    :goto_8
    invoke-interface {v8, v10}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    const/4 v0, 0x0

    :cond_e
    if-eqz v0, :cond_f

    const/16 v0, 0x193

    .line 173
    invoke-interface {v8, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    :cond_f
    return-void
.end method
