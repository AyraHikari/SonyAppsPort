.class Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;
.super Ljava/lang/Object;
.source "RemotePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->getCurrentPosition()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$position:[J


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;[JLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;->val$position:[J

    iput-object p3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClient:Landroidx/mediarouter/media/RemotePlaybackClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/mediarouter/media/RemotePlaybackClient;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mCurrentMediaItem:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClient:Landroidx/mediarouter/media/RemotePlaybackClient;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mCurrentMediaItem:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;->getItemId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7$1;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;)V

    invoke-virtual {v1, v0, v2, v3}, Landroidx/mediarouter/media/RemotePlaybackClient;->getStatus(Ljava/lang/String;Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;->val$position:[J

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void
.end method
