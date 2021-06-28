.class Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;
.super Landroid/os/Handler;
.source "MainThreadHandler.java"


# static fields
.field static final ON_ALBUM_ART_UPDATED:I = 0x14

.field static final ON_AUDIOSYSTEM_AUDIOFOCUS_REQUEST:I = 0xe

.field static final ON_AUDIOSYSTEM_SET_PLAYBACK_POS:I = 0xf

.field static final ON_AUDIOSYSTEM_SET_PLAYBACK_STATE:I = 0x10

.field static final ON_AUDIOSYSTEM_UPDATE_METADATA:I = 0x11

.field static final ON_AUDIO_SESSION_UPDATE:I = 0x13

.field static final ON_BUFFERING:I = 0x8

.field static final ON_CURRENT_TRACK_COLOR:I = 0x12

.field static final ON_ERROR:I = 0x9

.field static final ON_GET_DURATION:I = 0x6

.field static final ON_PLAYBACK_POS:I = 0x2

.field static final ON_PLAYER_RELEASED:I = 0xa

.field static final ON_PLAYER_SERVICE_CHANGED:I = 0x0

.field static final ON_PLAYING_STATE_CHANGED:I = 0x1

.field static final ON_PLAYQUEUE_POS_CHANGED:I = 0x5

.field static final ON_TRACK_CHANGED:I = 0x4

.field static final ON_TRACK_OPENED:I = 0x3

.field static final ON_TRACK_UPDATED:I = 0x7

.field static final ON_UPDATE_PLAYBACK_NOTIFICATION:I = 0xd

.field static final ON_UPDATE_TRACK_AND_PLAYING_STATE:I = 0xb

.field static final ON_WORKER_UPDATE:I = 0xc


# instance fields
.field private mWorkerListener:Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->mWorkerListener:Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 93
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->mWorkerListener:Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 210
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sonyericsson/music/common/Track;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onUpdateArt(Lcom/sonyericsson/music/common/Track;)V

    goto/16 :goto_3

    .line 206
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onAudioSessionUpdate(I)V

    goto/16 :goto_3

    .line 201
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onCurrentTrackColor(I)V

    goto/16 :goto_3

    .line 196
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onAudioSystemUpdateMetadata(Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;)V

    goto/16 :goto_3

    .line 191
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onAudioSystemSetPlaybackState(II)V

    goto/16 :goto_3

    .line 186
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onAudioSystemSetPlaybackPos(I)V

    goto/16 :goto_3

    .line 181
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-interface {v0, v3}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onAudioSystemAudioFocusUpdateRequest(Z)V

    goto/16 :goto_3

    .line 175
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;

    .line 176
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onUpdatePlaybackNotification(Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    goto/16 :goto_3

    .line 170
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;

    invoke-interface {v0, p1, v2}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onUpdate(Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    goto/16 :goto_3

    .line 157
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;

    .line 158
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->isPlaying()Z

    move-result v0

    .line 159
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;->getNotificationInfo()Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->mWorkerListener:Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;

    invoke-interface {v2, p1, v1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onUpdate(Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    if-eqz v1, :cond_9

    .line 164
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->mWorkerListener:Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;

    const/4 v2, -0x1

    invoke-interface {p1, v0, v2, v1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onPlayingStateChanged(ZILcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    goto/16 :goto_3

    .line 152
    :pswitch_a
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onPlayerReleased(ZZ)V

    goto/16 :goto_3

    .line 147
    :pswitch_b
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v4, :cond_5

    const/4 v3, 0x1

    :cond_5
    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onError(ZZ)V

    goto :goto_3

    .line 142
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sonyericsson/music/common/Track;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onBuffering(Lcom/sonyericsson/music/common/Track;I)V

    goto :goto_3

    .line 137
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sonyericsson/music/common/Track;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onTrackUpdated(Lcom/sonyericsson/music/common/Track;)V

    goto :goto_3

    .line 132
    :pswitch_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onGetDuration(Ljava/lang/String;I)V

    goto :goto_3

    .line 127
    :pswitch_f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onPlayQueuePositionChanged(Ljava/lang/String;I)V

    goto :goto_3

    .line 122
    :pswitch_10
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sonyericsson/music/common/Track;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v4, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v0, v1, v2, v4, v3}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onTrackChanged(Lcom/sonyericsson/music/common/Track;IZZ)V

    goto :goto_3

    .line 117
    :pswitch_11
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sonyericsson/music/common/Track;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v4, :cond_7

    const/4 v3, 0x1

    :cond_7
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onTrackChanged(Lcom/sonyericsson/music/common/Track;IZZ)V

    goto :goto_3

    .line 112
    :pswitch_12
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onPlaybackPosition(I)V

    goto :goto_3

    .line 106
    :pswitch_13
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_8

    const/4 v3, 0x1

    .line 107
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->mWorkerListener:Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v3, p1, v2}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onPlayingStateChanged(ZILcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    goto :goto_3

    .line 101
    :pswitch_14
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;->onPlayerServiceChanged(I)V

    :cond_9
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected postToMain(IIILjava/lang/Object;)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method setWorkerListener(Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->mWorkerListener:Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;

    return-void
.end method
