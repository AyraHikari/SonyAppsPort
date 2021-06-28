.class public Lcom/sonyericsson/music/player/MediaPlaybackWrapper;
.super Ljava/lang/Object;
.source "MediaPlaybackWrapper.java"


# instance fields
.field private mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static incrementInteractionCount(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 383
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isPersonalDataCollectionCardDismissed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 386
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setInteractionCount(Landroid/content/Context;I)V

    goto :goto_0

    .line 388
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getInteractionCount(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 389
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setInteractionCount(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public enqueue(Landroid/net/Uri;IZ)V
    .locals 1

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->enqueue(Landroid/net/Uri;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public enqueueTrack(Landroid/net/Uri;Landroid/net/Uri;IIZ)V
    .locals 7

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->enqueueTrack(Landroid/net/Uri;Landroid/net/Uri;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getPlaybackPosition()I
    .locals 1

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->getPlaybackPosition()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;
    .locals 1

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 351
    :catch_0
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public isServiceSet()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadPlayQueueIfEmpty()V
    .locals 1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->loadPlayQueueIfEmpty()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public moveTrack(II)V
    .locals 1

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->moveTrack(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public next()V
    .locals 1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->next()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public open(Landroid/content/Context;Landroid/net/Uri;IZ)V
    .locals 1

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0, p2, p3, p4}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->open(Landroid/net/Uri;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->incrementInteractionCount(Landroid/content/Context;)V

    return-void
.end method

.method public open(Landroid/content/Context;Landroid/net/Uri;IZI)V
    .locals 1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->openWithSourcePos(Landroid/net/Uri;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :catch_0
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->incrementInteractionCount(Landroid/content/Context;)V

    return-void
.end method

.method public open(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->openWithMetadata(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :catch_0
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->incrementInteractionCount(Landroid/content/Context;)V

    return-void
.end method

.method public openSmartPlaylist(Landroid/content/Context;IIZ)V
    .locals 1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0, p2, p3, p4}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->openSmartPlaylist(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->incrementInteractionCount(Landroid/content/Context;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public pauseDelayed(J)V
    .locals 1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->pauseDelayed(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public prev()V
    .locals 1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->prev()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public removeTrack(I)V
    .locals 1

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->removeTrack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public removeTracks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->removeTracks(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setClearAudioEnabled(Z)V
    .locals 1

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setClearAudioEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setMediaPlayback(Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    return-void
.end method

.method public setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setPlaybackPosition(I)V
    .locals 1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setPlaybackPosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setQueuePosition(Landroid/content/Context;IZ)V
    .locals 1

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0, p2, p3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setQueuePosition(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :catch_0
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->incrementInteractionCount(Landroid/content/Context;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setRepeatMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setShuffle(Z)V
    .locals 1

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setShuffle(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public shuffleNext()V
    .locals 1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->shuffleNext()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public startWinding(Z)V
    .locals 1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->startWinding(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public stopWinding()V
    .locals 1

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->stopWinding()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public upateMediaRouteAndScan()V
    .locals 1

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->updateMediaRouteAndScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
