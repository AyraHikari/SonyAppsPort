.class Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;
.super Ljava/lang/Object;
.source "RemotePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->createRemoteClient(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$routeInfo:Landroidx/mediarouter/media/MediaRouter$RouteInfo;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;->val$routeInfo:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iput-object p3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClient:Landroidx/mediarouter/media/RemotePlaybackClient;

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClientReleased:Z

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClient:Landroidx/mediarouter/media/RemotePlaybackClient;

    invoke-virtual {v0}, Landroidx/mediarouter/media/RemotePlaybackClient;->release()V

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClientReleased:Z

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    new-instance v1, Landroidx/mediarouter/media/RemotePlaybackClient;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->access$000(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;->val$routeInfo:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-direct {v1, v2, v3}, Landroidx/mediarouter/media/RemotePlaybackClient;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    iput-object v1, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClient:Landroidx/mediarouter/media/RemotePlaybackClient;

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    new-instance v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemoteStatusCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemoteStatusCallback;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;)V

    iput-object v1, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteStatusCallback:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemoteStatusCallback;

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    new-instance v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PrepareCallback;

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PrepareCallback;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;)V

    iput-object v1, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mPrepareCallback:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PrepareCallback;

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    new-instance v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$SessionCallback;

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$SessionCallback;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;)V

    iput-object v1, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mSessionCallback:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$SessionCallback;

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClient:Landroidx/mediarouter/media/RemotePlaybackClient;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteStatusCallback:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemoteStatusCallback;

    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/RemotePlaybackClient;->setStatusCallback(Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;)V

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClientReleased:Z

    .line 103
    iput-object v2, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mCurrentMediaItem:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
