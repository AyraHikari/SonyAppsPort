.class public Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger;
.super Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;
.source "RecentlyPlayedLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;,
        Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;
    }
.end annotation


# static fields
.field private static final EXTRA_CONTAINER_URI:Ljava/lang/String; = "container_uri"

.field private static final EXTRA_PLAYBACK_ACTION:Ljava/lang/String; = "playback_action"

.field private static final EXTRA_PLAYQUEUE_POS:Ljava/lang/String; = "playqueue_pos"

.field private static final EXTRA_PLAY_TIMESTAMP:Ljava/lang/String; = "play_timestamp"

.field private static final EXTRA_TRACK_ID:Ljava/lang/String; = "track_id"

.field private static final EXTRA_TRACK_URI:Ljava/lang/String; = "track_uri"

.field private static final RECENTLY_PLAYED_DELAY_MS:I = 0x4e20


# instance fields
.field private mRunnable:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public static buildRecentlyPlayedIntent(Landroid/content/Context;Ljava/lang/String;JILjava/lang/String;JLjava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore;->getRecentlyPlayedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "track_uri"

    .line 58
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "track_id"

    .line 59
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "playqueue_pos"

    .line 60
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "container_uri"

    .line 61
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "play_timestamp"

    .line 62
    invoke-virtual {v0, p1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "playback_action"

    .line 63
    invoke-virtual {v0, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p9, :cond_0

    const-string p1, "com.sonyericsson.music.permission.BROADCAST"

    .line 66
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected createDelayedRunnable(Landroid/content/Intent;)Landroid/util/Pair;
    .locals 10
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

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 91
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore;->getRecentlyPlayedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    .line 92
    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "track_uri"

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "track_id"

    const-wide/16 v4, -0x1

    .line 95
    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "playqueue_pos"

    const/4 v2, -0x1

    .line 96
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v0, "container_uri"

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "play_timestamp"

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p1, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v0, "playback_action"

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    new-instance v0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;-><init>(Ljava/lang/String;JILjava/lang/String;J)V

    .line 103
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger;->mRunnable:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->isSameTrack(Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackCompletedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger;->mRunnable:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->isSameTrack(Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 119
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger;->mRunnable:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;->isReported()Z

    move-result p1

    if-nez p1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger;->mRunnable:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->cancel(Ljava/lang/Runnable;)V

    .line 122
    iget-object p1, v0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mTrackUri:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 123
    new-instance p1, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;

    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;)V

    .line 124
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 127
    :cond_2
    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger;->mRunnable:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;

    goto :goto_2

    .line 108
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger;->mRunnable:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->cancel(Ljava/lang/Runnable;)V

    .line 110
    iget-object p1, v0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;->mTrackUri:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 111
    new-instance p1, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;

    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$CurrentTrack;)V

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger;->mRunnable:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;

    .line 112
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger;->mRunnable:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;

    const/16 v1, 0x4e20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 114
    :cond_4
    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger;->mRunnable:Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger$RecentlyPlayedRunnable;

    :cond_5
    :goto_2
    return-object v1
.end method

.method protected registerBroadcastReceiver()Z
    .locals 4

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore;->getRecentlyPlayedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->mAppContext:Landroid/content/Context;

    const-string v2, "com.sonyericsson.music.permission.BROADCAST"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    return v0
.end method
