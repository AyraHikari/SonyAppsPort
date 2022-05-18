.class public Lcom/sonyericsson/music/proxyservice/PlaybackService;
.super Landroidx/media/MediaBrowserServiceCompat;
.source "PlaybackService.java"

# interfaces
.implements Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;,
        Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;,
        Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;,
        Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;,
        Lcom/sonyericsson/music/proxyservice/PlaybackService$ProxyServiceBinder;
    }
.end annotation


# static fields
.field private static final DELAYED_NOTIFICATION_DISMISS_MILLIS:J = 0x1b7740L

.field private static final DELAYED_PLAYLIST_ARTS_SYNC_MILLIS:I = 0x1388

.field private static final DELAYED_SHUTDOWN_TIME_MILLIS:I = 0x2710

.field private static final EXTENDED_WAKELOCK_TAG:Ljava/lang/String; = "SemcMusicPlayer-timed"

.field private static final EXTEND_WAKELOCK_TIME_MILLIS:J = 0x1388L

.field private static final FINAL_SYNC_TIME_CALL_MILLIS:I = 0x1388

.field static final PROXY_SERVICE_BINDING_ACTION:Ljava/lang/String; = "com.sonyericsson.music.PROXY_SERVICE_BINDING_ACTION"

.field private static final SYNC_TIME_DELAY_MILLIS:I = 0xbb8


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioMediaContentObserver:Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mHasEverBeenPlaying:Z

.field mIMediaPlayback:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

.field private mMediaBrowserHelper:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;

.field private mMediaBrowserServiceBinding:Z

.field mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

.field private mMediaPlaybackBinding:Z

.field private mMusicInfoSyncContentObserver:Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;

.field mNotifier:Lcom/sonyericsson/music/proxyservice/Notifier;

.field private mPlaylistsContentObserver:Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;

.field private final mProxyServiceBinder:Lcom/sonyericsson/music/proxyservice/PlaybackService$ProxyServiceBinder;

.field private mProxyServiceBinding:Z

.field private mReceiverRegistered:Z

.field mReleasedMediaPlayback:Z

.field private mServiceWrapper:Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;

.field private mShutdownRunnable:Ljava/lang/Runnable;

.field private mStartId:I

.field private mTimedWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Landroidx/media/MediaBrowserServiceCompat;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mReleasedMediaPlayback:Z

    .line 107
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlaybackBinding:Z

    .line 108
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mProxyServiceBinding:Z

    .line 109
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaBrowserServiceBinding:Z

    .line 111
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mHasEverBeenPlaying:Z

    .line 115
    new-instance v1, Lcom/sonyericsson/music/proxyservice/PlaybackService$ProxyServiceBinder;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$ProxyServiceBinder;-><init>(Lcom/sonyericsson/music/proxyservice/PlaybackService;)V

    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mProxyServiceBinder:Lcom/sonyericsson/music/proxyservice/PlaybackService$ProxyServiceBinder;

    .line 117
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mReceiverRegistered:Z

    .line 121
    new-instance v0, Lcom/sonyericsson/music/proxyservice/PlaybackService$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$1;-><init>(Lcom/sonyericsson/music/proxyservice/PlaybackService;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, -0x1

    .line 149
    iput v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mStartId:I

    .line 151
    new-instance v0, Lcom/sonyericsson/music/proxyservice/PlaybackService$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$2;-><init>(Lcom/sonyericsson/music/proxyservice/PlaybackService;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mShutdownRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/proxyservice/PlaybackService;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mStartId:I

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/proxyservice/PlaybackService;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mHasEverBeenPlaying:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/proxyservice/PlaybackService;)Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mPlaylistsContentObserver:Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/proxyservice/PlaybackService;)Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMusicInfoSyncContentObserver:Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/proxyservice/PlaybackService;)Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mServiceWrapper:Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;

    return-object p0
.end method

.method private startMediaPlayback(Landroid/content/Intent;)V
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mShutdownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 446
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->isStarted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 447
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->start(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$LifecycleControl;)V

    .line 448
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mIMediaPlayback:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->setMediaPlayback(Lcom/sonyericsson/music/proxyservice/MediaPlayback;)V

    .line 449
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mIMediaPlayback:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->start()V

    .line 451
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mPlaylistsContentObserver:Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->isRegistered()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMusicInfoSyncContentObserver:Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;

    .line 452
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 454
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mPlaylistsContentObserver:Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;

    invoke-virtual {v2}, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->register()V

    .line 455
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMusicInfoSyncContentObserver:Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;

    invoke-virtual {v2}, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->register()V

    .line 456
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mAudioMediaContentObserver:Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;

    invoke-virtual {v2}, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->register()V

    if-eqz v0, :cond_2

    const/16 v0, 0x1388

    .line 461
    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startPlaylistSync(Landroid/content/Context;I)V

    .line 462
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startHighResContainersSync(Landroid/content/Context;)V

    :cond_2
    const-string v0, "grab_media_button_focus"

    .line 467
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "grab_media_button_focus"

    .line 471
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 472
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->performAction(Landroid/content/Intent;)V

    .line 475
    :cond_3
    invoke-static {p0}, Lcom/sonyericsson/music/proxyservice/AnalyticsService;->sendAnalytics(Landroid/content/Context;)V

    :cond_4
    return-void
.end method


# virtual methods
.method canStopService()Z
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->getPausedReasonPhoneCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlaybackBinding:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mProxyServiceBinding:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaBrowserServiceBinding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method cancelDelayNotificationAutoDismiss()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 561
    invoke-static {p0}, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->getNotificationAutoDismissBroadcast(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 562
    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_0
    return-void
.end method

.method delayedNotificationAutoDismiss()V
    .locals 4

    .line 552
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    const-string v0, "alarm"

    .line 553
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 555
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->getNotificationAutoDismissBroadcast(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mAlarmManager:Landroid/app/AlarmManager;

    const-wide/32 v2, 0x1b7740

    invoke-static {v1, v0, v2, v3}, Lcom/sonyericsson/music/proxyservice/AlarmReceiver;->setInExactRtcAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;J)J

    return-void
.end method

.method fullMediaPlaybackShutdown(Z)V
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mReleasedMediaPlayback:Z

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->release(Z)V

    .line 339
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mIMediaPlayback:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->stop()V

    .line 340
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mIMediaPlayback:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;->setMediaPlayback(Lcom/sonyericsson/music/proxyservice/MediaPlayback;)V

    const/4 p1, 0x1

    .line 341
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mReleasedMediaPlayback:Z

    .line 342
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mPlaylistsContentObserver:Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;->unregister()V

    .line 343
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMusicInfoSyncContentObserver:Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;->unregister()V

    .line 344
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mAudioMediaContentObserver:Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;->unregister()V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .line 362
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->startMediaPlayback(Landroid/content/Intent;)V

    .line 364
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemcMusicPlayer"

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client binding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Returning binder."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.MAIN"

    .line 368
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 369
    iput-boolean v2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlaybackBinding:Z

    .line 370
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mIMediaPlayback:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    return-object p1

    :cond_0
    const-string v1, "com.sonyericsson.music.PROXY_SERVICE_BINDING_ACTION"

    .line 371
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    iput-boolean v2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mProxyServiceBinding:Z

    .line 373
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mProxyServiceBinder:Lcom/sonyericsson/music/proxyservice/PlaybackService$ProxyServiceBinder;

    return-object p1

    :cond_1
    const-string v1, "android.media.browse.MediaBrowserService"

    .line 374
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    iput-boolean v2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaBrowserServiceBinding:Z

    .line 376
    invoke-super {p0, p1}, Landroidx/media/MediaBrowserServiceCompat;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 183
    invoke-super {p0}, Landroidx/media/MediaBrowserServiceCompat;->onCreate()V

    .line 185
    invoke-static {p0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper$Factory;->newServiceWrapper(Landroid/app/Service;)Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mServiceWrapper:Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;

    .line 188
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->getContentUriRegisterObserver(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 188
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string v0, "power"

    .line 191
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "SemcMusicPlayer"

    const/4 v2, 0x1

    .line 192
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 193
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string v1, "SemcMusicPlayer-timed"

    .line 194
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mTimedWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 196
    new-instance v0, Lcom/sonyericsson/music/proxyservice/Notifier;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/Notifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mNotifier:Lcom/sonyericsson/music/proxyservice/Notifier;

    .line 197
    new-instance v0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mNotifier:Lcom/sonyericsson/music/proxyservice/Notifier;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/Notifier;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    .line 198
    new-instance v0, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    invoke-direct {v0}, Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mIMediaPlayback:Lcom/sonyericsson/music/proxyservice/IMediaPlaybackStub;

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media/MediaBrowserServiceCompat;->setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 201
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaBrowserHelper:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;

    .line 203
    new-instance v0, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mPlaylistsContentObserver:Lcom/sonyericsson/music/proxyservice/PlaybackService$PlaylistsContentObserver;

    .line 205
    new-instance v0, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mAudioMediaContentObserver:Lcom/sonyericsson/music/proxyservice/PlaybackService$AudioMediaContentObserver;

    .line 207
    new-instance v0, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMusicInfoSyncContentObserver:Lcom/sonyericsson/music/proxyservice/PlaybackService$MusicInfoSyncObserver;

    .line 209
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.music.musicservicecommand"

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    iput-boolean v2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mReceiverRegistered:Z

    .line 218
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mHandler:Landroid/os/Handler;

    .line 219
    iput-boolean v3, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mHasEverBeenPlaying:Z

    .line 221
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "com.sonyericsson.music.service.internal.ACTION_POPULATE_WIDGET"

    .line 292
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->populateWidgetViews()V

    const/4 p1, 0x0

    .line 294
    invoke-virtual {p3, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 296
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/media/MediaBrowserServiceCompat;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 306
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->cancelDelayNotificationAutoDismiss()V

    const/4 v0, 0x1

    .line 308
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->fullMediaPlaybackShutdown(Z)V

    .line 310
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mReceiverRegistered:Z

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SemcMusicPlayer"

    const-string v1, "Releasing wakelock from onDestroy"

    .line 316
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 321
    :cond_1
    invoke-static {}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->deinit()V

    .line 324
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->getContentUriRegisterObserver(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mShutdownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaBrowserHelper:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->release()V

    .line 331
    iput-object v2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mServiceWrapper:Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;

    .line 333
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaBrowserHelper:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    move-result-object p1

    return-object p1
.end method

.method public onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaBrowserHelper:Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserHelper;->onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 4

    .line 414
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->startMediaPlayback(Landroid/content/Intent;)V

    .line 416
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemcMusicPlayer"

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client re-binding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Returning binder."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.MAIN"

    .line 420
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 421
    iput-boolean v2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlaybackBinding:Z

    goto :goto_0

    :cond_0
    const-string v1, "com.sonyericsson.music.PROXY_SERVICE_BINDING_ACTION"

    .line 422
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    iput-boolean v2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mProxyServiceBinding:Z

    goto :goto_0

    :cond_1
    const-string v1, "android.media.browse.MediaBrowserService"

    .line 424
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    iput-boolean v2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaBrowserServiceBinding:Z

    .line 426
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 229
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 231
    iput p3, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mStartId:I

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    .line 238
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mReleasedMediaPlayback:Z

    if-nez v0, :cond_5

    .line 240
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->cancelDelayNotificationAutoDismiss()V

    const-string v0, "com.sonyericsson.music.service.internal.DISMISS"

    .line 242
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p2, "com.sonyericsson.music.service.internal.EXTRA_DISMISS_IS_AUTOMATIC"

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 248
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->isPlayExpected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 249
    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->setServiceToBackground(Z)V

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->canStopService()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 253
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mServiceWrapper:Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;->stopSelf()V

    goto :goto_1

    .line 256
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->pause()V

    .line 257
    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->setServiceToBackground(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->canStopService()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 262
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mServiceWrapper:Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;->stopSelf()V

    goto :goto_1

    :cond_3
    const-string v0, "com.sonyericsson.music.service.internal.CLEAR_ARTDECODER"

    .line 266
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    invoke-static {}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->clearDefaultCache()V

    .line 269
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->onUpdateArt(Lcom/sonyericsson/music/common/Track;)V

    goto :goto_1

    .line 271
    :cond_4
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->performAction(Landroid/content/Intent;)V

    .line 275
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mShutdownRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string p1, "com.sonyericsson.music.service.internal.DISMISS"

    .line 276
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 277
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mShutdownRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    const/4 p1, 0x2

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 350
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 352
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->pause()V

    .line 353
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mServiceWrapper:Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;->stopSelf()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    .line 388
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    .line 390
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 391
    iput-boolean v2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaPlaybackBinding:Z

    goto :goto_0

    :cond_0
    const-string v1, "com.sonyericsson.music.PROXY_SERVICE_BINDING_ACTION"

    .line 392
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    iput-boolean v2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mProxyServiceBinding:Z

    goto :goto_0

    :cond_1
    const-string v1, "android.media.browse.MediaBrowserService"

    .line 394
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    iput-boolean v2, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mMediaBrowserServiceBinding:Z

    .line 396
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 399
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mShutdownRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 401
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mShutdownRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1
.end method

.method public requestShutdown()V
    .locals 4

    .line 527
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->canStopService()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 528
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->setServiceToBackground(Z)V

    const/4 v0, 0x0

    .line 531
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mHasEverBeenPlaying:Z

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mShutdownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 534
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mShutdownRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setServiceToBackground(Z)V
    .locals 2

    .line 509
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_S_API:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 511
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mServiceWrapper:Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;->stopForeground(Z)V

    .line 512
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mNotifier:Lcom/sonyericsson/music/proxyservice/Notifier;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/proxyservice/Notifier;->clearNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 514
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mServiceWrapper:Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;->stopForeground(Z)V

    .line 515
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->delayedNotificationAutoDismiss()V

    .line 519
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 520
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mTimedWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 521
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    return-void
.end method

.method public setServiceToForeground(Landroid/app/Notification;)V
    .locals 3

    const/4 v0, 0x1

    .line 485
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mHasEverBeenPlaying:Z

    .line 487
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mServiceWrapper:Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sonyericsson/music/proxyservice/PlaybackService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;->startService(Landroid/content/Intent;)V

    .line 491
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mServiceWrapper:Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;->startForeground(ILandroid/app/Notification;)V

    .line 492
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mNotifier:Lcom/sonyericsson/music/proxyservice/Notifier;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/proxyservice/Notifier;->registerNotificationId(I)V

    .line 494
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/PlaybackService;->cancelDelayNotificationAutoDismiss()V

    .line 497
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_0

    .line 498
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    const-string p1, "SemcMusicPlayer"

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wakeLock isHeld: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
