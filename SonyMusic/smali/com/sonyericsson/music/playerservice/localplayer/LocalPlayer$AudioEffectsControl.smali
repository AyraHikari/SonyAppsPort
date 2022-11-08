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

.field private mSessionID:I

.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)V
    .locals 0

    .line 1830
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1831
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->mOpen:Z

    const/4 p1, -0x1

    .line 1832
    iput p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->mSessionID:I

    return-void
.end method

.method private broadcastEqualizerCloseIntent()V
    .locals 3

    .line 1893
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v0, :cond_1

    .line 1894
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1895
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v1, v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    .line 1896
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.media.extra.PACKAGE_NAME"

    .line 1897
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.media.extra.AUDIO_SESSION"

    .line 1899
    sget-boolean v2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_S_API:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->mSessionID:I

    if-lez v2, :cond_0

    goto :goto_0

    .line 1900
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v2, v2, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {v2}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getAudioSessionId()I

    move-result v2

    .line 1898
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.media.extra.CONTENT_TYPE"

    const/4 v2, 0x0

    .line 1901
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1902
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v1, v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private broadcastEqualizerOpenIntent()V
    .locals 4

    .line 1867
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v0, :cond_3

    .line 1868
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1869
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v1, v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    .line 1870
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.media.extra.PACKAGE_NAME"

    .line 1871
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.media.extra.AUDIO_SESSION"

    .line 1872
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v2, v2, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {v2}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.media.extra.CONTENT_TYPE"

    const/4 v2, 0x0

    .line 1873
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1874
    sget-object v1, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->CLEAR_AUDIO_PLUS:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    invoke-static {v1}, Lcom/sonyericsson/music/common/ApiAvailabilityManager;->isApiAvailable(Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v1, v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    .line 1875
    invoke-static {v1}, Lcom/sonyericsson/music/common/AvailabilityUtils;->getAudioGlobalSetting(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1877
    invoke-static {}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1878
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

    .line 1881
    :cond_1
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1885
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

    .line 1857
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->mOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1858
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->mOpen:Z

    .line 1859
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->broadcastEqualizerCloseIntent()V

    :cond_0
    return-void
.end method

.method public open()V
    .locals 2

    .line 1838
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_S_API:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1839
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->mOpen:Z

    if-eqz v0, :cond_0

    .line 1840
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->broadcastEqualizerCloseIntent()V

    .line 1842
    :cond_0
    iput-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->mOpen:Z

    .line 1843
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->mSessionID:I

    .line 1844
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->broadcastEqualizerOpenIntent()V

    goto :goto_0

    .line 1846
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->mOpen:Z

    if-nez v0, :cond_2

    .line 1847
    iput-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->mOpen:Z

    .line 1848
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->broadcastEqualizerOpenIntent()V

    :cond_2
    :goto_0
    return-void
.end method
