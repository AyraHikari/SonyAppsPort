.class public interface abstract Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;
.super Ljava/lang/Object;
.source "MediaSessionCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaSessionCallbackListener"
.end annotation


# virtual methods
.method public abstract onPause()V
.end method

.method public abstract onPlay()V
.end method

.method public abstract onPlayContent(Landroid/net/Uri;IZ)V
.end method

.method public abstract onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onSeekTo(J)V
.end method

.method public abstract onSetPlayQueuePosition(IZ)V
.end method

.method public abstract onShuffleNext()V
.end method

.method public abstract onSkipToNext()V
.end method

.method public abstract onSkipToPrevious()V
.end method

.method public abstract onStartWinding(Z)V
.end method

.method public abstract onStop()V
.end method

.method public abstract onStopWinding()V
.end method
