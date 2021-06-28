.class Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$SeekUpdate;
.super Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;
.source "WorkerInternalUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SeekUpdate"
.end annotation


# instance fields
.field private mSeekForward:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;Z)V
    .locals 0

    .line 137
    invoke-direct/range {p0 .. p5}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    .line 138
    iput-boolean p6, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$SeekUpdate;->mSeekForward:Z

    return-void
.end method


# virtual methods
.method public notify(Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;Lcom/sonyericsson/music/proxyservice/Notifier;Landroid/app/Notification;)V
    .locals 6

    .line 143
    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/Notifier;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 145
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSeekedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mIntentAction:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mTrack:Lcom/sonyericsson/music/common/Track;

    iget v2, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mPlaybackPosition:I

    iget-boolean v3, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$SeekUpdate;->mSeekForward:Z

    iget-wide v4, p0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->mTime:J

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/music/proxyservice/Notifier;->notifyTrackSeeked(Lcom/sonyericsson/music/common/Track;IZJ)V

    :cond_0
    return-void
.end method
