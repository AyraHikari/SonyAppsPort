.class Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;
.super Landroid/os/Handler;
.source "LocalPlayer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalPlayerEventHandler"
.end annotation


# static fields
.field static final DELAY_EVENT_HANDLER_MSG_AUDIO_FOCUS_EVENT:I = 0x4

.field static final DELAY_EVENT_HANDLER_MSG_DELAY_PLAY_EVENT:I = 0x5

.field static final DELAY_EVENT_HANDLER_MSG_DELAY_RELEASE:I = 0x2

.field static final DELAY_EVENT_HANDLER_MSG_ERROR:I = 0x3


# instance fields
.field private mDisabled:Z

.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)V
    .locals 0

    .line 2039
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    .line 2048
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->mDisabled:Z

    return-void
.end method

.method private handleAudioFocusEvent(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2103
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    const/4 v2, 0x2

    iput v2, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPausedReason:I

    .line 2104
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->pausePlayer(ZZ)V

    goto :goto_0

    .line 2123
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iput v1, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPausedReason:I

    .line 2124
    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mVolumeControl:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .line 2125
    sget-object v3, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->NONE:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->setVolume(FLcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;)V

    .line 2127
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->pausePlayer(ZZ)V

    goto :goto_0

    .line 2111
    :pswitch_2
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mVolumeControl:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;

    if-eqz p1, :cond_2

    const v0, 0x3e19999a    # 0.15f

    .line 2112
    sget-object v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->FAST:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->setVolume(FLcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;)V

    goto :goto_0

    .line 2134
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iput v0, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPausedReason:I

    .line 2135
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->resumePlayer()V

    .line 2136
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mVolumeControl:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2137
    sget-object v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->SLOW:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->setVolume(FLcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleDelayedRelease()V
    .locals 2

    .line 2088
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$100(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    move-result-object v0

    .line 2089
    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->IDLE:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->COMPLETED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PAUSED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-boolean v0, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mWinding:Z

    if-nez v0, :cond_1

    .line 2093
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->releaseToSavePower()V

    :cond_1
    return-void
.end method

.method private handleError(Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V
    .locals 18

    move-object/from16 v0, p0

    .line 2163
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->getErrorCode()I

    move-result v2

    .line 2164
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 2165
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v3

    .line 2166
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->isPlaying()Z

    move-result v7

    if-nez v3, :cond_0

    .line 2169
    iget-object v4, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {v4}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$300(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v5, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    .line 2170
    invoke-static {v5}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$400(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/sonyericsson/music/common/Track;->isSame(Lcom/sonymobile/music/audioplayer/BasicTrack;Z)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-void

    .line 2174
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Error code: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2175
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    const-string v5, " "

    .line 2178
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2179
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2182
    :cond_3
    sget-object v1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2184
    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->discardWinding()V

    .line 2186
    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v1, v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mClearErrorsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2187
    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget v3, v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mNbrOfErrorsInARow:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mNbrOfErrorsInARow:I

    .line 2190
    invoke-static {v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$500(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v11, 0x0

    if-eqz v1, :cond_4

    .line 2192
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 2196
    :goto_0
    iget-object v3, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {v3}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$600(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v5, v3, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$700(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/sonyericsson/music/common/Track;->isTrackPlayQueueSupported(Landroid/content/Context;Lcom/sonyericsson/music/common/Track;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2197
    iget-object v3, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iput-boolean v11, v3, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    goto :goto_1

    .line 2198
    :cond_5
    iget-object v3, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget v5, v3, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mNbrOfErrorsInARow:I

    if-lt v5, v1, :cond_6

    .line 2199
    iput-boolean v11, v3, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    .line 2200
    iput v11, v3, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mNbrOfErrorsInARow:I

    :cond_6
    :goto_1
    const/4 v3, 0x0

    .line 2204
    iget-object v5, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {v5}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$800(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$900(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;Lcom/sonyericsson/music/common/Track;)Ljava/lang/String;

    move-result-object v15

    .line 2207
    iget-object v5, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {v5}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$1000(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 2208
    iget-object v3, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {v3}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$1100(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2209
    iget-object v5, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {v5}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$1200(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v5

    move-object v8, v3

    move v10, v5

    goto :goto_2

    :cond_7
    move-object v8, v3

    const/4 v10, 0x0

    .line 2212
    :goto_2
    iget-object v3, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-boolean v5, v3, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mStopOnError:Z

    if-eqz v5, :cond_8

    .line 2213
    invoke-static {v3}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$1300(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v7

    move-object v5, v8

    move-object v6, v15

    move v7, v10

    invoke-virtual/range {v1 .. v7}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyError(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 2214
    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iput-boolean v11, v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    .line 2215
    invoke-virtual {v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    goto :goto_4

    .line 2216
    :cond_8
    iget-boolean v2, v3, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    if-eqz v2, :cond_c

    if-le v1, v4, :cond_c

    .line 2217
    invoke-static {v3}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$1400(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2218
    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$1700(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    move-result-object v12

    const/4 v13, 0x1

    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$1500(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    .line 2219
    invoke-static {v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$1600(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v16

    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v1, v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v1, :cond_9

    .line 2220
    invoke-virtual {v1}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getAudioSessionId()I

    move-result v1

    move/from16 v17, v1

    goto :goto_3

    :cond_9
    const/4 v1, -0x1

    const/16 v17, -0x1

    .line 2218
    :goto_3
    invoke-virtual/range {v12 .. v17}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyIdle(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 2222
    :cond_a
    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget v2, v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mGoToDirection:I

    if-nez v2, :cond_b

    .line 2223
    invoke-virtual {v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->next()V

    goto :goto_4

    .line 2225
    :cond_b
    invoke-virtual {v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->previous()V

    goto :goto_4

    .line 2228
    :cond_c
    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$1800(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    move-result-object v4

    const/16 v5, 0x32

    const/4 v6, 0x0

    move-object v9, v15

    invoke-virtual/range {v4 .. v10}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyError(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 2231
    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iput-boolean v11, v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    .line 2232
    invoke-virtual {v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    :goto_4
    return-void
.end method

.method private pausePlayer(ZZ)V
    .locals 2

    .line 2147
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    .line 2148
    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$100(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARING:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$200(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/playerservice/PrepareOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->shouldStartPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2149
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iput-boolean p1, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mResumePlayback:Z

    .line 2152
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->internalPause(Z)V

    return-void
.end method

.method private resumePlayer()V
    .locals 2

    .line 2156
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-boolean v1, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mResumePlayback:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2157
    iput-boolean v1, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mResumePlayback:Z

    .line 2158
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->internalPlay(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    const/4 v0, 0x1

    .line 2082
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->mDisabled:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 2052
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->mDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 2056
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2070
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPhfUnplugTime:J

    .line 2071
    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->play()V

    goto :goto_0

    .line 2066
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->handleAudioFocusEvent(I)V

    goto :goto_0

    .line 2062
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->handleError(Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V

    goto :goto_0

    .line 2058
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->handleDelayedRelease()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
