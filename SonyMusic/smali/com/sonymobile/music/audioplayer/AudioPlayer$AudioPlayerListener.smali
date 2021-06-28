.class public interface abstract Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/music/audioplayer/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioPlayerListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Track::",
        "Lcom/sonymobile/music/audioplayer/BasicTrack;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/media/MediaPlayer$OnCompletionListener;",
        "Landroid/media/MediaPlayer$OnErrorListener;",
        "Landroid/media/MediaPlayer$OnInfoListener;",
        "Landroid/media/MediaPlayer$OnPreparedListener;",
        "Landroid/media/MediaPlayer$OnSeekCompleteListener;"
    }
.end annotation


# virtual methods
.method public abstract onDataSourceSet(Landroid/media/MediaPlayer;)V
.end method

.method public abstract onNextMediaPlayer(Lcom/sonymobile/music/audioplayer/BasicTrack;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTrack;I)V"
        }
    .end annotation
.end method

.method public abstract onPlayerStateChanged(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V
.end method
