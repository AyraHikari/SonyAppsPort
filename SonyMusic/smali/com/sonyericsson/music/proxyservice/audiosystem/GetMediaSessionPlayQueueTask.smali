.class Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask;
.super Landroid/os/AsyncTask;
.source "GetMediaSessionPlayQueueTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask$TaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mListener:Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask$TaskListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask$TaskListener;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask;->mAppContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask;->mListener:Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask$TaskListener;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sonyericsson/music/playqueue/PlayqueueStore$Playqueue;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "title"

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "artist"

    const/4 v7, 0x1

    aput-object v0, v3, v7

    const-string v0, "track_uri"

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const-string v6, "play_order"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v1, "title"

    .line 47
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "artist"

    .line 48
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "track_uri"

    .line 49
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 54
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 59
    new-instance v8, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v8}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 60
    invoke-virtual {v8, v6}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 61
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 62
    invoke-virtual {v8, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 63
    invoke-virtual {v8, v5}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    const/4 v4, 0x0

    .line 64
    invoke-virtual {v8, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 65
    invoke-virtual {v8, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 66
    invoke-virtual {v8}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v4

    .line 68
    new-instance v5, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    add-int/lit8 v6, v7, 0x1

    int-to-long v7, v7

    invoke-direct {v5, v4, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    .line 69
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v6

    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 73
    throw p1

    :cond_1
    :goto_1
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask;->mListener:Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask$TaskListener;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask$TaskListener;->onPlayQueueRetrieved(Ljava/util/List;)V

    :cond_0
    return-void
.end method
