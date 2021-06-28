.class final Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;
.super Ljava/lang/Object;
.source "UriTrackingManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UriTrackingManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mItemId:Ljava/lang/String;

.field private mLatestTrackMimeType:Ljava/lang/String;

.field private mLatestTrackUri:Ljava/lang/String;

.field private mNotifiedPath:Ljava/lang/String;

.field private mNotifiedUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mLatestTrackMimeType:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mLatestTrackUri:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mNotifiedUri:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mNotifiedPath:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mItemId:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getNotifiedPath()Ljava/lang/String;
    .locals 8

    .line 122
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mNotifiedPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mNotifiedPath:Ljava/lang/String;

    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mNotifiedUri:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mNotifiedUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->isConvertedScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    return-object v0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mLatestTrackMimeType:Ljava/lang/String;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "_data"

    goto :goto_0

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mLatestTrackMimeType:Ljava/lang/String;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_data"

    goto :goto_0

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mLatestTrackMimeType:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "_data"

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 153
    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_6

    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_5

    .line 170
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0

    .line 158
    :cond_6
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_8

    .line 159
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_7

    .line 170
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v0

    .line 163
    :cond_8
    :try_start_2
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 164
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 165
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_9

    .line 170
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    :try_start_3
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_9

    goto :goto_1

    :cond_9
    :goto_2
    return-object v0

    :goto_3
    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 172
    :cond_a
    throw v0

    :cond_b
    const-string v0, ""

    return-object v0

    :cond_c
    :goto_4
    const-string v0, ""

    return-object v0
.end method

.method private isConvertedScheme(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "content"

    .line 181
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mLatestTrackMimeType:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mLatestTrackUri:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mNotifiedUri:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mNotifiedPath:Ljava/lang/String;

    return-void
.end method

.method public getNotifiedItemId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mItemId:Ljava/lang/String;

    return-object v0
.end method

.method public isTracking()Z
    .locals 6

    .line 61
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mLatestTrackUri:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mLatestTrackMimeType:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mLatestTrackUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mNotifiedUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_2

    .line 77
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->TAG:Ljava/lang/String;

    const-string v2, "is tracking : uri is already the same."

    invoke-static {v0, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1

    .line 82
    :cond_3
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->getNotifiedPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_1

    .line 89
    :cond_4
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mNotifiedPath:Ljava/lang/String;

    .line 91
    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mLatestTrackUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_6

    .line 93
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_5

    .line 94
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->TAG:Ljava/lang/String;

    const-string v2, "is tracking : parse failed of latest track uri."

    invoke-static {v0, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v1

    .line 99
    :cond_6
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 100
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_0

    .line 107
    :cond_7
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 108
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_8

    .line 109
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is tracking : data path is the same. data["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return v1

    .line 114
    :cond_9
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_a

    .line 115
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not is tracking : Latest["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] Notify["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return v2

    .line 101
    :cond_b
    :goto_0
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_c

    .line 102
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->TAG:Ljava/lang/String;

    const-string v2, "is tracking : invalid latest track path."

    invoke-static {v0, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return v1

    .line 84
    :cond_d
    :goto_1
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_e

    .line 85
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->TAG:Ljava/lang/String;

    const-string v1, "not is tracking : invalid dlna notify path."

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return v2

    .line 69
    :cond_f
    :goto_2
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_10

    .line 70
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->TAG:Ljava/lang/String;

    const-string v2, "is tracking : invalid latest track mime type."

    invoke-static {v0, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return v1

    .line 62
    :cond_11
    :goto_3
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_12

    .line 63
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->TAG:Ljava/lang/String;

    const-string v2, "is tracking : invalid latest track uri."

    invoke-static {v0, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return v1
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mLatestTrackMimeType:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mLatestTrackUri:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mItemId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mNotifiedUri:Ljava/lang/String;

    return-void
.end method

.method public setNotifiedUri(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mNotifiedUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mNotifiedUri:Ljava/lang/String;

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->mNotifiedPath:Ljava/lang/String;

    :cond_1
    return-void
.end method
