.class public Lcom/sonyericsson/music/player/PlayerController;
.super Landroidx/fragment/app/Fragment;
.source "PlayerController.java"

# interfaces
.implements Landroidx/loader/content/Loader$OnLoadCompleteListener;
.implements Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/player/PlayerController$CommitPendingPlayQueuePositionRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/loader/content/Loader$OnLoadCompleteListener<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;"
    }
.end annotation


# static fields
.field private static final CLEAR_PENDING_DELAY_MS:J = 0x5dcL

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final COMMIT_PLAY_QUEUE_POSITION_DELAY_MS:J = 0x15eL

.field private static final POSITION_REFRESH_INTERVAL_MS:J = 0x1f4L

.field private static final REFRESH_TRIES_IN_PAUSED_STATE:I = 0x5

.field public static final TAG:Ljava/lang/String; = "PlayerController"


# instance fields
.field private final mClearPendingStatesRunnable:Ljava/lang/Runnable;

.field private final mCommitPendingPlayQueuePositionRunnable:Lcom/sonyericsson/music/player/PlayerController$CommitPendingPlayQueuePositionRunnable;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetHookHandler:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

.field private mLoadingState:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

.field private final mMediaPlaybackListener:Landroid/content/BroadcastReceiver;

.field private final mObservable:Lcom/sonyericsson/music/player/PlayerStateObservable;

.field private mPendingPlayQueuePosition:I

.field private mPendingPlayQueuePositionCommited:Z

.field private mPendingPlaybackPos:I

.field private mPlayQueueCursor:Landroid/database/Cursor;

.field private mPlayQueueLoader:Landroidx/loader/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerArtDecoder:Lcom/sonyericsson/music/player/PlayerArtDecoder;

.field private mPlayerState:Lcom/sonyericsson/music/player/PlayerState;

.field private final mPositionRefreshRunnable:Ljava/lang/Runnable;

.field private mRefreshTriesInPausedState:I

.field private mServiceIntentsRegistered:Z

.field private final mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    .line 56
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "title"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "artist"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "duration"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "album"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "track_uri"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "album_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "artist_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "available"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "hd_audio"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/player/PlayerController;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 132
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/sonyericsson/music/player/PlayerController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/player/PlayerController$1;-><init>(Lcom/sonyericsson/music/player/PlayerController;)V

    iput-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPositionRefreshRunnable:Ljava/lang/Runnable;

    .line 81
    new-instance v0, Lcom/sonyericsson/music/player/PlayerController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/player/PlayerController$2;-><init>(Lcom/sonyericsson/music/player/PlayerController;)V

    iput-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mClearPendingStatesRunnable:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lcom/sonyericsson/music/player/PlayerController$CommitPendingPlayQueuePositionRunnable;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/player/PlayerController$CommitPendingPlayQueuePositionRunnable;-><init>(Lcom/sonyericsson/music/player/PlayerController;)V

    iput-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mCommitPendingPlayQueuePositionRunnable:Lcom/sonyericsson/music/player/PlayerController$CommitPendingPlayQueuePositionRunnable;

    .line 92
    new-instance v0, Lcom/sonyericsson/music/player/PlayerStateObservable;

    invoke-direct {v0}, Lcom/sonyericsson/music/player/PlayerStateObservable;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mObservable:Lcom/sonyericsson/music/player/PlayerStateObservable;

    .line 94
    sget-object v0, Lcom/sonyericsson/music/player/PlayerState;->EMPTY:Lcom/sonyericsson/music/player/PlayerState;

    iput-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayerState:Lcom/sonyericsson/music/player/PlayerState;

    .line 98
    sget-object v0, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->IDLE:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    iput-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mLoadingState:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlayQueuePosition:I

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlayQueuePositionCommited:Z

    const/4 v1, 0x0

    .line 124
    iput v1, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlaybackPos:I

    const/4 v1, 0x5

    .line 128
    iput v1, p0, Lcom/sonyericsson/music/player/PlayerController;->mRefreshTriesInPausedState:I

    .line 730
    new-instance v1, Lcom/sonyericsson/music/player/PlayerController$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/player/PlayerController$3;-><init>(Lcom/sonyericsson/music/player/PlayerController;)V

    iput-object v1, p0, Lcom/sonyericsson/music/player/PlayerController;->mMediaPlaybackListener:Landroid/content/BroadcastReceiver;

    .line 133
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 134
    new-instance v0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-direct {v0}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    .line 135
    new-instance v0, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mHeadsetHookHandler:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mHeadsetHookHandler:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->setListener(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/player/PlayerController;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/sonyericsson/music/player/PlayerController;->clearPendingStates()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/player/PlayerController;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceIntentsRegistered:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/player/PlayerController;)Lcom/sonyericsson/music/player/MediaPlaybackWrapper;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    return-object p0
.end method

.method static synthetic access$302(Lcom/sonyericsson/music/player/PlayerController;Lcom/sonyericsson/music/player/PlayerState$LoadingState;)Lcom/sonyericsson/music/player/PlayerState$LoadingState;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mLoadingState:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sonyericsson/music/player/PlayerController;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mRefreshTriesInPausedState:I

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/player/PlayerController;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/player/PlayerController;->commitPendingPlayQueuePosition(Z)V

    return-void
.end method

.method private clearPendingStates()V
    .locals 1

    const/4 v0, -0x1

    .line 602
    iput v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlayQueuePosition:I

    const/4 v0, 0x0

    .line 603
    iput v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlaybackPos:I

    const/4 v0, 0x1

    .line 604
    iput-boolean v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlayQueuePositionCommited:Z

    return-void
.end method

.method private commitPendingPlayQueuePosition(Z)V
    .locals 4

    .line 576
    iget v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlayQueuePosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 577
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/player/PlayerController;->mCommitPendingPlayQueuePositionRunnable:Lcom/sonyericsson/music/player/PlayerController$CommitPendingPlayQueuePositionRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 579
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    iget-boolean v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlayQueuePositionCommited:Z

    if-nez v0, :cond_2

    .line 581
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlayQueuePosition:I

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 582
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 581
    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->setQueuePosition(Landroid/content/Context;IZ)V

    .line 583
    iput-boolean v3, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlayQueuePositionCommited:Z

    .line 592
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mClearPendingStatesRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 596
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/music/player/PlayerController;->clearPendingStates()V

    :cond_2
    :goto_1
    return-void
.end method

.method private createLoader()Landroidx/loader/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 503
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->getPlayqueueContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    .line 504
    new-instance v0, Landroidx/loader/content/CursorLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget-object v4, Lcom/sonyericsson/music/player/PlayerController;->COLUMNS:[Ljava/lang/String;

    const-string v7, "play_order"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private dispatchChanges(Lcom/sonyericsson/music/player/PlayerState;Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 4

    .line 648
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result v0

    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 649
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mObservable:Lcom/sonyericsson/music/player/PlayerStateObservable;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/player/PlayerStateObservable;->dispatchIsPlayingChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 651
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getLoadingState()Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerState;->getLoadingState()Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 652
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mObservable:Lcom/sonyericsson/music/player/PlayerStateObservable;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/player/PlayerStateObservable;->dispatchLoadingStateChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 654
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    .line 655
    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    goto :goto_0

    .line 656
    :cond_2
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/Track;->equalMetadata(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 657
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/player/PlayerController;->mObservable:Lcom/sonyericsson/music/player/PlayerStateObservable;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/music/player/PlayerStateObservable;->dispatchCurrentTrackChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 659
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrackColor()I

    move-result v2

    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrackColor()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 660
    iget-object v2, p0, Lcom/sonyericsson/music/player/PlayerController;->mObservable:Lcom/sonyericsson/music/player/PlayerStateObservable;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/music/player/PlayerStateObservable;->dispatchCurrentTrackColorChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 662
    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getRepeatMode()I

    move-result v2

    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerState;->getRepeatMode()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 663
    iget-object v2, p0, Lcom/sonyericsson/music/player/PlayerController;->mObservable:Lcom/sonyericsson/music/player/PlayerStateObservable;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/music/player/PlayerStateObservable;->dispatchRepeatModeChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 665
    :cond_5
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isShuffle()Z

    move-result v2

    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerState;->isShuffle()Z

    move-result v3

    if-eq v2, v3, :cond_6

    .line 666
    iget-object v2, p0, Lcom/sonyericsson/music/player/PlayerController;->mObservable:Lcom/sonyericsson/music/player/PlayerStateObservable;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/music/player/PlayerStateObservable;->dispatchShuffleChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 668
    :cond_6
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getPlaybackPosition()I

    move-result v2

    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerState;->getPlaybackPosition()I

    move-result v3

    if-eq v2, v3, :cond_7

    .line 669
    iget-object v2, p0, Lcom/sonyericsson/music/player/PlayerController;->mObservable:Lcom/sonyericsson/music/player/PlayerStateObservable;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/music/player/PlayerStateObservable;->dispatchPlaybackPositionChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 671
    :cond_7
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result v2

    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result v3

    if-eq v2, v3, :cond_8

    .line 672
    iget-object v2, p0, Lcom/sonyericsson/music/player/PlayerController;->mObservable:Lcom/sonyericsson/music/player/PlayerStateObservable;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/music/player/PlayerStateObservable;->dispatchIsInPlayQueueModeChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 674
    :cond_8
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getRouteId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerState;->getRouteId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 675
    iget-object v2, p0, Lcom/sonyericsson/music/player/PlayerController;->mObservable:Lcom/sonyericsson/music/player/PlayerStateObservable;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/music/player/PlayerStateObservable;->dispatchRouteIdChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 680
    :cond_9
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getPlayQueueCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerState;->getPlayQueueCursor()Landroid/database/Cursor;

    move-result-object v3

    if-ne v2, v3, :cond_a

    .line 681
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/player/PlayerController;->isSameMetadata(Lcom/sonyericsson/music/common/Track;Lcom/sonyericsson/music/common/Track;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/player/PlayerController;->getPlayQueuePos(Lcom/sonyericsson/music/player/PlayerState;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/sonyericsson/music/player/PlayerController;->getPlayQueuePos(Lcom/sonyericsson/music/player/PlayerState;)I

    move-result v1

    if-eq v0, v1, :cond_b

    .line 682
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mObservable:Lcom/sonyericsson/music/player/PlayerStateObservable;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/player/PlayerStateObservable;->dispatchPlayQueueChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 684
    :cond_b
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getDelayedPauseEndMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sonyericsson/music/player/PlayerState;->getDelayedPauseEndMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_c

    .line 685
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mObservable:Lcom/sonyericsson/music/player/PlayerStateObservable;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/player/PlayerStateObservable;->dispatchDelayedPauseEndMillisChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    :cond_c
    return-void
.end method

.method private getMusicActivity()Lcom/sonyericsson/music/MusicActivity;
    .locals 4

    .line 470
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    instance-of v1, v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v1, :cond_0

    .line 474
    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    return-object v0

    .line 472
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPlayQueuePos(Lcom/sonyericsson/music/player/PlayerState;)I
    .locals 0

    .line 694
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 696
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private isCurrentPlayQueuePosition(I)Z
    .locals 2

    .line 283
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSameMetadata(Lcom/sonyericsson/music/common/Track;Lcom/sonyericsson/music/common/Track;)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 690
    :cond_1
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/common/Track;->equalMetadata(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private registerServiceIntents()V
    .locals 5

    .line 700
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 701
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 702
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackCompletedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackStartedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSkippedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 706
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPausedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 707
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSeekedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 708
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getPlaybackErrorIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 709
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getShuffleChangedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 710
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getRepeatModeChangedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 711
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getBufferingUpdatedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 712
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 714
    sget-object v2, Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;->BROADCAST_PRIORITY_PLAYER_CONTROLLER_BUFFERING:Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;

    .line 715
    invoke-virtual {v2}, Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;->getPriority()I

    move-result v2

    .line 714
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 717
    iget-object v2, p0, Lcom/sonyericsson/music/player/PlayerController;->mMediaPlaybackListener:Landroid/content/BroadcastReceiver;

    const-string v3, "com.sonyericsson.music.permission.BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 720
    iput-boolean v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceIntentsRegistered:Z

    return-void
.end method

.method private schedulePendingPlayQueuePosition(IZ)V
    .locals 3

    .line 566
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/player/PlayerController;->mCommitPendingPlayQueuePositionRunnable:Lcom/sonyericsson/music/player/PlayerController$CommitPendingPlayQueuePositionRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 567
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/player/PlayerController;->mClearPendingStatesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 568
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mCommitPendingPlayQueuePositionRunnable:Lcom/sonyericsson/music/player/PlayerController$CommitPendingPlayQueuePositionRunnable;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/player/PlayerController$CommitPendingPlayQueuePositionRunnable;->forcePlay(Z)V

    .line 569
    iget-object p2, p0, Lcom/sonyericsson/music/player/PlayerController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mCommitPendingPlayQueuePositionRunnable:Lcom/sonyericsson/music/player/PlayerController$CommitPendingPlayQueuePositionRunnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 570
    iput p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlayQueuePosition:I

    const/4 p1, 0x0

    .line 571
    iput-boolean p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlayQueuePositionCommited:Z

    .line 572
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->refreshState()V

    return-void
.end method

.method private schedulePositionUpdate(Z)V
    .locals 3

    .line 632
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/player/PlayerController;->mPositionRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x1f4

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    .line 634
    iput p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mRefreshTriesInPausedState:I

    .line 635
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/music/player/PlayerController;->mPositionRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 636
    :cond_0
    iget p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mRefreshTriesInPausedState:I

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 638
    iput p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mRefreshTriesInPausedState:I

    .line 639
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/music/player/PlayerController;->mPositionRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private scheduleRelativePendingPlayQueuePosition(I)V
    .locals 2

    .line 557
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v1

    .line 559
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->getPlayQueueCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v1, p1

    .line 561
    rem-int/2addr v1, v0

    add-int/2addr v1, v0

    rem-int/2addr v1, v0

    const/4 p1, 0x0

    .line 562
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/music/player/PlayerController;->schedulePendingPlayQueuePosition(IZ)V

    return-void
.end method

.method private unregisterServiceIntents()V
    .locals 2

    .line 724
    iget-boolean v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceIntentsRegistered:Z

    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/player/PlayerController;->mMediaPlaybackListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 726
    iput-boolean v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceIntentsRegistered:Z

    :cond_0
    return-void
.end method

.method private unschedulePendingPlayQueuePosition()V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/player/PlayerController;->mCommitPendingPlayQueuePositionRunnable:Lcom/sonyericsson/music/player/PlayerController$CommitPendingPlayQueuePositionRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 609
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/player/PlayerController;->mClearPendingStatesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    .line 610
    iput v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlayQueuePosition:I

    const/4 v0, 0x0

    .line 611
    iput v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlaybackPos:I

    const/4 v0, 0x1

    .line 612
    iput-boolean v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlayQueuePositionCommited:Z

    return-void
.end method

.method private unschedulePositionUpdate()V
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/music/player/PlayerController;->mPositionRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public enqueue(Landroid/net/Uri;IZ)V
    .locals 1

    .line 364
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->enqueue(Landroid/net/Uri;IZ)V

    :cond_0
    return-void
.end method

.method public enqueueTrack(Landroid/net/Uri;Landroid/net/Uri;IIZ)V
    .locals 7

    .line 371
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v1, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->enqueueTrack(Landroid/net/Uri;Landroid/net/Uri;IIZ)V

    :cond_0
    return-void
.end method

.method public getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;
    .locals 1

    .line 385
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    return-object v0

    .line 389
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->DEFAULT:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    return-object v0
.end method

.method public getPlayerArtDecoder()Lcom/sonyericsson/music/player/PlayerArtDecoder;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayerArtDecoder:Lcom/sonyericsson/music/player/PlayerArtDecoder;

    return-object v0
.end method

.method public getPlayerState()Lcom/sonyericsson/music/player/PlayerState;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayerState:Lcom/sonyericsson/music/player/PlayerState;

    return-object v0
.end method

.method public handleKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x4f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 407
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->play()V

    goto :goto_0

    .line 420
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/16 p2, 0x5a

    if-ne p1, p2, :cond_0

    const/4 v1, 0x1

    .line 421
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/player/PlayerController;->startWinding(Z)V

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 423
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->stopWinding()V

    goto :goto_0

    .line 415
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->previous()V

    goto :goto_0

    .line 411
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->next()V

    goto :goto_0

    .line 403
    :pswitch_4
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->pause()V

    goto :goto_0

    .line 398
    :cond_2
    :pswitch_5
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mHeadsetHookHandler:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->handleHeadsetHook()V

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public isServiceSet()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->isServiceSet()Z

    move-result v0

    return v0
.end method

.method public loadPlayQueueIfEmpty()V
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayQueueLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->startLoading()V

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->loadPlayQueueIfEmpty()V

    :cond_0
    return-void
.end method

.method public moveTrack(II)V
    .locals 1

    .line 358
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->moveTrack(II)V

    :cond_0
    return-void
.end method

.method public next()V
    .locals 1

    .line 288
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 289
    iput v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlaybackPos:I

    .line 290
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 291
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/player/PlayerController;->scheduleRelativePendingPlayQueuePosition(I)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->next()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 510
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 511
    new-instance v0, Lcom/sonyericsson/music/player/PlayerArtDecoder;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/player/PlayerArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayerArtDecoder:Lcom/sonyericsson/music/player/PlayerArtDecoder;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 497
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 498
    invoke-direct {p0}, Lcom/sonyericsson/music/player/PlayerController;->createLoader()Landroidx/loader/content/Loader;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayQueueLoader:Landroidx/loader/content/Loader;

    .line 499
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayQueueLoader:Landroidx/loader/content/Loader;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroidx/loader/content/Loader;->registerListener(ILandroidx/loader/content/Loader$OnLoadCompleteListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 538
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 539
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mObservable:Lcom/sonyericsson/music/player/PlayerStateObservable;

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerStateObservable;->unregisterAll()V

    .line 540
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayQueueLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0, p0}, Landroidx/loader/content/Loader;->unregisterListener(Landroidx/loader/content/Loader$OnLoadCompleteListener;)V

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayQueueLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->reset()V

    const/4 v0, 0x0

    .line 542
    iput-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayQueueCursor:Landroid/database/Cursor;

    .line 543
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->refreshState()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 548
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 549
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayerArtDecoder:Lcom/sonyericsson/music/player/PlayerArtDecoder;

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerArtDecoder;->destroy()V

    const/4 v0, 0x0

    .line 550
    iput-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayerArtDecoder:Lcom/sonyericsson/music/player/PlayerArtDecoder;

    return-void
.end method

.method public onHeadsetHookPattern(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;)V
    .locals 1

    .line 437
    sget-object v0, Lcom/sonyericsson/music/player/PlayerController$4;->$SwitchMap$com$sonyericsson$music$common$CustomHeadsetHookHandler$ClickState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 453
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->previous()V

    goto :goto_0

    .line 446
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->next()V

    goto :goto_0

    .line 439
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->playPause()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadComplete(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 516
    iput-object p2, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayQueueCursor:Landroid/database/Cursor;

    .line 517
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->refreshState()V

    return-void
.end method

.method public bridge synthetic onLoadComplete(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/player/PlayerController;->onLoadComplete(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 522
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 523
    invoke-direct {p0}, Lcom/sonyericsson/music/player/PlayerController;->registerServiceIntents()V

    .line 524
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayQueueLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->startLoading()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 529
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 530
    invoke-direct {p0}, Lcom/sonyericsson/music/player/PlayerController;->unregisterServiceIntents()V

    .line 531
    invoke-direct {p0}, Lcom/sonyericsson/music/player/PlayerController;->unschedulePendingPlayQueuePosition()V

    .line 532
    invoke-direct {p0}, Lcom/sonyericsson/music/player/PlayerController;->unschedulePositionUpdate()V

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayQueueLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->stopLoading()V

    return-void
.end method

.method public open(Landroid/net/Uri;IZ)V
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->open(Landroid/content/Context;Landroid/net/Uri;IZ)V

    :cond_0
    return-void
.end method

.method public open(Landroid/net/Uri;IZI)V
    .locals 7

    .line 167
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->open(Landroid/content/Context;Landroid/net/Uri;IZI)V

    :cond_0
    return-void
.end method

.method public open(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 173
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->open(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public openSmartPlaylist(IIZ)V
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->openSmartPlaylist(Landroid/content/Context;IIZ)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->pause()V

    :cond_0
    return-void
.end method

.method public pauseDelayed(J)V
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->pauseDelayed(J)V

    .line 248
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayerState:Lcom/sonyericsson/music/player/PlayerState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x5

    .line 251
    iput p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mRefreshTriesInPausedState:I

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->refreshState()V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->play()V

    :cond_0
    return-void
.end method

.method public playPause()V
    .locals 5

    .line 205
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->pause()V

    goto :goto_0

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/player/PlayerController;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v1

    .line 211
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {v1}, Lcom/sonyericsson/music/MusicActivity;->getDrmUtils()Lcom/sonyericsson/music/common/DrmUtils;

    move-result-object v2

    .line 217
    invoke-interface {v2, v0}, Lcom/sonyericsson/music/common/DrmUtils;->hasValidRights(Landroid/net/Uri;)Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    move-result-object v3

    .line 218
    sget-object v4, Lcom/sonyericsson/music/player/PlayerController$4;->$SwitchMap$com$sonyericsson$music$common$DrmUtils$RightsCheckResult:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 224
    :pswitch_0
    invoke-interface {v2, v1, v0}, Lcom/sonyericsson/music/common/DrmUtils;->renewRights(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->play()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public previous()V
    .locals 2

    .line 299
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 300
    iput v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlaybackPos:I

    .line 301
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->getPlaybackPosition()I

    move-result v0

    const/16 v1, 0x1388

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    .line 303
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/player/PlayerController;->scheduleRelativePendingPlayQueuePosition(I)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->prev()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected refreshState()V
    .locals 7

    .line 616
    iget-object v6, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayerState:Lcom/sonyericsson/music/player/PlayerState;

    .line 617
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    iget-object v1, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayQueueCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/sonyericsson/music/player/PlayerController;->mLoadingState:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    iget v3, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlayQueuePosition:I

    iget v4, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlaybackPos:I

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/music/player/PlayerState;->create(Lcom/sonyericsson/music/player/MediaPlaybackWrapper;Landroid/database/Cursor;Lcom/sonyericsson/music/player/PlayerState$LoadingState;IILcom/sonyericsson/music/player/PlayerState;)Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayerState:Lcom/sonyericsson/music/player/PlayerState;

    goto :goto_0

    .line 621
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/player/PlayerState;->EMPTY:Lcom/sonyericsson/music/player/PlayerState;

    iput-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayerState:Lcom/sonyericsson/music/player/PlayerState;

    .line 627
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayerState:Lcom/sonyericsson/music/player/PlayerState;

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/player/PlayerController;->schedulePositionUpdate(Z)V

    .line 628
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayerState:Lcom/sonyericsson/music/player/PlayerState;

    invoke-direct {p0, v6, v0}, Lcom/sonyericsson/music/player/PlayerController;->dispatchChanges(Lcom/sonyericsson/music/player/PlayerState;Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method public registerPlayerStateListener(Lcom/sonyericsson/music/player/PlayerStateListener;)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mObservable:Lcom/sonyericsson/music/player/PlayerStateObservable;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public removeTrack(I)V
    .locals 1

    .line 352
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->removeTrack(I)V

    :cond_0
    return-void
.end method

.method public removeTracks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 346
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->removeTracks(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setClearAudioEnabled(Z)V
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->setClearAudioEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPlayQueuePosition(IZ)V
    .locals 1

    if-nez p2, :cond_0

    .line 258
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/player/PlayerController;->isCurrentPlayQueuePosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 259
    iput v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlaybackPos:I

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/player/PlayerController;->schedulePendingPlayQueuePosition(IZ)V

    :cond_1
    return-void
.end method

.method public setPlaybackPosition(I)V
    .locals 3

    .line 265
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/player/PlayerController;->commitPendingPlayQueuePosition(Z)V

    .line 268
    iget v1, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlayQueuePosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 269
    iput p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlaybackPos:I

    goto :goto_0

    .line 271
    :cond_0
    iput v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mPendingPlaybackPos:I

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->setPlaybackPosition(I)V

    .line 275
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mPlayerState:Lcom/sonyericsson/music/player/PlayerState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x5

    .line 276
    iput p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mRefreshTriesInPausedState:I

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->refreshState()V

    :cond_2
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->setRepeatMode(I)V

    :cond_0
    return-void
.end method

.method public setService(Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->setMediaPlayback(Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)V

    .line 141
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->refreshState()V

    if-nez p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mHeadsetHookHandler:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->onDestroy()V

    goto :goto_0

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController;->mHeadsetHookHandler:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->setListener(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;)V

    :goto_0
    return-void
.end method

.method public setShuffle(Z)V
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/sonyericsson/music/player/PlayerController;->unschedulePendingPlayQueuePosition()V

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->setShuffle(Z)V

    :cond_0
    return-void
.end method

.method public startWinding(Z)V
    .locals 1

    .line 334
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->startWinding(Z)V

    :cond_0
    return-void
.end method

.method public stopWinding()V
    .locals 1

    .line 340
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->stopWinding()V

    :cond_0
    return-void
.end method

.method public unregisterPlayerStateListener(Lcom/sonyericsson/music/player/PlayerStateListener;)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mObservable:Lcom/sonyericsson/music/player/PlayerStateObservable;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public updateMediaRouteAndScan()V
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController;->mServiceWrapper:Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->upateMediaRouteAndScan()V

    :cond_0
    return-void
.end method
