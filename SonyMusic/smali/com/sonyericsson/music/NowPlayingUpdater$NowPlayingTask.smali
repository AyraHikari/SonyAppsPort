.class Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;
.super Landroid/os/AsyncTask;
.source "NowPlayingUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/NowPlayingUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NowPlayingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsFinished:Z

.field private final mNotify:Z

.field private mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

.field private final mState:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

.field private mUpdater:Lcom/sonyericsson/music/NowPlayingUpdater;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/NowPlayingUpdater;ZLcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;)V
    .locals 1

    .line 501
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 495
    iput-boolean v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->mIsFinished:Z

    .line 502
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->mContext:Landroid/content/Context;

    .line 503
    iput-object p2, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->mUpdater:Lcom/sonyericsson/music/NowPlayingUpdater;

    .line 504
    iput-boolean p3, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->mNotify:Z

    .line 505
    iput-object p4, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->mState:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;)Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;
    .locals 0

    .line 487
    iget-object p0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->mState:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    return-object p0
.end method


# virtual methods
.method attach(Lcom/sonyericsson/music/NowPlayingUpdater;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->mUpdater:Lcom/sonyericsson/music/NowPlayingUpdater;

    return-void
.end method

.method detach()V
    .locals 1

    const/4 v0, 0x0

    .line 560
    iput-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->mUpdater:Lcom/sonyericsson/music/NowPlayingUpdater;

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;
    .locals 15

    move-object v1, p0

    const/4 v0, 0x0

    .line 512
    aget-object v2, p1, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v2, 0x1

    .line 513
    aget-object v3, p1, v2

    move-object v6, v3

    check-cast v6, Landroid/net/Uri;

    const/4 v3, 0x0

    .line 516
    :try_start_0
    iget-object v4, v1, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v8}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal$PlayqueueEntrySource;->getContentUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v10

    const/4 v4, 0x2

    .line 518
    new-array v11, v4, [Ljava/lang/String;

    const-string v4, "uri"

    aput-object v4, v11, v0

    const-string v0, "play_order"

    aput-object v0, v11, v2

    .line 522
    iget-object v0, v1, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 524
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "uri"

    .line 525
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "play_order"

    .line 527
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v0, :cond_0

    .line 530
    new-instance v9, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v7, v1, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->mState:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;-><init>(Landroid/net/Uri;ILandroid/net/Uri;Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 536
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v3

    :catchall_1
    move-exception v0

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 538
    :cond_2
    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 487
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->doInBackground([Ljava/lang/Object;)Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    move-result-object p1

    return-object p1
.end method

.method doPostExecute()V
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->mUpdater:Lcom/sonyericsson/music/NowPlayingUpdater;

    if-eqz v0, :cond_0

    .line 551
    iget-object v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    iget-boolean v2, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->mNotify:Z

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/NowPlayingUpdater;->onNowPlayingInfoAvailable(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;Z)V

    :cond_0
    return-void
.end method

.method isDoInBackgroundFinished()Z
    .locals 1

    .line 564
    iget-boolean v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->mIsFinished:Z

    return v0
.end method

.method protected onPostExecute(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 1

    const/4 v0, 0x1

    .line 544
    iput-boolean v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->mIsFinished:Z

    .line 545
    iput-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->mNowPlayingInfo:Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    .line 546
    invoke-virtual {p0}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->doPostExecute()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 487
    check-cast p1, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingTask;->onPostExecute(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    return-void
.end method
