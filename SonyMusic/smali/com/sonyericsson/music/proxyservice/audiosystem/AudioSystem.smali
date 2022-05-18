.class public Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;
.super Ljava/lang/Object;
.source "AudioSystem.java"

# interfaces
.implements Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver$PlayQueueObserverListener;
.implements Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask$TaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;
    }
.end annotation


# static fields
.field public static final STATE_BUFFERING:I = 0x6

.field public static final STATE_ERROR:I = 0x7

.field public static final STATE_FAST_FORWARDING:I = 0x4

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_REWINDING:I = 0x5

.field public static final STATE_SKIPPING_TO_NEXT:I = 0xa

.field public static final STATE_SKIPPING_TO_PREVIOUS:I = 0x9

.field public static final STATE_STOPPED:I = 0x1

.field private static sTestAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;


# instance fields
.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;

.field mAudioSystemListener:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentPlaybackState:I

.field private mGetPlayQueueTask:Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask;

.field private mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mMediaSessionCallback:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;

.field private mNotificationCreator:Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;

.field private mPlayQueueObserver:Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;

.field private mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private mReceiverComponentName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$1;-><init>(Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 104
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mAudioSystemListener:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;

    .line 107
    new-instance v0, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;

    invoke-direct {v0, p1, p0}, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver$PlayQueueObserverListener;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mPlayQueueObserver:Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;

    .line 108
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mPlayQueueObserver:Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;->register()V

    .line 110
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->setupMediaSession(Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;)V

    .line 112
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->getInitialPlaybackState()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->updatePrivatePlaybackState(I)V

    .line 114
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerFactory;->getAudioManager(Landroid/content/Context;)Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mAudioManager:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;

    return-void
.end method

.method public static getAudioSystem(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;)Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;
    .locals 1

    .line 96
    sget-object v0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->sTestAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    if-eqz v0, :cond_0

    return-object v0

    .line 100
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;)V

    return-object v0
.end method

.method private getInitialPlaybackState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private getMediaButtonReceiverIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mReceiverComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 371
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 374
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_S_API:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0xc000000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x8000000

    .line 377
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mContext:Landroid/content/Context;

    .line 378
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    .line 377
    invoke-static {v2, v3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private retrievePlayQueue()V
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mGetPlayQueueTask:Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 397
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 400
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask$TaskListener;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mGetPlayQueueTask:Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask;

    .line 401
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mGetPlayQueueTask:Lcom/sonyericsson/music/proxyservice/audiosystem/GetMediaSessionPlayQueueTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setPlayQueue(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    .line 407
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mContext:Landroid/content/Context;

    const v1, 0x7f1002b6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueueTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setupMediaSession(Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;)V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSessionCallback:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;-><init>(Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSessionCallback:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSessionCallback:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->start(Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;)V

    .line 123
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mContext:Landroid/content/Context;

    const-class v1, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mReceiverComponentName:Landroid/content/ComponentName;

    .line 128
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mReceiverComponentName:Landroid/content/ComponentName;

    .line 129
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->getMediaButtonReceiverIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 131
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->getNotificationCreator(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mNotificationCreator:Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;

    .line 132
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mNotificationCreator:Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->getLaunchIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 134
    new-instance p1, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v0, 0x1d7f

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 146
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 148
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 149
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToLocal(I)V

    .line 150
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 154
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSessionCallback:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 161
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 163
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->retrievePlayQueue()V

    return-void
.end method

.method private updatePlaybackState(II)V
    .locals 8

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_3

    .line 312
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    .line 319
    :cond_1
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    iget v2, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mCurrentPlaybackState:I

    int-to-long v3, p1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v1, v0

    .line 320
    invoke-virtual/range {v1 .. v7}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    int-to-long p1, p2

    .line 321
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActiveQueueItemId(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 322
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 323
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_0

    .line 314
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Play queue position is not allowed to be 0 because some BT accessories can\'t handle zero-based pq index."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method private updatePrivatePlaybackState(I)V
    .locals 1

    .line 388
    iput p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mCurrentPlaybackState:I

    .line 390
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSessionCallback:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;

    if-eqz p1, :cond_0

    .line 391
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mCurrentPlaybackState:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->updatePlaybackState(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 245
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mAudioManager:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 250
    sget-object v0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->sTestAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V

    :cond_1
    return-void
.end method

.method public getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNotification(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/app/Notification;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mNotificationCreator:Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/music/proxyservice/audiosystem/NotificationCreator;->getNotification(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public grabMediaButtonFocus()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 206
    :cond_0
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mCurrentPlaybackState:I

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 208
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->setPlaybackState(II)V

    :cond_2
    return-void
.end method

.method public onPlayQueueChanged()V
    .locals 0

    .line 413
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->retrievePlayQueue()V

    return-void
.end method

.method public onPlayQueueRetrieved(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 418
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->setPlayQueue(Ljava/util/List;)V

    return-void
.end method

.method public release(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 187
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSessionCallback:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->release()V

    .line 191
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 192
    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mPlayQueueObserver:Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;->setListener(Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver$PlayQueueObserverListener;)V

    .line 196
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mPlayQueueObserver:Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;->unRegister()V

    :cond_1
    return-void
.end method

.method public requestAudioFocus()V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mAudioManager:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioManagerWrapper;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 224
    sget-object v0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->sTestAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    if-nez v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v1

    .line 227
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/music/common/MediaRouterUtils;->buildSelector(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v2

    .line 231
    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    invoke-static {v1}, Lcom/sonyericsson/music/common/MediaRouterUtils;->isGoogleCast(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    invoke-static {v1}, Lcom/sonyericsson/music/common/MediaRouterUtils;->isDlnaCast(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V

    :cond_2
    return-void
.end method

.method public setListener(Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;)V
    .locals 1

    .line 167
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mAudioSystemListener:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;

    .line 169
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSessionCallback:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;

    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mAudioSystemListener:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->setListener(Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;)V

    :cond_0
    return-void
.end method

.method public setPlaybackPosition(I)V
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->updatePlaybackState(I)V

    return-void
.end method

.method public setPlaybackState(II)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xa

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x9

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x7

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x6

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_8
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_9
    const/4 p1, 0x1

    .line 293
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->updatePrivatePlaybackState(I)V

    .line 294
    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->updatePlaybackState(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public start(Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v0, :cond_0

    .line 176
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->setupMediaSession(Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;)V

    .line 178
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->setListener(Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;)V

    .line 179
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mPlayQueueObserver:Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;->setListener(Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver$PlayQueueObserverListener;)V

    .line 180
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mPlayQueueObserver:Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/PlayQueueObserver;->register()V

    return-void
.end method

.method public updateMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJLandroid/graphics/Bitmap;I)V
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    .line 332
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    if-eqz p8, :cond_0

    .line 335
    invoke-virtual {p8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_0

    .line 336
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p8, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p8

    :cond_0
    add-int/lit8 p4, p4, 0x1

    const-string v1, "android.media.metadata.ARTIST"

    .line 345
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    .line 346
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    const-string p1, "android.media.metadata.ALBUM"

    .line 347
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    const-string p1, "android.media.metadata.TITLE"

    .line 348
    invoke-virtual {v0, p1, p3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    const-string p1, "android.media.metadata.TRACK_NUMBER"

    int-to-long p2, p4

    .line 349
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    const-string p1, "android.media.metadata.NUM_TRACKS"

    int-to-long p2, p5

    .line 350
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    const-string p1, "android.media.metadata.DURATION"

    .line 351
    invoke-virtual {v0, p1, p6, p7}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    const-string p1, "android.media.metadata.ALBUM_ART"

    .line 352
    invoke-virtual {v0, p1, p8}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 354
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 355
    invoke-direct {p0, p9, p4}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->updatePlaybackState(II)V

    :cond_1
    return-void
.end method

.method public updatePlaybackState(I)V
    .locals 8

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    iget v2, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mCurrentPlaybackState:I

    int-to-long v3, p1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v1, v0

    .line 304
    invoke-virtual/range {v1 .. v7}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 305
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 306
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    :cond_0
    return-void
.end method
