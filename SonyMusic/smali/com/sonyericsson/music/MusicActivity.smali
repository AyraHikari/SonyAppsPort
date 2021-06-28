.class public Lcom/sonyericsson/music/MusicActivity;
.super Lcom/sonyericsson/music/ThemedActivity;
.source "MusicActivity.java"

# interfaces
.implements Lcom/sonyericsson/music/AsyncTaskWorker;
.implements Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$FragmentAllowedLatchHandler;
.implements Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;
.implements Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/MusicActivity$StartupDrive;,
        Lcom/sonyericsson/music/MusicActivity$OpenPlayerFragmentWhenAllowed;,
        Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;,
        Lcom/sonyericsson/music/MusicActivity$ArtResetListener;,
        Lcom/sonyericsson/music/MusicActivity$StartupTask;,
        Lcom/sonyericsson/music/MusicActivity$BackListener;,
        Lcom/sonyericsson/music/MusicActivity$BackSource;
    }
.end annotation


# static fields
.field private static final ACCOUNT_CLEANUP_TASK_RETAIN_KEY:Ljava/lang/String; = "account_cleanup_task_retain_key"

.field private static final BATCH_REQUEST:I = 0x3

.field private static final COLD_START_PLAYBACK_PERFORMANCE_INTENT_ACTION:Ljava/lang/String; = "com.sonyericsson.music.COLD_PLAYBACK_PERFORMANCE"

.field private static final DLNA_CONNECTION_RETAIN_KEY:Ljava/lang/String;

.field private static final GOOGLE_PLAY_SERVICES_ACTION_DLG_REQUEST:I = 0x1

.field private static final GOOGLE_PLAY_SERVICES_CHECK_ERROR_HANDLED_RETAIN_KEY:Ljava/lang/String;

.field private static final GOOGLE_SIGN_IN_INTRO_REQUEST:I = 0x4

.field public static final INTENT_EXTRA_LAUNCH_PLAYER:Ljava/lang/String; = "launch_player"

.field private static final LANDING_PAGE_TO_BE_SHOWN_KEY:Ljava/lang/String;

.field private static final LAUNCHED_PLAYER_BY_CONTENT_URI:Ljava/lang/String;

.field private static final PERMISSION_DLG_SHOWN_RETAIN_KEY:Ljava/lang/String; = "permission_dlg_key_shown_key"

.field private static final PERMISSION_REQUEST:I = 0x2

.field private static final PLAYER_LAUNCHED_KEY:Ljava/lang/String;

.field private static final PLAYON_LOADING_DLG_TIMEOUT:I = 0x4e20

.field private static final SETTINGS_REQUEST:I

.field private static sOnCreateTime:J

.field private static sPlaybackTime:J


# instance fields
.field private mAccountCleanupRunnable:Ljava/lang/Runnable;

.field private mAccountCleanupTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

.field mAllowSelectRoute:Z

.field mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mArtResetListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/MusicActivity$ArtResetListener;",
            ">;"
        }
    .end annotation
.end field

.field private mArtistInfoNotifier:Lcom/sonyericsson/music/ArtistInfoNotifier;

.field private mBackListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/MusicActivity$BackListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundColorDrawable:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

.field private final mClearAudioPlusListener:Landroid/content/BroadcastReceiver;

.field mConnectingToDlna:Z

.field private mDelayStartupTasks:Z

.field mDisableCastButtonVisibilityUpdate:Z

.field private final mDrmUtils:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/sonyericsson/music/common/DrmUtils;",
            ">;"
        }
    .end annotation
.end field

.field private mEnqueueLandingPageLoad:Z

.field private final mFragmentTransactionAllowedLatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private mGooglePlayServicesCheckErrorHandled:Z

.field mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHasServiceBinder:Z

.field private final mInternalPlaybackServiceListener:Landroid/content/BroadcastReceiver;

.field private mIsAudioListenerRegistered:Z

.field mIsInternalPlaybackListenerRegistered:Z

.field private mIsLandingPageToBeShown:Z

.field private mIsLaunchPlayerByContentURI:Z

.field mLaunchIntent:Landroid/content/Intent;

.field private mLaunchIntoPlayerMode:Z

.field private mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

.field private final mMediaPlaybackListener:Landroid/content/BroadcastReceiver;

.field mMediaPlaybackReceiverRegistered:Z

.field private mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

.field mMediaRouteMenuItem:Landroid/view/MenuItem;

.field private mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field private mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

.field private final mMenuLoadedListener:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$MenuLoadedListener;

.field private mMusicFragmentManager:Lcom/sonyericsson/music/MusicFragmentManager;

.field mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

.field private mNowPlayingUpdater:Lcom/sonyericsson/music/NowPlayingUpdater;

.field private mOpenPlayerTask:Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;

.field private final mPerformanceMeasurementListener:Landroid/content/BroadcastReceiver;

.field mPerformanceMeasurementReceiverRegistered:Z

.field private final mPermissionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/common/PermissionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsDialogShown:Z

.field private final mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

.field final mRemoveDlnaLoadingDlg:Ljava/lang/Runnable;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field final mServiceConnectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/MediaServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mStartupTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/MusicActivity$StartupTask;",
            ">;"
        }
    .end annotation
.end field

.field private mStoragePermissionGrantResult:I

.field private mToast:Landroid/widget/Toast;

.field private mToolbarControl:Lcom/sonyericsson/music/ToolbarControl;

.field mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_dlnaConnection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/MusicActivity;->DLNA_CONNECTION_RETAIN_KEY:Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_LandingPageToBeShown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/MusicActivity;->LANDING_PAGE_TO_BE_SHOWN_KEY:Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/music/MusicActivity;

    .line 159
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_googlePlayServicesCheckErrorHandled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/MusicActivity;->GOOGLE_PLAY_SERVICES_CHECK_ERROR_HANDLED_RETAIN_KEY:Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_player_launch_mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/MusicActivity;->PLAYER_LAUNCHED_KEY:Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_launched_player_by_uri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/MusicActivity;->LAUNCHED_PLAYER_BY_CONTENT_URI:Ljava/lang/String;

    const/4 v0, 0x1

    .line 183
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 146
    invoke-direct {p0}, Lcom/sonyericsson/music/ThemedActivity;-><init>()V

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mIsLaunchPlayerByContentURI:Z

    .line 190
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mLaunchIntoPlayerMode:Z

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mServiceConnectionListeners:Ljava/util/List;

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mPermissionListeners:Ljava/util/List;

    .line 200
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mDrmUtils:Ljava/util/concurrent/atomic/AtomicReference;

    .line 202
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mVisible:Z

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mFragmentTransactionAllowedLatches:Ljava/util/List;

    .line 215
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mIsInternalPlaybackListenerRegistered:Z

    .line 219
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mIsAudioListenerRegistered:Z

    const/4 v1, 0x0

    .line 226
    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mOpenPlayerTask:Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;

    .line 230
    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mArtistInfoNotifier:Lcom/sonyericsson/music/ArtistInfoNotifier;

    .line 256
    new-instance v2, Lcom/sonyericsson/music/MusicActivity$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/music/MusicActivity$1;-><init>(Lcom/sonyericsson/music/MusicActivity;)V

    iput-object v2, p0, Lcom/sonyericsson/music/MusicActivity;->mAccountCleanupRunnable:Ljava/lang/Runnable;

    .line 282
    new-instance v2, Lcom/sonyericsson/music/MusicActivity$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/music/MusicActivity$2;-><init>(Lcom/sonyericsson/music/MusicActivity;)V

    iput-object v2, p0, Lcom/sonyericsson/music/MusicActivity;->mMenuLoadedListener:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$MenuLoadedListener;

    .line 301
    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mLaunchIntent:Landroid/content/Intent;

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mBackListeners:Ljava/util/List;

    .line 313
    new-instance v1, Lcom/sonyericsson/music/MusicActivity$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/MusicActivity$3;-><init>(Lcom/sonyericsson/music/MusicActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 399
    new-instance v1, Lcom/sonyericsson/music/MusicActivity$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/MusicActivity$4;-><init>(Lcom/sonyericsson/music/MusicActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaPlaybackListener:Landroid/content/BroadcastReceiver;

    .line 502
    new-instance v1, Lcom/sonyericsson/music/MusicActivity$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/MusicActivity$5;-><init>(Lcom/sonyericsson/music/MusicActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mPerformanceMeasurementListener:Landroid/content/BroadcastReceiver;

    .line 530
    new-instance v1, Lcom/sonyericsson/music/MusicActivity$6;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/MusicActivity$6;-><init>(Lcom/sonyericsson/music/MusicActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    .line 540
    new-instance v1, Lcom/sonyericsson/music/MusicActivity$7;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/MusicActivity$7;-><init>(Lcom/sonyericsson/music/MusicActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mInternalPlaybackServiceListener:Landroid/content/BroadcastReceiver;

    .line 555
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MusicActivity:Worker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 559
    new-instance v1, Lcom/sonyericsson/music/MusicActivity$8;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/MusicActivity$8;-><init>(Lcom/sonyericsson/music/MusicActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mRemoveDlnaLoadingDlg:Ljava/lang/Runnable;

    .line 581
    new-instance v1, Lcom/sonyericsson/music/MusicActivity$9;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/MusicActivity$9;-><init>(Lcom/sonyericsson/music/MusicActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mClearAudioPlusListener:Landroid/content/BroadcastReceiver;

    .line 603
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mArtResetListeners:Ljava/util/List;

    .line 605
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mDelayStartupTasks:Z

    .line 607
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mStartupTasks:Ljava/util/List;

    .line 609
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mEnqueueLandingPageLoad:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/MusicActivity;)Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/sonyericsson/music/MusicActivity;->mAccountCleanupTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    return-object p0
.end method

.method static synthetic access$002(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;)Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity;->mAccountCleanupTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/MusicActivity;)Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Lcom/sonyericsson/music/MusicActivity;->mEnqueueLandingPageLoad:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/music/MusicActivity;)Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/music/MusicActivity;Z)Z
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/sonyericsson/music/MusicActivity;->mEnqueueLandingPageLoad:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/music/MusicActivity;)Landroidx/mediarouter/media/MediaRouter;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/MusicActivity;)Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->tryHandleIntent()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->updateMediaRouterSelectRoute()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->showDLNALoadingDlg()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/music/MusicActivity;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/sonyericsson/music/MusicActivity;->mDrmUtils:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/music/MusicActivity;)Landroid/widget/Toast;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/sonyericsson/music/MusicActivity;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$902(Lcom/sonyericsson/music/MusicActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private addRetainedControllerFragments()V
    .locals 3

    .line 1052
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 1053
    new-instance v1, Lcom/sonyericsson/music/player/PlayerController;

    invoke-direct {v1}, Lcom/sonyericsson/music/player/PlayerController;-><init>()V

    const-string v2, "PlayerController"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1054
    new-instance v1, Lcom/sonyericsson/music/IlluminationController;

    invoke-direct {v1}, Lcom/sonyericsson/music/IlluminationController;-><init>()V

    const-string v2, "IlluminationController"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1055
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 1056
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method private checkAndPurgeMusicStoreDatabase()V
    .locals 5

    .line 2162
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2163
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/music/MusicActivity$18;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/music/MusicActivity$18;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Context;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private clearMUFiles()V
    .locals 5

    .line 2147
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2148
    invoke-static {v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isMUFilesCleared(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2149
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/music/MusicActivity$17;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/music/MusicActivity$17;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Context;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private clearMusicLikeDB()V
    .locals 5

    .line 2117
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2118
    invoke-static {v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isMusicLikeDBCleared(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2119
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/music/MusicActivity$15;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/music/MusicActivity$15;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Context;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private clearOldSharedPrefs()V
    .locals 5

    .line 2105
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2106
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/music/MusicActivity$14;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/music/MusicActivity$14;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Context;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private clearSunsetFiles()V
    .locals 5

    .line 2132
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2133
    invoke-static {v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isSunsetFilesCleared(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2134
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/music/MusicActivity$16;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/music/MusicActivity$16;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Context;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private clearWearData()V
    .locals 5

    .line 2172
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2173
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/music/MusicActivity$19;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/music/MusicActivity$19;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Context;)V

    const-wide/32 v3, 0x88b8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private createLauncherIntent()Landroid/content/Intent;
    .locals 2

    .line 980
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 981
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private dismissGooglePlayServicesActionDlg(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const-string v0, "google_play_services_action_dialog"

    .line 1210
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/dialogs/GooglePlayServicesActionDialog;

    if-eqz p1, :cond_0

    .line 1213
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method private doPermissionProtectedSetup()V
    .locals 5

    .line 797
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 799
    iput v1, p0, Lcom/sonyericsson/music/MusicActivity;->mStoragePermissionGrantResult:I

    .line 800
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    .line 801
    iput v2, p0, Lcom/sonyericsson/music/MusicActivity;->mStoragePermissionGrantResult:I

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 802
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 804
    :cond_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/MusicActivity;->handleStoragePermissionResult(I)Z

    .line 807
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 808
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 810
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    .line 811
    aput-object v3, v2, v1

    move v1, v4

    goto :goto_1

    .line 815
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    const-string v1, "permission_dialog_tag"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicFragmentManager;->removeFragment(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 816
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mPermissionsDialogShown:Z

    const/4 v0, 0x2

    .line 817
    invoke-static {p0, v2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method private handleGooglePlayServicesAvailability()V
    .locals 10

    .line 1144
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getGooglePlayServicesCheck(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    .line 1147
    invoke-static {p0}, Lcom/sonyericsson/music/common/GooglePlayServices;->getAvailability(Landroid/content/Context;)I

    move-result v1

    .line 1148
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eq v1, v0, :cond_0

    .line 1149
    iput-boolean v4, p0, Lcom/sonyericsson/music/MusicActivity;->mGooglePlayServicesCheckErrorHandled:Z

    .line 1153
    invoke-static {p0, v2, v3, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setGooglePlayServicesCheck(Landroid/content/Context;JI)V

    .line 1157
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/16 v5, 0xd

    const-wide/16 v6, -0x1

    if-ne v1, v5, :cond_1

    .line 1164
    invoke-static {p0, v6, v7, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setGooglePlayServicesCheck(Landroid/content/Context;JI)V

    return-void

    :cond_1
    if-nez v1, :cond_2

    .line 1169
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->initMediaRouter()V

    .line 1171
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/MusicActivity;->dismissGooglePlayServicesActionDlg(Landroidx/fragment/app/FragmentManager;)V

    .line 1175
    invoke-static {p0, v6, v7, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setGooglePlayServicesCheck(Landroid/content/Context;JI)V

    goto :goto_1

    .line 1176
    :cond_2
    iget-boolean v5, p0, Lcom/sonyericsson/music/MusicActivity;->mGooglePlayServicesCheckErrorHandled:Z

    if-nez v5, :cond_6

    .line 1177
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v5

    .line 1179
    invoke-virtual {v5, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    .line 1180
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getGooglePlayServicesCheck(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v6

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v8, v2

    if-nez v6, :cond_3

    const/4 v4, 0x1

    :cond_3
    if-eqz v4, :cond_4

    .line 1182
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/MusicActivity;->dismissGooglePlayServicesActionDlg(Landroidx/fragment/app/FragmentManager;)V

    .line 1188
    invoke-static {v1, v7}, Lcom/sonyericsson/music/dialogs/GooglePlayServicesActionDialog;->newInstance(II)Lcom/sonyericsson/music/dialogs/GooglePlayServicesActionDialog;

    move-result-object v2

    const-string v3, "google_play_services_action_dialog"

    .line 1190
    invoke-virtual {v2, v0, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 1193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setGooglePlayServicesCheck(Landroid/content/Context;JI)V

    goto :goto_0

    .line 1196
    :cond_4
    invoke-virtual {v5, p0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorNotification(Landroid/content/Context;I)V

    .line 1204
    :cond_5
    :goto_0
    iput-boolean v7, p0, Lcom/sonyericsson/music/MusicActivity;->mGooglePlayServicesCheckErrorHandled:Z

    :cond_6
    :goto_1
    return-void
.end method

.method private handleStoragePermissionResult(I)Z
    .locals 5

    .line 852
    iget v0, p0, Lcom/sonyericsson/music/MusicActivity;->mStoragePermissionGrantResult:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    .line 853
    iput p1, p0, Lcom/sonyericsson/music/MusicActivity;->mStoragePermissionGrantResult:I

    .line 855
    iget v0, p0, Lcom/sonyericsson/music/MusicActivity;->mStoragePermissionGrantResult:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 859
    invoke-static {p0}, Lcom/sonyericsson/music/proxyservice/AnalyticsService;->sendAnalytics(Landroid/content/Context;)V

    .line 861
    sget-boolean v3, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v3, :cond_1

    .line 862
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startMediaStoreDataSync(Landroid/content/Context;)V

    .line 865
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startPlaylistSync(Landroid/content/Context;)V

    .line 866
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startHighResContainersSync(Landroid/content/Context;)V

    .line 868
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/music/player/PlayerController;->loadPlayQueueIfEmpty()V

    .line 871
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/music/MusicActivity;->mPermissionListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/music/common/PermissionListener;

    .line 872
    invoke-interface {v4, v0}, Lcom/sonyericsson/music/common/PermissionListener;->onStoragePermissionChanged(Z)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private initBackground()V
    .locals 2

    .line 1033
    new-instance v0, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-direct {v0}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mBackgroundColorDrawable:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    .line 1034
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mBackgroundColorDrawable:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-static {p0}, Lcom/sonyericsson/music/common/ThemeColor;->window(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->setColor(I)V

    const v0, 0x7f09007d

    .line 1035
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1036
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mBackgroundColorDrawable:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initDrmUtils()V
    .locals 2

    .line 1256
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mDrmUtils:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/sonyericsson/music/common/DrmUtilsStub;

    invoke-direct {v1}, Lcom/sonyericsson/music/common/DrmUtilsStub;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1257
    new-instance v0, Lcom/sonyericsson/music/MusicActivity$11;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/MusicActivity$11;-><init>(Lcom/sonyericsson/music/MusicActivity;)V

    .line 1262
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private initMediaRouter()V
    .locals 4

    .line 906
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    if-nez v0, :cond_0

    .line 907
    invoke-static {p0}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 909
    invoke-static {p0}, Lcom/sonyericsson/music/common/MediaRouterUtils;->buildSelector(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 910
    new-instance v0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;-><init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/MusicActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    .line 912
    invoke-static {p0}, Lcom/sonyericsson/music/CastGa;->initialize(Landroid/content/Context;)V

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 916
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v2, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 919
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->updateMediaRouterSelectRoute()V

    return-void
.end method

.method private static isLaunchPlayerIntent(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "launch_player"

    const/4 v1, 0x0

    .line 975
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private isLauncherIntent(Landroid/content/Intent;)Z
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "android.intent.action.MAIN"

    .line 970
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.category.LAUNCHER"

    .line 971
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private persistPermissionDialogShown(Lcom/sonyericsson/music/RetainManager;Z)V
    .locals 1

    const-string v0, "permission_dlg_key_shown_key"

    .line 880
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private registerBroadCastReceiverMusicServiceIntents()V
    .locals 5

    .line 1675
    iget-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaPlaybackReceiverRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1676
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaPlaybackReceiverRegistered:Z

    .line 1679
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1680
    invoke-static {p0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackStartedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1681
    invoke-static {p0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getPlaybackErrorIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1682
    invoke-static {p0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1683
    invoke-static {p0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSkippedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaPlaybackListener:Landroid/content/BroadcastReceiver;

    const-string v3, "com.sonyericsson.music.permission.BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1687
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1688
    invoke-static {p0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getBufferingUpdatedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1689
    sget-object v1, Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;->BROADCAST_PRIORITY_BUFFERING_DEFAULT:Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1690
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaPlaybackListener:Landroid/content/BroadcastReceiver;

    const-string v3, "com.sonyericsson.music.permission.BROADCAST"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private registerBroadCastReceiverPerformaceMeasurement()V
    .locals 1

    .line 1696
    iget-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mPerformanceMeasurementReceiverRegistered:Z

    return-void
.end method

.method private runStartupTasks()V
    .locals 2

    .line 2033
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mStartupTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/MusicActivity$StartupTask;

    .line 2034
    invoke-virtual {v1, p0}, Lcom/sonyericsson/music/MusicActivity$StartupTask;->run(Lcom/sonyericsson/music/MusicActivity;)V

    goto :goto_0

    .line 2036
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mStartupTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private setLaunchPlayerByContentURI(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "content"

    .line 1971
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/MusicActivity;->mIsLaunchPlayerByContentURI:Z

    :cond_0
    return-void
.end method

.method private setupRetainedState()V
    .locals 2

    .line 1726
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1729
    :cond_0
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/MusicActivity;->DLNA_CONNECTION_RETAIN_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/RetainManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1731
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mConnectingToDlna:Z

    return-void
.end method

.method private showDLNALoadingDlg()V
    .locals 3

    .line 488
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sonyericsson/music/player/PlayerState;->EMPTY:Lcom/sonyericsson/music/player/PlayerState;

    .line 490
    :goto_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->getRouteType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 491
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->getLoadingState()Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->IDLE:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 492
    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/music/MusicActivity;->showLoadingDialog(Landroid/content/Intent;Z)V

    const/4 v0, 0x1

    .line 493
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mConnectingToDlna:Z

    goto :goto_1

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mRemoveDlnaLoadingDlg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 496
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    const-string v1, "loading"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicFragmentManager;->removeFragment(Ljava/lang/String;)V

    .line 497
    iput-boolean v2, p0, Lcom/sonyericsson/music/MusicActivity;->mConnectingToDlna:Z

    :cond_2
    :goto_1
    return-void
.end method

.method private showHowToEnablePermissionDialog(Z)V
    .locals 3

    .line 885
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    .line 888
    new-instance p1, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;

    const-string v1, "android.permission-group.STORAGE"

    const v2, 0x7f1001b1

    invoke-direct {p1, v1, v2}, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 893
    new-instance p1, Lcom/sonyericsson/music/dialogs/ShowHowToEnablePermissionDlg;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;

    .line 894
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/dialogs/ShowHowToEnablePermissionDlg;-><init>([Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;)V

    .line 896
    invoke-static {p0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 897
    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/dialogs/ShowHowToEnablePermissionDlg;->run(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_0

    .line 899
    :cond_1
    new-instance v0, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;

    invoke-direct {v0, p0, p0, p1}, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$FragmentAllowedLatchHandler;Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$ToDoWhenFragmentAllowed;)V

    .line 900
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    return-void
.end method

.method private tryHandleIntent()V
    .locals 3

    .line 986
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    .line 988
    iget-boolean v1, p0, Lcom/sonyericsson/music/MusicActivity;->mVisible:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 989
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/sonyericsson/music/ViewRequestController;->getIntentHandler(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)Lcom/sonyericsson/music/ViewRequestController$IntentHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 991
    instance-of v2, v0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;

    if-eqz v2, :cond_0

    .line 992
    iget-object v2, p0, Lcom/sonyericsson/music/MusicActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/sonyericsson/music/MusicActivity;->setLaunchPlayerByContentURI(Landroid/content/Intent;)V

    .line 994
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->runIntent()V

    .line 995
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/MusicActivity;->setIsLandingPageToBeShown(Z)V

    goto :goto_0

    .line 996
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/MusicActivity;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/sonyericsson/music/MusicActivity;->isLaunchPlayerIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 998
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMusicFragmentManager:Lcom/sonyericsson/music/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicFragmentManager;->openLandingPage()V

    goto :goto_0

    .line 999
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/sonyericsson/music/MusicActivity;->isLaunchPlayerIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1000
    invoke-static {p0}, Lcom/sonyericsson/music/common/MusicUtils;->openPlayerLauncherFragment(Landroid/app/Activity;)V

    .line 1001
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/MusicActivity;->setIsLandingPageToBeShown(Z)V

    const/4 v0, 0x1

    .line 1002
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/MusicActivity;->setLaunchIntoPlayerMode(Z)V

    .line 1008
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->createLauncherIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method private updateCastButtonVisibility(Lcom/sonyericsson/music/player/PlayerController;Landroid/view/MenuItem;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 953
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 954
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getRouteType()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 957
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    if-eqz p1, :cond_2

    .line 958
    invoke-static {p1}, Lcom/sonyericsson/music/common/MediaRouterUtils;->hasOnlyDefaultRoute(Landroidx/mediarouter/media/MediaRouter;)Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    .line 959
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    xor-int/lit8 p1, p1, 0x1

    .line 960
    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 955
    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 956
    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    return-void
.end method

.method private updateMediaRouterSelectRoute()V
    .locals 2

    .line 925
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 930
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/sonyericsson/music/MusicActivity;->mAllowSelectRoute:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 934
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 938
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getRouteId()Ljava/lang/String;

    move-result-object v0

    .line 939
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-static {v1, v0}, Lcom/sonyericsson/music/common/MediaRouterUtils;->getMediaRouteInfo(Landroidx/mediarouter/media/MediaRouter;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 942
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 943
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/MediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 947
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mDisableCastButtonVisibilityUpdate:Z

    if-nez v0, :cond_2

    .line 948
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addBackListener(Lcom/sonyericsson/music/MusicActivity$BackListener;)V
    .locals 1

    .line 2076
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mBackListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2077
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mBackListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addFragmentTransactionAllowedLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 1633
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mFragmentTransactionAllowedLatches:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMusicServiceConnectedListener(Lcom/sonyericsson/music/MediaServiceConnection;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1556
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mServiceConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mServiceConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 1560
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1561
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1562
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/music/MediaServiceConnection;->onMediaServiceConnected(Lcom/sonyericsson/music/player/PlayerController;)V

    :cond_1
    return-void
.end method

.method public addOnArtResetListener(Lcom/sonyericsson/music/MusicActivity$ArtResetListener;)Z
    .locals 1

    .line 2086
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mArtResetListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2087
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mArtResetListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addPermissionListener(Lcom/sonyericsson/music/common/PermissionListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mPermissionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mPermissionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public closeAndLockDrawer()V
    .locals 1

    .line 1924
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    if-eqz v0, :cond_0

    .line 1925
    invoke-virtual {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->closeAndLockDrawer()V

    :cond_0
    return-void
.end method

.method public disableCastButtonVisibilityUpdate(Z)V
    .locals 0

    .line 965
    iput-boolean p1, p0, Lcom/sonyericsson/music/MusicActivity;->mDisableCastButtonVisibilityUpdate:Z

    return-void
.end method

.method public doAsync(Ljava/lang/Runnable;)V
    .locals 1

    .line 1591
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public doAsyncPrioritized(Ljava/lang/Runnable;)V
    .locals 1

    .line 1596
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public doParallelAsync(Ljava/lang/Runnable;)V
    .locals 1

    .line 1602
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finishStartup()V
    .locals 1

    .line 2000
    iget-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mDelayStartupTasks:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2001
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mDelayStartupTasks:Z

    .line 2006
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->runStartupTasks()V

    :cond_0
    return-void
.end method

.method public getArtistInfoNotifier()Lcom/sonyericsson/music/ArtistInfoNotifier;
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mArtistInfoNotifier:Lcom/sonyericsson/music/ArtistInfoNotifier;

    return-object v0
.end method

.method public getDrmUtils()Lcom/sonyericsson/music/common/DrmUtils;
    .locals 1

    .line 1586
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mDrmUtils:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/common/DrmUtils;

    return-object v0
.end method

.method public getMediaPlayback()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;
    .locals 1

    .line 2044
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    return-object v0
.end method

.method public getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMusicFragmentManager:Lcom/sonyericsson/music/MusicFragmentManager;

    return-object v0
.end method

.method public getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mNowPlayingUpdater:Lcom/sonyericsson/music/NowPlayingUpdater;

    return-object v0
.end method

.method public getPlayerController()Lcom/sonyericsson/music/player/PlayerController;
    .locals 2

    .line 1044
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "PlayerController"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1045
    instance-of v1, v0, Lcom/sonyericsson/music/player/PlayerController;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1046
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "player controller is not correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1048
    :cond_1
    :goto_0
    check-cast v0, Lcom/sonyericsson/music/player/PlayerController;

    return-object v0
.end method

.method public getToolbar()Lcom/sonyericsson/music/ui/ShadowingToolbar;
    .locals 1

    .line 2048
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mToolbarControl:Lcom/sonyericsson/music/ToolbarControl;

    invoke-virtual {v0}, Lcom/sonyericsson/music/ToolbarControl;->getToolbar()Lcom/sonyericsson/music/ui/ShadowingToolbar;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;
    .locals 1

    .line 2068
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mToolbarControl:Lcom/sonyericsson/music/ToolbarControl;

    return-object v0
.end method

.method public getTopFragment()Lcom/sonyericsson/music/library/BaseFragment;
    .locals 1

    .line 1823
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMusicFragmentManager:Lcom/sonyericsson/music/MusicFragmentManager;

    if-eqz v0, :cond_0

    .line 1824
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicFragmentManager;->getTopFragment()Lcom/sonyericsson/music/library/BaseFragment;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public googleSignIn(Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;)V
    .locals 2

    .line 2011
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2012
    new-instance v0, Lcom/sonyericsson/music/MusicActivity$StartupDrive;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/MusicActivity$StartupDrive;-><init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const p1, 0x7f100244

    const/4 v0, 0x1

    .line 2014
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method

.method public isFragmentTransactionAllowed()Z
    .locals 1

    .line 1629
    invoke-static {p0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    return v0
.end method

.method public isLandingPageToBeShown()Z
    .locals 1

    .line 1976
    iget-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mIsLandingPageToBeShown:Z

    return v0
.end method

.method public isLaunchIntoPlayerMode()Z
    .locals 1

    .line 2097
    iget-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mLaunchIntoPlayerMode:Z

    return v0
.end method

.method public isLaunchPlayerByContentURI()Z
    .locals 1

    .line 1965
    iget-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mIsLaunchPlayerByContentURI:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1520
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 1546
    invoke-static {p3}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->shouldLaunchDriveFragmentAfterResult(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1547
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/library/GoogleDriveFragment;->open(Lcom/sonyericsson/music/MusicFragmentManager;)V

    goto :goto_0

    .line 1540
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity;->mMusicFragmentManager:Lcom/sonyericsson/music/MusicFragmentManager;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicFragmentManager;->openLandingPage()V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_3

    const-string p1, "extra_reload"

    const/4 p2, 0x0

    .line 1525
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1526
    invoke-static {p0}, Lcom/sonyericsson/music/common/MusicUtils;->restartMusicActivity(Lcom/sonyericsson/music/MusicActivity;)V

    goto :goto_0

    :cond_1
    const-string p1, "extra_launch_google_drive"

    .line 1528
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1529
    sget-object p1, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->SETTINGS_SIGN_IN:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/MusicActivity;->googleSignIn(Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;)V

    goto :goto_0

    :cond_2
    const-string p1, "extra_pop_google_drive"

    .line 1531
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1534
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/music/library/GoogleDriveFragment;->close(Landroid/app/Activity;Lcom/sonyericsson/music/MusicFragmentManager;)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .line 1785
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mBackListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/MusicActivity$BackListener;

    .line 1786
    invoke-interface {v2}, Lcom/sonyericsson/music/MusicActivity$BackListener;->handleBack()Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 1789
    sget-object v0, Lcom/sonyericsson/music/MusicActivity$BackSource;->KEYCODE:Lcom/sonyericsson/music/MusicActivity$BackSource;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/MusicActivity;->onBackPressed(Lcom/sonyericsson/music/MusicActivity$BackSource;)V

    :cond_1
    return-void
.end method

.method public onBackPressed(Lcom/sonyericsson/music/MusicActivity$BackSource;)V
    .locals 1

    .line 1794
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1798
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1799
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->closeDrawer()V

    return-void

    .line 1803
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isLaunchIntoPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 1804
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/MusicActivity;->setLaunchIntoPlayerMode(Z)V

    .line 1805
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity;->mMusicFragmentManager:Lcom/sonyericsson/music/MusicFragmentManager;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicFragmentManager;->openLandingPage()V

    return-void

    .line 1809
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMusicFragmentManager:Lcom/sonyericsson/music/MusicFragmentManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/MusicFragmentManager;->dispatchBackPressed(Lcom/sonyericsson/music/MusicActivity$BackSource;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1810
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_3
    return-void
.end method

.method public onConfigFetchComplete()V
    .locals 2

    .line 269
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicApplication;

    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Lcom/sonyericsson/music/MusicApplication;->isConfigFetchComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicApplication;->sendAnalytics()V

    .line 273
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/music/MusicApplication;->removeConfigFetchCompleteListener(Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 628
    invoke-super {p0, p1}, Lcom/sonyericsson/music/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 629
    invoke-static {}, Lcom/sonyericsson/music/common/VersionUtils;->logVersionName()V

    .line 631
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 632
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    .line 633
    invoke-static {p0}, Lcom/sonyericsson/music/common/ThemeColor;->primary(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v1, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 632
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 636
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/PaletteUtils;->setDarkTheme(Z)V

    .line 638
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    .line 639
    sget-object v2, Lcom/sonyericsson/music/MusicActivity;->LANDING_PAGE_TO_BE_SHOWN_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 640
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/sonyericsson/music/MusicActivity;->mIsLandingPageToBeShown:Z

    .line 643
    sget-object v2, Lcom/sonyericsson/music/MusicActivity;->PLAYER_LAUNCHED_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 644
    check-cast v2, Ljava/lang/Boolean;

    .line 645
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/sonyericsson/music/MusicActivity;->mLaunchIntoPlayerMode:Z

    .line 647
    sget-object v2, Lcom/sonyericsson/music/MusicActivity;->LAUNCHED_PLAYER_BY_CONTENT_URI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 648
    check-cast v2, Ljava/lang/Boolean;

    .line 649
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/sonyericsson/music/MusicActivity;->mIsLaunchPlayerByContentURI:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 654
    :goto_3
    iput-boolean p1, p0, Lcom/sonyericsson/music/MusicActivity;->mDelayStartupTasks:Z

    const v2, 0x7f130007

    .line 657
    invoke-static {p0, v2, v4}, Landroidx/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v2, 0x7f0c007d

    .line 664
    invoke-static {p0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 666
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 667
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f09004d

    .line 669
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v5, 0x7f09007a

    .line 670
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/music/ui/TouchInterceptLayout;

    .line 671
    new-instance v6, Lcom/sonyericsson/music/ToolbarControl;

    invoke-direct {v6, v1, v5}, Lcom/sonyericsson/music/ToolbarControl;-><init>(Landroid/view/ViewGroup;Lcom/sonyericsson/music/ui/TouchInterceptLayout;)V

    iput-object v6, p0, Lcom/sonyericsson/music/MusicActivity;->mToolbarControl:Lcom/sonyericsson/music/ToolbarControl;

    .line 672
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mToolbarControl:Lcom/sonyericsson/music/ToolbarControl;

    invoke-virtual {v1}, Lcom/sonyericsson/music/ToolbarControl;->getToolbar()Lcom/sonyericsson/music/ui/ShadowingToolbar;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 674
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->setDefaultSystemUIVisibility(Landroid/app/Activity;)V

    .line 675
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->setDefaultLightSystemUI(Landroid/app/Activity;)V

    .line 677
    new-instance v1, Lcom/sonyericsson/music/MusicFragmentManager;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/MusicFragmentManager;-><init>(Lcom/sonyericsson/music/MusicActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mMusicFragmentManager:Lcom/sonyericsson/music/MusicFragmentManager;

    .line 680
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const v5, 0x7f090159

    .line 681
    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    .line 682
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    if-eqz v1, :cond_5

    .line 683
    iget-object v6, p0, Lcom/sonyericsson/music/MusicActivity;->mMusicFragmentManager:Lcom/sonyericsson/music/MusicFragmentManager;

    invoke-virtual {v1, v6}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->setDelegate(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;)V

    .line 684
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    iget-object v6, p0, Lcom/sonyericsson/music/MusicActivity;->mMenuLoadedListener:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$MenuLoadedListener;

    invoke-virtual {v1, v6}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->addMenuLoadedListener(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$MenuLoadedListener;)V

    const v1, 0x7f09009b

    .line 685
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 686
    iget-object v6, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {v6, v5, v1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->setup(ILandroidx/drawerlayout/widget/DrawerLayout;)V

    .line 687
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 688
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->isDrawerOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 690
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->finishStartup()V

    :cond_5
    const/4 v1, 0x3

    .line 696
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 698
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->initDrmUtils()V

    .line 700
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 701
    new-instance v1, Landroid/os/Handler;

    iget-object v5, p0, Lcom/sonyericsson/music/MusicActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mHandler:Landroid/os/Handler;

    .line 704
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz p1, :cond_8

    .line 706
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/MusicActivity;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 707
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mMusicFragmentManager:Lcom/sonyericsson/music/MusicFragmentManager;

    invoke-virtual {v1}, Lcom/sonyericsson/music/MusicFragmentManager;->openLandingPage()V

    goto :goto_4

    .line 708
    :cond_6
    invoke-static {v1}, Lcom/sonyericsson/music/MusicActivity;->isLaunchPlayerIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 709
    invoke-static {p0}, Lcom/sonyericsson/music/common/MusicUtils;->openPlayerLauncherFragment(Landroid/app/Activity;)V

    .line 710
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->finishStartup()V

    goto :goto_4

    .line 712
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->finishStartup()V

    goto :goto_4

    .line 715
    :cond_8
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->finishStartup()V

    .line 718
    :goto_4
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->initBackground()V

    if-eqz p1, :cond_9

    .line 721
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->addRetainedControllerFragments()V

    .line 724
    :cond_9
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->setupRetainedState()V

    .line 726
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->init(Landroid/content/Context;Z)V

    .line 728
    new-instance v1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 730
    new-instance v1, Lcom/sonyericsson/music/NowPlayingUpdater;

    invoke-direct {v1}, Lcom/sonyericsson/music/NowPlayingUpdater;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mNowPlayingUpdater:Lcom/sonyericsson/music/NowPlayingUpdater;

    .line 732
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataTrafficWarningRequired(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    .line 733
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-static {p0, v1, v4}, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->showCtaAcceptanceDialog(Landroidx/appcompat/app/AppCompatActivity;Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;Z)Z

    .line 736
    :cond_a
    new-instance v1, Lcom/sonyericsson/music/ArtistInfoNotifier;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/ArtistInfoNotifier;-><init>(Lcom/sonyericsson/music/MusicActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mArtistInfoNotifier:Lcom/sonyericsson/music/ArtistInfoNotifier;

    .line 737
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mArtistInfoNotifier:Lcom/sonyericsson/music/ArtistInfoNotifier;

    invoke-virtual {v1}, Lcom/sonyericsson/music/ArtistInfoNotifier;->restoreNotifier()V

    if-eqz p1, :cond_b

    .line 740
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->clearOldSharedPrefs()V

    .line 741
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->clearMusicLikeDB()V

    .line 742
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->clearSunsetFiles()V

    .line 743
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->clearMUFiles()V

    .line 744
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->checkAndPurgeMusicStoreDatabase()V

    .line 745
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->clearWearData()V

    .line 747
    new-instance p1, Lcom/sonyericsson/music/MusicActivity$10;

    invoke-direct {p1, p0}, Lcom/sonyericsson/music/MusicActivity$10;-><init>(Lcom/sonyericsson/music/MusicActivity;)V

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/MusicActivity;->runAfterStartup(Lcom/sonyericsson/music/MusicActivity$StartupTask;)V

    .line 758
    :cond_b
    invoke-static {}, Lcom/sonyericsson/music/common/VersionUtils;->getAppBuild()Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 759
    sget-object v1, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;->PRODUCTION:Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    if-eq p1, v1, :cond_c

    const p1, 0x7f09022e

    .line 761
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/ui/VerticalTextView;

    if-eqz p1, :cond_c

    .line 763
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 764
    invoke-static {}, Lcom/sonyericsson/music/common/VersionUtils;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    :cond_c
    sget-object p1, Lcom/sonyericsson/music/MusicActivity;->GOOGLE_PLAY_SERVICES_CHECK_ERROR_HANDLED_RETAIN_KEY:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 770
    check-cast p1, Ljava/lang/Boolean;

    .line 771
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_5

    :cond_d
    const/4 p1, 0x0

    :goto_5
    iput-boolean p1, p0, Lcom/sonyericsson/music/MusicActivity;->mGooglePlayServicesCheckErrorHandled:Z

    const-string p1, "permission_dlg_key_shown_key"

    .line 773
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_e

    .line 775
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_6

    :cond_e
    const/4 p1, 0x0

    :goto_6
    iput-boolean p1, p0, Lcom/sonyericsson/music/MusicActivity;->mPermissionsDialogShown:Z

    .line 777
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_f

    .line 778
    iput v0, p0, Lcom/sonyericsson/music/MusicActivity;->mStoragePermissionGrantResult:I

    goto :goto_7

    .line 780
    :cond_f
    iput v4, p0, Lcom/sonyericsson/music/MusicActivity;->mStoragePermissionGrantResult:I

    .line 781
    sget-boolean p1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz p1, :cond_10

    .line 782
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startMediaStoreDataSync(Landroid/content/Context;)V

    .line 787
    :cond_10
    :goto_7
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, p1, v3}, Lcom/sonyericsson/music/common/MusicUtils;->startAndBindMediaPlaybackService(Landroid/content/Context;Landroid/content/ServiceConnection;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/MusicActivity;->mHasServiceBinder:Z

    .line 791
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 793
    invoke-static {p0}, Lcom/sonyericsson/music/MusicApplication;->addConfigFetchCompleteListener(Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1430
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1432
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0005

    .line 1433
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1436
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    if-eqz v0, :cond_1

    const v0, 0x7f090033

    .line 1437
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteMenuItem:Landroid/view/MenuItem;

    .line 1438
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteMenuItem:Landroid/view/MenuItem;

    .line 1439
    invoke-static {p1}, Landroidx/core/view/MenuItemCompat;->getActionProvider(Landroid/view/MenuItem;)Landroidx/core/view/ActionProvider;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/app/MediaRouteActionProvider;

    if-eqz p1, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/MediaRouteActionProvider;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 1443
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    .line 1444
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1446
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 4

    .line 1378
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/player/PlayerController;->setService(Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)V

    .line 1380
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 1382
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mIsLaunchPlayerByContentURI:Z

    .line 1383
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1384
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/music/MusicActivity;->LAUNCHED_PLAYER_BY_CONTENT_URI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1387
    :cond_0
    iget-boolean v2, p0, Lcom/sonyericsson/music/MusicActivity;->mHasServiceBinder:Z

    if-eqz v2, :cond_1

    .line 1388
    iget-object v2, p0, Lcom/sonyericsson/music/MusicActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1390
    :cond_1
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mHasServiceBinder:Z

    .line 1392
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mDrmUtils:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1393
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mDrmUtils:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/common/DrmUtils;

    invoke-interface {v0}, Lcom/sonyericsson/music/common/DrmUtils;->close()V

    .line 1396
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1397
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1399
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1402
    invoke-static {}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->deinit()V

    .line 1405
    :cond_3
    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mNowPlayingUpdater:Lcom/sonyericsson/music/NowPlayingUpdater;

    .line 1407
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v0, :cond_4

    .line 1408
    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    .line 1409
    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 1412
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMusicFragmentManager:Lcom/sonyericsson/music/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicFragmentManager;->onActivityDestroyed()V

    .line 1414
    invoke-static {p0}, Lcom/sonyericsson/music/CastGa;->report(Landroid/content/Context;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1763
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1764
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1772
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/player/PlayerController;->handleKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1776
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1423
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1496
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x7f090117

    if-eq v0, v1, :cond_0

    .line 1515
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1506
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->isDrawerOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1507
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->closeDrawer()V

    :cond_1
    const/4 p1, 0x0

    .line 1509
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/MusicActivity;->openSearchResultFragment(Ljava/lang/String;)V

    return v2

    .line 1498
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    if-nez p1, :cond_3

    return v2

    .line 1501
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1502
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->toggleDrawer()V

    :cond_4
    return v2
.end method

.method protected onPause()V
    .locals 3

    .line 1293
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    .line 1295
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mVisible:Z

    .line 1297
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->unregisterBroadCastReceiverMusicServiceIntents()V

    .line 1299
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->unregisterBroadCastReceiverPerformaceMeasurement()V

    .line 1301
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v1

    const-string v2, "loading"

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/MusicFragmentManager;->removeFragment(Ljava/lang/String;)V

    .line 1303
    iget-boolean v1, p0, Lcom/sonyericsson/music/MusicActivity;->mIsAudioListenerRegistered:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->CLEAR_AUDIO_PLUS:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    invoke-static {v1}, Lcom/sonyericsson/music/common/ApiAvailabilityManager;->isApiAvailable(Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mClearAudioPlusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1305
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mIsAudioListenerRegistered:Z

    .line 1308
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/music/MusicActivity;->mIsInternalPlaybackListenerRegistered:Z

    if-eqz v1, :cond_1

    .line 1309
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mInternalPlaybackServiceListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1310
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mIsInternalPlaybackListenerRegistered:Z

    .line 1313
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    if-eqz v0, :cond_2

    .line 1314
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mMenuLoadedListener:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$MenuLoadedListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->removeMenuLoadedListener(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$MenuLoadedListener;)V

    .line 1317
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    if-eqz v0, :cond_3

    .line 1318
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 1321
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mAccountCleanupTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    if-eqz v0, :cond_5

    .line 1322
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1323
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    const-string v1, "account_cleanup_task_retain_key"

    iget-object v2, p0, Lcom/sonyericsson/music/MusicActivity;->mAccountCleanupTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1325
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mAccountCleanupTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->cancelAndRemoveTask()V

    .line 1327
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mAccountCleanupTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 1328
    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mAccountCleanupTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    goto :goto_1

    .line 1330
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mAccountCleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 1456
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0x7f090033

    .line 1460
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteMenuItem:Landroid/view/MenuItem;

    .line 1462
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 1466
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    :try_start_1
    invoke-virtual {v2}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v2, v0

    :catch_1
    move-object v3, v0

    goto :goto_0

    :catch_2
    move-object v2, v0

    :catch_3
    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_1

    .line 1474
    invoke-virtual {v3}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_2

    .line 1475
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 1477
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sonyericsson/music/common/DBUtils;->isPlayQueueModeUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1478
    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->isUriCloudFileType(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1479
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/music/MusicActivity;->updateCastButtonVisibility(Lcom/sonyericsson/music/player/PlayerController;Landroid/view/MenuItem;)V

    goto :goto_2

    .line 1481
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1482
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1486
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isLaunchPlayerByContentURI()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f090117

    .line 1487
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 1488
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    .line 823
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x0

    .line 824
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mPermissionsDialogShown:Z

    .line 825
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/music/MusicActivity;->mPermissionsDialogShown:Z

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/music/MusicActivity;->persistPermissionDialogShown(Lcom/sonyericsson/music/RetainManager;Z)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 828
    array-length p1, p2

    const/4 v1, 0x1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 833
    aget-object v2, p2, v0

    .line 834
    aget v3, p3, v0

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 836
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/MusicActivity;->handleStoragePermissionResult(I)Z

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    .line 846
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/MusicActivity;->showHowToEnablePermissionDialog(Z)V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 1078
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 1080
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mLaunchIntent:Landroid/content/Intent;

    .line 1082
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isLandingPageToBeShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->closeDrawer()V

    :cond_0
    const/4 v0, 0x1

    .line 1086
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mVisible:Z

    .line 1088
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->showDLNALoadingDlg()V

    .line 1089
    iget-boolean v1, p0, Lcom/sonyericsson/music/MusicActivity;->mConnectingToDlna:Z

    if-eqz v1, :cond_1

    .line 1090
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/music/MusicActivity;->mRemoveDlnaLoadingDlg:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1091
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/music/MusicActivity;->mRemoveDlnaLoadingDlg:Ljava/lang/Runnable;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1094
    :cond_1
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v1

    const-string v2, "account_cleanup_task_retain_key"

    .line 1095
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    iput-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mAccountCleanupTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    .line 1097
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mAccountCleanupTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1098
    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1099
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mAccountCleanupTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 1100
    iput-object v2, p0, Lcom/sonyericsson/music/MusicActivity;->mAccountCleanupTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    goto :goto_0

    .line 1102
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mAccountCleanupTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    goto :goto_0

    .line 1107
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonyericsson/music/MusicActivity;->mAccountCleanupRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1110
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->registerBroadCastReceiverMusicServiceIntents()V

    .line 1112
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->registerBroadCastReceiverPerformaceMeasurement()V

    .line 1114
    iget-boolean v1, p0, Lcom/sonyericsson/music/MusicActivity;->mIsInternalPlaybackListenerRegistered:Z

    if-nez v1, :cond_4

    .line 1115
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mInternalPlaybackServiceListener:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.sonyericsson.music.playbackcontrol.ENQUEUED_INTENT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "com.sonyericsson.music.permission.BROADCAST"

    invoke-virtual {p0, v1, v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1118
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mIsInternalPlaybackListenerRegistered:Z

    .line 1121
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->tryHandleIntent()V

    .line 1123
    iget-boolean v1, p0, Lcom/sonyericsson/music/MusicActivity;->mIsAudioListenerRegistered:Z

    if-nez v1, :cond_5

    sget-object v1, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->CLEAR_AUDIO_PLUS:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    invoke-static {v1}, Lcom/sonyericsson/music/common/ApiAvailabilityManager;->isApiAvailable(Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1124
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mClearAudioPlusListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sonymobile.audioeffect.intent.action.CLEARAUDIO_PLUS_STATUS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1126
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mIsAudioListenerRegistered:Z

    .line 1129
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->handleGooglePlayServicesAvailability()V

    .line 1131
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformUtils;->debugDataPlatformData(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1138
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformUtils;->sendDataPlatformUserData(Landroid/content/Context;)V

    :cond_6
    return-void
.end method

.method protected onResumeFragments()V
    .locals 2

    .line 1239
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResumeFragments()V

    .line 1241
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mFragmentTransactionAllowedLatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mFragmentTransactionAllowedLatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1243
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1244
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 1245
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1246
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1250
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->tryToShowInitialPage()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1274
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    const-string v1, "loading"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicFragmentManager;->removeFragment(Ljava/lang/String;)V

    .line 1276
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    .line 1277
    sget-object v1, Lcom/sonyericsson/music/MusicActivity;->DLNA_CONNECTION_RETAIN_KEY:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sonyericsson/music/MusicActivity;->mConnectingToDlna:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1278
    sget-object v1, Lcom/sonyericsson/music/MusicActivity;->LANDING_PAGE_TO_BE_SHOWN_KEY:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sonyericsson/music/MusicActivity;->mIsLandingPageToBeShown:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1279
    sget-object v1, Lcom/sonyericsson/music/MusicActivity;->GOOGLE_PLAY_SERVICES_CHECK_ERROR_HANDLED_RETAIN_KEY:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sonyericsson/music/MusicActivity;->mGooglePlayServicesCheckErrorHandled:Z

    .line 1280
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1279
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1281
    sget-object v1, Lcom/sonyericsson/music/MusicActivity;->PLAYER_LAUNCHED_KEY:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sonyericsson/music/MusicActivity;->mLaunchIntoPlayerMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1282
    sget-object v1, Lcom/sonyericsson/music/MusicActivity;->LAUNCHED_PLAYER_BY_CONTENT_URI:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sonyericsson/music/MusicActivity;->mIsLaunchPlayerByContentURI:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1284
    iget-boolean v1, p0, Lcom/sonyericsson/music/MusicActivity;->mPermissionsDialogShown:Z

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/MusicActivity;->persistPermissionDialogShown(Lcom/sonyericsson/music/RetainManager;Z)V

    .line 1286
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mArtistInfoNotifier:Lcom/sonyericsson/music/ArtistInfoNotifier;

    invoke-virtual {v0}, Lcom/sonyericsson/music/ArtistInfoNotifier;->retainNotifier()V

    .line 1288
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 1355
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 1357
    iget-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mPermissionsDialogShown:Z

    if-nez v0, :cond_0

    .line 1358
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->doPermissionProtectedSetup()V

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mNowPlayingUpdater:Lcom/sonyericsson/music/NowPlayingUpdater;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->start(Lcom/sonyericsson/music/MusicActivity;)V

    .line 1362
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mArtistInfoNotifier:Lcom/sonyericsson/music/ArtistInfoNotifier;

    invoke-virtual {v0}, Lcom/sonyericsson/music/ArtistInfoNotifier;->start()V

    .line 1364
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mMusicFragmentManager:Lcom/sonyericsson/music/MusicFragmentManager;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->setDelegate(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;)V

    .line 1366
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    if-eqz v0, :cond_1

    .line 1367
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 1368
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v2, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 1372
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->updateMediaRouteAndScan()V

    .line 1373
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/player/PlayerController;->registerPlayerStateListener(Lcom/sonyericsson/music/player/PlayerStateListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1336
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 1338
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mNowPlayingUpdater:Lcom/sonyericsson/music/NowPlayingUpdater;

    invoke-virtual {v0}, Lcom/sonyericsson/music/NowPlayingUpdater;->stop()V

    .line 1339
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mArtistInfoNotifier:Lcom/sonyericsson/music/ArtistInfoNotifier;

    invoke-virtual {v0}, Lcom/sonyericsson/music/ArtistInfoNotifier;->retainNotifier()V

    .line 1340
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mArtistInfoNotifier:Lcom/sonyericsson/music/ArtistInfoNotifier;

    invoke-virtual {v0}, Lcom/sonyericsson/music/ArtistInfoNotifier;->stop()V

    .line 1342
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaRouteCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 1346
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mPlayerStateListener:Lcom/sonyericsson/music/player/PlayerStateListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/player/PlayerController;->unregisterPlayerStateListener(Lcom/sonyericsson/music/player/PlayerStateListener;)V

    .line 1347
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1348
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isLaunchPlayerByContentURI()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1349
    invoke-static {p0}, Lcom/sonyericsson/music/common/MusicUtils;->finishAndStopPlaybackService(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onTaskDone(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .line 1224
    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    .line 1226
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1228
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/music/library/GoogleDriveFragment;->close(Landroid/app/Activity;Lcom/sonyericsson/music/MusicFragmentManager;)V

    .line 1231
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity;->mAccountCleanupTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 1232
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;->setListener(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask$RetainedAsyncTaskListener;)V

    .line 1233
    iput-object p2, p0, Lcom/sonyericsson/music/MusicActivity;->mAccountCleanupTask:Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;

    :cond_1
    return-void
.end method

.method public onTaskPreExecute(Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;)V
    .locals 0

    return-void
.end method

.method public openAndPlayContent(Landroid/net/Uri;Lcom/sonyericsson/music/common/OpenAndPlayConditions;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1859
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v1

    .line 1860
    invoke-virtual {v1}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1861
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->getTracksPosition()I

    move-result v2

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->isShuffle()Z

    move-result v3

    .line 1862
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->getSourcePosition()I

    move-result p2

    .line 1861
    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/sonyericsson/music/player/PlayerController;->open(Landroid/net/Uri;IZI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public openAndPlaySmartPlaylist(ILcom/sonyericsson/music/common/OpenAndPlayConditions;)V
    .locals 2

    .line 1877
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    .line 1878
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1879
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->getTracksPosition()I

    move-result v1

    .line 1880
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->isShuffle()Z

    move-result p2

    .line 1879
    invoke-virtual {v0, p1, v1, p2}, Lcom/sonyericsson/music/player/PlayerController;->openSmartPlaylist(IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public openPodcast()V
    .locals 2

    .line 2026
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.podcast.action.SHOW_CHANNELS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 2027
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2028
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openSearchResultFragment(Ljava/lang/String;)V
    .locals 1

    .line 1735
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMusicFragmentManager:Lcom/sonyericsson/music/MusicFragmentManager;

    if-eqz v0, :cond_0

    .line 1736
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/MusicFragmentManager;->openSearchView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openSettings()V
    .locals 2

    .line 2020
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/music/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 2021
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public playContent()V
    .locals 2

    .line 1917
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    .line 1918
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1919
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->play()V

    :cond_0
    return-void
.end method

.method public playPQTrack(Landroid/net/Uri;Lcom/sonyericsson/music/common/OpenAndPlayConditions;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1892
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getDrmUtils()Lcom/sonyericsson/music/common/DrmUtils;

    move-result-object v0

    .line 1893
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/common/DrmUtils;->hasValidRights(Landroid/net/Uri;)Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    move-result-object v1

    .line 1895
    sget-object v2, Lcom/sonyericsson/music/MusicActivity$20;->$SwitchMap$com$sonyericsson$music$common$DrmUtils$RightsCheckResult:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1907
    :pswitch_0
    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/music/common/DrmUtils;->renewRights(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 1897
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p1

    .line 1898
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1899
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->getTracksPosition()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/music/player/PlayerController;->setPlayQueuePosition(IZ)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 1901
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/MusicActivity;->openAndPlaySmartPlaylist(ILcom/sonyericsson/music/common/OpenAndPlayConditions;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeBackListener(Lcom/sonyericsson/music/MusicActivity$BackListener;)Z
    .locals 1

    .line 2082
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mBackListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeFragmentTransactionAllowedLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 1637
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mFragmentTransactionAllowedLatches:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMusicServiceConnectedListener(Lcom/sonyericsson/music/MediaServiceConnection;)V
    .locals 1

    .line 1568
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mServiceConnectionListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1569
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnArtResetListener(Lcom/sonyericsson/music/MusicActivity$ArtResetListener;)V
    .locals 1

    .line 2093
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mArtResetListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePermissionListener(Lcom/sonyericsson/music/common/PermissionListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mPermissionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public reportFullyDrawn()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1062
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/MusicActivity;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->reportFullyDrawn()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public requestPermission(Ljava/lang/String;)Z
    .locals 3

    .line 1836
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/PermissionUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1837
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1838
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    const-string v2, "permission_dialog_tag"

    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/MusicFragmentManager;->removeFragment(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 1840
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mPermissionsDialogShown:Z

    .line 1841
    new-array v2, v0, [Ljava/lang/String;

    aput-object p1, v2, v1

    const/4 p1, 0x2

    invoke-static {p0, v2, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v0

    :cond_1
    return v1
.end method

.method public runAfterStartup(Lcom/sonyericsson/music/MusicActivity$StartupTask;)V
    .locals 1

    .line 1989
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfNotMainDebug()V

    .line 1990
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mStartupTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1991
    iget-boolean p1, p0, Lcom/sonyericsson/music/MusicActivity;->mDelayStartupTasks:Z

    if-nez p1, :cond_0

    .line 1992
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicActivity;->runStartupTasks()V

    :cond_0
    return-void
.end method

.method public setActionBarTitle(I)V
    .locals 1

    .line 1749
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1751
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public setActionBarTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1742
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1744
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setAppBarFooter(Landroid/view/View;)V
    .locals 1

    .line 2072
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mToolbarControl:Lcom/sonyericsson/music/ToolbarControl;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ToolbarControl;->setAppBarFooter(Landroid/view/View;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mBackgroundColorDrawable:Lcom/sonyericsson/music/ui/BackgroundColorDrawable;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/BackgroundColorDrawable;->setColorWithAnimation(I)V

    return-void
.end method

.method public setColorizedView(Landroid/view/View;)V
    .locals 1

    .line 2056
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mToolbarControl:Lcom/sonyericsson/music/ToolbarControl;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ToolbarControl;->setColorizedView(Landroid/view/View;)V

    return-void
.end method

.method public setDrawerHighlight(Ljava/lang/String;)V
    .locals 1

    .line 1815
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->setFocus(Ljava/lang/String;)V

    return-void
.end method

.method public setDrawerIndicator(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;)V
    .locals 1

    .line 1936
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    if-eqz v0, :cond_0

    .line 1937
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->setDrawerIndicator(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;)V

    :cond_0
    return-void
.end method

.method setIsLandingPageToBeShown(Z)V
    .locals 0

    .line 1980
    iput-boolean p1, p0, Lcom/sonyericsson/music/MusicActivity;->mIsLandingPageToBeShown:Z

    return-void
.end method

.method public setLaunchIntoPlayerMode(Z)V
    .locals 0

    .line 2101
    iput-boolean p1, p0, Lcom/sonyericsson/music/MusicActivity;->mLaunchIntoPlayerMode:Z

    return-void
.end method

.method public setMiniplayerShadow()V
    .locals 1

    .line 2064
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicFragmentManager;->setMiniplayerShadow()V

    return-void
.end method

.method public setToolbarColorized(Z)V
    .locals 1

    .line 2060
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mToolbarControl:Lcom/sonyericsson/music/ToolbarControl;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ToolbarControl;->setAppBarColorized(Z)V

    return-void
.end method

.method public setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 2040
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setToolbarTransparent()V
    .locals 1

    .line 2052
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mToolbarControl:Lcom/sonyericsson/music/ToolbarControl;

    invoke-virtual {v0}, Lcom/sonyericsson/music/ToolbarControl;->setAppBarTransparent()V

    return-void
.end method

.method public showLandingPage()V
    .locals 1

    .line 1942
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1943
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->showLandingPage()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1947
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mEnqueueLandingPageLoad:Z

    :goto_0
    return-void
.end method

.method showLoadingDialog(Landroid/content/Intent;Z)V
    .locals 3

    .line 1641
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1645
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "loading"

    .line 1648
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1657
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "PLAYQUEUE_SUPPORTED"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_1
    if-nez p2, :cond_2

    if-eqz v1, :cond_2

    .line 1662
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getRouteType()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 1665
    :cond_2
    invoke-static {}, Lcom/sonyericsson/music/dialogs/LoadingDialog;->newInstance()Landroidx/fragment/app/DialogFragment;

    move-result-object p1

    const-string p2, "loading"

    .line 1666
    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 1667
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_3
    return-void
.end method

.method public showOverflowMenu()V
    .locals 1

    .line 1756
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mToolbarControl:Lcom/sonyericsson/music/ToolbarControl;

    invoke-virtual {v0}, Lcom/sonyericsson/music/ToolbarControl;->getToolbar()Lcom/sonyericsson/music/ui/ShadowingToolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    return-void
.end method

.method public showToastOnUiThread(II)V
    .locals 1

    .line 1606
    new-instance v0, Lcom/sonyericsson/music/MusicActivity$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/music/MusicActivity$12;-><init>(Lcom/sonyericsson/music/MusicActivity;II)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showToastOnUiThread(Ljava/lang/String;I)V
    .locals 1

    .line 1620
    new-instance v0, Lcom/sonyericsson/music/MusicActivity$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/music/MusicActivity$13;-><init>(Lcom/sonyericsson/music/MusicActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public triggerOpenPlayerTask()V
    .locals 3

    .line 1013
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mOpenPlayerTask:Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1014
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1016
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;

    new-instance v1, Lcom/sonyericsson/music/MusicActivity$OpenPlayerFragmentWhenAllowed;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/MusicActivity$OpenPlayerFragmentWhenAllowed;-><init>(Lcom/sonyericsson/music/MusicActivity$1;)V

    invoke-direct {v0, p0, p0, v1}, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$FragmentAllowedLatchHandler;Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$ToDoWhenFragmentAllowed;)V

    iput-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mOpenPlayerTask:Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;

    .line 1017
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mOpenPlayerTask:Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public tryToShowInitialPage()V
    .locals 2

    .line 1952
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1953
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMusicFragmentManager:Lcom/sonyericsson/music/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicFragmentManager;->hasLandingPage()Z

    move-result v0

    .line 1954
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isLandingPageToBeShown()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 1955
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->tryToShowInitialPage()V

    goto :goto_0

    .line 1956
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isLandingPageToBeShown()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMusicFragmentManager:Lcom/sonyericsson/music/MusicFragmentManager;

    .line 1957
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicFragmentManager;->getBackStackCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1959
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->reset()V

    :cond_1
    :goto_0
    return-void
.end method

.method public unlockDrawer()V
    .locals 1

    .line 1930
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity;->mNavigationDrawerFragment:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    if-eqz v0, :cond_0

    .line 1931
    invoke-virtual {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->unlockDrawer()V

    :cond_0
    return-void
.end method

.method unregisterBroadCastReceiverMusicServiceIntents()V
    .locals 2

    .line 1712
    iget-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaPlaybackReceiverRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1713
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaPlaybackReceiverRegistered:Z

    .line 1714
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mMediaPlaybackListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method unregisterBroadCastReceiverPerformaceMeasurement()V
    .locals 2

    .line 1719
    iget-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mPerformanceMeasurementReceiverRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1720
    iput-boolean v0, p0, Lcom/sonyericsson/music/MusicActivity;->mPerformanceMeasurementReceiverRegistered:Z

    .line 1721
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity;->mPerformanceMeasurementListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
