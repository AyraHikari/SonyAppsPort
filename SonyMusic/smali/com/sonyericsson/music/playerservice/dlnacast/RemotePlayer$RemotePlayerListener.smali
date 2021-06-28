.class interface abstract Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;
.super Ljava/lang/Object;
.source "RemotePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RemotePlayerListener"
.end annotation


# virtual methods
.method public abstract onCompletion(Lcom/sonyericsson/music/common/Track;)V
.end method

.method public abstract onError(Lcom/sonyericsson/music/common/Track;I)V
.end method

.method public abstract onPlaybackPositionUpdate()V
.end method

.method public abstract onPrepared(Lcom/sonyericsson/music/common/Track;)V
.end method

.method public abstract onUpdateState(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;)V
.end method
