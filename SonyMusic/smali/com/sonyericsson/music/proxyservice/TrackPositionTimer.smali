.class Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;
.super Ljava/lang/Object;
.source "TrackPositionTimer.java"


# static fields
.field public static final NOT_INITIALIZED:I = -0x1


# instance fields
.field private mPlaybackPosition:J

.field private mStartPlayTime:J

.field private mStopped:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mStartPlayTime:J

    const-wide/16 v0, -0x1

    .line 25
    iput-wide v0, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mPlaybackPosition:J

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mStopped:Z

    return-void
.end method


# virtual methods
.method declared-synchronized getCurrentPosition()I
    .locals 4

    monitor-enter p0

    .line 83
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mStopped:Z

    if-eqz v0, :cond_0

    .line 84
    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mPlaybackPosition:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    .line 86
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mStartPlayTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mPlaybackPosition:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v0, v2

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 33
    :try_start_0
    iput-wide v0, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mStartPlayTime:J

    .line 34
    iput-wide v0, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mPlaybackPosition:J

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setPlaybackPosition(JZ)V
    .locals 0

    monitor-enter p0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->reset()V

    .line 70
    iput-wide p1, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mPlaybackPosition:J

    if-eqz p3, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 42
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mStopped:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mStartPlayTime:J

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stop()V
    .locals 4

    monitor-enter p0

    .line 52
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mStopped:Z

    if-nez v0, :cond_0

    .line 53
    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mPlaybackPosition:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mStartPlayTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mPlaybackPosition:J

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mStartPlayTime:J

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
