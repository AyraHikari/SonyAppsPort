.class Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioSettingsIntentsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocalPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioSettingsIntentsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)V
    .locals 0

    .line 2279
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioSettingsIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 2282
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 2284
    sget-object v0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->DSEE_HX_AUDIO:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    invoke-static {v0}, Lcom/sonyericsson/music/common/ApiAvailabilityManager;->isApiAvailable(Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.sonymobile.audioeffect.intent.action.MUSIC_RESTART_REQUEST"

    .line 2285
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2286
    new-instance p2, Lcom/sonymobile/audioeffect/DseeHxSettings;

    invoke-direct {p2, p1}, Lcom/sonymobile/audioeffect/DseeHxSettings;-><init>(Landroid/content/Context;)V

    .line 2287
    invoke-virtual {p2}, Lcom/sonymobile/audioeffect/DseeHxSettings;->isSettingAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2288
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioSettingsIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-static {p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$100(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    move-result-object p1

    sget-object p2, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->END:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq p1, p2, :cond_0

    .line 2289
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioSettingsIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->isPlaying()Z

    move-result p1

    .line 2290
    iget-object p2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioSettingsIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {p2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getPlaybackPosition()I

    move-result p2

    .line 2291
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioSettingsIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->pause()V

    .line 2292
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioSettingsIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->releaseAudioPlayer(ZZ)V

    .line 2293
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioSettingsIntentsReceiver;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    sget-object v1, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->NONE:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-static {v0, p2, p1, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$1900(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;IZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    :cond_0
    return-void
.end method
