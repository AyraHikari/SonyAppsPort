.class Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$SessionCallback;
.super Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;
.source "RemotePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$SessionCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;)V
    .locals 0

    .line 444
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$SessionCallback;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 452
    invoke-super {p0, p1, p2, p3}, Landroidx/mediarouter/media/RemotePlaybackClient$ActionCallback;->onError(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 454
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$SessionCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mCurrentMediaItem:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

    if-eqz p1, :cond_0

    .line 455
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$SessionCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

    sget-object p2, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->ERROR:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    invoke-interface {p1, p2}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;->onUpdateState(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;)V

    .line 456
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$SessionCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p2, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mCurrentMediaItem:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    const/4 p3, 0x1

    invoke-interface {p2, p1, p3}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;->onError(Lcom/sonyericsson/music/common/Track;I)V

    :cond_0
    return-void
.end method

.method public onResult(Landroid/os/Bundle;Ljava/lang/String;Landroidx/mediarouter/media/MediaSessionStatus;)V
    .locals 0

    .line 447
    invoke-super {p0, p1, p2, p3}, Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;->onResult(Landroid/os/Bundle;Ljava/lang/String;Landroidx/mediarouter/media/MediaSessionStatus;)V

    return-void
.end method
