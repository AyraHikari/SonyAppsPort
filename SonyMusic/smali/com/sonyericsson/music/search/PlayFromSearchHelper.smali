.class public Lcom/sonyericsson/music/search/PlayFromSearchHelper;
.super Ljava/lang/Object;
.source "PlayFromSearchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/search/PlayFromSearchHelper$VoiceSearchNotFoundDialog;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/sonyericsson/music/MusicActivity;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverIsRegistered:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->mReceiverIsRegistered:Z

    .line 48
    new-instance v0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/search/PlayFromSearchHelper$1;-><init>(Lcom/sonyericsson/music/search/PlayFromSearchHelper;)V

    iput-object v0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_0

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "activity can not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/search/PlayFromSearchHelper;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/search/PlayFromSearchHelper;)Lcom/sonyericsson/music/MusicActivity;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/search/PlayFromSearchHelper;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->mReceiverIsRegistered:Z

    return p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/music/search/PlayFromSearchHelper;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->mReceiverIsRegistered:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/search/PlayFromSearchHelper;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->launchPlayerResumePlayqueue()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/search/PlayFromSearchHelper;Lcom/sonyericsson/music/MusicActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->backToPlayer(Lcom/sonyericsson/music/MusicActivity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/search/PlayFromSearchHelper;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->showNotFoundDialog(Ljava/lang/String;)V

    return-void
.end method

.method private backToPlayer(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 180
    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/MusicUtils;->openPlayerFragment(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->triggerOpenPlayerTask()V

    :cond_1
    :goto_0
    return-void
.end method

.method private launchPlayerResumePlayqueue()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->backToPlayer(Lcom/sonyericsson/music/MusicActivity;)V

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->playContent()V

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->registerTrackPreparedReceiver()V

    :goto_0
    return-void
.end method

.method private registerTrackPreparedReceiver()V
    .locals 7

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    iget-object v1, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    .line 77
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sonyericsson.music.permission.BROADCAST"

    const/4 v4, 0x0

    .line 76
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->mReceiverIsRegistered:Z

    .line 82
    new-instance v0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$2;

    const-wide/16 v3, 0xbb8

    const-wide/16 v5, 0xbb8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/search/PlayFromSearchHelper$2;-><init>(Lcom/sonyericsson/music/search/PlayFromSearchHelper;JJ)V

    .line 91
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private showNotFoundDialog(Ljava/lang/String;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 97
    new-instance v1, Lcom/sonyericsson/music/search/PlayFromSearchHelper$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/sonyericsson/music/search/PlayFromSearchHelper$3;-><init>(Lcom/sonyericsson/music/search/PlayFromSearchHelper;Lcom/sonyericsson/music/MusicActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public playFirstMatchingMusicItem(Landroid/content/Intent;)V
    .locals 1

    .line 112
    new-instance v0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;-><init>(Lcom/sonyericsson/music/search/PlayFromSearchHelper;Landroid/content/Intent;)V

    .line 142
    iget-object p1, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-interface {p1, v0}, Lcom/sonyericsson/music/AsyncTaskWorker;->doAsync(Ljava/lang/Runnable;)V

    return-void
.end method
