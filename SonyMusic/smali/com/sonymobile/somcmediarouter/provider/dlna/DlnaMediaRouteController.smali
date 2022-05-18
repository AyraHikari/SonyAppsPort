.class public Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;
.super Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
.source "DlnaMediaRouteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$DlnaControllerHandler;,
        Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DlnaMediaRouteController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mControllerCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

.field private mCurrentItemStatus:Landroidx/mediarouter/media/MediaItemStatus;

.field private mCurrentVolume:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerLock:Ljava/lang/Object;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mItemId:Ljava/lang/String;

.field private mItemReceiver:Landroid/app/PendingIntent;

.field private final mItemStatusLock:Ljava/lang/Object;

.field private mOldItemStatus:Landroidx/mediarouter/media/MediaItemStatus;

.field private mPlayer:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

.field private mProviderCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;

.field private mRouteId:Ljava/lang/String;

.field private mSeeking:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSelectedDlnaData:Landroid/os/Bundle;

.field private mSessionId:Ljava/lang/String;

.field private mThread:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$DlnaControllerHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;)V
    .locals 3

    .line 194
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mOldItemStatus:Landroidx/mediarouter/media/MediaItemStatus;

    .line 50
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mCurrentItemStatus:Landroidx/mediarouter/media/MediaItemStatus;

    .line 51
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mItemStatusLock:Ljava/lang/Object;

    .line 53
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mProviderCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;

    .line 57
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mCurrentVolume:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSeeking:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)V

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mControllerCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    .line 751
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandler:Landroid/os/Handler;

    .line 752
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 753
    new-instance v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$DlnaControllerHandler;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$DlnaControllerHandler;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$1;)V

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mThread:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$DlnaControllerHandler;

    .line 754
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandlerLock:Ljava/lang/Object;

    .line 195
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mContext:Landroid/content/Context;

    .line 196
    iput-object p2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mRouteId:Ljava/lang/String;

    .line 197
    iput-object p3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSelectedDlnaData:Landroid/os/Bundle;

    .line 198
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSessionId:Ljava/lang/String;

    .line 199
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mItemId:Ljava/lang/String;

    .line 200
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mOldItemStatus:Landroidx/mediarouter/media/MediaItemStatus;

    .line 201
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mCurrentItemStatus:Landroidx/mediarouter/media/MediaItemStatus;

    .line 203
    iput-object p4, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mProviderCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;

    .line 204
    new-instance p1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    iget-object p2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mPlayer:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    .line 205
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mPlayer:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    iget-object p2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mControllerCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    invoke-virtual {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->setControllerCallback(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;ILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->handleItemStatusChange(ILandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->handleSeek(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->handleGetStatus(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->handlePause(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->handleResume(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->handleStop(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->handleSetVolume(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->handleUpdateVolume(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSeeking:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mProviderCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;I)I
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->convertPlaybackState(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mCurrentVolume:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mRouteId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;)Landroidx/mediarouter/media/MediaItemStatus;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mOldItemStatus:Landroidx/mediarouter/media/MediaItemStatus;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->handlePlay(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V

    return-void
.end method

.method private convertPlaybackState(I)I
    .locals 6

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x7

    if-ne p1, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    if-ne p1, v5, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    if-ne p1, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    if-ne p1, v4, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    const/4 v0, 0x7

    :goto_0
    return v0
.end method

.method private convertStateToString(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "pending"

    return-object p1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const-string p1, "buffering"

    return-object p1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const-string p1, "playing"

    return-object p1

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const-string p1, "paused"

    return-object p1

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const-string p1, "finished"

    return-object p1

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    const-string p1, "canceled"

    return-object p1

    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    const-string p1, "invalidated"

    return-object p1

    :cond_6
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    const-string p1, "error"

    return-object p1

    .line 881
    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createDefalutResultBundle(Landroidx/mediarouter/media/MediaItemStatus;)Landroid/os/Bundle;
    .locals 3

    .line 643
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.media.intent.extra.SESSION_ID"

    .line 645
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.media.intent.extra.SESSION_STATUS"

    .line 646
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSessionId:Ljava/lang/String;

    .line 647
    invoke-direct {p0, v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->getSessionStatus(Ljava/lang/String;)Landroidx/mediarouter/media/MediaSessionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaSessionStatus;->asBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 646
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "android.media.intent.extra.ITEM_ID"

    .line 648
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mItemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.media.intent.extra.ITEM_STATUS"

    if-eqz p1, :cond_0

    .line 650
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaItemStatus;->asBundle()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 649
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private createMediaItemStatus(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaItemStatus;
    .locals 1

    const/4 v0, -0x1

    .line 655
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->createMediaItemStatus(Landroid/os/Bundle;I)Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object p1

    return-object p1
.end method

.method private createMediaItemStatus(Landroid/os/Bundle;I)Landroidx/mediarouter/media/MediaItemStatus;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "KEY_DLNA_PLAYER_STATE"

    const/4 v1, 0x3

    .line 663
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 662
    invoke-direct {p0, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->convertPlaybackState(I)I

    move-result p2

    .line 664
    :goto_0
    new-instance v1, Landroidx/mediarouter/media/MediaItemStatus$Builder;

    invoke-direct {v1, p2}, Landroidx/mediarouter/media/MediaItemStatus$Builder;-><init>(I)V

    const-string p2, "KEY_DLNA_POSITION"

    .line 665
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setContentPosition(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    const-string p2, "KEY_DLNA_DURATION"

    .line 666
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v1, p1, p2}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setContentDuration(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    .line 667
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setTimestamp(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->build()Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object p1

    return-object p1
.end method

.method private getItemStatus()Landroidx/mediarouter/media/MediaItemStatus;
    .locals 4

    .line 694
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mPlayer:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v1, 0x7

    if-nez v0, :cond_0

    .line 695
    new-instance v0, Landroidx/mediarouter/media/MediaItemStatus$Builder;

    invoke-direct {v0, v1}, Landroidx/mediarouter/media/MediaItemStatus$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->build()Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 700
    :try_start_0
    sget-object v3, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;->CACHED:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

    invoke-virtual {v0, v3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->getMediaItemStatus(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->createMediaItemStatus(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v2, :cond_1

    goto :goto_0

    .line 704
    :cond_1
    new-instance v0, Landroidx/mediarouter/media/MediaItemStatus$Builder;

    invoke-direct {v0, v1}, Landroidx/mediarouter/media/MediaItemStatus$Builder;-><init>(I)V

    .line 705
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->build()Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method private getSessionStatus(Ljava/lang/String;)Landroidx/mediarouter/media/MediaSessionStatus;
    .locals 1

    if-eqz p1, :cond_0

    .line 635
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSessionId:Ljava/lang/String;

    .line 636
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 639
    :goto_0
    new-instance v0, Landroidx/mediarouter/media/MediaSessionStatus$Builder;

    invoke-direct {v0, p1}, Landroidx/mediarouter/media/MediaSessionStatus$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaSessionStatus$Builder;->build()Landroidx/mediarouter/media/MediaSessionStatus;

    move-result-object p1

    return-object p1
.end method

.method private handleGetStatus(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V
    .locals 1

    .line 396
    :try_start_0
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mPlayer:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSeeking:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 397
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;->CACHED:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;->CALCULATED:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

    .line 396
    :goto_0
    invoke-virtual {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->getMediaItemStatus(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;)Landroid/os/Bundle;

    move-result-object p1

    .line 400
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSeeking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 401
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->createMediaItemStatus(Landroid/os/Bundle;I)Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object p1

    goto :goto_1

    .line 403
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->createMediaItemStatus(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object p1

    .line 405
    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->notifyResult(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;Landroidx/mediarouter/media/MediaItemStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 407
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->notifyError(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private handleItemStatusChange(ILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    .line 479
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->getItemStatus()Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object v0

    .line 481
    new-instance v1, Landroidx/mediarouter/media/MediaItemStatus$Builder;

    invoke-direct {v1, p1}, Landroidx/mediarouter/media/MediaItemStatus$Builder;-><init>(I)V

    .line 483
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaItemStatus;->getContentPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setContentPosition(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    .line 484
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaItemStatus;->getContentDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setContentDuration(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    .line 485
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaItemStatus;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setTimestamp(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaItemStatus;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    if-eqz p2, :cond_0

    .line 488
    invoke-virtual {v1, p2}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    .line 491
    :cond_0
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->build()Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object p1

    .line 493
    invoke-direct {p0, p1, p3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->handleItemStatusChange(Landroidx/mediarouter/media/MediaItemStatus;Ljava/lang/String;)V

    return-void
.end method

.method private handleItemStatusChange(Landroidx/mediarouter/media/MediaItemStatus;Ljava/lang/String;)V
    .locals 3

    .line 444
    invoke-virtual {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->isItemStatusChanged(Landroidx/mediarouter/media/MediaItemStatus;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 446
    sget-object p1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    const-string p2, "handleItemStatusChange() Status is not changed."

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mItemReceiver:Landroid/app/PendingIntent;

    if-nez v0, :cond_3

    .line 452
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_2

    .line 453
    sget-object p1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    const-string p2, "handleItemStatusChange() Invalid receiver."

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 458
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.intent.extra.SESSION_ID"

    .line 459
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_4

    const-string p2, "android.media.intent.extra.ITEM_ID"

    .line 461
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mItemId:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    const-string v1, "android.media.intent.extra.ITEM_ID"

    .line 463
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string p2, "android.media.intent.extra.ITEM_STATUS"

    .line 465
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaItemStatus;->asBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 467
    :try_start_0
    iget-object p2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mItemReceiver:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 468
    sget-boolean p2, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p2, :cond_5

    .line 469
    sget-object p2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Success: send notice of onItemStatusChanged(). ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 472
    sget-boolean p2, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p2, :cond_5

    .line 473
    sget-object p2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure: Could not send notice. ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private handlePause(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V
    .locals 1

    .line 413
    :try_start_0
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mPlayer:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-virtual {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->pause()V

    .line 414
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSeeking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x0

    .line 415
    invoke-direct {p0, p2, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->notifyResult(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;Landroidx/mediarouter/media/MediaItemStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 418
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->notifyError(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handlePlay(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V
    .locals 11

    .line 322
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 324
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 325
    sget-object p1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    const-string v0, "play failure: invalid uri"

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "invalid uri"

    .line 327
    invoke-direct {p0, p2, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->notifyError(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "android.media.intent.extra.SESSION_ID"

    .line 331
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-direct {p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->setSessionId(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v0, "android.media.intent.extra.ITEM_POSITION"

    const-wide/16 v2, 0x0

    .line 334
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v0, "android.media.intent.extra.ITEM_METADATA"

    .line 335
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.media.intent.extra.HTTP_HEADERS"

    .line 336
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 340
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const/4 v10, 0x0

    if-eqz v3, :cond_2

    const-string v4, "com.sonymobile.somcmediarouter.provider.dlna.intent.extra.DLNA_RESIZE_MODE"

    .line 342
    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 345
    :goto_0
    iget-object v6, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSelectedDlnaData:Landroid/os/Bundle;

    const-string v4, "KEY_DLNA_RESIZE_MODE"

    .line 346
    invoke-virtual {v6, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "android.media.intent.extra.ITEM_STATUS_UPDATE_RECEIVER"

    .line 349
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mItemReceiver:Landroid/app/PendingIntent;

    .line 351
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_3

    .line 352
    sget-object p1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "play request, uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", playbackPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", playqueuePos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", metadata="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", headers="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", receiver="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mItemReceiver:Landroid/app/PendingIntent;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/utils/IdCreator;->createItemId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mItemId:Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mPlayer:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    long-to-int v3, v8

    const/4 v4, 0x1

    iget-object v7, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mItemId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->open(Landroid/net/Uri;IIZLjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 368
    invoke-direct {p0, p2, v10, v8, v9}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->notifyResult(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 370
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->notifyError(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private handleResume(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V
    .locals 0

    .line 425
    :try_start_0
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mPlayer:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-virtual {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->play()V

    const/4 p1, 0x3

    .line 426
    invoke-direct {p0, p2, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->notifyResult(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 428
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->notifyError(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleSeek(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V
    .locals 4

    const-string v0, "android.media.intent.extra.ITEM_POSITION"

    const-wide/16 v1, 0x0

    .line 375
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 376
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 377
    sget-object p1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seek request, position= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mPlayer:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->setPlaybackPosition(I)V

    .line 382
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->getItemStatus()Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaItemStatus;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 384
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSeeking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x3

    .line 385
    invoke-direct {p0, p2, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->notifyResult(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;I)V

    goto :goto_0

    .line 387
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->notifyResult(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 390
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->notifyError(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleSetVolume(I)V
    .locals 1

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mPlayer:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-virtual {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->setVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private handleStop(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V
    .locals 0

    .line 435
    :try_start_0
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mPlayer:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-virtual {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->release()V

    const/4 p1, 0x0

    .line 436
    invoke-direct {p0, p2, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->notifyResult(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;Landroidx/mediarouter/media/MediaItemStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 439
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->notifyError(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleUpdateVolume(I)V
    .locals 1

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mPlayer:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-virtual {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->getVolume()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 509
    :catch_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mCurrentVolume:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_0
    if-gez v0, :cond_1

    .line 513
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 514
    sget-object p1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    const-string v0, "onUpdateVolume() failure: value of unjust volume."

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    add-int/2addr v0, p1

    if-gez v0, :cond_2

    const/4 v0, 0x0

    .line 523
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->onSetVolume(I)V

    return-void
.end method

.method private isSupportedCategory(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "android.media.intent.category.REMOTE_PLAYBACK"

    .line 300
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private notifyError(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 618
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->notifyError(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method private notifyError(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    .line 623
    invoke-direct {p0, p3, p4, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->handleItemStatusChange(ILandroid/os/Bundle;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 625
    sget-boolean p3, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p3, :cond_0

    .line 626
    sget-object p3, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call for onError() in cancel factor. Message["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Data["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error Message : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private notifyResult(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;I)V
    .locals 4

    .line 571
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->getItemStatus()Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object v0

    .line 572
    new-instance v1, Landroidx/mediarouter/media/MediaItemStatus$Builder;

    invoke-direct {v1, p2}, Landroidx/mediarouter/media/MediaItemStatus$Builder;-><init>(I)V

    .line 573
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaItemStatus;->getContentPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setContentPosition(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    .line 574
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaItemStatus;->getContentDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setContentDuration(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    .line 575
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaItemStatus;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setTimestamp(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaItemStatus;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->build()Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object p2

    .line 576
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->notifyResult(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;Landroidx/mediarouter/media/MediaItemStatus;)V

    return-void
.end method

.method private notifyResult(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;IJ)V
    .locals 2

    .line 559
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->getItemStatus()Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object v0

    .line 560
    new-instance v1, Landroidx/mediarouter/media/MediaItemStatus$Builder;

    invoke-direct {v1, p2}, Landroidx/mediarouter/media/MediaItemStatus$Builder;-><init>(I)V

    .line 561
    invoke-virtual {v1, p3, p4}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setContentPosition(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    .line 562
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaItemStatus;->getContentDuration()J

    move-result-wide p2

    invoke-virtual {v1, p2, p3}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setContentDuration(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    .line 563
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaItemStatus;->getTimestamp()J

    move-result-wide p2

    invoke-virtual {v1, p2, p3}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setTimestamp(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaItemStatus;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->build()Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object p2

    .line 564
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->notifyResult(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;Landroidx/mediarouter/media/MediaItemStatus;)V

    return-void
.end method

.method private notifyResult(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;Landroidx/mediarouter/media/MediaItemStatus;)V
    .locals 4

    if-nez p2, :cond_1

    .line 581
    sget-boolean p2, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p2, :cond_0

    .line 582
    sget-object p2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    const-string v0, "notifyResult(): Notify current status when invalid status"

    invoke-static {p2, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mItemStatusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_0
    iget-object p2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mCurrentItemStatus:Landroidx/mediarouter/media/MediaItemStatus;

    .line 586
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 589
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->createDefalutResultBundle(Landroidx/mediarouter/media/MediaItemStatus;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 591
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_2

    .line 592
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success: call for onResult(). Data["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_2
    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onResult(Landroid/os/Bundle;)V

    goto :goto_1

    .line 596
    :cond_3
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_4

    .line 597
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure: could not call onResult(). Data["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] Callback["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 603
    invoke-direct {p0, p2, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->handleItemStatusChange(Landroidx/mediarouter/media/MediaItemStatus;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private returnOnControlRequest(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 550
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Player Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method private sendMediaControlMessage(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 796
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 800
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 801
    iput v0, p2, Landroid/os/Message;->what:I

    .line 802
    iput-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 804
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 805
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 806
    monitor-exit v1

    return v0

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 809
    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private sendVolumeControlMessage(I)V
    .locals 3

    .line 814
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 815
    iput v1, v0, Landroid/os/Message;->what:I

    .line 816
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 818
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandlerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 819
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 820
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 821
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 823
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendVolumeSetMessage(I)V
    .locals 2

    .line 255
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 256
    iput v1, v0, Landroid/os/Message;->what:I

    .line 257
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 259
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandlerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setSessionId(Ljava/lang/String;)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 309
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSessionId:Ljava/lang/String;

    goto :goto_0

    .line 312
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSessionId:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 313
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/utils/IdCreator;->createSessionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSessionId:Ljava/lang/String;

    .line 316
    :cond_2
    :goto_0
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_3

    .line 317
    sget-object p1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSessionId() ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private startThread()V
    .locals 5

    .line 757
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 758
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 759
    monitor-exit v0

    return-void

    .line 762
    :cond_0
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_1

    .line 763
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    const-string v2, "startThread()"

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DlnaMediaRouteController"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 767
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 769
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 771
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mThread:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$DlnaControllerHandler;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 772
    :try_start_1
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mThread:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$DlnaControllerHandler;

    invoke-direct {v3, v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandler:Landroid/os/Handler;

    .line 773
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 775
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private stopThread()V
    .locals 3

    .line 779
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 781
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_0

    .line 782
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    const-string v2, "stopThread()"

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    const/4 v1, 0x0

    .line 785
    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 786
    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mHandler:Landroid/os/Handler;

    .line 788
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateCurrentItemStatus(Landroidx/mediarouter/media/MediaItemStatus;)Landroidx/mediarouter/media/MediaItemStatus;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mItemStatusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mCurrentItemStatus:Landroidx/mediarouter/media/MediaItemStatus;

    if-eqz v1, :cond_2

    .line 716
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaItemStatus;->getPlaybackState()I

    move-result v2

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaItemStatus;->getPlaybackState()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 717
    sget-boolean v2, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v2, :cond_1

    .line 718
    sget-object v2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    const-string v3, "Not update new status to old item for same state"

    invoke-static {v2, v3}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :cond_1
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mCurrentItemStatus:Landroidx/mediarouter/media/MediaItemStatus;

    .line 721
    monitor-exit v0

    return-object v1

    .line 725
    :cond_2
    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mOldItemStatus:Landroidx/mediarouter/media/MediaItemStatus;

    .line 726
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mCurrentItemStatus:Landroidx/mediarouter/media/MediaItemStatus;

    if-nez v1, :cond_3

    .line 728
    sget-boolean v2, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v2, :cond_4

    .line 729
    sget-object v2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "media item new state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaItemStatus;->getPlaybackState()I

    move-result p1

    .line 729
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->convertStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 733
    :cond_3
    sget-boolean v2, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v2, :cond_4

    .line 734
    sget-object v2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "media item state changed: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaItemStatus;->getPlaybackState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->convertStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaItemStatus;->getPlaybackState()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->convertStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 734
    invoke-static {v2, p1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_4
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 740
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method isItemStatusChanged(Landroidx/mediarouter/media/MediaItemStatus;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 531
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->updateCurrentItemStatus(Landroidx/mediarouter/media/MediaItemStatus;)Landroidx/mediarouter/media/MediaItemStatus;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 535
    :cond_1
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaItemStatus;->getPlaybackState()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    return v2

    .line 537
    :cond_2
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaItemStatus;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    return v2

    .line 540
    :cond_3
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaItemStatus;->getPlaybackState()I

    move-result v1

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaItemStatus;->getPlaybackState()I

    move-result p1

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public onControlRequest(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)Z
    .locals 4

    .line 273
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 274
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onControlRequest() routeID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mRouteId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->isSupportedCategory(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    .line 279
    invoke-direct {p0, p2, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->returnOnControlRequest(Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 282
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.media.intent.action.PLAY"

    .line 284
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.media.intent.action.SEEK"

    .line 285
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.media.intent.action.GET_STATUS"

    .line 286
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.media.intent.action.PAUSE"

    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.media.intent.action.RESUME"

    .line 288
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.media.intent.action.STOP"

    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 290
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->sendMediaControlMessage(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)Z

    move-result v1

    .line 293
    :cond_4
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_5

    .line 294
    sget-object p1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onControlRequest() result: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " action: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v1
.end method

.method public onRelease()V
    .locals 3

    .line 210
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRelease() routeID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mRouteId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->stopThread()V

    .line 214
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mPlayer:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-virtual {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->dispose()V

    return-void
.end method

.method public onSelect()V
    .locals 3

    .line 219
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelect() routeID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mRouteId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mPlayer:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-virtual {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->setup()V

    .line 224
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->startThread()V

    return-void
.end method

.method public onSetVolume(I)V
    .locals 1

    if-gez p1, :cond_1

    .line 246
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 247
    sget-object p1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    const-string v0, "onSetVolume() failure: value of unjust volume."

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 251
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->sendVolumeControlMessage(I)V

    return-void
.end method

.method public onUnselect()V
    .locals 3

    .line 229
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnselect() routeID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mRouteId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->stopThread()V

    .line 233
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mPlayer:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-virtual {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->dispose()V

    .line 234
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->mProviderCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;

    invoke-interface {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;->onClearRouteId()V

    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;->sendVolumeSetMessage(I)V

    return-void
.end method
