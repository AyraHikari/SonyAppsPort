.class public Lcom/sonyericsson/music/playlist/file/Playlist;
.super Ljava/lang/Object;
.source "Playlist.java"


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/playlist/file/Playlist;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method private static constrain(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public add(ILjava/nio/file/Path;)I
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/file/Playlist;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 95
    invoke-static {p1, v1, v0}, Lcom/sonyericsson/music/playlist/file/Playlist;->constrain(III)I

    move-result p1

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/file/Playlist;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return p1
.end method

.method public asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/file/Playlist;->mItems:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/file/Playlist;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public move(II)I
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/file/Playlist;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 108
    invoke-static {p1, v1, v0}, Lcom/sonyericsson/music/playlist/file/Playlist;->constrain(III)I

    move-result p1

    .line 109
    invoke-static {p2, v1, v0}, Lcom/sonyericsson/music/playlist/file/Playlist;->constrain(III)I

    move-result p2

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/file/Playlist;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/file/Playlist;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return p2
.end method

.method public read(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/music/playlist/file/Playlist;->clear()V

    .line 70
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/nio/file/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_2

    .line 71
    :try_start_1
    invoke-static {p1}, Lcom/sonyericsson/music/playlist/file/PlaylistPersister;->resolvePersister(Ljava/io/File;)Lcom/sonyericsson/music/playlist/file/PlaylistPersister;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/music/playlist/file/Playlist;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/playlist/file/PlaylistPersister;->read(Ljava/io/InputStream;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/nio/file/InvalidPathException; {:try_start_1 .. :try_end_1} :catch_2

    .line 72
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/nio/file/InvalidPathException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception p1

    .line 70
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/nio/file/InvalidPathException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/nio/file/InvalidPathException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    .line 75
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Broken playlist file"

    invoke-virtual {v0, v1, v2, p1}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/music/playlist/file/Playlist;->clear()V

    goto :goto_1

    .line 73
    :catch_3
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Treating missing file as empty playlist"

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public remove(I)I
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/file/Playlist;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 122
    invoke-static {p1, v1, v0}, Lcom/sonyericsson/music/playlist/file/Playlist;->constrain(III)I

    move-result p1

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/file/Playlist;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return p1
.end method

.method public varargs removeMultiple([I)I
    .locals 4

    .line 136
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 138
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 139
    iget-object v2, p0, Lcom/sonyericsson/music/playlist/file/Playlist;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 141
    aget v3, p1, v0

    if-ltz v3, :cond_0

    aget v3, p1, v0

    if-ge v3, v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/sonyericsson/music/playlist/file/Playlist;->mItems:Ljava/util/ArrayList;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public write(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 85
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/music/playlist/file/PlaylistPersister;->resolvePersister(Ljava/io/File;)Lcom/sonyericsson/music/playlist/file/PlaylistPersister;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/music/playlist/file/Playlist;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/playlist/file/PlaylistPersister;->write(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catch_0
    move-exception p1

    .line 84
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method
