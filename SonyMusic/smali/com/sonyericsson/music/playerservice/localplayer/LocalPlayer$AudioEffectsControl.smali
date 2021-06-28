.class Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;
.super Ljava/lang/Object;
.source "LocalPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioEffectsControl"
.end annotation


# instance fields
.field private mOpen:Z

.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)V
    .locals 0

    .line 1812
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1813
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->mOpen:Z

    return-void
.end method

.method private broadcastEqualizerCloseIntent()V
    .locals 3

    .line 1853
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v0, :cond_0

    .line 1854
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1855
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v1, v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    .line 1856
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.media.extra.PACKAGE_NAME"

    .line 1857
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.media.extra.AUDIO_SESSION"

    .line 1858
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v2, v2, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {v2}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.media.extra.CONTENT_TYPE"

    const/4 v2, 0x0

    .line 1859
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1860
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v1, v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private broadcastEqualizerOpenIntent()V
    .locals 4

    .line 1830
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v0, :cond_3

    .line 1831
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1832
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v1, v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    .line 1833
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.media.extra.PACKAGE_NAME"

    .line 1834
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.media.extra.AUDIO_SESSION"

    .line 1835
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v2, v2, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {v2}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.media.extra.CONTENT_TYPE"

    const/4 v2, 0x0

    .line 1836
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1837
    sget-object v1, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->CLEAR_AUDIO_PLUS:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    invoke-static {v1}, Lcom/sonyericsson/music/common/ApiAvailabilityManager;->isApiAvailable(Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v1, v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    .line 1838
    invoke-static {v1}, Lcom/sonyericsson/music/common/AvailabilityUtils;->getAudioGlobalSetting(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1840
    invoke-static {}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1841
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v1, v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->isClearAudioPlusEnabled(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "com.sonymobile.audioeffect.intent.extra.CLEARAUDIO_PLUS_STATUS"

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 1844
    :cond_1
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1848
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v1, v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1823
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->mOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1824
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->mOpen:Z

    .line 1825
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->broadcastEqualizerCloseIntent()V

    :cond_0
    return-void
.end method

.method public open()V
    .locals 1

    .line 1816
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->mOpen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1817
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->mOpen:Z

    .line 1818
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->broadcastEqualizerOpenIntent()V

    :cond_0
    return-void
.end method
