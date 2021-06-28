.class Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6$1;
.super Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;
.source "RemotePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6$1;->this$1:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;

    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 252
    invoke-super {p0, p1, p2, p3}, Landroidx/mediarouter/media/RemotePlaybackClient$ActionCallback;->onError(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 254
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6$1;->this$1:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

    invoke-interface {p1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;->onPlaybackPositionUpdate()V

    return-void
.end method

.method public onResult(Landroid/os/Bundle;Ljava/lang/String;Landroidx/mediarouter/media/MediaSessionStatus;Ljava/lang/String;Landroidx/mediarouter/media/MediaItemStatus;)V
    .locals 0

    .line 244
    invoke-super/range {p0 .. p5}, Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;->onResult(Landroid/os/Bundle;Ljava/lang/String;Landroidx/mediarouter/media/MediaSessionStatus;Ljava/lang/String;Landroidx/mediarouter/media/MediaItemStatus;)V

    .line 247
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6$1;->this$1:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

    invoke-interface {p1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;->onPlaybackPositionUpdate()V

    return-void
.end method
