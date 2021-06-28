.class public Lcom/sonyericsson/music/player/PlayerStateObservable;
.super Landroid/database/Observable;
.source "PlayerStateObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable<",
        "Lcom/sonyericsson/music/player/PlayerStateListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchCurrentTrackChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 26
    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/player/PlayerStateListener;

    .line 27
    invoke-interface {v1, p1}, Lcom/sonyericsson/music/player/PlayerStateListener;->onCurrentTrackChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchCurrentTrackColorChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 32
    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/player/PlayerStateListener;

    .line 33
    invoke-interface {v1, p1}, Lcom/sonyericsson/music/player/PlayerStateListener;->onCurrentTrackColorChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchDelayedPauseEndMillisChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 68
    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/player/PlayerStateListener;

    .line 69
    invoke-interface {v1, p1}, Lcom/sonyericsson/music/player/PlayerStateListener;->onDelayedPauseEndMillisChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchIsInPlayQueueModeChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 56
    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/player/PlayerStateListener;

    .line 57
    invoke-interface {v1, p1}, Lcom/sonyericsson/music/player/PlayerStateListener;->onIsInPlayQueueModeChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchIsPlayingChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 14
    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/player/PlayerStateListener;

    .line 15
    invoke-interface {v1, p1}, Lcom/sonyericsson/music/player/PlayerStateListener;->onIsPlayingChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchLoadingStateChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 20
    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/player/PlayerStateListener;

    .line 21
    invoke-interface {v1, p1}, Lcom/sonyericsson/music/player/PlayerStateListener;->onLoadingStateChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchPlayQueueChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 62
    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/player/PlayerStateListener;

    .line 63
    invoke-interface {v1, p1}, Lcom/sonyericsson/music/player/PlayerStateListener;->onPlayQueueChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchPlaybackPositionChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 50
    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/player/PlayerStateListener;

    .line 51
    invoke-interface {v1, p1}, Lcom/sonyericsson/music/player/PlayerStateListener;->onPlaybackPositionChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchRepeatModeChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 38
    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/player/PlayerStateListener;

    .line 39
    invoke-interface {v1, p1}, Lcom/sonyericsson/music/player/PlayerStateListener;->onRepeatModeChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchRouteIdChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 74
    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/player/PlayerStateListener;

    .line 75
    invoke-interface {v1, p1}, Lcom/sonyericsson/music/player/PlayerStateListener;->onRouteIdChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchShuffleChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 44
    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/player/PlayerStateListener;

    .line 45
    invoke-interface {v1, p1}, Lcom/sonyericsson/music/player/PlayerStateListener;->onShuffleChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unregisterAll()V
    .locals 0

    .line 84
    invoke-super {p0}, Landroid/database/Observable;->unregisterAll()V

    return-void
.end method
