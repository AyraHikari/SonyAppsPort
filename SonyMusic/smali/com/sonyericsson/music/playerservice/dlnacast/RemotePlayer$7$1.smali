.class Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7$1;
.super Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;
.source "RemotePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7$1;->this$1:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;

    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    .line 295
    invoke-super {p0, p1, p2, p3}, Landroidx/mediarouter/media/RemotePlaybackClient$ActionCallback;->onError(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 297
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7$1;->this$1:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;

    iget-object p2, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;->val$position:[J

    const/4 p3, 0x0

    const-wide/16 v0, -0x1

    aput-wide v0, p2, p3

    .line 299
    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onResult(Landroid/os/Bundle;Ljava/lang/String;Landroidx/mediarouter/media/MediaSessionStatus;Ljava/lang/String;Landroidx/mediarouter/media/MediaItemStatus;)V
    .locals 0

    .line 286
    invoke-super/range {p0 .. p5}, Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;->onResult(Landroid/os/Bundle;Ljava/lang/String;Landroidx/mediarouter/media/MediaSessionStatus;Ljava/lang/String;Landroidx/mediarouter/media/MediaItemStatus;)V

    .line 288
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7$1;->this$1:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;->val$position:[J

    invoke-virtual {p5}, Landroidx/mediarouter/media/MediaItemStatus;->getContentPosition()J

    move-result-wide p2

    const/4 p4, 0x0

    aput-wide p2, p1, p4

    .line 290
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7$1;->this$1:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
