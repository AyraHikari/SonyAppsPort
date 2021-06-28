.class Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;
.super Ljava/lang/Object;
.source "RemotePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->setPlaybackPos(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

.field final synthetic val$pos:J


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;J)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iput-wide p2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;->val$pos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClient:Landroidx/mediarouter/media/RemotePlaybackClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/mediarouter/media/RemotePlaybackClient;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mCurrentMediaItem:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mCurrentMediaItem:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

    .line 236
    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;->hasValidItemId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClient:Landroidx/mediarouter/media/RemotePlaybackClient;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mCurrentMediaItem:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;->getItemId()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;->val$pos:J

    const/4 v5, 0x0

    new-instance v6, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6$1;

    invoke-direct {v6, p0}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6$1;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;)V

    invoke-virtual/range {v1 .. v6}, Landroidx/mediarouter/media/RemotePlaybackClient;->seek(Ljava/lang/String;JLandroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;)V

    :cond_0
    return-void
.end method
