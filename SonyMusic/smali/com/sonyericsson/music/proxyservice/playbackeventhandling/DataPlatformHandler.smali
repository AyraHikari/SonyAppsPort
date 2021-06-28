.class public Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler;
.super Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;
.source "DataPlatformHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;
    }
.end annotation


# static fields
.field static final ACTION_FINALIZE_ONGOING_PLAYS:Ljava/lang/String; = "com.sonyericsson.music.dataplatform.ACTION_FINALIZE_ONGOING_PLAYS"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method private finalizeOngoingPlays()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.dataplatform.ACTION_FINALIZE_ONGOING_PLAYS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    const-string v2, "com.sonyericsson.music.permission.BROADCAST"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createDelayedRunnable(Landroid/content/Intent;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "com.sonyericsson.music.dataplatform.ACTION_REPORT_USER_DATA"

    .line 75
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "com.sonyericsson.music.dataplatform.ACTION_REPORT_PLAY_DATA"

    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Landroid/util/Pair;

    new-instance v2, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;

    iget-object v3, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 77
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformUtils;->checkIddSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    new-instance v0, Landroid/util/Pair;

    new-instance v2, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformReporter;

    iget-object v3, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformReporter;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected registerBroadcastReceiver()Z
    .locals 4

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackStartedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPausedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSkippedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackCompletedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.music.dataplatform.ACTION_FINALIZE_ONGOING_PLAYS"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.music.dataplatform.ACTION_REPORT_USER_DATA"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.music.dataplatform.ACTION_REPORT_PLAY_DATA"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    const-string v2, "com.sonyericsson.music.permission.BROADCAST"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    return v0
.end method

.method public start()V
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->start()V

    .line 46
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler;->finalizeOngoingPlays()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler;->finalizeOngoingPlays()V

    .line 53
    invoke-super {p0}, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->stop()V

    return-void
.end method
