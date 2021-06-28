.class public interface abstract Lcom/sonyericsson/music/playerservice/PlayerService;
.super Ljava/lang/Object;
.source "PlayerService.java"


# virtual methods
.method public abstract getDuration()I
.end method

.method public abstract getPlayQueuePosition()I
.end method

.method public abstract getPlaybackPosition()I
.end method

.method public abstract getPlayerId()Ljava/lang/String;
.end method

.method public abstract getRepeatMode()I
.end method

.method public abstract getState()I
.end method

.method public abstract getTrackUri()Landroid/net/Uri;
.end method

.method public abstract init()V
.end method

.method public abstract next()V
.end method

.method public abstract onAudioFocusChange(I)V
.end method

.method public abstract open(Landroid/net/Uri;IIZ)V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playQueueUpdated(I)V
.end method

.method public abstract previous()V
.end method

.method public abstract release()V
.end method

.method public abstract setPlayQueuePosition(IZ)V
.end method

.method public abstract setPlaybackPosition(I)V
.end method

.method public abstract setPlayerId(Ljava/lang/String;)V
.end method

.method public abstract setRepeatMode(I)V
.end method

.method public abstract startWinding(Z)V
.end method

.method public abstract stopWinding()V
.end method
