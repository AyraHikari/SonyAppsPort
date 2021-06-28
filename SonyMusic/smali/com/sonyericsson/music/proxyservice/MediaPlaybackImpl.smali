.class public Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;
.super Ljava/lang/Object;
.source "MediaPlaybackImpl.java"

# interfaces
.implements Lcom/sonyericsson/music/proxyservice/MediaPlayback;
.implements Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;
.implements Lcom/sonymobile/music/common/MediaPlaybackInternalIntents;
.implements Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;,
        Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;
    }
.end annotation


# static fields
.field private static final DELAY_TIME_LONG_BEFORE_SET_SERVICE_TO_BACKGROUND:J = 0x927c0L

.field private static final DELAY_TIME_SHORT_BEFORE_SET_SERVICE_TO_BACKGROUND:J = 0x7d0L

.field private static SCANNER_FINISHED_OPEN_DELAY:I = 0x3e8

.field private static sIsTest:Z


# instance fields
.field private mArtNotificationReceiver:Landroid/content/BroadcastReceiver;

.field mArtNotificationReceiverRegistered:Z

.field mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

.field private mAudioSystemListener:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mBroadcastReceiverRegistered:Z

.field mContext:Landroid/content/Context;

.field mCurrentTrack:Lcom/sonyericsson/music/common/Track;

.field private mCurrentTrackColor:I

.field private final mDelayedSetServiceToBackground:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field mIsReady:Z

.field mIsStarted:Z

.field private mIsWinding:Z

.field private mLifecycleControl:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;

.field private mMainThread:Ljava/lang/Thread;

.field mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

.field mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

.field private mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field mMediaRouteToSelectAfterAdd:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;

.field private mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

.field private mMusicWidgetMgr:Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;

.field private mNotifier:Lcom/sonyericsson/music/proxyservice/Notifier;

.field private mPausedReasonPhoneCall:Z

.field mPlaybackStateListener:Lcom/sonyericsson/music/proxyservice/worker/MediaPlaybackStateListener;

.field private final mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

.field private final mRemoveMediaRouterCallbackRunnable:Ljava/lang/Runnable;

.field mShouldCreateNewPlayer:Z

.field private mSleepAlarmManager:Landroid/app/AlarmManager;

.field private mTimerEnd:J

.field private mUnhandledMediaButtonPress:Z

.field mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/Notifier;)V
    .locals 5

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsReady:Z

    .line 114
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsStarted:Z

    .line 119
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mShouldCreateNewPlayer:Z

    .line 123
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPausedReasonPhoneCall:Z

    .line 125
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mUnhandledMediaButtonPress:Z

    const/4 v1, 0x0

    .line 129
    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 139
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsWinding:Z

    .line 141
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiverRegistered:Z

    .line 143
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mArtNotificationReceiverRegistered:Z

    .line 145
    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPlaybackStateListener:Lcom/sonyericsson/music/proxyservice/worker/MediaPlaybackStateListener;

    const-wide/16 v2, -0x1

    .line 153
    iput-wide v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 159
    new-instance v4, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$1;-><init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V

    iput-object v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mRemoveMediaRouterCallbackRunnable:Ljava/lang/Runnable;

    .line 166
    new-instance v4, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;

    invoke-direct {v4, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;-><init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V

    iput-object v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    new-instance v4, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$3;

    invoke-direct {v4, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$3;-><init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V

    iput-object v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mArtNotificationReceiver:Landroid/content/BroadcastReceiver;

    .line 260
    new-instance v4, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$4;

    invoke-direct {v4, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$4;-><init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V

    iput-object v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    .line 272
    new-instance v4, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;

    invoke-direct {v4, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;-><init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V

    iput-object v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystemListener:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;

    .line 393
    new-instance v4, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$6;

    invoke-direct {v4, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$6;-><init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V

    iput-object v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    .line 361
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    .line 363
    new-instance p1, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-direct {p1}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    .line 365
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    .line 366
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMainThread:Ljava/lang/Thread;

    .line 368
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystemListener:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;

    invoke-static {p1, v4}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->getAudioSystem(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;)Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    .line 370
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mNotifier:Lcom/sonyericsson/music/proxyservice/Notifier;

    .line 372
    sget-object p1, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->DEFAULT:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 373
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 374
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 375
    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 376
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeId(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 377
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    .line 378
    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mediaSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 379
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 380
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 382
    sget-boolean p1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->sIsTest:Z

    if-nez p1, :cond_0

    .line 383
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicApplication;

    .line 384
    invoke-static {p0}, Lcom/sonyericsson/music/MusicApplication;->addConfigFetchCompleteListener(Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->releasePlayer()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Landroidx/mediarouter/media/MediaRouter;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mLifecycleControl:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;

    return-object p0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 92
    sget v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->SCANNER_FINISHED_OPEN_DELAY:I

    return v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;Z)Z
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mUnhandledMediaButtonPress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    return p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;ZLcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->createLocalPlayer(ZLcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V

    return-void
.end method

.method private changePlayerService(Lcom/sonyericsson/music/playerservice/PlayerService;)V
    .locals 1

    .line 1369
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isPlaying()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->changePlayerService(Lcom/sonyericsson/music/playerservice/PlayerService;Z)V

    const/4 p1, 0x0

    .line 1370
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mShouldCreateNewPlayer:Z

    return-void
.end method

.method private createDlnaCastPlayer(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 4

    .line 661
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DlnaCastPlayer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 661
    invoke-static {v0, v2, v1, p1}, Lcom/sonyericsson/music/playerservice/PlayerServiceManager;->getPlayerService(Landroid/content/Context;ILjava/lang/String;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Lcom/sonyericsson/music/playerservice/PlayerService;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;

    .line 665
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->changePlayerService(Lcom/sonyericsson/music/playerservice/PlayerService;)V

    return-void
.end method

.method private createGoogleCastPlayer()V
    .locals 4

    .line 649
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoogleCastPlayer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 649
    invoke-static {v0, v2, v1, v3}, Lcom/sonyericsson/music/playerservice/PlayerServiceManager;->getPlayerService(Landroid/content/Context;ILjava/lang/String;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Lcom/sonyericsson/music/playerservice/PlayerService;

    move-result-object v0

    .line 653
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->changePlayerService(Lcom/sonyericsson/music/playerservice/PlayerService;)V

    return-void
.end method

.method private createLocalPlayer(ZLcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 624
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getRouteType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_1

    .line 629
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter;->getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p1

    .line 630
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v1, p1}, Landroidx/mediarouter/media/MediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 632
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeId(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 633
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    goto :goto_0

    .line 620
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "stateBuilder is not allowed to be null when switchToDefaultRouter is true"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 637
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalPlayer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 637
    invoke-static {p1, p2, v0, v1}, Lcom/sonyericsson/music/playerservice/PlayerServiceManager;->getPlayerService(Landroid/content/Context;ILjava/lang/String;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Lcom/sonyericsson/music/playerservice/PlayerService;

    move-result-object p1

    .line 641
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->changePlayerService(Lcom/sonyericsson/music/playerservice/PlayerService;)V

    return-void
.end method

.method private grabMediaButtonFocus()V
    .locals 1

    .line 1391
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->grabMediaButtonFocus()V

    :cond_0
    return-void
.end method

.method private openInternal(Landroid/net/Uri;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 12

    move-object v10, p0

    .line 690
    new-instance v11, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$7;-><init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;Landroid/net/Uri;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 743
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, v10, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 744
    iget-object v0, v10, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 746
    :cond_0
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private pauseWithFade()V
    .locals 3

    .line 848
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 849
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 852
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 854
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private registerArtNotificationReceiver()V
    .locals 5

    .line 519
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mArtNotificationReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sonyericsson.music.UpdateAsYouPlay.ART_UPDATED"

    .line 521
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mArtNotificationReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.sonyericsson.music.permission.BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 525
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mArtNotificationReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method private registerExternalIntentsReceiver()V
    .locals 3

    .line 498
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 500
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 501
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 502
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 503
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_NOFS"

    .line 504
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 505
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 506
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 507
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 510
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_BACKGROUND"

    .line 511
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 514
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method private releasePlayer()V
    .locals 3

    .line 530
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    const/16 v1, 0x18

    const/4 v2, 0x0

    .line 531
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 534
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 535
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isPlaying(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 536
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 537
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 538
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 539
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->audioSession(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    .line 541
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    const/4 v0, 0x1

    .line 546
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mShouldCreateNewPlayer:Z

    :cond_0
    return-void
.end method

.method private removeMediaRouterCallback(Z)V
    .locals 3

    .line 1350
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mRemoveMediaRouterCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    .line 1354
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mRemoveMediaRouterCallbackRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1356
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->removeMediaRouterCallback()V

    :goto_0
    return-void
.end method

.method private restartOnPrevious()Z
    .locals 2

    .line 923
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->getCurrentPosition()I

    move-result v0

    const/16 v1, 0x1388

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startActiveMediaRouteScanning()V
    .locals 4

    .line 1340
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 1342
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    const/4 v0, 0x1

    .line 1345
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->removeMediaRouterCallback(Z)V

    :cond_0
    return-void
.end method

.method private updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V
    .locals 2

    .line 677
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    .line 678
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 679
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getTrackColor()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 680
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getDelayedPauseEndMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 682
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPlaybackStateListener:Lcom/sonyericsson/music/proxyservice/worker/MediaPlaybackStateListener;

    if-eqz p1, :cond_0

    .line 683
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-interface {p1, v0}, Lcom/sonyericsson/music/proxyservice/worker/MediaPlaybackStateListener;->onStateUpdated(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    :cond_0
    return-void
.end method


# virtual methods
.method changePlayerService(Lcom/sonyericsson/music/playerservice/PlayerService;Z)V
    .locals 2

    .line 1381
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 1382
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/SetPlayerServiceTask;

    .line 1383
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->getPlaybackPosition()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/sonyericsson/music/proxyservice/worker/SetPlayerServiceTask;-><init>(Lcom/sonyericsson/music/playerservice/PlayerService;ZI)V

    .line 1385
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1386
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public enqueue(Landroid/net/Uri;IZ)V
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 1013
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTask;-><init>(Landroid/net/Uri;IZ)V

    .line 1014
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 p2, 0x11

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1015
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public enqueueTrack(Landroid/net/Uri;Landroid/net/Uri;IIZ)V
    .locals 7

    .line 1022
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 1023
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTrackTask;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTrackTask;-><init>(Landroid/net/Uri;Landroid/net/Uri;IIZ)V

    .line 1025
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 p2, 0x1b

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1026
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public getPausedReasonPhoneCall()Z
    .locals 1

    .line 1770
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPausedReasonPhoneCall:Z

    return v0
.end method

.method public getPlaybackPosition()I
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->getCurrentPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v0
.end method

.method public getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;
    .locals 6

    .line 1172
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    .line 1174
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v1, :cond_1

    .line 1175
    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->iShuffled()Z

    move-result v1

    .line 1176
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v2}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getRepeatMode()I

    move-result v2

    .line 1178
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1180
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1182
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1183
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1187
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1188
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isShuffled(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1189
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->repeatMode(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1190
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1191
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1192
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1193
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    .line 1194
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    :cond_1
    return-object v0
.end method

.method public getTrack()Lcom/sonyericsson/music/common/Track;
    .locals 4

    .line 1202
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v1, :cond_0

    .line 1204
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1206
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1207
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-object v0
.end method

.method isPlayExpected()Z
    .locals 3

    .line 1397
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 1398
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v2, 0xe

    .line 1399
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 v2, 0x2

    .line 1400
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 v2, 0x5

    .line 1401
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method isStarted()Z
    .locals 1

    .line 494
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsStarted:Z

    return v0
.end method

.method public loadPlayQueueIfEmpty()V
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 827
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->openLastPlayed(Z)V

    :cond_0
    return-void
.end method

.method public moveTrack(II)V
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 1051
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/MoveTrackInPlayqueue;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/MoveTrackInPlayqueue;-><init>(II)V

    .line 1052
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 p2, 0x14

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1053
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public next()V
    .locals 3

    .line 928
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 929
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 930
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onAudioSessionUpdate(I)V
    .locals 1

    .line 1717
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1718
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->audioSession(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1719
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1720
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    return-void
.end method

.method public onAudioSystemAudioFocusUpdateRequest(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1682
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->requestAudioFocus()V

    goto :goto_0

    .line 1684
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->abandonAudioFocus()V

    :goto_0
    return-void
.end method

.method public onAudioSystemSetPlaybackPos(I)V
    .locals 1

    .line 1690
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->setPlaybackPosition(I)V

    return-void
.end method

.method public onAudioSystemSetPlaybackState(II)V
    .locals 1

    .line 1695
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->setPlaybackState(II)V

    return-void
.end method

.method public onAudioSystemUpdateMetadata(Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;)V
    .locals 10

    .line 1700
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1701
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->getPlayQueuePosition()I

    move-result v4

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->getPlayQueueLength()I

    move-result v5

    .line 1702
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->getDuration()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->getAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->getCurrentPosition()I

    move-result v9

    .line 1700
    invoke-virtual/range {v0 .. v9}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->updateMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJLandroid/graphics/Bitmap;I)V

    return-void
.end method

.method public onBuffering(Lcom/sonyericsson/music/common/Track;I)V
    .locals 2

    .line 1564
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    const/16 v0, -0x65

    if-ne p2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1565
    :goto_0
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isBuffering(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1566
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1567
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 1569
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mNotifier:Lcom/sonyericsson/music/proxyservice/Notifier;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/Notifier;->notifyBufferingUpdated()V

    .line 1571
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    if-ne p2, v0, :cond_1

    .line 1573
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->stop()V

    goto :goto_1

    :cond_1
    const/16 p1, -0x66

    if-ne p2, p1, :cond_2

    .line 1575
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onConfigFetchComplete()V
    .locals 0

    .line 390
    invoke-static {p0}, Lcom/sonyericsson/music/MusicApplication;->removeConfigFetchCompleteListener(Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;)V

    return-void
.end method

.method public onCurrentTrackColor(I)V
    .locals 2

    .line 1707
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1708
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1709
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1710
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1711
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1712
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    return-void
.end method

.method public onError(ZZ)V
    .locals 2

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1588
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsReady:Z

    .line 1590
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter;->getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p2

    .line 1591
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0, p2}, Landroidx/mediarouter/media/MediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 1593
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1594
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1595
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeId(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p2

    .line 1596
    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p2

    .line 1597
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    const/4 p2, 0x0

    .line 1598
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->createLocalPlayer(ZLcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V

    .line 1600
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1601
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onGetDuration(Ljava/lang/String;I)V
    .locals 2

    .line 1623
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/Track;->isSame(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1624
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1625
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->buildUpon()Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->duration(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1626
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1627
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1628
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1629
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    :cond_0
    return-void
.end method

.method public onPlayQueuePositionChanged(Ljava/lang/String;I)V
    .locals 2

    .line 1607
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/Track;->isSame(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1608
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1609
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->buildUpon()Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->playqueuePosition(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1610
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1611
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1612
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1613
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    :cond_0
    return-void
.end method

.method public onPlaybackPosition(I)V
    .locals 3

    .line 1486
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    int-to-long v1, p1

    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isPlaying()Z

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->setPlaybackPosition(JZ)V

    return-void
.end method

.method public onPlayerReleased(ZZ)V
    .locals 0

    .line 1419
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1420
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayerServiceChanged(I)V
    .locals 0

    .line 1410
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1414
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsReady:Z

    return-void
.end method

.method public onPlayingStateChanged(ZILcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V
    .locals 3

    .line 1425
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1426
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isPlaying(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1427
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1428
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1429
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1430
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    .line 1431
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 1437
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1439
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1440
    iput-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPausedReasonPhoneCall:Z

    .line 1441
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mLifecycleControl:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;

    invoke-interface {p1, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;->setServiceToBackground(Z)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 1448
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {p3}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object p2

    .line 1449
    invoke-virtual {p3}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->getAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->isPlaying()Z

    move-result p3

    .line 1448
    invoke-virtual {p1, p2, v0, v2, p3}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->getNotification(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/app/Notification;

    move-result-object p1

    .line 1452
    :cond_1
    iput-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPausedReasonPhoneCall:Z

    .line 1453
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->start()V

    .line 1454
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mLifecycleControl:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;

    invoke-interface {p2, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;->setServiceToForeground(Landroid/app/Notification;)V

    goto :goto_1

    :cond_2
    const/16 p1, 0x64

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    .line 1457
    iput-boolean p3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPausedReasonPhoneCall:Z

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    if-ne p2, p1, :cond_5

    .line 1461
    :cond_4
    iput-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPausedReasonPhoneCall:Z

    .line 1464
    :cond_5
    :goto_0
    iget-object p3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {p3}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->stop()V

    .line 1466
    iget-boolean p3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPausedReasonPhoneCall:Z

    if-eqz p3, :cond_6

    .line 1467
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    const-wide/32 v0, 0x927c0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_6
    if-ne p2, p1, :cond_7

    .line 1469
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    .line 1470
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isInPlayQueueMode()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->isPlayExpected()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1471
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mLifecycleControl:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;

    invoke-interface {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;->requestShutdown()V

    goto :goto_1

    .line 1473
    :cond_7
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public onTrackChanged(Lcom/sonyericsson/music/common/Track;IZZ)V
    .locals 3

    .line 1498
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->reset()V

    .line 1499
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    int-to-long v1, p2

    const/4 p2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->setPlaybackPosition(JZ)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1503
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sonyericsson/music/common/Track;->isTrackPlayQueueSupported(Landroid/content/Context;Lcom/sonyericsson/music/common/Track;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1506
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v2

    .line 1507
    invoke-virtual {v2, p3}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isPlaying(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v2

    .line 1508
    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isInPlayQueueMode(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    .line 1509
    invoke-virtual {v1, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1510
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1511
    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1512
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1513
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    if-eqz p4, :cond_1

    .line 1516
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsReady:Z

    .line 1520
    iget-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mUnhandledMediaButtonPress:Z

    if-eqz p1, :cond_1

    .line 1521
    iput-boolean p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mUnhandledMediaButtonPress:Z

    if-nez p3, :cond_1

    .line 1529
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->play()V

    :cond_1
    return-void
.end method

.method public onTrackUpdated(Lcom/sonyericsson/music/common/Track;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/common/Track;->isSame(Lcom/sonymobile/music/audioplayer/BasicTrack;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v0

    .line 1544
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->buildUpon()Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->duration(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    .line 1546
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/Track;->isTrackPlayQueueSupported(Landroid/content/Context;Lcom/sonyericsson/music/common/Track;)Z

    move-result v0

    .line 1547
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    .line 1548
    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isInPlayQueueMode(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1549
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1550
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1551
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1552
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1553
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    :cond_0
    return-void
.end method

.method public onUpdate(Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V
    .locals 4

    .line 1635
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1637
    instance-of v1, p1, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$RepeatModeChanged;

    if-eqz v1, :cond_0

    .line 1638
    move-object v1, p1

    check-cast v1, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$RepeatModeChanged;

    .line 1639
    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$RepeatModeChanged;->getRepeatMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->repeatMode(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    goto :goto_0

    .line 1640
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;

    if-eqz v1, :cond_1

    .line 1641
    move-object v1, p1

    check-cast v1, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;

    .line 1642
    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;->isShuffled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isShuffled(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    .line 1645
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1646
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1647
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1648
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1649
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    .line 1650
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1654
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 1655
    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->getAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1656
    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->isPlaying()Z

    move-result p2

    .line 1654
    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->getNotification(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/app/Notification;

    move-result-object v0

    .line 1659
    :cond_2
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMusicWidgetMgr:Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mNotifier:Lcom/sonyericsson/music/proxyservice/Notifier;

    invoke-virtual {p1, p2, v1, v0}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;->notify(Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;Lcom/sonyericsson/music/proxyservice/Notifier;Landroid/app/Notification;)V

    return-void
.end method

.method public onUpdateArt(Lcom/sonyericsson/music/common/Track;)V
    .locals 1

    .line 1664
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsStarted:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 1665
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1666
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMusicWidgetMgr:Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->updateArt(Lcom/sonyericsson/music/common/Track;)V

    .line 1667
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1668
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public onUpdatePlaybackNotification(Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V
    .locals 4

    .line 1674
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 1675
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->getAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->isPlaying()Z

    move-result p1

    .line 1674
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->getNotification(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/app/Notification;

    move-result-object p1

    .line 1676
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mNotifier:Lcom/sonyericsson/music/proxyservice/Notifier;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/music/proxyservice/Notifier;->sendNotification(Landroid/app/Notification;Z)V

    return-void
.end method

.method public open(Landroid/net/Uri;IZ)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 752
    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->openInternal(Landroid/net/Uri;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public open(Landroid/net/Uri;IZI)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v8, p4

    .line 757
    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->openInternal(Landroid/net/Uri;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public open(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 762
    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->openInternal(Landroid/net/Uri;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method openFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 796
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz p2, :cond_0

    .line 799
    new-instance p2, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$8;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$8;-><init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 820
    invoke-virtual {p2, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method openLastPlayed(Ljava/lang/String;Z)V
    .locals 2

    .line 1062
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_1

    .line 1063
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mShouldCreateNewPlayer:Z

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1065
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->createLocalPlayer(ZLcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V

    .line 1066
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 1069
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/OpenLastPlayedTask;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/OpenLastPlayedTask;-><init>(Ljava/lang/String;Z)V

    .line 1070
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 p2, 0xe

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1071
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method openLastPlayed(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1058
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->openLastPlayed(Ljava/lang/String;Z)V

    return-void
.end method

.method public openSmartPlaylist(IIZ)V
    .locals 4

    .line 767
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 768
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsReady:Z

    .line 770
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 771
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isPlaying(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 772
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 773
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 774
    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 776
    iget-boolean v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mShouldCreateNewPlayer:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 777
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->createLocalPlayer(ZLcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V

    goto :goto_0

    .line 780
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 784
    :goto_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 786
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/OpenSmartPlaylistTask;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sonyericsson/music/proxyservice/worker/OpenSmartPlaylistTask;-><init>(IIZZ)V

    .line 788
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {p1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 789
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 791
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->reset()V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    .line 833
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 835
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isPlaying(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 836
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 837
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 838
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 839
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    .line 840
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 842
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 843
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public pause(J)V
    .locals 4

    .line 860
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mSleepAlarmManager:Landroid/app/AlarmManager;

    .line 861
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->getSleepTimerPauseBroadcast(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 865
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mSleepAlarmManager:Landroid/app/AlarmManager;

    invoke-static {v1, v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->setExactRtcAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;J)J

    move-result-wide p1

    goto :goto_0

    .line 867
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mSleepAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-wide/16 p1, -0x1

    .line 870
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 871
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 872
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 873
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 874
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 875
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    return-void
.end method

.method performAction(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1730
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "grab_media_button_focus"

    const/4 v2, 0x0

    .line 1736
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1737
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->grabMediaButtonFocus()V

    return-void

    :cond_0
    const-string v1, "com.sonyericsson.music.service.internal.ACTION_PLAYBACK_PAUSE"

    .line 1741
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "timer_extra"

    .line 1742
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1743
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->pauseWithFade()V

    .line 1745
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1746
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1747
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    const-wide/16 v0, -0x1

    .line 1748
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1749
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1750
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    goto :goto_0

    .line 1752
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->pause()V

    :cond_2
    :goto_0
    return-void
.end method

.method public play()V
    .locals 3

    .line 880
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 884
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isPlaying(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 885
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 886
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 887
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 888
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    .line 889
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 892
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 894
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 895
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method final populateWidgetViews()V
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMusicWidgetMgr:Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->populateAllViews(Lcom/sonyericsson/music/common/Track;Z)V

    return-void
.end method

.method public prev()V
    .locals 3

    .line 901
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_2

    .line 902
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isInPlayQueueMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->restartOnPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getRouteType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 907
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->setPlaybackPosition(I)V

    goto :goto_0

    .line 909
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/SetQueuePositionTask;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 910
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isPlaying()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/worker/SetQueuePositionTask;-><init>(IZ)V

    .line 911
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 913
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 916
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 917
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method public release(Z)V
    .locals 5

    .line 551
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsStarted:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 552
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsStarted:Z

    .line 553
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->saveLastPlayed()V

    .line 555
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    .line 556
    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isPlaying(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 557
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 558
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 559
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    const/4 v2, -0x1

    .line 560
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->audioSession(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    .line 561
    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v1

    .line 562
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 564
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mSleepAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 565
    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->getSleepTimerPauseBroadcast(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 566
    iput-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mSleepAlarmManager:Landroid/app/AlarmManager;

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->setListener(Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;)V

    .line 573
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->release()V

    .line 574
    iput-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    .line 576
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->setListener(Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;)V

    .line 577
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->abandonAudioFocus()V

    .line 578
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->setPlaybackState(II)V

    .line 579
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->release(Z)V

    .line 581
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mShouldCreateNewPlayer:Z

    .line 583
    iget-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiverRegistered:Z

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 585
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiverRegistered:Z

    .line 588
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mArtNotificationReceiverRegistered:Z

    if-eqz v1, :cond_2

    .line 589
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mArtNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 590
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mArtNotificationReceiverRegistered:Z

    .line 593
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 595
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mLifecycleControl:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;

    invoke-interface {v1, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;->setServiceToBackground(Z)V

    .line 596
    iput-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mLifecycleControl:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;

    .line 598
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMusicWidgetMgr:Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;

    invoke-virtual {v1}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->close()V

    .line 600
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    if-eqz v1, :cond_3

    .line 601
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->removeMediaRouterCallback(Z)V

    .line 602
    iput-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    :cond_3
    if-eqz p1, :cond_4

    .line 606
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicApplication;

    .line 607
    invoke-static {p0}, Lcom/sonyericsson/music/MusicApplication;->removeConfigFetchCompleteListener(Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;)V

    :cond_4
    return-void
.end method

.method removeMediaRouterCallback()V
    .locals 2

    const/4 v0, 0x0

    .line 1361
    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteToSelectAfterAdd:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;

    .line 1363
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    :cond_0
    return-void
.end method

.method public removeTrack(I)V
    .locals 2

    .line 1041
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 1042
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/RemoveTrackFromPlayqueue;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/RemoveTrackFromPlayqueue;-><init>(I)V

    .line 1043
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1044
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public removeTracks(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 1033
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/RemoveTracksFromPlayqueue;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/RemoveTracksFromPlayqueue;-><init>(Ljava/util/Collection;)V

    .line 1034
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1035
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method saveLastPlayed()V
    .locals 3

    .line 1076
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->getCurrentPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1079
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isInPlayQueueMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1080
    new-instance v1, Lcom/sonyericsson/music/proxyservice/worker/SaveLastPlayedTask;

    invoke-direct {v1, v0}, Lcom/sonyericsson/music/proxyservice/worker/SaveLastPlayedTask;-><init>(I)V

    .line 1081
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1082
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setClearAudioEnabled(Z)V
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setClearAudioPlusEnabled(Landroid/content/Context;Z)V

    return-void
.end method

.method public setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 10

    .line 1236
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-nez v0, :cond_0

    return-void

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    .line 1241
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    .line 1243
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-static {v2, p2}, Lcom/sonyericsson/music/common/MediaRouterUtils;->getMediaRouteInfo(Landroidx/mediarouter/media/MediaRouter;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v3, 0x0

    .line 1245
    iput-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteToSelectAfterAdd:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;

    .line 1247
    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 1249
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1309
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getRouteId()Ljava/lang/String;

    move-result-object p1

    .line 1310
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-static {v0, v2}, Lcom/sonyericsson/music/common/MediaRouterUtils;->getRouteType(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)I

    move-result v0

    if-eq v0, v6, :cond_2

    if-ne v0, v5, :cond_9

    .line 1314
    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1315
    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeId(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1316
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    goto/16 :goto_3

    :cond_3
    :goto_0
    const/4 v4, 0x0

    .line 1250
    iput-boolean v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsReady:Z

    .line 1252
    iget-object v7, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v7, v2}, Landroidx/mediarouter/media/MediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 1253
    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeId(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    .line 1255
    invoke-static {v2}, Lcom/sonyericsson/music/common/MediaRouterUtils;->isDlnaCast(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_4

    const/4 p1, 0x3

    .line 1256
    invoke-virtual {v1, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    .line 1257
    invoke-direct {p0, v2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->createDlnaCastPlayer(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 1259
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const-string p2, "connect_dlna"

    .line 1260
    invoke-static {p1, p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1261
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const-string p2, "play"

    const-string v0, "dlna_cast"

    const-string v2, ""

    .line 1265
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1262
    invoke-static {p1, p2, v0, v2, v3}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 1266
    :cond_4
    invoke-static {v2}, Lcom/sonyericsson/music/common/MediaRouterUtils;->isGoogleCast(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1267
    invoke-static {p1, p2}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->setCastDevice(Landroid/os/Bundle;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 1269
    invoke-virtual {v1, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    .line 1270
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->createGoogleCastPlayer()V

    .line 1272
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const-string p2, "connect_cast"

    .line 1273
    invoke-static {p1, p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1274
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const-string p2, "play"

    const-string v0, "google_cast"

    const-string v2, ""

    .line 1278
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1275
    invoke-static {p1, p2, v0, v2, v3}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 1279
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-static {p1, v2}, Lcom/sonyericsson/music/common/MediaRouterUtils;->isLiveAudioCast(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1280
    invoke-virtual {v1, v5}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    .line 1281
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isLocalPlayback()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1282
    invoke-direct {p0, v4, v3}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->createLocalPlayer(ZLcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V

    goto :goto_1

    .line 1284
    :cond_6
    iput-boolean v6, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsReady:Z

    .line 1287
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const-string p2, "connect_live_audio"

    .line 1288
    invoke-static {p1, p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1289
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const-string p2, "play"

    const-string v0, "live_audio_cast"

    const-string v2, ""

    .line 1293
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1290
    invoke-static {p1, p2, v0, v2, v3}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 1295
    :cond_7
    invoke-virtual {v1, v6}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    .line 1296
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isLocalPlayback()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1297
    invoke-direct {p0, v4, v3}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->createLocalPlayer(ZLcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V

    goto :goto_2

    .line 1299
    :cond_8
    iput-boolean v6, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsReady:Z

    .line 1303
    :goto_2
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 1320
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1321
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1322
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    const/4 p2, -0x1

    .line 1323
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->audioSession(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1324
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1325
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    goto :goto_4

    .line 1334
    :cond_a
    new-instance v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;

    invoke-direct {v0, p2, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteToSelectAfterAdd:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;

    .line 1335
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->startActiveMediaRouteScanning()V

    :goto_4
    return-void
.end method

.method public setPersonalDataCollectionConsented(Z)V
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setPersonalDataCollectionConsented(Landroid/content/Context;Z)V

    .line 1147
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseCrashlyticsUtils;->handleFirebaseCrashlyticsSetup(Landroid/content/Context;)V

    .line 1148
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsUtils;->handleFirebaseAnalyticsSetup(Landroid/content/Context;Z)V

    return-void
.end method

.method public setPlaybackPosition(I)V
    .locals 3

    .line 963
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 964
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/SetPlaybackPositionTask;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/SetPlaybackPositionTask;-><init>(I)V

    .line 966
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 967
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 969
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    int-to-long v1, p1

    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isPlaying()Z

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->setPlaybackPosition(JZ)V

    :cond_0
    return-void
.end method

.method public setQueuePosition(IZ)V
    .locals 1

    .line 1003
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 1004
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/SetQueuePositionTask;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/SetQueuePositionTask;-><init>(IZ)V

    .line 1005
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 p2, 0x12

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1006
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 3

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    .line 1123
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    const/16 v1, 0x16

    const/4 v2, -0x1

    .line 1124
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1125
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1127
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1128
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->repeatMode(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1129
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1130
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1131
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1132
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1133
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    :cond_0
    return-void

    .line 1120
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal repeat mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShuffle(Z)V
    .locals 4

    .line 1089
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    .line 1090
    invoke-static {v1, v0}, Lcom/sonyericsson/music/common/Track;->isTrackPlayQueueSupported(Landroid/content/Context;Lcom/sonyericsson/music/common/Track;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1091
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    .line 1093
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isShuffled()Z

    move-result v1

    const/16 v2, 0x15

    if-eqz p1, :cond_0

    if-nez v1, :cond_0

    .line 1095
    new-instance p1, Lcom/sonyericsson/music/proxyservice/worker/ShuffleTask;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lcom/sonyericsson/music/proxyservice/worker/ShuffleTask;-><init>(Z)V

    .line 1096
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v3, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1097
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1098
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isShuffled(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    .line 1099
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const-string v1, "player_shuffle_on"

    invoke-static {p1, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    .line 1101
    new-instance p1, Lcom/sonyericsson/music/proxyservice/worker/ShuffleTask;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/sonyericsson/music/proxyservice/worker/ShuffleTask;-><init>(Z)V

    .line 1102
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v3, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1103
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1104
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isShuffled(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    .line 1107
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1108
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1109
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1110
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1111
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1112
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    :cond_2
    return-void
.end method

.method public setStateListener(Lcom/sonyericsson/music/proxyservice/worker/MediaPlaybackStateListener;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPlaybackStateListener:Lcom/sonyericsson/music/proxyservice/worker/MediaPlaybackStateListener;

    return-void
.end method

.method public setWifiAndMobileDataAccepted(Z)V
    .locals 1

    .line 1154
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setWifiAndMobileDataAccepted(Landroid/content/Context;Z)V

    .line 1156
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicApplication;

    if-eqz p1, :cond_0

    .line 1158
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicApplication;->runPrepareAnalyticsTask()V

    :cond_0
    const/4 p1, 0x0

    .line 1167
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/MusicApplication;->runPrepareAndInitializeFirebaseTask(Z)V

    return-void
.end method

.method final setupWidgetButtons()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMusicWidgetMgr:Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->setupButtons(Z)V

    return-void
.end method

.method public shuffleNext()V
    .locals 3

    .line 936
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    const/16 v1, 0x1a

    const/4 v2, 0x0

    .line 937
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 938
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 940
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 941
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isShuffled(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 942
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 943
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 944
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 945
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    .line 946
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    :cond_0
    return-void
.end method

.method final start(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;)V
    .locals 5

    .line 440
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsStarted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 441
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsStarted:Z

    .line 443
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystemListener:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->start(Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;)V

    .line 445
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 446
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 447
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 448
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    .line 450
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mLifecycleControl:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;

    .line 452
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->registerExternalIntentsReceiver()V

    .line 453
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->registerArtNotificationReceiver()V

    .line 455
    new-instance p1, Landroid/os/HandlerThread;

    const-string v2, "WorkerThread"

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 458
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, p0}, Lcom/sonyericsson/music/proxyservice/worker/WorkerFactory;->getWorker(Landroid/os/Looper;Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;)Lcom/sonyericsson/music/proxyservice/worker/Worker;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    .line 460
    new-instance p1, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMusicWidgetMgr:Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;

    .line 462
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mShouldCreateNewPlayer:Z

    .line 465
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->isMain()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 466
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 467
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/music/common/MediaRouterUtils;->buildSelector(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 468
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    const/4 v4, 0x6

    invoke-virtual {p1, v2, v3, v4}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 471
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->removeMediaRouterCallback(Z)V

    .line 473
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouter;->updateSelectedRoute(Landroidx/mediarouter/media/MediaRouteSelector;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p1

    .line 474
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeId(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 475
    invoke-static {v2, p1}, Lcom/sonyericsson/music/common/MediaRouterUtils;->getRouteType(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    .line 478
    :cond_0
    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 479
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->setupWidgetButtons()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 481
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->openLastPlayed(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public startWinding(Z)V
    .locals 3

    .line 975
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 976
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsWinding:Z

    .line 978
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/StartWindingTask;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/StartWindingTask;-><init>(Z)V

    .line 979
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 980
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 982
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->getCurrentPosition()I

    move-result p1

    .line 983
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    int-to-long v1, p1

    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isPlaying()Z

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->setPlaybackPosition(JZ)V

    :cond_0
    return-void
.end method

.method public stopWinding()V
    .locals 3

    .line 989
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsWinding:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 990
    iput-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsWinding:Z

    const/16 v1, 0xd

    const/4 v2, 0x0

    .line 992
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 993
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 995
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->start()V

    :cond_0
    return-void
.end method

.method public updateMediaRouteAndScan()V
    .locals 4

    .line 1215
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    if-eqz v0, :cond_3

    .line 1216
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getRouteId()Ljava/lang/String;

    move-result-object v0

    .line 1217
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getRouteType()I

    move-result v1

    .line 1219
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/MediaRouter;->updateSelectedRoute(Landroidx/mediarouter/media/MediaRouteSelector;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1221
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 1226
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0, v1, v2}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1224
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1230
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->startActiveMediaRouteScanning()V

    :cond_3
    return-void
.end method
