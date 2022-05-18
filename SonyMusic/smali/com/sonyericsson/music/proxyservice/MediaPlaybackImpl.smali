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

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsReady:Z

    .line 117
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsStarted:Z

    .line 122
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mShouldCreateNewPlayer:Z

    .line 126
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPausedReasonPhoneCall:Z

    .line 128
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mUnhandledMediaButtonPress:Z

    const/4 v1, 0x0

    .line 132
    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 142
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsWinding:Z

    .line 144
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiverRegistered:Z

    .line 146
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mArtNotificationReceiverRegistered:Z

    .line 148
    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPlaybackStateListener:Lcom/sonyericsson/music/proxyservice/worker/MediaPlaybackStateListener;

    const-wide/16 v2, -0x1

    .line 156
    iput-wide v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 162
    new-instance v4, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$1;-><init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V

    iput-object v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mRemoveMediaRouterCallbackRunnable:Ljava/lang/Runnable;

    .line 169
    new-instance v4, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;

    invoke-direct {v4, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$2;-><init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V

    iput-object v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    new-instance v4, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$3;

    invoke-direct {v4, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$3;-><init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V

    iput-object v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mArtNotificationReceiver:Landroid/content/BroadcastReceiver;

    .line 273
    new-instance v4, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$4;

    invoke-direct {v4, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$4;-><init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V

    iput-object v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    .line 285
    new-instance v4, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;

    invoke-direct {v4, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$5;-><init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V

    iput-object v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystemListener:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;

    .line 406
    new-instance v4, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$6;

    invoke-direct {v4, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$6;-><init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V

    iput-object v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    .line 374
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    .line 376
    new-instance p1, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-direct {p1}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    .line 378
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    .line 379
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMainThread:Ljava/lang/Thread;

    .line 381
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystemListener:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;

    invoke-static {p1, v4}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->getAudioSystem(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;)Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    .line 383
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mNotifier:Lcom/sonyericsson/music/proxyservice/Notifier;

    .line 385
    sget-object p1, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->DEFAULT:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 386
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 387
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 388
    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 389
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeId(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 390
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    .line 391
    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mediaSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 392
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 393
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 395
    sget-boolean p1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->sIsTest:Z

    if-nez p1, :cond_0

    .line 396
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicApplication;

    .line 397
    invoke-static {p0}, Lcom/sonyericsson/music/MusicApplication;->addConfigFetchCompleteListener(Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->releasePlayer()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Landroidx/mediarouter/media/MediaRouter;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mLifecycleControl:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;

    return-object p0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 95
    sget v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->SCANNER_FINISHED_OPEN_DELAY:I

    return v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mUnhandledMediaButtonPress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)I
    .locals 0

    .line 95
    iget p0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    return p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;ZLcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->createLocalPlayer(ZLcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V

    return-void
.end method

.method private changePlayerService(Lcom/sonyericsson/music/playerservice/PlayerService;)V
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isPlaying()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->changePlayerService(Lcom/sonyericsson/music/playerservice/PlayerService;Z)V

    const/4 p1, 0x0

    .line 1393
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mShouldCreateNewPlayer:Z

    return-void
.end method

.method private createDlnaCastPlayer(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 4

    .line 674
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DlnaCastPlayer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 674
    invoke-static {v0, v2, v1, p1}, Lcom/sonyericsson/music/playerservice/PlayerServiceManager;->getPlayerService(Landroid/content/Context;ILjava/lang/String;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Lcom/sonyericsson/music/playerservice/PlayerService;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;

    .line 678
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->changePlayerService(Lcom/sonyericsson/music/playerservice/PlayerService;)V

    return-void
.end method

.method private createGoogleCastPlayer()V
    .locals 4

    .line 662
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoogleCastPlayer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 662
    invoke-static {v0, v2, v1, v3}, Lcom/sonyericsson/music/playerservice/PlayerServiceManager;->getPlayerService(Landroid/content/Context;ILjava/lang/String;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Lcom/sonyericsson/music/playerservice/PlayerService;

    move-result-object v0

    .line 666
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->changePlayerService(Lcom/sonyericsson/music/playerservice/PlayerService;)V

    return-void
.end method

.method private createLocalPlayer(ZLcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 637
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getRouteType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_1

    .line 642
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter;->getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p1

    .line 643
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v1, p1}, Landroidx/mediarouter/media/MediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 645
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeId(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 646
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    goto :goto_0

    .line 633
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "stateBuilder is not allowed to be null when switchToDefaultRouter is true"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 650
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalPlayer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 650
    invoke-static {p1, p2, v0, v1}, Lcom/sonyericsson/music/playerservice/PlayerServiceManager;->getPlayerService(Landroid/content/Context;ILjava/lang/String;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Lcom/sonyericsson/music/playerservice/PlayerService;

    move-result-object p1

    .line 654
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->changePlayerService(Lcom/sonyericsson/music/playerservice/PlayerService;)V

    return-void
.end method

.method private grabMediaButtonFocus()V
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->grabMediaButtonFocus()V

    :cond_0
    return-void
.end method

.method private openInternal(Landroid/net/Uri;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 12

    move-object v10, p0

    .line 703
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

    .line 756
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, v10, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 757
    iget-object v0, v10, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 759
    :cond_0
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private pauseWithFade()V
    .locals 3

    .line 861
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 862
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 865
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 867
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private registerArtNotificationReceiver()V
    .locals 5

    .line 532
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mArtNotificationReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sonyericsson.music.UpdateAsYouPlay.ART_UPDATED"

    .line 534
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mArtNotificationReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.sonyericsson.music.permission.BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 538
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mArtNotificationReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method private registerExternalIntentsReceiver()V
    .locals 3

    .line 511
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 513
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 514
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 515
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 516
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_NOFS"

    .line 517
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 518
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 519
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 523
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_BACKGROUND"

    .line 524
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 527
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method private releasePlayer()V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    const/16 v1, 0x18

    const/4 v2, 0x0

    .line 544
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 547
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 548
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isPlaying(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 549
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 550
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 551
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 552
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->audioSession(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    .line 554
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    const/4 v0, 0x1

    .line 559
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mShouldCreateNewPlayer:Z

    :cond_0
    return-void
.end method

.method private removeMediaRouterCallback(Z)V
    .locals 3

    .line 1373
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mRemoveMediaRouterCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    .line 1377
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mRemoveMediaRouterCallbackRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1379
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->removeMediaRouterCallback()V

    :goto_0
    return-void
.end method

.method private restartOnPrevious()Z
    .locals 2

    .line 936
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

    .line 1363
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 1365
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    const/4 v0, 0x1

    .line 1368
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->removeMediaRouterCallback(Z)V

    :cond_0
    return-void
.end method

.method private updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V
    .locals 2

    .line 690
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    .line 691
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 692
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getTrackColor()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 693
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getDelayedPauseEndMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 695
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPlaybackStateListener:Lcom/sonyericsson/music/proxyservice/worker/MediaPlaybackStateListener;

    if-eqz p1, :cond_0

    .line 696
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-interface {p1, v0}, Lcom/sonyericsson/music/proxyservice/worker/MediaPlaybackStateListener;->onStateUpdated(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    :cond_0
    return-void
.end method


# virtual methods
.method changePlayerService(Lcom/sonyericsson/music/playerservice/PlayerService;Z)V
    .locals 2

    .line 1404
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 1405
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/SetPlayerServiceTask;

    .line 1406
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->getPlaybackPosition()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/sonyericsson/music/proxyservice/worker/SetPlayerServiceTask;-><init>(Lcom/sonyericsson/music/playerservice/PlayerService;ZI)V

    .line 1408
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1409
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public enqueue(Landroid/net/Uri;IZ)V
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 1026
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTask;-><init>(Landroid/net/Uri;IZ)V

    .line 1027
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 p2, 0x11

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1028
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public enqueueTrack(Landroid/net/Uri;Landroid/net/Uri;IIZ)V
    .locals 7

    .line 1035
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 1036
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTrackTask;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTrackTask;-><init>(Landroid/net/Uri;Landroid/net/Uri;IIZ)V

    .line 1038
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 p2, 0x1b

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1039
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public getPausedReasonPhoneCall()Z
    .locals 1

    .line 1793
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPausedReasonPhoneCall:Z

    return v0
.end method

.method public getPlaybackPosition()I
    .locals 2

    .line 967
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

    .line 1195
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    .line 1197
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v1, :cond_1

    .line 1198
    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->iShuffled()Z

    move-result v1

    .line 1199
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v2}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getRepeatMode()I

    move-result v2

    .line 1201
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1203
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1205
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1206
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1210
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1211
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isShuffled(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1212
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->repeatMode(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1213
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1214
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1215
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1216
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    .line 1217
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    :cond_1
    return-object v0
.end method

.method public getTrack()Lcom/sonyericsson/music/common/Track;
    .locals 4

    .line 1225
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v1, :cond_0

    .line 1227
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1229
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1230
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-object v0
.end method

.method isPlayExpected()Z
    .locals 3

    .line 1420
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 1421
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v2, 0xe

    .line 1422
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 v2, 0x2

    .line 1423
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 v2, 0x5

    .line 1424
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

    .line 507
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsStarted:Z

    return v0
.end method

.method public loadPlayQueueIfEmpty()V
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 840
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->openLastPlayed(Z)V

    :cond_0
    return-void
.end method

.method public moveTrack(II)V
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 1064
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/MoveTrackInPlayqueue;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/MoveTrackInPlayqueue;-><init>(II)V

    .line 1065
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 p2, 0x14

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1066
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public next()V
    .locals 3

    .line 941
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 942
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 943
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onAudioSessionUpdate(I)V
    .locals 1

    .line 1740
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1741
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->audioSession(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1742
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1743
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    return-void
.end method

.method public onAudioSystemAudioFocusUpdateRequest(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1705
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->requestAudioFocus()V

    goto :goto_0

    .line 1707
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->abandonAudioFocus()V

    :goto_0
    return-void
.end method

.method public onAudioSystemSetPlaybackPos(I)V
    .locals 1

    .line 1713
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->setPlaybackPosition(I)V

    return-void
.end method

.method public onAudioSystemSetPlaybackState(II)V
    .locals 1

    .line 1718
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->setPlaybackState(II)V

    return-void
.end method

.method public onAudioSystemUpdateMetadata(Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;)V
    .locals 10

    .line 1723
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1724
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->getPlayQueuePosition()I

    move-result v4

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->getPlayQueueLength()I

    move-result v5

    .line 1725
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->getDuration()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;->getAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->getCurrentPosition()I

    move-result v9

    .line 1723
    invoke-virtual/range {v0 .. v9}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->updateMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJLandroid/graphics/Bitmap;I)V

    return-void
.end method

.method public onBuffering(Lcom/sonyericsson/music/common/Track;I)V
    .locals 2

    .line 1587
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    const/16 v0, -0x65

    if-ne p2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1588
    :goto_0
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isBuffering(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1589
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1590
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 1592
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mNotifier:Lcom/sonyericsson/music/proxyservice/Notifier;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/Notifier;->notifyBufferingUpdated()V

    .line 1594
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    if-ne p2, v0, :cond_1

    .line 1596
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->stop()V

    goto :goto_1

    :cond_1
    const/16 p1, -0x66

    if-ne p2, p1, :cond_2

    .line 1598
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onConfigFetchComplete()V
    .locals 0

    .line 403
    invoke-static {p0}, Lcom/sonyericsson/music/MusicApplication;->removeConfigFetchCompleteListener(Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;)V

    return-void
.end method

.method public onCurrentTrackColor(I)V
    .locals 2

    .line 1730
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1731
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1732
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1733
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1734
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1735
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    return-void
.end method

.method public onError(ZZ)V
    .locals 2

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1611
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsReady:Z

    .line 1613
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter;->getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p2

    .line 1614
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0, p2}, Landroidx/mediarouter/media/MediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 1616
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1617
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1618
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeId(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p2

    .line 1619
    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p2

    .line 1620
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    const/4 p2, 0x0

    .line 1621
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->createLocalPlayer(ZLcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V

    .line 1623
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1624
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onGetDuration(Ljava/lang/String;I)V
    .locals 2

    .line 1646
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/Track;->isSame(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1647
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1648
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->buildUpon()Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->duration(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1649
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1650
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1651
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1652
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    :cond_0
    return-void
.end method

.method public onPlayQueuePositionChanged(Ljava/lang/String;I)V
    .locals 2

    .line 1630
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/Track;->isSame(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1631
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1632
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->buildUpon()Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->playqueuePosition(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1633
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1634
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1635
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1636
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    :cond_0
    return-void
.end method

.method public onPlaybackPosition(I)V
    .locals 3

    .line 1509
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

    .line 1442
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1443
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayerServiceChanged(I)V
    .locals 0

    .line 1433
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1437
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsReady:Z

    return-void
.end method

.method public onPlayingStateChanged(ZILcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V
    .locals 3

    .line 1448
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1449
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isPlaying(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1450
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1451
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1452
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1453
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    .line 1454
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 1460
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1462
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1463
    iput-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPausedReasonPhoneCall:Z

    .line 1464
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mLifecycleControl:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;

    invoke-interface {p1, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;->setServiceToBackground(Z)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 1471
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {p3}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object p2

    .line 1472
    invoke-virtual {p3}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->getAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->isPlaying()Z

    move-result p3

    .line 1471
    invoke-virtual {p1, p2, v0, v2, p3}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->getNotification(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/app/Notification;

    move-result-object p1

    .line 1475
    :cond_1
    iput-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPausedReasonPhoneCall:Z

    .line 1476
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->start()V

    .line 1477
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mLifecycleControl:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;

    invoke-interface {p2, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;->setServiceToForeground(Landroid/app/Notification;)V

    goto :goto_1

    :cond_2
    const/16 p1, 0x64

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    .line 1480
    iput-boolean p3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPausedReasonPhoneCall:Z

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    if-ne p2, p1, :cond_5

    .line 1484
    :cond_4
    iput-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPausedReasonPhoneCall:Z

    .line 1487
    :cond_5
    :goto_0
    iget-object p3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {p3}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->stop()V

    .line 1489
    iget-boolean p3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPausedReasonPhoneCall:Z

    if-eqz p3, :cond_6

    .line 1490
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    const-wide/32 v0, 0x927c0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_6
    if-ne p2, p1, :cond_7

    .line 1492
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    .line 1493
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isInPlayQueueMode()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->isPlayExpected()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1494
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mLifecycleControl:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;

    invoke-interface {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;->requestShutdown()V

    goto :goto_1

    .line 1496
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

    .line 1521
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->reset()V

    .line 1522
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    int-to-long v1, p2

    const/4 p2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->setPlaybackPosition(JZ)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1526
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sonyericsson/music/common/Track;->isTrackPlayQueueSupported(Landroid/content/Context;Lcom/sonyericsson/music/common/Track;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1529
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v2

    .line 1530
    invoke-virtual {v2, p3}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isPlaying(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v2

    .line 1531
    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isInPlayQueueMode(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    .line 1532
    invoke-virtual {v1, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1533
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1534
    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1535
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1536
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    if-eqz p4, :cond_1

    .line 1539
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsReady:Z

    .line 1543
    iget-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mUnhandledMediaButtonPress:Z

    if-eqz p1, :cond_1

    .line 1544
    iput-boolean p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mUnhandledMediaButtonPress:Z

    if-nez p3, :cond_1

    .line 1552
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->play()V

    :cond_1
    return-void
.end method

.method public onTrackUpdated(Lcom/sonyericsson/music/common/Track;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/common/Track;->isSame(Lcom/sonymobile/music/audioplayer/BasicTrack;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v0

    .line 1567
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->buildUpon()Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->duration(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    .line 1569
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/Track;->isTrackPlayQueueSupported(Landroid/content/Context;Lcom/sonyericsson/music/common/Track;)Z

    move-result v0

    .line 1570
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    .line 1571
    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isInPlayQueueMode(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1572
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1573
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1574
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1575
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1576
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    :cond_0
    return-void
.end method

.method public onUpdate(Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V
    .locals 4

    .line 1658
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1660
    instance-of v1, p1, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$RepeatModeChanged;

    if-eqz v1, :cond_0

    .line 1661
    move-object v1, p1

    check-cast v1, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$RepeatModeChanged;

    .line 1662
    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$RepeatModeChanged;->getRepeatMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->repeatMode(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    goto :goto_0

    .line 1663
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;

    if-eqz v1, :cond_1

    .line 1664
    move-object v1, p1

    check-cast v1, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;

    .line 1665
    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;->isShuffled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isShuffled(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    .line 1668
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1669
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1670
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1671
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1672
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    .line 1673
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1677
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 1678
    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->getAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1679
    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->isPlaying()Z

    move-result p2

    .line 1677
    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->getNotification(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/app/Notification;

    move-result-object v0

    .line 1682
    :cond_2
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMusicWidgetMgr:Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mNotifier:Lcom/sonyericsson/music/proxyservice/Notifier;

    invoke-virtual {p1, p2, v1, v0}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$WorkerUpdate;->notify(Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;Lcom/sonyericsson/music/proxyservice/Notifier;Landroid/app/Notification;)V

    return-void
.end method

.method public onUpdateArt(Lcom/sonyericsson/music/common/Track;)V
    .locals 1

    .line 1687
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsStarted:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 1688
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1689
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMusicWidgetMgr:Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->updateArt(Lcom/sonyericsson/music/common/Track;)V

    .line 1690
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1691
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public onUpdatePlaybackNotification(Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V
    .locals 4

    .line 1697
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 1698
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->getAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;->isPlaying()Z

    move-result p1

    .line 1697
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->getNotification(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/app/Notification;

    move-result-object p1

    .line 1699
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

    .line 765
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

    .line 770
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

    .line 775
    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->openInternal(Landroid/net/Uri;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method openFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 809
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz p2, :cond_0

    .line 812
    new-instance p2, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$8;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$8;-><init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 833
    invoke-virtual {p2, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method openLastPlayed(Ljava/lang/String;Z)V
    .locals 2

    .line 1075
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_1

    .line 1076
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mShouldCreateNewPlayer:Z

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1078
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->createLocalPlayer(ZLcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V

    .line 1079
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 1082
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/OpenLastPlayedTask;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/OpenLastPlayedTask;-><init>(Ljava/lang/String;Z)V

    .line 1083
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 p2, 0xe

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1084
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method openLastPlayed(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1071
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->openLastPlayed(Ljava/lang/String;Z)V

    return-void
.end method

.method public openSmartPlaylist(IIZ)V
    .locals 4

    .line 780
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 781
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsReady:Z

    .line 783
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 784
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isPlaying(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 785
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 786
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 787
    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 789
    iget-boolean v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mShouldCreateNewPlayer:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 790
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->createLocalPlayer(ZLcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V

    goto :goto_0

    .line 793
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 794
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 797
    :goto_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 799
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/OpenSmartPlaylistTask;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sonyericsson/music/proxyservice/worker/OpenSmartPlaylistTask;-><init>(IIZZ)V

    .line 801
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {p1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 802
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 804
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->reset()V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    .line 846
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 848
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isPlaying(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 849
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 850
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 851
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 852
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    .line 853
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 855
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 856
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public pause(J)V
    .locals 4

    .line 873
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mSleepAlarmManager:Landroid/app/AlarmManager;

    .line 874
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->getSleepTimerPauseBroadcast(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 878
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mSleepAlarmManager:Landroid/app/AlarmManager;

    invoke-static {v1, v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->setExactRtcAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;J)J

    move-result-wide p1

    goto :goto_0

    .line 880
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mSleepAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-wide/16 p1, -0x1

    .line 883
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 884
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 885
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 886
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 887
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 888
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    return-void
.end method

.method performAction(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1753
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "grab_media_button_focus"

    const/4 v2, 0x0

    .line 1759
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1760
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->grabMediaButtonFocus()V

    return-void

    :cond_0
    const-string v1, "com.sonyericsson.music.service.internal.ACTION_PLAYBACK_PAUSE"

    .line 1764
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "timer_extra"

    .line 1765
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1766
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->pauseWithFade()V

    .line 1768
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1769
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1770
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    const-wide/16 v0, -0x1

    .line 1771
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1772
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1773
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    goto :goto_0

    .line 1775
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->pause()V

    :cond_2
    :goto_0
    return-void
.end method

.method public play()V
    .locals 3

    .line 893
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 897
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isPlaying(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 898
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 899
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 900
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 901
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    .line 902
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 905
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 907
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 908
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method final populateWidgetViews()V
    .locals 3

    .line 503
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

    .line 914
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_2

    .line 915
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isInPlayQueueMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->restartOnPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getRouteType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 920
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->setPlaybackPosition(I)V

    goto :goto_0

    .line 922
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/SetQueuePositionTask;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 923
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isPlaying()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/worker/SetQueuePositionTask;-><init>(IZ)V

    .line 924
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 926
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 930
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method public release(Z)V
    .locals 5

    .line 564
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsStarted:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 565
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsStarted:Z

    .line 566
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->saveLastPlayed()V

    .line 568
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    .line 569
    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isPlaying(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 570
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 571
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 572
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    const/4 v2, -0x1

    .line 573
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->audioSession(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    .line 574
    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v1

    .line 575
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 577
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mSleepAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 578
    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->getSleepTimerPauseBroadcast(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 579
    iput-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mSleepAlarmManager:Landroid/app/AlarmManager;

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->setListener(Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;)V

    .line 586
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->release()V

    .line 587
    iput-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    .line 589
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->setListener(Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;)V

    .line 590
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->abandonAudioFocus()V

    .line 591
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->setPlaybackState(II)V

    .line 592
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->release(Z)V

    .line 594
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mShouldCreateNewPlayer:Z

    .line 596
    iget-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiverRegistered:Z

    if-eqz v1, :cond_1

    .line 597
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 598
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mBroadcastReceiverRegistered:Z

    .line 601
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mArtNotificationReceiverRegistered:Z

    if-eqz v1, :cond_2

    .line 602
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mArtNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 603
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mArtNotificationReceiverRegistered:Z

    .line 606
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mDelayedSetServiceToBackground:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 608
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mLifecycleControl:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;

    invoke-interface {v1, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;->setServiceToBackground(Z)V

    .line 609
    iput-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mLifecycleControl:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;

    .line 611
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMusicWidgetMgr:Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;

    invoke-virtual {v1}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->close()V

    .line 613
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    if-eqz v1, :cond_3

    .line 614
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->removeMediaRouterCallback(Z)V

    .line 615
    iput-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    :cond_3
    if-eqz p1, :cond_4

    .line 619
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicApplication;

    .line 620
    invoke-static {p0}, Lcom/sonyericsson/music/MusicApplication;->removeConfigFetchCompleteListener(Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;)V

    :cond_4
    return-void
.end method

.method removeMediaRouterCallback()V
    .locals 2

    const/4 v0, 0x0

    .line 1384
    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteToSelectAfterAdd:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;

    .line 1386
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    if-eqz v0, :cond_0

    .line 1387
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    :cond_0
    return-void
.end method

.method public removeTrack(I)V
    .locals 2

    .line 1054
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 1055
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/RemoveTrackFromPlayqueue;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/RemoveTrackFromPlayqueue;-><init>(I)V

    .line 1056
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1057
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

    .line 1045
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 1046
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/RemoveTracksFromPlayqueue;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/RemoveTracksFromPlayqueue;-><init>(Ljava/util/Collection;)V

    .line 1047
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1048
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method saveLastPlayed()V
    .locals 3

    .line 1089
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->getCurrentPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1092
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isInPlayQueueMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1093
    new-instance v1, Lcom/sonyericsson/music/proxyservice/worker/SaveLastPlayedTask;

    invoke-direct {v1, v0}, Lcom/sonyericsson/music/proxyservice/worker/SaveLastPlayedTask;-><init>(I)V

    .line 1094
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1095
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setClearAudioEnabled(Z)V
    .locals 1

    .line 1152
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setClearAudioPlusEnabled(Landroid/content/Context;Z)V

    return-void
.end method

.method public setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 10

    .line 1259
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-nez v0, :cond_0

    return-void

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    .line 1264
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    .line 1266
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-static {v2, p2}, Lcom/sonyericsson/music/common/MediaRouterUtils;->getMediaRouteInfo(Landroidx/mediarouter/media/MediaRouter;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v3, 0x0

    .line 1268
    iput-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteToSelectAfterAdd:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;

    .line 1270
    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 1272
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1332
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getRouteId()Ljava/lang/String;

    move-result-object p1

    .line 1333
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-static {v0, v2}, Lcom/sonyericsson/music/common/MediaRouterUtils;->getRouteType(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)I

    move-result v0

    if-eq v0, v6, :cond_2

    if-ne v0, v5, :cond_9

    .line 1337
    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1338
    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeId(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1339
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    goto/16 :goto_3

    :cond_3
    :goto_0
    const/4 v4, 0x0

    .line 1273
    iput-boolean v4, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsReady:Z

    .line 1275
    iget-object v7, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v7, v2}, Landroidx/mediarouter/media/MediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 1276
    invoke-virtual {v1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeId(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    .line 1278
    invoke-static {v2}, Lcom/sonyericsson/music/common/MediaRouterUtils;->isDlnaCast(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_4

    const/4 p1, 0x3

    .line 1279
    invoke-virtual {v1, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    .line 1280
    invoke-direct {p0, v2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->createDlnaCastPlayer(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 1282
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const-string p2, "connect_dlna"

    .line 1283
    invoke-static {p1, p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1284
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const-string p2, "play"

    const-string v0, "dlna_cast"

    const-string v2, ""

    .line 1288
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1285
    invoke-static {p1, p2, v0, v2, v3}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 1289
    :cond_4
    invoke-static {v2}, Lcom/sonyericsson/music/common/MediaRouterUtils;->isGoogleCast(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1290
    invoke-static {p1, p2}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->setCastDevice(Landroid/os/Bundle;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 1292
    invoke-virtual {v1, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    .line 1293
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->createGoogleCastPlayer()V

    .line 1295
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const-string p2, "connect_cast"

    .line 1296
    invoke-static {p1, p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1297
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const-string p2, "play"

    const-string v0, "google_cast"

    const-string v2, ""

    .line 1301
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1298
    invoke-static {p1, p2, v0, v2, v3}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 1302
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-static {p1, v2}, Lcom/sonyericsson/music/common/MediaRouterUtils;->isLiveAudioCast(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1303
    invoke-virtual {v1, v5}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    .line 1304
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isLocalPlayback()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1305
    invoke-direct {p0, v4, v3}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->createLocalPlayer(ZLcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V

    goto :goto_1

    .line 1307
    :cond_6
    iput-boolean v6, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsReady:Z

    .line 1310
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const-string p2, "connect_live_audio"

    .line 1311
    invoke-static {p1, p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1312
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const-string p2, "play"

    const-string v0, "live_audio_cast"

    const-string v2, ""

    .line 1316
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1313
    invoke-static {p1, p2, v0, v2, v3}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 1318
    :cond_7
    invoke-virtual {v1, v6}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    .line 1319
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isLocalPlayback()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1320
    invoke-direct {p0, v4, v3}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->createLocalPlayer(ZLcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V

    goto :goto_2

    .line 1322
    :cond_8
    iput-boolean v6, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsReady:Z

    .line 1326
    :goto_2
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 1343
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1344
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1345
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    const/4 p2, -0x1

    .line 1346
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->audioSession(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1347
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1348
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    goto :goto_4

    .line 1357
    :cond_a
    new-instance v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;

    invoke-direct {v0, p2, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteToSelectAfterAdd:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;

    .line 1358
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->startActiveMediaRouteScanning()V

    :goto_4
    return-void
.end method

.method public setPersonalDataCollectionConsented(Z)V
    .locals 1

    .line 1157
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setPersonalDataCollectionConsented(Landroid/content/Context;Z)V

    .line 1160
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseCrashlyticsUtils;->handleFirebaseCrashlyticsSetup(Landroid/content/Context;)V

    .line 1161
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsUtils;->handleFirebaseAnalyticsSetup(Landroid/content/Context;Z)V

    return-void
.end method

.method public setPlaybackPosition(I)V
    .locals 3

    .line 976
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 977
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/SetPlaybackPositionTask;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/SetPlaybackPositionTask;-><init>(I)V

    .line 979
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 980
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 982
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

    .line 1016
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    .line 1017
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/SetQueuePositionTask;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/SetQueuePositionTask;-><init>(IZ)V

    .line 1018
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 p2, 0x12

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1019
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 3

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    .line 1136
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    const/16 v1, 0x16

    const/4 v2, -0x1

    .line 1137
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1138
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1140
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 1141
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->repeatMode(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1142
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1143
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1144
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1145
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1146
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    :cond_0
    return-void

    .line 1133
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

.method public setShowSyncUserNoticeDialog(Z)V
    .locals 1

    .line 1190
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setShowSyncUserNoticeDialog(Landroid/content/Context;Z)V

    return-void
.end method

.method public setShuffle(Z)V
    .locals 4

    .line 1102
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    .line 1103
    invoke-static {v1, v0}, Lcom/sonyericsson/music/common/Track;->isTrackPlayQueueSupported(Landroid/content/Context;Lcom/sonyericsson/music/common/Track;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1104
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    .line 1106
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isShuffled()Z

    move-result v1

    const/16 v2, 0x15

    if-eqz p1, :cond_0

    if-nez v1, :cond_0

    .line 1108
    new-instance p1, Lcom/sonyericsson/music/proxyservice/worker/ShuffleTask;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lcom/sonyericsson/music/proxyservice/worker/ShuffleTask;-><init>(Z)V

    .line 1109
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v3, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1110
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1111
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isShuffled(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    .line 1112
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    const-string v1, "player_shuffle_on"

    invoke-static {p1, v1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    .line 1114
    new-instance p1, Lcom/sonyericsson/music/proxyservice/worker/ShuffleTask;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/sonyericsson/music/proxyservice/worker/ShuffleTask;-><init>(Z)V

    .line 1115
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v3, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1116
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1117
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isShuffled(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    .line 1120
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1121
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 1122
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 1123
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 1124
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 1125
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    :cond_2
    return-void
.end method

.method public setStateListener(Lcom/sonyericsson/music/proxyservice/worker/MediaPlaybackStateListener;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPlaybackStateListener:Lcom/sonyericsson/music/proxyservice/worker/MediaPlaybackStateListener;

    return-void
.end method

.method public setWifiAndMobileDataAccepted(Z)V
    .locals 1

    .line 1167
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setWifiAndMobileDataAccepted(Landroid/content/Context;Z)V

    .line 1169
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicApplication;

    if-eqz p1, :cond_0

    .line 1171
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicApplication;->runPrepareAnalyticsTask()V

    :cond_0
    const/4 p1, 0x0

    .line 1180
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/MusicApplication;->runPrepareAndInitializeFirebaseTask(Z)V

    return-void
.end method

.method final setupWidgetButtons()V
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMusicWidgetMgr:Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->setupButtons(Z)V

    return-void
.end method

.method public shouldShowSyncUserNoticeDialog()Z
    .locals 1

    .line 1185
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->shouldShowSyncUserNoticeDialog(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public shuffleNext()V
    .locals 3

    .line 949
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    const/16 v1, 0x1a

    const/4 v2, 0x0

    .line 950
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 951
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 953
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 954
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isShuffled(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 955
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 956
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 957
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 958
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    .line 959
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    :cond_0
    return-void
.end method

.method final start(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;)V
    .locals 5

    .line 453
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsStarted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 454
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsStarted:Z

    .line 456
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystem:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mAudioSystemListener:Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem;->start(Lcom/sonyericsson/music/proxyservice/audiosystem/AudioSystem$AudioSystemListener;)V

    .line 458
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 459
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrackColor:I

    .line 460
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mTimerEnd:J

    .line 461
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v1

    .line 463
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mLifecycleControl:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;

    .line 465
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->registerExternalIntentsReceiver()V

    .line 466
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->registerArtNotificationReceiver()V

    .line 468
    new-instance p1, Landroid/os/HandlerThread;

    const-string v2, "WorkerThread"

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 471
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, p0}, Lcom/sonyericsson/music/proxyservice/worker/WorkerFactory;->getWorker(Landroid/os/Looper;Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;)Lcom/sonyericsson/music/proxyservice/worker/Worker;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    .line 473
    new-instance p1, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMusicWidgetMgr:Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;

    .line 475
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mShouldCreateNewPlayer:Z

    .line 478
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->isMain()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 479
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 480
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/music/common/MediaRouterUtils;->buildSelector(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 481
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    const/4 v4, 0x6

    invoke-virtual {p1, v2, v3, v4}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 484
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->removeMediaRouterCallback(Z)V

    .line 486
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouter;->updateSelectedRoute(Landroidx/mediarouter/media/MediaRouteSelector;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p1

    .line 487
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeId(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 488
    invoke-static {v2, p1}, Lcom/sonyericsson/music/common/MediaRouterUtils;->getRouteType(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    .line 491
    :cond_0
    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->updatePlaybackStates(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    .line 492
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->setupWidgetButtons()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 494
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->openLastPlayed(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public startWinding(Z)V
    .locals 3

    .line 988
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 989
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsWinding:Z

    .line 991
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/StartWindingTask;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/StartWindingTask;-><init>(Z)V

    .line 992
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 993
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 995
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->getCurrentPosition()I

    move-result p1

    .line 996
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

    .line 1002
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mWorker:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsWinding:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1003
    iput-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mIsWinding:Z

    const/16 v1, 0xd

    const/4 v2, 0x0

    .line 1005
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1006
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1008
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mPositionTracker:Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/TrackPositionTimer;->start()V

    :cond_0
    return-void
.end method

.method public updateMediaRouteAndScan()V
    .locals 4

    .line 1238
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    if-eqz v0, :cond_3

    .line 1239
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getRouteId()Ljava/lang/String;

    move-result-object v0

    .line 1240
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getRouteType()I

    move-result v1

    .line 1242
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/MediaRouter;->updateSelectedRoute(Landroidx/mediarouter/media/MediaRouteSelector;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1244
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

    .line 1249
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0, v1, v2}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1247
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1253
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->startActiveMediaRouteScanning()V

    :cond_3
    return-void
.end method
