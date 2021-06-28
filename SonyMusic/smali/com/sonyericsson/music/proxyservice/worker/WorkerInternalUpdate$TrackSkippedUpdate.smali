.class Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackSkippedUpdate;
.super Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;
.source "WorkerInternalUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackSkippedUpdate"
.end annotation


# instance fields
.field private mPreviousTrack:Lcom/sonyericsson/music/common/Track;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 111
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    .line 113
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackSkippedUpdate;->mPreviousTrack:Lcom/sonyericsson/music/common/Track;

    return-void
.end method


# virtual methods
.method public notify(Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;Lcom/sonyericsson/music/proxyservice/Notifier;Landroid/app/Notification;)V
    .locals 4

    .line 118
    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/Notifier;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSkippedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackSkippedUpdate;->mPreviousTrack:Lcom/sonyericsson/music/common/Track;

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mPlaybackPosition:I

    iget-wide v2, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mTime:J

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/Notifier;->notifyTrackSkipped(Lcom/sonyericsson/music/common/Track;IJ)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p2, p3, v0}, Lcom/sonyericsson/music/proxyservice/Notifier;->sendNotification(Landroid/app/Notification;Z)V

    .line 128
    :cond_1
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mIntentAction:Ljava/lang/String;

    iget-object p3, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mTrack:Lcom/sonyericsson/music/common/Track;

    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mIsPlaying:Z

    invoke-virtual {p1, p2, p3, v0}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->handlePlaybackIntent(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    return-void
.end method
