.class public interface abstract Lcom/sonyericsson/music/player/PlayerStateListener;
.super Ljava/lang/Object;
.source "PlayerStateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/player/PlayerStateListener$PlayerStateAdapter;
    }
.end annotation


# virtual methods
.method public abstract onCurrentTrackChanged(Lcom/sonyericsson/music/player/PlayerState;)V
.end method

.method public abstract onCurrentTrackColorChanged(Lcom/sonyericsson/music/player/PlayerState;)V
.end method

.method public abstract onDelayedPauseEndMillisChanged(Lcom/sonyericsson/music/player/PlayerState;)V
.end method

.method public abstract onIsInPlayQueueModeChanged(Lcom/sonyericsson/music/player/PlayerState;)V
.end method

.method public abstract onIsPlayingChanged(Lcom/sonyericsson/music/player/PlayerState;)V
.end method

.method public abstract onLoadingStateChanged(Lcom/sonyericsson/music/player/PlayerState;)V
.end method

.method public abstract onPlayQueueChanged(Lcom/sonyericsson/music/player/PlayerState;)V
.end method

.method public abstract onPlaybackPositionChanged(Lcom/sonyericsson/music/player/PlayerState;)V
.end method

.method public abstract onRepeatModeChanged(Lcom/sonyericsson/music/player/PlayerState;)V
.end method

.method public abstract onRouteIdChanged(Lcom/sonyericsson/music/player/PlayerState;)V
.end method

.method public abstract onShuffleChanged(Lcom/sonyericsson/music/player/PlayerState;)V
.end method
