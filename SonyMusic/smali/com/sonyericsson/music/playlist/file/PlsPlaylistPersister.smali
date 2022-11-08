.class public Lcom/sonyericsson/music/playlist/file/PlsPlaylistPersister;
.super Lcom/sonyericsson/music/playlist/file/PlaylistPersister;
.source "PlsPlaylistPersister.java"


# static fields
.field private static final PATTERN_PLS:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "File(\\d+)=(.+)"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/playlist/file/PlsPlaylistPersister;->PATTERN_PLS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/sonyericsson/music/playlist/file/PlaylistPersister;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;Ljava/util/List;)V
    .locals 7
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

    .line 48
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    .line 50
    :try_start_0
    new-array v2, p1, [Ljava/nio/file/Path;

    .line 53
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 54
    sget-object v4, Lcom/sonyericsson/music/playlist/file/PlsPlaylistPersister;->PATTERN_PLS:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 55
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 56
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    .line 57
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x5c

    const/16 v6, 0x2f

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    new-array v5, p1, [Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    add-int/lit8 v5, v4, 0x1

    .line 58
    array-length v6, v2

    if-le v5, v6, :cond_1

    .line 59
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/nio/file/Path;

    .line 61
    :cond_1
    aput-object v3, v2, v4

    goto :goto_0

    .line 65
    :cond_2
    :goto_1
    array-length v0, v2

    if-ge p1, v0, :cond_4

    .line 66
    aget-object v0, v2, p1

    if-eqz v0, :cond_3

    .line 67
    aget-object v0, v2, p1

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 49
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    return-void
.end method

.method public write(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 7
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

    .line 75
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    const-string p1, "[playlist]\n"

    const/4 v1, 0x0

    .line 76
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 p1, 0x0

    .line 77
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge p1, v2, :cond_0

    const-string v2, "File%d=%s\n"

    const/4 v4, 0x2

    .line 78
    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-virtual {v0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move p1, v5

    goto :goto_0

    :cond_0
    const-string p1, "NumberOfEntries=%d\n"

    .line 80
    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {v0, p1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string p1, "Version=2\n"

    .line 81
    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 75
    :try_start_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    return-void
.end method
