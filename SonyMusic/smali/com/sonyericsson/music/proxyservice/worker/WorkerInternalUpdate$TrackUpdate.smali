.class Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;
.super Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;
.source "WorkerInternalUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackUpdate"
.end annotation


# instance fields
.field protected mIntentAction:Ljava/lang/String;

.field protected mIsPlaying:Z

.field protected mNotificationInfo:Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;

.field protected mPlaybackPosition:I

.field protected mPreviousTrackPlaybackPosition:I

.field protected mPreviousTrackUri:Landroid/net/Uri;

.field protected mTime:J

.field protected mTrack:Lcom/sonyericsson/music/common/Track;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;ILandroid/net/Uri;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p6

    move-object v5, p7

    .line 62
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    .line 63
    iput-object p4, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mPreviousTrackUri:Landroid/net/Uri;

    .line 64
    iput p5, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mPreviousTrackPlaybackPosition:I

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mTime:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mIntentAction:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mTrack:Lcom/sonyericsson/music/common/Track;

    .line 53
    iput p3, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mPlaybackPosition:I

    .line 54
    iput-boolean p4, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mIsPlaying:Z

    .line 55
    iput-object p5, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mNotificationInfo:Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mTime:J

    return-void
.end method


# virtual methods
.method getNotificationInfo()Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mNotificationInfo:Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;

    return-object v0
.end method

.method isPlaying()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mIsPlaying:Z

    return v0
.end method

.method public notify(Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;Lcom/sonyericsson/music/proxyservice/Notifier;Landroid/app/Notification;)V
    .locals 9

    .line 72
    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/Notifier;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 76
    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mTrack:Lcom/sonyericsson/music/common/Track;

    iget-object v5, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mPreviousTrackUri:Landroid/net/Uri;

    iget v6, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mPreviousTrackPlaybackPosition:I

    iget-wide v7, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mTime:J

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lcom/sonyericsson/music/proxyservice/Notifier;->notifyTrackToBePrepared(Lcom/sonyericsson/music/common/Track;Landroid/net/Uri;IJ)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mTrack:Lcom/sonyericsson/music/common/Track;

    iget-wide v3, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mTime:J

    invoke-virtual {p2, v0, v3, v4}, Lcom/sonyericsson/music/proxyservice/Notifier;->notifyTrackPrepared(Lcom/sonyericsson/music/common/Track;J)V

    goto :goto_1

    .line 81
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackCompletedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mTrack:Lcom/sonyericsson/music/common/Track;

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mPlaybackPosition:I

    iget-wide v2, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mTime:J

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/Notifier;->notifyTrackCompleted(Lcom/sonyericsson/music/common/Track;IJ)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackStartedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mTrack:Lcom/sonyericsson/music/common/Track;

    iget-wide v3, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mTime:J

    invoke-virtual {p2, v0, v3, v4}, Lcom/sonyericsson/music/proxyservice/Notifier;->notifyTrackStarted(Lcom/sonyericsson/music/common/Track;J)V

    goto :goto_1

    .line 86
    :cond_3
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPausedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mTrack:Lcom/sonyericsson/music/common/Track;

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mPlaybackPosition:I

    iget-wide v2, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mTime:J

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/Notifier;->notifyTrackPaused(Lcom/sonyericsson/music/common/Track;IJ)V

    :cond_4
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz p3, :cond_5

    .line 91
    invoke-virtual {p2, p3, v2}, Lcom/sonyericsson/music/proxyservice/Notifier;->sendNotification(Landroid/app/Notification;Z)V

    .line 94
    :cond_5
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mIntentAction:Ljava/lang/String;

    iget-object p3, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mTrack:Lcom/sonyericsson/music/common/Track;

    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mIsPlaying:Z

    invoke-virtual {p1, p2, p3, v0}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->handlePlaybackIntent(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    return-void
.end method
