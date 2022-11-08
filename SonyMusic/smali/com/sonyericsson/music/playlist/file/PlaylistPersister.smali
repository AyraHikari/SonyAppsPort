.class public abstract Lcom/sonyericsson/music/playlist/file/PlaylistPersister;
.super Ljava/lang/Object;
.source "PlaylistPersister.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveMimeType(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 100
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 104
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 105
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "application/octet-stream"

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static resolvePersister(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/sonyericsson/music/playlist/file/PlaylistPersister;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/music/playlist/file/PlaylistPersister;->resolvePersister(Ljava/lang/String;)Lcom/sonyericsson/music/playlist/file/PlaylistPersister;

    move-result-object p0

    return-object p0
.end method

.method public static resolvePersister(Ljava/io/File;)Lcom/sonyericsson/music/playlist/file/PlaylistPersister;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lcom/sonyericsson/music/playlist/file/PlaylistPersister;->resolveMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/music/playlist/file/PlaylistPersister;->resolvePersister(Ljava/lang/String;)Lcom/sonyericsson/music/playlist/file/PlaylistPersister;

    move-result-object p0

    return-object p0
.end method

.method public static resolvePersister(Ljava/lang/String;)Lcom/sonyericsson/music/playlist/file/PlaylistPersister;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "application/vnd.ms-wpl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "audio/x-mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "audio/mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "application/vnd.apple.mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "application/xspf+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v1, "application/x-mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v1, "audio/x-scpls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v1, "video/x-ms-asf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 91
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported playlist format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :pswitch_0
    new-instance p0, Lcom/sonyericsson/music/playlist/file/XspfPlaylistPersister;

    invoke-direct {p0}, Lcom/sonyericsson/music/playlist/file/XspfPlaylistPersister;-><init>()V

    return-object p0

    .line 87
    :pswitch_1
    new-instance p0, Lcom/sonyericsson/music/playlist/file/WplPlaylistPersister;

    invoke-direct {p0}, Lcom/sonyericsson/music/playlist/file/WplPlaylistPersister;-><init>()V

    return-object p0

    .line 84
    :pswitch_2
    new-instance p0, Lcom/sonyericsson/music/playlist/file/PlsPlaylistPersister;

    invoke-direct {p0}, Lcom/sonyericsson/music/playlist/file/PlsPlaylistPersister;-><init>()V

    return-object p0

    .line 82
    :pswitch_3
    new-instance p0, Lcom/sonyericsson/music/playlist/file/M3uPlaylistPersister;

    invoke-direct {p0}, Lcom/sonyericsson/music/playlist/file/M3uPlaylistPersister;-><init>()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d8fac2a -> :sswitch_7
        -0x45784127 -> :sswitch_6
        -0x3a5bd08a -> :sswitch_5
        -0x2b9f8464 -> :sswitch_4
        -0x251f4d8b -> :sswitch_3
        -0x19cb7f6f -> :sswitch_2
        0xfbfd67c -> :sswitch_1
        0x6f9869ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract read(Ljava/io/InputStream;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Ljava/io/OutputStream;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
