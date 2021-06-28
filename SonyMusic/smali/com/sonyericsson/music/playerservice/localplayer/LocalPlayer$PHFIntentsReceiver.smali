.class Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocalPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PHFIntentsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)V
    .locals 0

    .line 2259
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 2262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    .line 2264
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2283
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mResumePlayback:Z

    .line 2284
    iput-boolean p2, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    .line 2285
    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->discardWinding()V

    .line 2287
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$100(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->END:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq p1, v0, :cond_1

    .line 2288
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v0, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v0, :cond_0

    .line 2289
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSavedPlaybackPosition:I

    .line 2292
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->pause()V

    goto :goto_0

    .line 2294
    :cond_0
    iput p2, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSavedPlaybackPosition:I

    .line 2297
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->stopReleaseTimer()V

    .line 2298
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->releaseAudioPlayer(ZZ)V

    .line 2299
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iput-boolean v0, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mReleasedToSavePower:Z

    .line 2302
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$2000(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    const/16 p2, -0x66

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 2306
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$2100(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$900(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;Lcom/sonyericsson/music/common/Track;)Ljava/lang/String;

    move-result-object p1

    .line 2307
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$2400(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    move-result-object v2

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$2200(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    .line 2308
    invoke-static {v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$2300(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p1

    .line 2307
    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 2313
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$2600(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {v2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$2500(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0, p2}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyBuffering(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 2316
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$2700(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 2318
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$2800(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p2}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyBuffering(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2321
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPhfUnplugTime:J

    :cond_3
    return-void
.end method
