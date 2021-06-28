.class public interface abstract Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;
.super Ljava/lang/Object;
.source "DlnaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DlnaPlayerCallback"
.end annotation


# virtual methods
.method public abstract onPlayerBuffering()V
.end method

.method public abstract onPlayerConnected(Ljava/lang/String;)V
.end method

.method public abstract onPlayerDisconnected(Ljava/lang/String;)V
.end method

.method public abstract onPlayerError(Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract onPlayerIdled(ZZ)V
.end method

.method public abstract onPlayerOpened(Ljava/lang/String;)V
.end method

.method public abstract onPlayerPaused()V
.end method

.method public abstract onPlayerPlaying(Ljava/lang/String;)V
.end method

.method public abstract onPlayerReceivePlaybackInfo()V
.end method

.method public abstract onPlayerReleased()V
.end method

.method public abstract onPlayerSkipped()V
.end method

.method public abstract onPlayerUpdatePosition()V
.end method

.method public abstract onPlayerVolumeUpdate(I)V
.end method
