.class Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;
.super Ljava/lang/Object;
.source "LastPlayedInfo.java"


# static fields
.field static final INVALID:I = -0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPlayQueuePos:I

.field private mRepeatMode:I

.field private mShuffle:Z

.field private mTrackPos:I

.field private mTrackUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mPlayQueuePos:I

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mTrackUri:Landroid/net/Uri;

    .line 45
    iput v0, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mTrackPos:I

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mRepeatMode:I

    .line 52
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mContext:Landroid/content/Context;

    return-void
.end method

.method private retrieve()Z
    .locals 9

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal$LastPlayed;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 120
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 124
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "playqueue_pos"

    .line 126
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 125
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mPlayQueuePos:I

    const-string v5, "track_uri"

    .line 128
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 127
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 129
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    iput-object v6, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mTrackUri:Landroid/net/Uri;

    const-string v6, "track_pos"

    .line 131
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 130
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mTrackPos:I

    const-string v6, "shuffle_mode"

    .line 133
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 132
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mShuffle:Z

    const-string v6, "repeat_mode"

    .line 136
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 135
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mRepeatMode:I

    .line 138
    iget-object v6, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 139
    iget-object v7, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mContext:Landroid/content/Context;

    .line 140
    invoke-static {v4}, Lcom/sonyericsson/music/common/DBUtils;->getPlayQueueProjection(Z)[Ljava/lang/String;

    move-result-object v8

    .line 139
    invoke-static {v7, v6, v8}, Lcom/sonyericsson/music/common/DBUtils;->getPlayqueueCursor(Landroid/content/Context;Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_6

    :try_start_1
    const-string v7, "track_uri"

    .line 147
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 151
    iget-object v8, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mTrackUri:Landroid/net/Uri;

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mPlayQueuePos:I

    if-le v8, v2, :cond_3

    iget v8, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mPlayQueuePos:I

    .line 152
    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 153
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 155
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    const/4 v8, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 165
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 168
    iput v4, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mPlayQueuePos:I

    .line 169
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mTrackUri:Landroid/net/Uri;

    .line 170
    iput v4, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mTrackPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x1

    .line 175
    :cond_4
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_5

    .line 181
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_5
    throw v1

    :cond_6
    const/4 v8, 0x0

    :goto_3
    if-eqz v0, :cond_7

    .line 181
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    if-nez v8, :cond_8

    .line 186
    iput v2, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mPlayQueuePos:I

    .line 187
    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mTrackUri:Landroid/net/Uri;

    .line 188
    iput v2, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mTrackPos:I

    return v4

    .line 198
    :cond_8
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mPlayQueuePos:I

    if-le v0, v2, :cond_a

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mTrackUri:Landroid/net/Uri;

    .line 199
    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/DBUtils;->isPlayQueueModeUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mTrackPos:I

    if-gez v0, :cond_9

    goto :goto_4

    :cond_9
    return v3

    :cond_a
    :goto_4
    return v4
.end method


# virtual methods
.method getLastPlayed()Landroid/net/Uri;
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->retrieve()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->getPlayqueueContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getPlayQueuePos()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mPlayQueuePos:I

    return v0
.end method

.method getRepeatMode()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mRepeatMode:I

    return v0
.end method

.method getShuffled()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mShuffle:Z

    return v0
.end method

.method getTrackPos()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mTrackPos:I

    return v0
.end method

.method getTrackUri()Landroid/net/Uri;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mTrackUri:Landroid/net/Uri;

    return-object v0
.end method

.method save(ILandroid/net/Uri;IZI)V
    .locals 2

    .line 76
    iput p1, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mPlayQueuePos:I

    .line 77
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mTrackUri:Landroid/net/Uri;

    .line 78
    iput p3, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mTrackPos:I

    .line 79
    iput-boolean p4, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mShuffle:Z

    .line 80
    iput p5, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mRepeatMode:I

    .line 87
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "playqueue_pos"

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "track_pos"

    .line 89
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "track_uri"

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 90
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "shuffle_mode"

    .line 94
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "repeat_mode"

    .line 95
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {p2}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal$LastPlayed;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p2

    .line 97
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method
