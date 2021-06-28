.class public Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;
.super Ljava/lang/Object;
.source "DlnaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;,
        Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerThread;,
        Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$ReleasingState;,
        Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;,
        Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;,
        Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$IdleState;,
        Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;,
        Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;,
        Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;
    }
.end annotation


# static fields
.field private static final DUMMY_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "DlnaPlayer"


# instance fields
.field private mBondForPlayAnywherePlayer:Z

.field private mBondForPlayAnywhereService:Z

.field private mBondForPlayerService:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private volatile mControllerCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

.field private mDlnaDuration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDlnaPlaybackPosition:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDlnaPlayerId:Ljava/lang/String;

.field private mDlnaPlayerState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mIdleState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$IdleState;

.field private mIgnoreInvalidPlaybackPosition:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mInnerThread:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerThread;

.field private mIsDuringSetup:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsInnerInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsOpen:Z

.field private mIsReleaseCalled:Z

.field private mIsSeek:Z

.field private mLastPlaybackPositionUpdatedTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mOpenedState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;

.field private final mOpeningState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;

.field private mPaPlayer:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

.field private final mPaPlayerCallbacksCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

.field private mPaPlayerCompatConnection:Landroid/content/ServiceConnection;

.field private final mPaPlayerFactoryCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;

.field private mPaServiceConnection:Landroid/content/ServiceConnection;

.field private final mPaServiceFactoryCompat:Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat$Factory;

.field private mPendingCallbackPlaying:Z

.field private volatile mPendingInfo:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;

.field private mPendingItemId:Ljava/lang/String;

.field private final mPlayerCallbacksCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

.field private mPlayerCompatConnection:Landroid/content/ServiceConnection;

.field private final mPlayerFactoryCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;

.field private mPlayerService:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

.field private final mPlayerServiceLock:Ljava/lang/Object;

.field private mPollingCalback:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$Callback;

.field private final mPollingManager:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

.field private mRegistered:Z

.field private final mReleasingState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$ReleasingState;

.field private mState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;

.field private final mTrackingLock:Ljava/lang/Object;

.field private final mUriTrackingManager:Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "dummy://content"

    .line 160
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->DUMMY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlayerId:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerService:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    const/4 v1, 0x0

    .line 93
    iput-boolean v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsReleaseCalled:Z

    .line 95
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPendingInfo:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;

    .line 97
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsInnerInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlaybackPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 111
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 118
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlayerState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 120
    iput-boolean v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsOpen:Z

    .line 122
    iput-boolean v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsSeek:Z

    .line 124
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsDuringSetup:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIgnoreInvalidPlaybackPosition:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mTrackingLock:Ljava/lang/Object;

    .line 147
    new-instance v2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$IdleState;

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$IdleState;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$1;)V

    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIdleState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$IdleState;

    .line 148
    new-instance v2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$1;)V

    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mOpeningState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;

    .line 149
    new-instance v2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$1;)V

    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mOpenedState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;

    .line 150
    new-instance v2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$ReleasingState;

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$ReleasingState;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$1;)V

    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mReleasingState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$ReleasingState;

    .line 152
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIdleState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$IdleState;

    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;

    .line 154
    new-instance v2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerThread;

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerThread;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$1;)V

    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mInnerThread:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerThread;

    .line 156
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 158
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mHandler:Landroid/os/Handler;

    .line 164
    iput-boolean v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBondForPlayerService:Z

    .line 165
    iput-boolean v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBondForPlayAnywherePlayer:Z

    .line 166
    iput-boolean v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBondForPlayAnywhereService:Z

    .line 169
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, -0x1

    invoke-direct {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mLastPlaybackPositionUpdatedTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 170
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerServiceLock:Ljava/lang/Object;

    .line 172
    iput-boolean v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPendingCallbackPlaying:Z

    .line 173
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPendingItemId:Ljava/lang/String;

    .line 179
    new-instance v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$1;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)V

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerCompatConnection:Landroid/content/ServiceConnection;

    .line 230
    new-instance v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)V

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaPlayerCompatConnection:Landroid/content/ServiceConnection;

    .line 281
    new-instance v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)V

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaServiceConnection:Landroid/content/ServiceConnection;

    .line 335
    new-instance v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;

    invoke-direct {v1, p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)V

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 585
    new-instance v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$5;

    invoke-direct {v1, p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$5;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)V

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPollingCalback:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$Callback;

    .line 603
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mContext:Landroid/content/Context;

    .line 604
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/utils/IdCreator;->createDlnaPlayerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlayerId:Ljava/lang/String;

    .line 605
    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat;->getFactory(Landroid/content/Context;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerFactoryCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;

    .line 607
    invoke-static {p1, v3}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat;->getFactory(Landroid/content/Context;I)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaPlayerFactoryCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;

    .line 608
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerFactoryCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;

    if-nez v1, :cond_0

    .line 609
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerCallbacksCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    goto :goto_0

    .line 611
    :cond_0
    invoke-interface {v1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;->getCallbacks()Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerCallbacksCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    .line 614
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaPlayerFactoryCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;

    if-nez v1, :cond_1

    .line 615
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaPlayerCallbacksCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    goto :goto_1

    .line 617
    :cond_1
    invoke-interface {v1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;->getCallbacks()Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaPlayerCallbacksCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    .line 620
    :goto_1
    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat;->getFactory(Landroid/content/Context;)Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaServiceFactoryCompat:Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat$Factory;

    .line 621
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPollingCalback:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$Callback;

    invoke-direct {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager$Callback;)V

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPollingManager:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    .line 622
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;

    invoke-direct {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mUriTrackingManager:Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlayerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlayerId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaPlayerFactoryCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->areServicesBound()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsReleaseCalled:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsReleaseCalled:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mControllerCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaPlayer:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaPlayer:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    return-object p1
.end method

.method static synthetic access$1700()Landroid/net/Uri;
    .locals 1

    .line 37
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->DUMMY_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBondForPlayerService:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBondForPlayerService:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/content/ServiceConnection;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerCompatConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBondForPlayAnywhereService:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBondForPlayAnywhereService:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/content/ServiceConnection;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaServiceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat$Factory;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaServiceFactoryCompat:Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat$Factory;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/content/ServiceConnection;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaPlayerCompatConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerCallbacksCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaPlayerCallbacksCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsOpen:Z

    return p0
.end method

.method static synthetic access$2702(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsOpen:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->updateDlnaPlayerState(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mOpeningState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsSeek:Z

    return p0
.end method

.method static synthetic access$3202(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsSeek:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIgnoreInvalidPlaybackPosition:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->saveDlnaPlaybackPosition(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPollingManager:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/Object;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mTrackingLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mUriTrackingManager:Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPendingInfo:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;

    return-object p0
.end method

.method static synthetic access$3902(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPendingInfo:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Landroid/net/Uri;IIZLandroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->logOfDlnaPlayerOpen(Landroid/net/Uri;IIZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->updateInnerDlnaPlayerState(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$ReleasingState;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mReleasingState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$ReleasingState;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$IdleState;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIdleState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$IdleState;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlayerState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlaybackPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mOpenedState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPendingItemId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4802(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPendingItemId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPendingCallbackPlaying:Z

    return p0
.end method

.method static synthetic access$4902(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPendingCallbackPlaying:Z

    return p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsInnerInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsDuringSetup:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->setupDlnaPlayer()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/Object;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerServiceLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerService:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    return-object p0
.end method

.method static synthetic access$702(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerService:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerFactoryCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBondForPlayAnywherePlayer:Z

    return p0
.end method

.method static synthetic access$902(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBondForPlayAnywherePlayer:Z

    return p1
.end method

.method private areServicesBound()V
    .locals 6

    .line 940
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerService:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    if-nez v1, :cond_1

    .line 942
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_0

    .line 943
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "areServicesBound() failure: no service bound yet."

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    :cond_0
    monitor-exit v0

    return-void

    .line 947
    :cond_1
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_2

    .line 948
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "areServicesBound()"

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mInnerThread:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerThread;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 952
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mInnerThread:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerThread;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 953
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 955
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mControllerCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    if-nez v1, :cond_4

    .line 956
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_3

    .line 957
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "areServicesBound() failure: invalid callback."

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_4
    const/4 v1, -0x1

    .line 964
    :try_start_3
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerService:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    invoke-interface {v2}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;->getVolume()I

    move-result v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 966
    :try_start_4
    sget-boolean v3, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v3, :cond_5

    .line 967
    sget-object v3, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVolume failure: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mControllerCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlayerId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerConnected(Ljava/lang/String;)V

    .line 972
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mControllerCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    invoke-interface {v2, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerVolumeUpdate(I)V

    .line 974
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPendingInfo:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_6

    const/16 v1, 0x13

    .line 976
    :try_start_5
    invoke-direct {p0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->sendMessage(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 981
    :catch_1
    :cond_6
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    .line 953
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2

    :catchall_1
    move-exception v1

    .line 981
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method private calculateDlnaPlaybackPosition()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 874
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlaybackPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_1

    .line 876
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_0

    .line 877
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "calculateDlnaPlaybackPosition() Position is not saved."

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x6

    .line 882
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlayerState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 883
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_2

    .line 884
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateDlnaPlaybackPosition() State other than PLAYING. return["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mLastPlaybackPositionUpdatedTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return v0

    .line 891
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mLastPlaybackPositionUpdatedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 892
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-ltz v7, :cond_5

    cmp-long v7, v3, v5

    if-gez v7, :cond_4

    goto :goto_0

    :cond_4
    sub-long v5, v3, v1

    long-to-int v5, v5

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v5, -0x1

    .line 895
    :goto_1
    sget-boolean v6, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v6, :cond_6

    .line 896
    sget-object v6, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calculateDlnaPlaybackPosition() Calculation parameters position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " | last time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " | now time = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-lez v5, :cond_7

    add-int/2addr v0, v5

    .line 903
    :cond_7
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_8

    .line 904
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateDlnaPlaybackPosition() return["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return v0
.end method

.method private disposeDlnaPlayer()V
    .locals 4

    .line 1017
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 1018
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "disposeDlnaPlayer()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1021
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerService:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1024
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerService:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    invoke-interface {v1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;->release()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1028
    :catch_0
    :try_start_2
    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerService:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    .line 1030
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1031
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaPlayer:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    if-eqz v0, :cond_2

    .line 1033
    :try_start_3
    invoke-interface {v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;->release()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1038
    :catch_1
    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaPlayer:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    .line 1040
    :cond_2
    iget-boolean v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBondForPlayAnywhereService:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1041
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1042
    iput-boolean v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBondForPlayAnywhereService:Z

    .line 1044
    :cond_3
    iget-boolean v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBondForPlayAnywherePlayer:Z

    if-eqz v0, :cond_4

    .line 1045
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaPlayerCompatConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1046
    iput-boolean v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBondForPlayAnywherePlayer:Z

    .line 1048
    :cond_4
    iget-boolean v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBondForPlayerService:Z

    if-eqz v0, :cond_5

    .line 1049
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerFactoryCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;

    invoke-interface {v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;->getPlayerServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1050
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerCompatConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1051
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1052
    iput-boolean v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBondForPlayerService:Z

    .line 1054
    :cond_5
    iget-boolean v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mRegistered:Z

    if-eqz v0, :cond_6

    .line 1055
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1056
    iput-boolean v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mRegistered:Z

    :cond_6
    return-void

    :catchall_0
    move-exception v1

    .line 1030
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private finishThread()V
    .locals 3

    .line 1076
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 1077
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 1078
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishThread() thread name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    .line 1081
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1082
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method private getPlaybackPosition(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 822
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;->CACHED:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlaybackPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0

    .line 825
    :cond_0
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;->CALCULATED:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->calculateDlnaPlaybackPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 829
    :goto_0
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_2

    .line 830
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlaybackPosition() type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " | position = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private innerDispose()V
    .locals 2

    .line 927
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 928
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "innerDispose()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsInnerInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->disposeDlnaPlayer()V

    .line 932
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsInnerInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mTrackingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 935
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mUriTrackingManager:Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;

    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->clear()V

    .line 936
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private innerInit()V
    .locals 2

    .line 910
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 911
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "innerInit()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsInnerInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 914
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIdleState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$IdleState;

    invoke-direct {p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->updateInnerDlnaPlayerState(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;)V

    const/4 v0, 0x0

    .line 916
    :try_start_0
    invoke-direct {p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->sendMessage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mTrackingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 922
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mUriTrackingManager:Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;

    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->clear()V

    .line 923
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private logOfDlnaPlayerOpen(Landroid/net/Uri;IIZLandroid/os/Bundle;)V
    .locals 4

    .line 1959
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    const-string v0, " Open detailed log"

    .line 1961
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "============================================================"

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " uri              : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " playlistPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " playbackPosition : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " autoStart        : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " data             : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "============================================================"

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private logOfRequest(Ljava/lang/String;)V
    .locals 4

    .line 1947
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    const-string v0, " Player request log"

    .line 1949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "============================================================"

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Request command ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " player id  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlayerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " state      : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "============================================================"

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private saveDlnaPlaybackPosition(I)V
    .locals 3

    .line 854
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlaybackPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIgnoreInvalidPlaybackPosition:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIgnoreInvalidPlaybackPosition:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_4

    .line 860
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving DLNA position of local has been suppressed. input position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " now position = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlaybackPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 862
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 860
    invoke-static {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 865
    :cond_1
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_2

    .line 866
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving DLNA position to local. position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlaybackPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 869
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mLastPlaybackPositionUpdatedTime:Ljava/util/concurrent/atomic/AtomicLong;

    if-gez p1, :cond_3

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_4
    :goto_1
    return-void
.end method

.method private sendMessage(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1101
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1087
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1088
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 1089
    sget-object p1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "sendMessage() failure : handler is null. (cancel sendMessage)"

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "handler is null!"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1094
    :cond_1
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_2

    .line 1095
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage() what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " obj : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setupDlnaPlayer()V
    .locals 4

    .line 985
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 986
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setupDlnaPlayer()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mRegistered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 989
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 990
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerCallbacksCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    const-string v3, "action_player_state"

    .line 991
    invoke-interface {v2, v3}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->getAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 990
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 992
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerCallbacksCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    const-string v3, "action_playback_info"

    .line 993
    invoke-interface {v2, v3}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->getAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 992
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 994
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaPlayerCallbacksCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    const-string v3, "action_player_state"

    .line 995
    invoke-interface {v2, v3}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->getAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 994
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 996
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 997
    iput-boolean v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mRegistered:Z

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaServiceFactoryCompat:Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat$Factory;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaPlayerFactoryCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;

    if-eqz v2, :cond_2

    .line 1001
    invoke-interface {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat$Factory;->getPlayanywhereServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1002
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPaServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1003
    iput-boolean v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBondForPlayAnywhereService:Z

    goto :goto_0

    .line 1006
    :cond_2
    iget-boolean v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBondForPlayerService:Z

    if-nez v0, :cond_3

    .line 1007
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerFactoryCompat:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;

    invoke-interface {v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;->getPlayerServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1008
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1009
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerCompatConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1011
    iput-boolean v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mBondForPlayerService:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private startThread()V
    .locals 4

    .line 1061
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DlnaPlayerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1062
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1064
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mInnerThread:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerThread;

    monitor-enter v1

    .line 1067
    :try_start_0
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mInnerThread:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerThread;

    invoke-direct {v2, v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mHandler:Landroid/os/Handler;

    .line 1068
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1070
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_1

    .line 1071
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startThread() thread name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateDlnaPlayerState(I)V
    .locals 4

    .line 1105
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlayerState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 1106
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_0

    .line 1107
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "player state changed: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$States;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$States;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1107
    invoke-static {v1, p1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateInnerDlnaPlayerState(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;)V
    .locals 4

    .line 1113
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;

    .line 1114
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;

    .line 1115
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 1118
    :cond_1
    sget-object p1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inner player state changed: ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 644
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 645
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "dispose() <in>"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 647
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mControllerCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    .line 648
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->finishThread()V

    .line 649
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->innerDispose()V

    .line 650
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPollingManager:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    invoke-virtual {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->stopThread()V

    .line 651
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_1

    .line 652
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "dispose() <out>"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getMediaItemStatus(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerService:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsDuringSetup:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 775
    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "is not instance of player service."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 777
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsDuringSetup:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 781
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_2

    .line 782
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "DlnaPlayer setup has not been completed."

    invoke-static {v0, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 786
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlayerState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 789
    :goto_1
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->getPlaybackPosition(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;)I

    move-result p1

    .line 790
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v0, v1, :cond_4

    if-lt p1, v2, :cond_4

    .line 799
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;

    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mOpeningState:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 800
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlaybackPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    .line 805
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "KEY_DLNA_PLAYER_STATE"

    .line 806
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "KEY_DLNA_POSITION"

    .line 807
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "KEY_DLNA_DURATION"

    .line 808
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 810
    sget-boolean v3, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v3, :cond_5

    .line 811
    sget-object v3, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMediaItemStatus() PlayerID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlayerId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " State:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Position:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Duration:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v1

    :catchall_0
    move-exception p1

    .line 777
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getVolume()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 761
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 762
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getVolume()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 765
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerService:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    if-eqz v1, :cond_1

    .line 768
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerService:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    invoke-interface {v1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;->getVolume()I

    move-result v1

    monitor-exit v0

    return v1

    .line 766
    :cond_1
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "is not instance of player service."

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 769
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public open(Landroid/net/Uri;IIZLjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 675
    invoke-direct {p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->updateDlnaPlayerState(I)V

    .line 679
    iput-boolean v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsOpen:Z

    .line 680
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v1, 0x0

    .line 681
    iput-boolean v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsSeek:Z

    .line 682
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPollingManager:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    invoke-virtual {v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->cancelUpdateForOnShot()V

    .line 683
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mTrackingLock:Ljava/lang/Object;

    monitor-enter v2

    .line 684
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mUriTrackingManager:Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p5, v4, p7}, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p5, 0x5

    .line 686
    new-array p5, p5, [Ljava/lang/Object;

    aput-object p1, p5, v1

    .line 688
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p5, v0

    const/4 p1, 0x2

    .line 689
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p5, p1

    .line 690
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, p5, p2

    const/4 p1, 0x4

    aput-object p6, p5, p1

    .line 692
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    const-string p1, "open"

    .line 693
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->logOfRequest(Ljava/lang/String;)V

    .line 695
    :cond_0
    invoke-direct {p0, p2, p5}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->sendMessage(ILjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 685
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 706
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "pause"

    .line 707
    invoke-direct {p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->logOfRequest(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 709
    iput-boolean v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsSeek:Z

    .line 710
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPollingManager:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    invoke-virtual {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->cancelUpdateForOnShot()V

    const/4 v0, 0x5

    .line 711
    invoke-direct {p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->sendMessage(I)V

    return-void
.end method

.method public play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 699
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "play"

    .line 700
    invoke-direct {p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->logOfRequest(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    .line 702
    invoke-direct {p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->sendMessage(I)V

    return-void
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 715
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "release"

    .line 716
    invoke-direct {p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->logOfRequest(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0xa

    .line 718
    invoke-direct {p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->sendMessage(I)V

    return-void
.end method

.method public setControllerCallback(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;)V
    .locals 2

    .line 657
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 658
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setControllerCallback()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mControllerCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    return-void
.end method

.method public setPlaybackPosition(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 722
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 723
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlaybackPosition() setPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 726
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerService:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    if-eqz v1, :cond_3

    .line 727
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerService:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    invoke-interface {v1, p1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;->setPlaybackPosition(I)V

    .line 728
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_SEEK_PERFORMANCE_ENABLE:Z

    if-eqz v1, :cond_1

    .line 729
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PERFORMANCE] start seeking set position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIgnoreInvalidPlaybackPosition:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 733
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->saveDlnaPlaybackPosition(I)V

    const/4 p1, 0x6

    .line 734
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mDlnaPlayerState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    .line 735
    iput-boolean p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mIsSeek:Z

    .line 736
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPollingManager:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    invoke-virtual {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->requestUpdateForOnShot()V

    .line 741
    :cond_2
    monitor-exit v0

    return-void

    .line 739
    :cond_3
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "is not instance of player service."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 741
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setVolume(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 745
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 746
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume() set volume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerService:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    if-eqz v1, :cond_2

    .line 750
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPlayerService:Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    invoke-interface {v1, p1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;->setVolume(I)V

    .line 751
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mControllerCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    if-eqz v1, :cond_1

    .line 752
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mControllerCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    invoke-interface {v1, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerVolumeUpdate(I)V

    .line 757
    :cond_1
    monitor-exit v0

    return-void

    .line 755
    :cond_2
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "is not instance of player service."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 757
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setup()V
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    return-void

    .line 630
    :cond_0
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_1

    .line 631
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setup() <in>"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->startThread()V

    .line 635
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->innerInit()V

    .line 636
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPollingManager:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    invoke-virtual {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->createThread()V

    .line 637
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->mPollingManager:Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    invoke-virtual {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->disableGetPosition()V

    .line 638
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_2

    .line 639
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setup() <out>"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
