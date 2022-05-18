.class Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PrepareCallback;
.super Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;
.source "RemotePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrepareCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PrepareCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;)V
    .locals 0

    .line 398
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PrepareCallback;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 427
    invoke-super {p0, p1, p2, p3}, Landroidx/mediarouter/media/RemotePlaybackClient$ActionCallback;->onError(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 429
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PrepareCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p2, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;

    if-eqz p2, :cond_0

    .line 434
    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

    sget-object p2, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->ERROR:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    invoke-interface {p1, p2}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;->onUpdateState(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;)V

    .line 437
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PrepareCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p2, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    const/4 p3, 0x1

    invoke-interface {p2, p1, p3}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;->onError(Lcom/sonyericsson/music/common/Track;I)V

    .line 440
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PrepareCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;

    return-void
.end method

.method public onResult(Landroid/os/Bundle;Ljava/lang/String;Landroidx/mediarouter/media/MediaSessionStatus;Ljava/lang/String;Landroidx/mediarouter/media/MediaItemStatus;)V
    .locals 3

    .line 402
    invoke-super/range {p0 .. p5}, Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;->onResult(Landroid/os/Bundle;Ljava/lang/String;Landroidx/mediarouter/media/MediaSessionStatus;Ljava/lang/String;Landroidx/mediarouter/media/MediaItemStatus;)V

    .line 404
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PrepareCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;

    if-eqz p1, :cond_1

    .line 409
    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    .line 410
    invoke-virtual {p5}, Landroidx/mediarouter/media/MediaItemStatus;->getContentDuration()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 412
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->buildUpon()Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p1

    invoke-virtual {p5}, Landroidx/mediarouter/media/MediaItemStatus;->getContentDuration()J

    move-result-wide p2

    long-to-int p3, p2

    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->duration(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    .line 415
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PrepareCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    new-instance p3, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

    iget-object p5, p2, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;

    invoke-virtual {p5}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;->getMimeType()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p1, p5, p4}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;-><init>(Lcom/sonyericsson/music/common/Track;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p2, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mCurrentMediaItem:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

    .line 417
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PrepareCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p2, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mCurrentMediaItem:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;->onPrepared(Lcom/sonyericsson/music/common/Track;)V

    .line 419
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PrepareCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

    sget-object p2, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->STARTED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    invoke-interface {p1, p2}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;->onUpdateState(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;)V

    .line 421
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PrepareCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;

    :cond_1
    return-void
.end method
