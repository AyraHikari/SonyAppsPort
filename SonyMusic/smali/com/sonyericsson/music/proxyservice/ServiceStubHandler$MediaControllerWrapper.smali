.class Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;
.super Ljava/lang/Object;
.source "ServiceStubHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaControllerWrapper"
.end annotation


# instance fields
.field private final mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 0

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-void
.end method


# virtual methods
.method getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method next()V
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToNext()V

    :cond_0
    return-void
.end method

.method pause()V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    :cond_0
    return-void
.end method

.method play()V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    :cond_0
    return-void
.end method

.method playFromMediaId(Landroid/net/Uri;)V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 540
    invoke-static {p1, v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId;->build(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method prev()V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToPrevious()V

    :cond_0
    return-void
.end method

.method sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/media/session/MediaControllerCompat;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    :cond_0
    return-void
.end method

.method setPlayQueuePos(J)V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubHandler$MediaControllerWrapper;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToQueueItem(J)V

    :cond_0
    return-void
.end method
