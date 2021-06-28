.class public Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;
.super Lcom/sonyericsson/music/playerservice/BasePlayer;
.source "LocalPlayer.java"

# interfaces
.implements Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;,
        Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioSettingsIntentsReceiver;,
        Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;,
        Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;,
        Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;,
        Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/music/playerservice/BasePlayer;",
        "Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener<",
        "Lcom/sonyericsson/music/common/Track;",
        ">;"
    }
.end annotation


# static fields
.field static final DELAY_CLEAR_ERRORS:I = 0x1388

.field static final DELAY_RELEASE_TIMEOUT:I = 0x7530

.field static final SEEK_HANDLER_MSG_SEEK_BACKWARD:I = 0x14

.field static final SEEK_HANDLER_MSG_SEEK_FORWARD:I = 0xa

.field private static TEST_RUNNING:Z = false

.field static final WAITING_TIME_FOR_PLAY_AFTER_PHF_UNPLUG:I = 0x3e8


# instance fields
.field private mAudioEffectsControl:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;

.field mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/music/audioplayer/AudioPlayer<",
            "Lcom/sonyericsson/music/common/Track;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioSettingsIntentsReceiver:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioSettingsIntentsReceiver;

.field mClearErrorsRunnable:Ljava/lang/Runnable;

.field final mContext:Landroid/content/Context;

.field mContextDestroyed:Z

.field private mDrmUtils:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/sonyericsson/music/common/DrmUtils;",
            ">;"
        }
    .end annotation
.end field

.field mEventHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;

.field mGoToDirection:I

.field mIsInContinuousPlayingState:Z

.field mNbrOfErrorsInARow:I

.field private mPHFIntentsReceiver:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;

.field mPausedReason:I

.field mPhfUnplugTime:J

.field private mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

.field private mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

.field mReleasedToSavePower:Z

.field mResumePlayback:Z

.field mSavedPlaybackPosition:I

.field mSeekHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;

.field mStartPlayingAfterWinding:Z

.field mStopOnError:Z

.field private mUsePlayQueue:Z

.field mVolumeControl:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;

.field mWinding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/playerservice/BasePlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    new-instance p2, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$1;-><init>(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)V

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mClearErrorsRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x0

    .line 146
    iput-boolean p2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContextDestroyed:Z

    .line 150
    iput-boolean p2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mReleasedToSavePower:Z

    .line 160
    iput-boolean p2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mWinding:Z

    .line 165
    iput p2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPausedReason:I

    .line 167
    iput p2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mGoToDirection:I

    .line 173
    iput-boolean p2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    .line 179
    iput-boolean p2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mStartPlayingAfterWinding:Z

    .line 181
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mDrmUtils:Ljava/util/concurrent/atomic/AtomicReference;

    .line 188
    iput-boolean p2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mUsePlayQueue:Z

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioEffectsControl:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;

    const-wide/16 v0, -0x1

    .line 192
    iput-wide v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPhfUnplugTime:J

    .line 194
    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->END:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    .line 201
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    .line 203
    iput p2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mNbrOfErrorsInARow:I

    .line 206
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mDrmUtils:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p2, Lcom/sonyericsson/music/common/DrmUtilsStub;

    invoke-direct {p2}, Lcom/sonyericsson/music/common/DrmUtilsStub;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 83
    sget-boolean v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->TEST_RUNNING:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;IZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->openCurrentTrack(IZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/playerservice/PrepareOperation;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/playerservice/PlayerServiceState;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/playerutil/PlayQueueInfo;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;Lcom/sonyericsson/music/common/Track;)Ljava/lang/String;
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getTrackDataUriString(Lcom/sonyericsson/music/common/Track;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cleanUp()V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSeekHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    .line 367
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSeekHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    iput-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSeekHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mEventHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    .line 374
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mEventHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mEventHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;

    const/4 v2, 0x4

    .line 377
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mEventHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;

    const/4 v2, 0x5

    .line 379
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mEventHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;->disable()V

    .line 384
    :cond_1
    iput-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 385
    iput-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    const/4 v0, 0x0

    .line 386
    iput v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSavedPlaybackPosition:I

    .line 387
    iput v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mNbrOfErrorsInARow:I

    const-wide/16 v0, -0x1

    .line 388
    iput-wide v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPhfUnplugTime:J

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->reset()V

    .line 392
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mDrmUtils:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mDrmUtils:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/common/DrmUtils;

    invoke-interface {v0}, Lcom/sonyericsson/music/common/DrmUtils;->close()V

    :cond_2
    return-void
.end method

.method private createAudioPlayer()V
    .locals 10

    .line 284
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 285
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "About to create a new player. There shouldn\'t exist any old player here, but it does. Release it."

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/music/debug/DebugBase;->logW(Ljava/lang/Class;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0, v1, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->releaseAudioPlayer(ZZ)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/sonymobile/music/audioplayer/AudioPlayer$Factory;->newAudioPlayer(Landroid/content/Context;Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;Lcom/sonymobile/music/audioplayer/Watchdog$WatchDogListener;)Lcom/sonymobile/music/audioplayer/AudioPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    .line 291
    new-instance v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-direct {v0, v2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;-><init>(Lcom/sonymobile/music/audioplayer/AudioPlayer;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mVolumeControl:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;

    const-wide/16 v2, -0x1

    .line 293
    iput-wide v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPhfUnplugTime:J

    .line 294
    iput-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mReleasedToSavePower:Z

    .line 295
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->stopReleaseTimer()V

    .line 297
    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getAudioSessionId()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyIdle(ZLjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private getInternalErrorCode(I)I
    .locals 6

    const-string v0, ""

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/16 v1, 0x64

    if-eq p1, v1, :cond_1

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_0

    .line 1533
    sget-object v1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " errortype is not recognized."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    const/16 v1, 0x32

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    const-string v0, "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK"

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    const-string v0, "MEDIA_ERROR_SERVER_DIED"

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    const-string v0, "PLAYBACK_SERVICE_ERROR_MEDIA_UNKNOWN"

    .line 1536
    :goto_0
    sget-object v2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occured in MediaPlayer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    return v1
.end method

.method private getNextPrefetchableTrack(I)Lcom/sonyericsson/music/common/Track;
    .locals 1

    .line 1442
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getNextPrefetchableTrackPos(I)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 1445
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/BasePlayer;->createTrackFromPlayqueuePos(I)Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getNextPrefetchableTrackPos(I)I
    .locals 2

    .line 1464
    iget v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mRepeatMode:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1466
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getNextValidTrackPosInPlayQueue(I)I

    move-result v1

    goto :goto_0

    .line 1470
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getNextValidTrackPosInPlayQueue(I)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNextValidTrackPosInPlayQueue(I)I
    .locals 4

    .line 1495
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 1497
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1498
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 1500
    iget-boolean v3, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/sonyericsson/music/playerservice/BasePlayer;->findNextPlayableTrack(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1504
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    move v1, p1

    .line 1506
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_1
    return v1
.end method

.method private getTrackDataUriString(Lcom/sonyericsson/music/common/Track;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 500
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private handleNextInNonPlayQueueMode()V
    .locals 3

    .line 810
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->hasValidRightsToPlaySong(Lcom/sonyericsson/music/common/Track;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 811
    iput v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mGoToDirection:I

    .line 812
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v2, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->STARTED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    sget-object v2, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->SKIP:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->openCurrentTrack(IZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    goto :goto_2

    .line 815
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    :goto_2
    return-void
.end method

.method private handleNextInPlayQueueMode()V
    .locals 5

    .line 870
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->validatePlayQueue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    return-void

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    .line 876
    iput-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mStopOnError:Z

    .line 882
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v3, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->STARTED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    sget-object v3, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->SKIP:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-direct {p0, v2, v1, v3}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->switchMediaPlayer(ZILcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, -0x1

    .line 886
    iget-boolean v3, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    xor-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/music/playerservice/BasePlayer;->findNextPlayableTrack(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 889
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 891
    iput v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mGoToDirection:I

    .line 892
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v3, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->STARTED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_2
    sget-object v2, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->SKIP:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-direct {p0, v0, v1, v4, v2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->openTrackFromPlayqueue(IIZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    goto :goto_3

    .line 896
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    :cond_6
    :goto_3
    return-void
.end method

.method private handleOnPrepared(ZZ)V
    .locals 9

    .line 1288
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->stopReleaseTimer()V

    .line 1290
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    .line 1291
    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/common/Track;->isSame(Lcom/sonymobile/music/audioplayer/BasicTrack;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->getOperation()Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    move-result-object v0

    .line 1298
    sget-object v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$3;->$SwitchMap$com$sonyericsson$music$playerservice$PrepareOperation$PrepareOp:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_1

    .line 1302
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p0, v1, v4}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->notifyOpenAndSkipAtPrepare(Lcom/sonyericsson/music/playerservice/PrepareOperation;Lcom/sonyericsson/music/common/Track;)V

    :goto_0
    const/4 v1, 0x0

    .line 1315
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    invoke-virtual {v4}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->getPlaybackPos()I

    move-result v4

    .line 1316
    iget-object v5, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {v5}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getDuration()I

    move-result v5

    if-le v4, v5, :cond_1

    move v4, v5

    :cond_1
    if-lez v4, :cond_2

    .line 1323
    invoke-virtual {p0, v4}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->setPlaybackPosition(I)V

    .line 1326
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    invoke-virtual {v4}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->shouldStartPlaying()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1328
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->internalPlay()V

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_5

    .line 1330
    sget-object v1, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->FAST_FORWARD:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0, v2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->startWinding(Z)V

    goto :goto_3

    .line 1332
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1333
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getTrackDataUriString(Lcom/sonyericsson/music/common/Track;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1332
    invoke-virtual/range {v3 .. v8}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 1336
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    :goto_3
    const/4 v0, 0x0

    .line 1339
    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    if-eqz p1, :cond_6

    const/4 p1, -0x1

    .line 1342
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getNextPrefetchableTrack(I)Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->prefetchNext(Lcom/sonyericsson/music/common/Track;)V

    :cond_6
    if-eqz p2, :cond_7

    .line 1346
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->stopReleaseTimer()V

    .line 1347
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->releaseToSavePower()V

    :cond_7
    return-void

    :cond_8
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handlePrevInNonPlayQueueMode()V
    .locals 4

    .line 913
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->hasValidRightsToPlaySong(Lcom/sonyericsson/music/common/Track;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 914
    iput v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mGoToDirection:I

    .line 915
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v2, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->STARTED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    sget-object v1, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->SKIP:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-direct {p0, v3, v0, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->openCurrentTrack(IZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    goto :goto_1

    .line 918
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    :goto_1
    return-void
.end method

.method private handlePrevInPlayQueueMode()V
    .locals 5

    .line 923
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->validatePlayQueue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    return-void

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    .line 929
    iput-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mStopOnError:Z

    .line 931
    iget-boolean v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sonyericsson/music/playerservice/BasePlayer;->findPreviousPlayableTrack(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 933
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 935
    iput v3, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mGoToDirection:I

    .line 936
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v4, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->STARTED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v2, v4, :cond_2

    iget-boolean v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    sget-object v2, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->SKIP:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->openTrackFromPlayqueue(IIZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    goto :goto_1

    .line 940
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    :goto_1
    return-void
.end method

.method private hasValidRightsToPlaySong(Lcom/sonyericsson/music/common/Track;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 821
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->isTrackPlayable(Landroid/net/Uri;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isCloudPlaybackAllowed(Landroid/content/Context;Lcom/sonyericsson/music/common/Track;)Z
    .locals 9

    .line 828
    invoke-static {p1}, Lcom/sonymobile/music/common/NetworkConnectivityUtil;->getConnectedNetworkType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 838
    :try_start_0
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    .line 839
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 840
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    const-string p1, "download_state"

    const/4 v8, 0x0

    aput-object p1, v4, v8

    const-string v5, "_id = ?"

    new-array v6, v1, [Ljava/lang/String;

    aput-object p2, v6, v8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 842
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "download_state"

    .line 843
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 848
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 850
    :cond_3
    throw p1

    :cond_4
    return v1
.end method

.method private isCloudTrackDownloaded(Lcom/sonyericsson/music/common/Track;)Ljava/lang/Boolean;
    .locals 4

    .line 1649
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "get_playback_uri"

    .line 1651
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 1649
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "playback_uri_extra"

    .line 1655
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_2

    .line 1659
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1660
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 1662
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_2
    :goto_1
    return-object v3
.end method

.method private isPlayerPreparedAndReady()Z
    .locals 2

    .line 1554
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    .line 1555
    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->STARTED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PAUSED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->COMPLETED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private openCurrentTrack(IZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V
    .locals 7

    .line 459
    iput p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSavedPlaybackPosition:I

    .line 461
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->discardWinding()V

    .line 462
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->stopReleaseTimer()V

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_2

    .line 465
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 469
    new-instance p1, Lcom/sonyericsson/music/playerservice/PrepareOperation;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getPlaybackPosition()I

    move-result v5

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/playerservice/PrepareOperation;-><init>(Lcom/sonyericsson/music/common/Track;ZIILcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    .line 471
    iget-object p3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p0, p1, p3}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->notifyOpenAndSkipAtPrepare(Lcom/sonyericsson/music/playerservice/PrepareOperation;Lcom/sonyericsson/music/common/Track;)V

    .line 473
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->pause()V

    const/4 p1, 0x1

    const/4 p3, 0x0

    .line 474
    invoke-virtual {p0, p1, p3}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->releaseAudioPlayer(ZZ)V

    .line 476
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-static {p1}, Lcom/sonyericsson/music/common/Track;->isTrackMediaStoreContent(Lcom/sonyericsson/music/common/Track;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x32

    const/16 v1, 0x32

    goto :goto_0

    :cond_0
    const/16 p1, 0x46

    const/16 v1, 0x46

    .line 481
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 482
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v6

    move v3, p2

    .line 481
    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyError(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {p0, v0, p2, p1, p3}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->prepareAudioPlayer(Lcom/sonyericsson/music/common/Track;ZILcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 490
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    goto :goto_1

    .line 494
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    :cond_3
    :goto_1
    return-void
.end method

.method private openTrackFromPlayqueue(IIZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V
    .locals 0

    .line 431
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/BasePlayer;->openTrackFromPlayQueuePos(I)Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 432
    invoke-direct {p0, p3, p2, p4}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->switchMediaPlayer(ZILcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 435
    invoke-direct {p0, p2, p3, p4}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->openCurrentTrack(IZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    :cond_1
    :goto_0
    return-void
.end method

.method private prepareAudioPlayer(Lcom/sonyericsson/music/common/Track;ZILcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z
    .locals 9

    .line 542
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    .line 544
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getPlaybackPosition()I

    move-result v5

    .line 546
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v2, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARING:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    const/4 v7, 0x0

    if-ne v1, v2, :cond_0

    .line 547
    invoke-virtual {p0, v7, v7}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->releaseAudioPlayer(ZZ)V

    goto :goto_0

    .line 549
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->resetAudioPlayer()V

    :goto_0
    if-eqz p1, :cond_1

    .line 553
    invoke-static {p1}, Lcom/sonyericsson/music/common/Track;->isTrackMediaStoreContent(Lcom/sonyericsson/music/common/Track;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    .line 554
    invoke-static {v1}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->stopReleaseTimer()V

    .line 557
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->releaseToSavePower()V

    return v7

    .line 563
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v2, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->END:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mReleasedToSavePower:Z

    if-eqz v1, :cond_3

    .line 566
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->createAudioPlayer()V

    :cond_3
    const/4 v8, 0x0

    .line 569
    iput-object v8, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    .line 570
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    .line 572
    :try_start_0
    new-instance v0, Lcom/sonyericsson/music/playerservice/PrepareOperation;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    move-object v1, v0

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/playerservice/PrepareOperation;-><init>(Lcom/sonyericsson/music/common/Track;ZIILcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    if-eqz p1, :cond_9

    .line 577
    invoke-static {p1}, Lcom/sonyericsson/music/common/Track;->isTrackMediaStoreContent(Lcom/sonyericsson/music/common/Track;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 582
    sget-boolean p3, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz p3, :cond_4

    .line 583
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "com.sonyericsson.music.musicinfo"

    const-string v0, "media"

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    move-object p3, v8

    goto :goto_1

    .line 586
    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p1

    move-object p3, v8

    goto :goto_1

    .line 588
    :cond_5
    invoke-static {p1}, Lcom/sonyericsson/music/common/Track;->isCloudFile(Lcom/sonyericsson/music/common/Track;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 589
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->prepareCloudTrackForPlayback(Lcom/sonyericsson/music/common/Track;)Landroid/util/Pair;

    move-result-object p3

    if-nez p3, :cond_6

    .line 592
    iput-object v8, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    .line 593
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p0, v7, v8, p1, p2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->sendInternalErrorMessage(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    .line 596
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->stopReleaseTimer()V

    .line 597
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->releaseToSavePower()V

    return v7

    .line 601
    :cond_6
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    .line 602
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/util/Map;

    .line 607
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->isCloudPlaybackAllowed(Landroid/content/Context;Lcom/sonyericsson/music/common/Track;)Z

    move-result p1

    if-nez p1, :cond_7

    const/16 p1, 0x3c

    .line 608
    iget-object p3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p0, p1, v8, p3, v7}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->sendInternalErrorMessage(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    .line 612
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->stopReleaseTimer()V

    .line 613
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->releaseToSavePower()V

    return v7

    :cond_7
    move-object p1, v0

    goto :goto_1

    .line 619
    :cond_8
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object p1

    move-object p3, v8

    goto :goto_1

    :cond_9
    move-object p1, v8

    move-object p3, p1

    :goto_1
    const/4 v0, 0x1

    if-nez p2, :cond_b

    .line 632
    sget-object v1, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->FAST_FORWARD:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    if-eq p4, v1, :cond_b

    sget-object v1, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->REWIND:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    if-ne p4, v1, :cond_a

    goto :goto_2

    .line 644
    :cond_a
    invoke-direct {p0, v7, v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->handleOnPrepared(ZZ)V

    goto :goto_3

    .line 634
    :cond_b
    :goto_2
    iget-object p4, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioEffectsControl:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;

    if-eqz p4, :cond_c

    .line 635
    iget-object p4, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioEffectsControl:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;

    invoke-virtual {p4}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->open()V

    .line 638
    :cond_c
    iget-object p4, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->LOW_POWER_AUDIO:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    .line 639
    invoke-static {v2}, Lcom/sonyericsson/music/common/ApiAvailabilityManager;->isApiAvailable(Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;)Z

    move-result v2

    .line 638
    invoke-virtual {p4, v1, p1, v2, p3}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->prepareCurrent(Landroid/content/Context;Landroid/net/Uri;ZLjava/util/Map;)V

    .line 640
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V
    :try_end_0
    .catch Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return v0

    :catch_0
    move-exception p1

    .line 649
    iput-object v8, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    .line 650
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p0, v7, p1, p3, p2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->sendInternalErrorMessage(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    return v7
.end method

.method private prepareCloudTrackForPlayback(Lcom/sonyericsson/music/common/Track;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/music/common/Track;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "get_playback_uri_and_token"

    .line 514
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 512
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "playback_uri_extra"

    .line 517
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "playback_token_extra"

    .line 518
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_2

    .line 522
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 528
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "https://www.googleapis.com/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 531
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Authorization"

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_3
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_4
    :goto_2
    return-object v3
.end method

.method private registerForAudioSettingsIntents()V
    .locals 5

    .line 1603
    sget-object v0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->DSEE_HX_AUDIO:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    invoke-static {v0}, Lcom/sonyericsson/music/common/ApiAvailabilityManager;->isApiAvailable(Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioSettingsIntentsReceiver:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioSettingsIntentsReceiver;

    if-nez v0, :cond_0

    .line 1605
    new-instance v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioSettingsIntentsReceiver;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioSettingsIntentsReceiver;-><init>(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioSettingsIntentsReceiver:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioSettingsIntentsReceiver;

    .line 1606
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sonymobile.audioeffect.intent.action.MUSIC_RESTART_REQUEST"

    .line 1607
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1608
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioSettingsIntentsReceiver:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioSettingsIntentsReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mEventHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private registerForPHFIntents()V
    .locals 5

    .line 1594
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPHFIntentsReceiver:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;

    if-nez v0, :cond_0

    .line 1595
    new-instance v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;-><init>(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPHFIntentsReceiver:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;

    .line 1596
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    .line 1597
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1598
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPHFIntentsReceiver:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mEventHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private resetAudioPlayer()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->reset()V

    :cond_0
    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    return-void
.end method

.method private setPlayQueuePosition(IZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 970
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mStopOnError:Z

    if-eqz p3, :cond_0

    .line 971
    sget-object p3, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->SKIP:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->NONE:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    :goto_0
    const/4 v0, 0x0

    .line 972
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->openTrackFromPlayqueue(IIZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    return-void
.end method

.method private switchMediaPlayer(ZILcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z
    .locals 7

    .line 445
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getNextPreparedTrack()Lcom/sonymobile/music/audioplayer/BasicTrack;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    .line 447
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/common/Track;->isSame(Lcom/sonymobile/music/audioplayer/BasicTrack;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    new-instance v0, Lcom/sonyericsson/music/playerservice/PrepareOperation;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    .line 449
    invoke-virtual {v1}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getCurrentPosition()I

    move-result v5

    move-object v1, v0

    move v3, p1

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/playerservice/PrepareOperation;-><init>(Lcom/sonyericsson/music/common/Track;ZIILcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    .line 450
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->switchMediaPlayer()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateDriveAnalytics()V
    .locals 1

    .line 1627
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/sonyericsson/music/common/Track;->isCloudFile(Lcom/sonyericsson/music/common/Track;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1628
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->isCloudTrackDownloaded(Lcom/sonyericsson/music/common/Track;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1633
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1636
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics;->sendLocalPlayEvent(Landroid/content/Context;)V

    goto :goto_0

    .line 1640
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics;->sendRemotePlayEvent(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public contextDestroyed()V
    .locals 3

    .line 261
    monitor-enter p0

    const/4 v0, 0x1

    .line 262
    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContextDestroyed:Z

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPHFIntentsReceiver:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPHFIntentsReceiver:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPHFIntentsReceiver:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$PHFIntentsReceiver;

    .line 272
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioSettingsIntentsReceiver:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioSettingsIntentsReceiver;

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioSettingsIntentsReceiver:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioSettingsIntentsReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 275
    :cond_1
    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioSettingsIntentsReceiver:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioSettingsIntentsReceiver;

    .line 280
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method discardWinding()V
    .locals 3

    .line 1100
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mWinding:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1101
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSeekHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    .line 1102
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1103
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSeekHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1105
    :cond_0
    iput-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mWinding:Z

    .line 1108
    :cond_1
    iput-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mStartPlayingAfterWinding:Z

    return-void
.end method

.method extendReleaseTimer()V
    .locals 2

    .line 1582
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mEventHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;

    const/4 v1, 0x2

    .line 1583
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1585
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    :cond_0
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 1866
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getAudioSessionId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 1124
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->getDuration()I

    .line 1128
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->isPlayerPreparedAndReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getDuration()I

    move-result v0

    .line 1131
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->buildUpon()Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->duration(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    goto :goto_0

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPlaybackPosition()I
    .locals 4

    .line 1003
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->getPlaybackPosition()I

    .line 1008
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1009
    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->getOperation()Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    move-result-object v0

    .line 1011
    sget-object v2, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->FAST_FORWARD:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->REWIND:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1016
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    .line 1017
    iget-boolean v3, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mReleasedToSavePower:Z

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1019
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v0, :cond_4

    sget-object v3, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->IDLE:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARING:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->ERROR:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->END:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v2, v3, :cond_4

    .line 1024
    :try_start_0
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getCurrentPosition()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1026
    :catch_0
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "IllegalState when getting current position"

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/music/debug/DebugBase;->logW(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_2

    .line 1018
    :cond_3
    :goto_1
    iget v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSavedPlaybackPosition:I

    :cond_4
    :goto_2
    return v1
.end method

.method public init()V
    .locals 7

    .line 215
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->init()V

    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContextDestroyed:Z

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mDrmUtils:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/sonyericsson/music/common/DrmUtilsImpl;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/common/DrmUtilsImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 224
    new-instance v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;-><init>(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mEventHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;

    .line 226
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->registerForPHFIntents()V

    .line 228
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->registerForAudioSettingsIntents()V

    .line 230
    new-instance v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;-><init>(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSeekHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;

    .line 232
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyIdle(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 234
    new-instance v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;-><init>(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioEffectsControl:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;

    .line 236
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method internalPause(Z)V
    .locals 11

    .line 761
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->discardWinding()V

    const/4 v0, 0x0

    .line 763
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    .line 767
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 768
    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->setStartPlaying(Z)V

    const/4 v0, 0x1

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v3, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PAUSED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne v1, v3, :cond_2

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->pause()V

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_4

    .line 778
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_3

    .line 779
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getTrackDataUriString(Lcom/sonyericsson/music/common/Track;)Ljava/lang/String;

    move-result-object v0

    .line 780
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 781
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v4

    const/4 v5, 0x1

    iget v6, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPausedReason:I

    move-object v3, v0

    .line 780
    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 785
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 786
    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/16 v4, -0x66

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyBuffering(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 789
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPausedReason:I

    invoke-virtual/range {v5 .. v10}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V

    :goto_0
    if-eqz p1, :cond_4

    .line 793
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    :cond_4
    return-void
.end method

.method public internalPlay()V
    .locals 1

    const/4 v0, 0x1

    .line 683
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->internalPlay(Z)V

    return-void
.end method

.method public internalPlay(Z)V
    .locals 4

    .line 687
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->discardWinding()V

    .line 689
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->hasValidRightsToPlaySong(Lcom/sonyericsson/music/common/Track;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    .line 691
    iput-boolean v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mStopOnError:Z

    .line 693
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p0, v2, v1, p1, v2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->sendInternalErrorMessage(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sonyericsson/music/common/Track;->isCloudFile(Lcom/sonyericsson/music/common/Track;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->isCloudPlaybackAllowed(Landroid/content/Context;Lcom/sonyericsson/music/common/Track;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0x3c

    .line 700
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->sendInternalErrorMessage(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    return-void

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    .line 707
    iget-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mReleasedToSavePower:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->ERROR:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->END:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v1, :cond_3

    .line 709
    iget p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSavedPlaybackPosition:I

    sget-object v0, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->NONE:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-direct {p0, p1, v2, v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->openCurrentTrack(IZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    goto/16 :goto_0

    .line 710
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->STARTED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->COMPLETED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PAUSED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->IDLE:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne v0, v1, :cond_6

    .line 713
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->stopReleaseTimer()V

    if-eqz p1, :cond_5

    .line 714
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mVolumeControl:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;

    if-eqz p1, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 715
    sget-object v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->NONE:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->setVolume(FLcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;)V

    .line 719
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->updateDriveAnalytics()V

    .line 721
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->start()V

    .line 722
    iput-boolean v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    .line 724
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mEventHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mClearErrorsRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 726
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 727
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getTrackDataUriString(Lcom/sonyericsson/music/common/Track;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    .line 728
    invoke-virtual {v3}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getAudioSessionId()I

    move-result v3

    .line 726
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPlaying(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 729
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARING:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne v0, p1, :cond_7

    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    if-eqz p1, :cond_7

    .line 730
    invoke-virtual {p1, v2}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->setStartPlaying(Z)V

    goto :goto_0

    .line 732
    :cond_7
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalPlayer:internalPlay ignored play command. mReleasedToSavePower: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mReleasedToSavePower:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; mMediaPlayserState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isPlaying()Z
    .locals 2

    .line 1112
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->STARTED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isTrackPlayable(Landroid/net/Uri;)Z
    .locals 3

    .line 860
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mDrmUtils:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mDrmUtils:Ljava/util/concurrent/atomic/AtomicReference;

    .line 862
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/common/DrmUtils;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/common/DrmUtils;->hasValidRights(Landroid/net/Uri;)Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->HAS_DRM_RIGHTS:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public next()V
    .locals 1

    .line 800
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->next()V

    .line 802
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mUsePlayQueue:Z

    if-nez v0, :cond_0

    .line 803
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->handleNextInNonPlayQueueMode()V

    goto :goto_0

    .line 805
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->handleNextInPlayQueueMode()V

    :goto_0
    return-void
.end method

.method notifyOpenAndSkipAtPrepare(Lcom/sonyericsson/music/playerservice/PrepareOperation;Lcom/sonyericsson/music/common/Track;)V
    .locals 3

    .line 1263
    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->getOperation()Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    move-result-object v0

    .line 1265
    sget-object v1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$3;->$SwitchMap$com$sonyericsson$music$playerservice$PrepareOperation$PrepareOp:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1273
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1274
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getTrackDataUriString(Lcom/sonyericsson/music/common/Track;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p2

    .line 1273
    invoke-virtual {p1, v0, v1, p2}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyOpened(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1267
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1268
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getTrackDataUriString(Lcom/sonyericsson/music/common/Track;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->getOldPlaybackPos()I

    move-result p1

    .line 1269
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p2

    .line 1267
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifySkipped(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioFocusChange(I)V
    .locals 3

    .line 1615
    invoke-super {p0, p1}, Lcom/sonyericsson/music/playerservice/BasePlayer;->onAudioFocusChange(I)V

    .line 1621
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mEventHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1623
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 7

    const/4 p1, 0x0

    .line 1142
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mStopOnError:Z

    .line 1143
    iput p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSavedPlaybackPosition:I

    .line 1145
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getTrackDataUriString(Lcom/sonyericsson/music/common/Track;)Ljava/lang/String;

    move-result-object v0

    .line 1147
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1151
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1152
    invoke-virtual {v4}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v5

    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v4, :cond_1

    .line 1153
    invoke-virtual {v4}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getAudioSessionId()I

    move-result v4

    move v6, v4

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    const/4 v6, -0x1

    :goto_0
    move-object v4, v0

    .line 1151
    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyIdle(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 1155
    iget-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    if-eqz v1, :cond_6

    .line 1156
    iget v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mRepeatMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1157
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->next()V

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 1162
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->getPlayQueuePosition()I

    move-result v0

    invoke-direct {p0, v0, v2, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->setPlayQueuePosition(IZZ)V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_7

    .line 1164
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1169
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->setPlaybackPosition(I)V

    .line 1170
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1, p1}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifySkipped(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1173
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1174
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, v0

    .line 1173
    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 1177
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    .line 1178
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    goto :goto_1

    .line 1180
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1181
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mIsInContinuousPlayingState:Z

    .line 1183
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1184
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, v0

    .line 1183
    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 1188
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->next()V

    goto :goto_1

    .line 1192
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    :cond_7
    :goto_1
    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method public onDataSourceSet(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 2328
    sget-object v0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->DSEE_HX_AUDIO:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    invoke-static {v0}, Lcom/sonyericsson/music/common/ApiAvailabilityManager;->isApiAvailable(Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2329
    new-instance v0, Lcom/sonymobile/audioeffect/DseeHxSettings;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/audioeffect/DseeHxSettings;-><init>(Landroid/content/Context;)V

    .line 2330
    invoke-virtual {v0}, Lcom/sonymobile/audioeffect/DseeHxSettings;->isSettingAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2331
    invoke-virtual {v0, p1}, Lcom/sonymobile/audioeffect/DseeHxSettings;->setDseeHxMode(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .line 1198
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz p1, :cond_0

    .line 1199
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError received for song: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1203
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioEffectsControl:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;

    if-eqz p1, :cond_1

    .line 1204
    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->close()V

    .line 1207
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->isPlaying()Z

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARING:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    .line 1208
    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->shouldStartPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 1210
    :goto_1
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getInternalErrorCode(I)I

    move-result p2

    const/4 v0, 0x0

    .line 1211
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->sendInternalErrorMessage(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    return p3
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1218
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    if-nez p3, :cond_0

    goto :goto_1

    .line 1224
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getTrackDataUriString(Lcom/sonyericsson/music/common/Track;)Ljava/lang/String;

    move-result-object p1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1242
    :pswitch_0
    iget-object p2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object p3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p3}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1243
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v0

    const/16 v1, -0x66

    .line 1242
    invoke-virtual {p2, p3, p1, v0, v1}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyBuffering(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 1232
    :pswitch_1
    iget-object p2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object p3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p3}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1233
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v0

    const/16 v1, -0x65

    .line 1232
    invoke-virtual {p2, p3, p1, v0, v1}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyBuffering(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNextMediaPlayer(Lcom/sonyericsson/music/common/Track;I)V
    .locals 13

    .line 1353
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1354
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getTrackDataUriString(Lcom/sonyericsson/music/common/Track;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v4

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    const/4 v6, -0x1

    if-eqz v1, :cond_0

    .line 1355
    invoke-virtual {v1}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getAudioSessionId()I

    move-result v1

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    :goto_0
    const/4 v1, 0x1

    .line 1353
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyIdle(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 1357
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1359
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v0

    const/4 v1, 0x0

    .line 1361
    iput v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mGoToDirection:I

    .line 1363
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1365
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1368
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v2, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARING:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne v1, v2, :cond_2

    .line 1372
    new-instance v0, Lcom/sonyericsson/music/playerservice/PrepareOperation;

    const/4 v9, 0x1

    const/4 v10, 0x0

    sget-object v12, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->SKIP:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    move-object v7, v0

    move-object v8, p1

    move v11, p2

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/music/playerservice/PrepareOperation;-><init>(Lcom/sonyericsson/music/common/Track;ZIILcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    goto :goto_1

    .line 1374
    :cond_2
    sget-object v2, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne v1, v2, :cond_4

    .line 1377
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1378
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getTrackDataUriString(Lcom/sonyericsson/music/common/Track;)Ljava/lang/String;

    move-result-object v1

    .line 1380
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    invoke-virtual {v2, p1, v1, p2, v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifySkipped(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1381
    iget-object p2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1384
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->updateDriveAnalytics()V

    .line 1387
    iget-object p2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {p2}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->start()V

    .line 1389
    iget-object p2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    .line 1390
    invoke-virtual {v2}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getAudioSessionId()I

    move-result v2

    .line 1389
    invoke-virtual {p2, p1, v1, v0, v2}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPlaying(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1393
    :cond_3
    invoke-direct {p0, v6}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getNextPrefetchableTrack(I)Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->prefetchNext(Lcom/sonyericsson/music/common/Track;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic onNextMediaPlayer(Lcom/sonymobile/music/audioplayer/BasicTrack;I)V
    .locals 0

    .line 83
    check-cast p1, Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->onNextMediaPlayer(Lcom/sonyericsson/music/common/Track;I)V

    return-void
.end method

.method public onPlayerStateChanged(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V
    .locals 1

    .line 309
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    .line 310
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->STARTED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 313
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mStopOnError:Z

    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1284
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->handleOnPrepared(ZZ)V

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 1254
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1258
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1259
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getPlaybackPosition()I

    move-result v2

    .line 1258
    invoke-virtual {v0, p1, v1, v2}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifySeekDone(Ljava/lang/String;II)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public open(Landroid/net/Uri;IIZ)V
    .locals 3

    .line 399
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonyericsson/music/playerservice/BasePlayer;->open(Landroid/net/Uri;IIZ)V

    if-nez p1, :cond_0

    .line 402
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "Cannot open null uri."

    invoke-virtual {p1, p2, p3}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 406
    iput v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mNbrOfErrorsInARow:I

    const/4 v1, 0x1

    .line 407
    iput-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mStopOnError:Z

    .line 409
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->getPlayqueueContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/playerservice/BasePlayer;->openPlayQueue(Landroid/net/Uri;I)I

    move-result p1

    .line 411
    iput-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mUsePlayQueue:Z

    const/4 p2, -0x1

    if-le p1, p2, :cond_1

    .line 414
    sget-object p2, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->OPEN:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->openTrackFromPlayqueue(IIZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    goto :goto_0

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    goto :goto_0

    .line 420
    :cond_2
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mUsePlayQueue:Z

    .line 421
    iget-object p2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {p2}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->reset()V

    .line 423
    iget-object p2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/sonyericsson/music/common/TrackFactory;->createNonPlayqueueTrack(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 424
    sget-object p1, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->OPEN:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-direct {p0, p3, p4, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->openCurrentTrack(IZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 740
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->pause()V

    const/4 v0, 0x0

    .line 742
    iput v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPausedReason:I

    .line 743
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mResumePlayback:Z

    const/4 v0, 0x1

    .line 744
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->internalPause(Z)V

    return-void
.end method

.method public pauseWithFade()V
    .locals 4

    .line 748
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mVolumeControl:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 749
    sget-object v2, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;->SUPER_SLOW:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;

    new-instance v3, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$2;-><init>(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->setVolume(FLcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$Fade;Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl$VolumeControlListener;)V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 6

    .line 659
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->play()V

    const/4 v0, 0x0

    .line 661
    iput v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPausedReason:I

    .line 663
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 664
    iget-wide v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPhfUnplugTime:J

    sub-long/2addr v0, v2

    .line 665
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mEventHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;

    const/4 v3, 0x5

    .line 666
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v4, 0x3e8

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    const-wide/16 v0, -0x1

    .line 669
    iput-wide v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPhfUnplugTime:J

    const/4 v0, 0x1

    .line 677
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mStopOnError:Z

    .line 679
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->internalPlay()V

    return-void

    .line 671
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mEventHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected playQueueUpdated(ZI)V
    .locals 7

    if-eqz p1, :cond_0

    .line 946
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->pause()V

    const/4 p1, 0x0

    .line 947
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 948
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyError(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 951
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz p1, :cond_1

    .line 952
    invoke-virtual {p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->cancelNext()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 955
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getNextPrefetchableTrack(I)Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    .line 956
    iget-object p2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->updateNext(Lcom/sonymobile/music/audioplayer/BasicTrack;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 957
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->prefetchNext(Lcom/sonyericsson/music/common/Track;)V

    :cond_1
    :goto_0
    return-void
.end method

.method postNextSeek(IJ)V
    .locals 1

    .line 1793
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSeekHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;

    if-eqz v0, :cond_0

    .line 1795
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1797
    :catch_0
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "Error sending message to SeekHandler."

    invoke-virtual {p1, p2, p3}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method prefetchNext(Lcom/sonyericsson/music/common/Track;)V
    .locals 8

    .line 1400
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v0, :cond_0

    .line 1401
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->cancelNext()V

    :cond_0
    if-eqz p1, :cond_5

    .line 1405
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 1412
    invoke-static {p1}, Lcom/sonyericsson/music/common/Track;->isTrackMediaStoreContent(Lcom/sonyericsson/music/common/Track;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1414
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v1, :cond_1

    .line 1415
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "media"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v7, v0

    move-object v5, v1

    goto :goto_0

    .line 1418
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v1

    move-object v7, v0

    move-object v5, v1

    goto :goto_0

    .line 1420
    :cond_2
    invoke-static {p1}, Lcom/sonyericsson/music/common/Track;->isCloudFile(Lcom/sonyericsson/music/common/Track;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1421
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->prepareCloudTrackForPlayback(Lcom/sonyericsson/music/common/Track;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 1426
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    .line 1427
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    move-object v7, v0

    move-object v5, v1

    goto :goto_0

    .line 1430
    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    move-object v7, v0

    move-object v5, v1

    .line 1433
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->LOW_POWER_AUDIO:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    .line 1434
    invoke-static {v0}, Lcom/sonyericsson/music/common/ApiAvailabilityManager;->isApiAvailable(Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;)Z

    move-result v6

    move-object v4, p1

    .line 1433
    invoke-virtual/range {v2 .. v7}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->prepareNext(Landroid/content/Context;Lcom/sonymobile/music/audioplayer/BasicTrack;Landroid/net/Uri;ZLjava/util/Map;)V

    :cond_5
    return-void
.end method

.method public previous()V
    .locals 1

    .line 903
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->previous()V

    .line 905
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mUsePlayQueue:Z

    if-nez v0, :cond_0

    .line 906
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->handlePrevInNonPlayQueueMode()V

    goto :goto_0

    .line 908
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->handlePrevInPlayQueueMode()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 241
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->release()V

    .line 243
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->cleanUp()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 244
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->releaseAudioPlayer(ZZ)V

    return-void
.end method

.method releaseAudioPlayer(ZZ)V
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    .line 326
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v3, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->ERROR:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->END:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->IDLE:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v2, v3, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSavedPlaybackPosition:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 330
    iput v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSavedPlaybackPosition:I

    .line 333
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->resetAudioPlayer()V

    .line 335
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioEffectsControl:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;

    if-eqz p1, :cond_2

    .line 336
    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$AudioEffectsControl;->close()V

    .line 339
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->release()V

    goto :goto_1

    .line 341
    :cond_3
    iput v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSavedPlaybackPosition:I

    :goto_1
    const/4 p1, 0x0

    .line 344
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mVolumeControl:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;

    if-eqz v0, :cond_4

    .line 346
    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;->cancel()V

    .line 348
    :cond_4
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mVolumeControl:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$VolumeControl;

    .line 349
    iput v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mNbrOfErrorsInARow:I

    if-eqz p2, :cond_5

    .line 352
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyReleased()V

    .line 354
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyAudioSessionUpdated(I)V

    return-void
.end method

.method releaseToSavePower()V
    .locals 2

    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mReleasedToSavePower:Z

    const/4 v1, 0x0

    .line 362
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->releaseAudioPlayer(ZZ)V

    return-void
.end method

.method sendInternalErrorMessage(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V
    .locals 2

    .line 1898
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mEventHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;

    new-instance v1, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;-><init>(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1901
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPlayQueuePosition(IZ)V
    .locals 1

    .line 964
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/playerservice/BasePlayer;->setPlayQueuePosition(IZ)V

    const/4 v0, 0x1

    .line 966
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->setPlayQueuePosition(IZZ)V

    return-void
.end method

.method public setPlaybackPosition(I)V
    .locals 2

    .line 977
    invoke-super {p0, p1}, Lcom/sonyericsson/music/playerservice/BasePlayer;->setPlaybackPosition(I)V

    .line 979
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    if-eqz v0, :cond_0

    .line 980
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->setPlaybackPos(I)V

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    .line 983
    iget-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mReleasedToSavePower:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 984
    sget-object v1, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->NONE:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->openCurrentTrack(IZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    goto :goto_0

    .line 985
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->STARTED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PAUSED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->COMPLETED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne v0, v1, :cond_4

    .line 988
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getDuration()I

    move-result v0

    if-lez v0, :cond_3

    add-int/lit16 v1, p1, 0x3e8

    if-lt v1, v0, :cond_3

    move p1, v0

    .line 995
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->extendReleaseTimer()V

    .line 996
    iput p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSavedPlaybackPosition:I

    .line 997
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {v0, p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->seekTo(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 1871
    invoke-super {p0, p1}, Lcom/sonyericsson/music/playerservice/BasePlayer;->setRepeatMode(I)V

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1882
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz p1, :cond_0

    .line 1883
    invoke-virtual {p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->cancelNext()V

    goto :goto_0

    .line 1875
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getNextPrefetchableTrack(I)Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    .line 1876
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->updateNext(Lcom/sonymobile/music/audioplayer/BasicTrack;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1877
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->prefetchNext(Lcom/sonyericsson/music/common/Track;)V

    goto :goto_0

    .line 1888
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getNextPrefetchableTrack(I)Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    .line 1889
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->updateNext(Lcom/sonymobile/music/audioplayer/BasicTrack;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1890
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->prefetchNext(Lcom/sonyericsson/music/common/Track;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startWinding(Z)V
    .locals 2

    .line 1034
    invoke-super {p0, p1}, Lcom/sonyericsson/music/playerservice/BasePlayer;->startWinding(Z)V

    .line 1036
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-nez v0, :cond_0

    return-void

    .line 1040
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mReleasedToSavePower:Z

    if-eqz v0, :cond_2

    .line 1046
    iget v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSavedPlaybackPosition:I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->FAST_FORWARD:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->REWIND:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    :goto_0
    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->openCurrentTrack(IZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    goto :goto_1

    .line 1049
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    .line 1050
    iget-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mWinding:Z

    if-nez v1, :cond_5

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->STARTED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PAUSED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->COMPLETED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne v0, v1, :cond_5

    :cond_3
    const/4 v0, 0x1

    .line 1053
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mWinding:Z

    .line 1055
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->stopReleaseTimer()V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_4

    const/16 p1, 0xa

    .line 1058
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->postNextSeek(IJ)V

    goto :goto_1

    :cond_4
    const/16 p1, 0x14

    .line 1060
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->postNextSeek(IJ)V

    :cond_5
    :goto_1
    return-void
.end method

.method stopReleaseTimer()V
    .locals 2

    .line 1590
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mEventHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public stopWinding()V
    .locals 4

    .line 1068
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->stopWinding()V

    .line 1070
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mWinding:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1071
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSeekHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    .line 1072
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1073
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mSeekHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1075
    :cond_0
    iput-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mWinding:Z

    .line 1077
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mPlayerState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    .line 1079
    iget-boolean v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mStartPlayingAfterWinding:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-eqz v2, :cond_1

    sget-object v3, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->IDLE:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARING:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->END:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v3, :cond_1

    .line 1086
    invoke-virtual {v2}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->start()V

    .line 1087
    iput-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mStartPlayingAfterWinding:Z

    goto :goto_0

    .line 1089
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->triggerReleaseTimer()V

    .line 1093
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mWinding:Z

    return-void
.end method

.method triggerReleaseTimer()V
    .locals 4

    .line 1568
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-nez v0, :cond_0

    return-void

    .line 1572
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->stopReleaseTimer()V

    .line 1574
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mEventHandler:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$LocalPlayerEventHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
