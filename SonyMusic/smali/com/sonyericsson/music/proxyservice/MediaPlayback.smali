.class public interface abstract Lcom/sonyericsson/music/proxyservice/MediaPlayback;
.super Ljava/lang/Object;
.source "MediaPlayback.java"


# virtual methods
.method public abstract enqueue(Landroid/net/Uri;IZ)V
.end method

.method public abstract enqueueTrack(Landroid/net/Uri;Landroid/net/Uri;IIZ)V
.end method

.method public abstract getPlaybackPosition()I
.end method

.method public abstract getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;
.end method

.method public abstract getTrack()Lcom/sonyericsson/music/common/Track;
.end method

.method public abstract loadPlayQueueIfEmpty()V
.end method

.method public abstract moveTrack(II)V
.end method

.method public abstract next()V
.end method

.method public abstract open(Landroid/net/Uri;IZ)V
.end method

.method public abstract open(Landroid/net/Uri;IZI)V
.end method

.method public abstract open(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract openSmartPlaylist(IIZ)V
.end method

.method public abstract pause()V
.end method

.method public abstract pause(J)V
.end method

.method public abstract play()V
.end method

.method public abstract prev()V
.end method

.method public abstract removeTrack(I)V
.end method

.method public abstract removeTracks(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setClearAudioEnabled(Z)V
.end method

.method public abstract setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public abstract setPersonalDataCollectionConsented(Z)V
.end method

.method public abstract setPlaybackPosition(I)V
.end method

.method public abstract setQueuePosition(IZ)V
.end method

.method public abstract setRepeatMode(I)V
.end method

.method public abstract setShuffle(Z)V
.end method

.method public abstract setStateListener(Lcom/sonyericsson/music/proxyservice/worker/MediaPlaybackStateListener;)V
.end method

.method public abstract setWifiAndMobileDataAccepted(Z)V
.end method

.method public abstract shuffleNext()V
.end method

.method public abstract startWinding(Z)V
.end method

.method public abstract stopWinding()V
.end method

.method public abstract updateMediaRouteAndScan()V
.end method
