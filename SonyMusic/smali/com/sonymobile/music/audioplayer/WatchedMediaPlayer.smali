.class public Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "WatchedMediaPlayer.java"


# instance fields
.field private final mWatchdog:Lcom/sonymobile/music/audioplayer/Watchdog;


# direct methods
.method public constructor <init>(Lcom/sonymobile/music/audioplayer/Watchdog;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;->mWatchdog:Lcom/sonymobile/music/audioplayer/Watchdog;

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;->mWatchdog:Lcom/sonymobile/music/audioplayer/Watchdog;

    if-eqz v0, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->unleash()V

    .line 44
    :cond_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->control()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->control()V

    .line 49
    :cond_2
    throw v1
.end method

.method public prepareAsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;->mWatchdog:Lcom/sonymobile/music/audioplayer/Watchdog;

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->unleash()V

    .line 104
    :cond_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->control()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->control()V

    .line 109
    :cond_2
    throw v1
.end method

.method public release()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;->mWatchdog:Lcom/sonymobile/music/audioplayer/Watchdog;

    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->unleash()V

    .line 74
    :cond_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->control()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->control()V

    .line 79
    :cond_2
    throw v1
.end method

.method public reset()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;->mWatchdog:Lcom/sonymobile/music/audioplayer/Watchdog;

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->unleash()V

    .line 59
    :cond_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->control()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->control()V

    .line 64
    :cond_2
    throw v1
.end method

.method public setNextMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;->mWatchdog:Lcom/sonymobile/music/audioplayer/Watchdog;

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->unleash()V

    .line 89
    :cond_0
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->control()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->control()V

    .line 94
    :cond_2
    throw p1
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;->mWatchdog:Lcom/sonymobile/music/audioplayer/Watchdog;

    if-eqz v0, :cond_0

    .line 27
    :try_start_0
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->unleash()V

    .line 29
    :cond_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->control()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->control()V

    .line 34
    :cond_2
    throw v1
.end method
