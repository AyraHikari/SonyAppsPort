.class public final Lcom/sonyericsson/music/delete/DeleteUtils;
.super Ljava/lang/Object;
.source "DeleteUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;,
        Lcom/sonyericsson/music/delete/DeleteUtils$RemoveListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentResolver;)I
    .locals 0

    .line 205
    invoke-virtual {p3, p0, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static deleteTracks(Landroid/content/ContentResolver;Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 70
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 73
    invoke-static {p1}, Lcom/sonyericsson/music/delete/DeleteUtils;->getCurrentPlayingTrack(Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)J

    move-result-wide v1

    const/4 p1, 0x1

    .line 74
    new-array p1, p1, [I

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v4, Lcom/sonyericsson/music/delete/DeleteUtils$1;

    invoke-direct {v4, v1, v2, v3, p1}, Lcom/sonyericsson/music/delete/DeleteUtils$1;-><init>(JLjava/util/ArrayList;[I)V

    invoke-static {p2, v4, p0}, Lcom/sonyericsson/music/delete/DeleteUtils;->removeTracks(Ljava/util/List;Lcom/sonyericsson/music/delete/DeleteUtils$RemoveListener;Landroid/content/ContentResolver;)V

    .line 96
    aget v1, p1, v0

    :cond_1
    return v1
.end method

.method public static getCurrentPlayingTrack(Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)J
    .locals 3

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_0

    .line 112
    :try_start_0
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 113
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method private static removeTracks(Ljava/util/List;Lcom/sonyericsson/music/delete/DeleteUtils$RemoveListener;Landroid/content/ContentResolver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;",
            ">;",
            "Lcom/sonyericsson/music/delete/DeleteUtils$RemoveListener;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;

    .line 136
    iget v2, v1, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;->mId:I

    .line 137
    iget-object v3, v1, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;->mPath:Ljava/lang/String;

    .line 138
    iget-boolean v4, v1, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;->mIsPrimaryStorage:Z

    const/4 v5, 0x1

    .line 142
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz p1, :cond_1

    int-to-long v6, v2

    .line 143
    invoke-interface {p1, v6, v7}, Lcom/sonyericsson/music/delete/DeleteUtils$RemoveListener;->filter(J)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 146
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 147
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    int-to-long v3, v2

    .line 149
    invoke-interface {p1, v3, v4}, Lcom/sonyericsson/music/delete/DeleteUtils$RemoveListener;->onDeleted(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    .line 157
    :cond_3
    iget-object v1, v1, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;->mDocumentFileUri:Landroid/net/Uri;

    if-eqz v1, :cond_5

    .line 159
    :try_start_1
    invoke-static {p2, v1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 160
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_4

    int-to-long v3, v2

    .line 162
    invoke-interface {p1, v3, v4}, Lcom/sonyericsson/music/delete/DeleteUtils$RemoveListener;->onDeleted(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :catch_1
    nop

    :cond_5
    :goto_1
    if-eqz p1, :cond_0

    if-eqz v5, :cond_0

    int-to-long v1, v2

    .line 175
    invoke-interface {p1, v1, v2}, Lcom/sonyericsson/music/delete/DeleteUtils$RemoveListener;->onFailed(J)V

    goto :goto_0

    .line 179
    :cond_6
    invoke-static {v0, p2}, Lcom/sonyericsson/music/delete/DeleteUtils;->removeTracksFromDatabase(Ljava/util/List;Landroid/content/ContentResolver;)V

    return-void

    .line 130
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null deleteFiles is not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    return-void
.end method

.method private static removeTracksFromDatabase(Ljava/util/List;Landroid/content/ContentResolver;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .line 184
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN ("

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 191
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ")"

    .line 197
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    sget-object p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/sonyericsson/music/delete/DeleteUtils;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentResolver;)I

    return-void
.end method
