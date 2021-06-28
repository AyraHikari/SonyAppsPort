.class Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;
.super Ljava/lang/Object;
.source "DataPlatformHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayedTrackLogger"
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mAppContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/music/common/ProcessUtils;->isRunningInServiceProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 112
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->isPersonalDataCollectionConsented(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, "com.sonyericsson.music.dataplatform.ACTION_FINALIZE_ONGOING_PLAYS"

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->finalizeOpenPlays(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackStartedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mIntent:Landroid/content/Intent;

    const-string v1, "TRACK_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mIntent:Landroid/content/Intent;

    const-string v1, "ARTIST_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mIntent:Landroid/content/Intent;

    const-string v1, "TRACK_DURATION"

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mIntent:Landroid/content/Intent;

    const-string v2, "TIMESTAMP_MS"

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 131
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 134
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mAppContext:Landroid/content/Context;

    const/4 v6, 0x0

    int-to-long v8, v0

    invoke-static/range {v2 .. v9}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->trackPlayStart(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPausedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mIntent:Landroid/content/Intent;

    const-string v1, "TRACK_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mIntent:Landroid/content/Intent;

    const-string v2, "TIMESTAMP_MS"

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 138
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 141
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v0, v1, v2}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->trackPlayPause(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 143
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackCompletedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mIntent:Landroid/content/Intent;

    const-string v1, "TRACK_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mIntent:Landroid/content/Intent;

    const-string v2, "TIMESTAMP_MS"

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 145
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 148
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v0, v1, v2}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->trackPlayStop(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1

    .line 150
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSkippedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mIntent:Landroid/content/Intent;

    const-string v1, "TRACK_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mIntent:Landroid/content/Intent;

    const-string v2, "TIMESTAMP_MS"

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 152
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 155
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v0, v1, v2}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->trackPlayStop(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1

    .line 157
    :cond_6
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mIntent:Landroid/content/Intent;

    const-string v1, "PREVIOUS_TRACK_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mIntent:Landroid/content/Intent;

    const-string v2, "TIMESTAMP_MS"

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 160
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 164
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler$PlayedTrackLogger;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v0, v1, v2}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayMetering;->trackPlayStop(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_7
    :goto_1
    return-void

    .line 108
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uses a database that only supports access from the Service process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
