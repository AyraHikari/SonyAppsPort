.class Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemoteStatusCallback;
.super Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;
.source "RemotePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemoteStatusCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;)V
    .locals 0

    .line 322
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemoteStatusCallback;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;)V

    return-void
.end method

.method private isPermissionDenied(Landroidx/mediarouter/media/MediaItemStatus;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 385
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaItemStatus;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "com.sonymobile.somcmediarouter.provider.dlna.intent.extra.DLNA_ERROR_CODE"

    const/4 v2, -0x1

    .line 388
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public onItemStatusChanged(Landroid/os/Bundle;Ljava/lang/String;Landroidx/mediarouter/media/MediaSessionStatus;Ljava/lang/String;Landroidx/mediarouter/media/MediaItemStatus;)V
    .locals 0

    .line 336
    invoke-super/range {p0 .. p5}, Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;->onItemStatusChanged(Landroid/os/Bundle;Ljava/lang/String;Landroidx/mediarouter/media/MediaSessionStatus;Ljava/lang/String;Landroidx/mediarouter/media/MediaItemStatus;)V

    .line 338
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemoteStatusCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mCurrentMediaItem:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

    if-eqz p1, :cond_3

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemoteStatusCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mCurrentMediaItem:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

    .line 339
    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;->getItemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 341
    invoke-virtual {p5}, Landroidx/mediarouter/media/MediaItemStatus;->getPlaybackState()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 360
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemoteStatusCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

    sget-object p2, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->PAUSED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    invoke-interface {p1, p2}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;->onUpdateState(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;)V

    goto :goto_0

    .line 355
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemoteStatusCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

    sget-object p2, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->STARTED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    invoke-interface {p1, p2}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;->onUpdateState(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;)V

    goto :goto_0

    .line 365
    :cond_0
    invoke-direct {p0, p5}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemoteStatusCallback;->isPermissionDenied(Landroidx/mediarouter/media/MediaItemStatus;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 366
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemoteStatusCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p2, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mCurrentMediaItem:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    const p3, 0xf4240

    invoke-interface {p2, p1, p3}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;->onError(Lcom/sonyericsson/music/common/Track;I)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemoteStatusCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p2, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mCurrentMediaItem:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;->onError(Lcom/sonyericsson/music/common/Track;I)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemoteStatusCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

    sget-object p2, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->COMPLETED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    invoke-interface {p1, p2}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;->onUpdateState(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;)V

    .line 350
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemoteStatusCallback;->this$0:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p2, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mCurrentMediaItem:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;->onCompletion(Lcom/sonyericsson/music/common/Track;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSessionChanged(Ljava/lang/String;)V
    .locals 0

    .line 330
    invoke-super {p0, p1}, Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;->onSessionChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onSessionStatusChanged(Landroid/os/Bundle;Ljava/lang/String;Landroidx/mediarouter/media/MediaSessionStatus;)V
    .locals 0

    .line 325
    invoke-super {p0, p1, p2, p3}, Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;->onSessionStatusChanged(Landroid/os/Bundle;Ljava/lang/String;Landroidx/mediarouter/media/MediaSessionStatus;)V

    return-void
.end method
