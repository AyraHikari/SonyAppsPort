.class Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$2;
.super Ljava/lang/Object;
.source "RemotePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->releaseRemoteClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$2;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$2;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->synchronousReleaseRemoteClient()V

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
