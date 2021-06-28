.class public Lcom/sonymobile/music/audioplayer/MediaPlayerFactory;
.super Ljava/lang/Object;
.source "MediaPlayerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/music/audioplayer/MediaPlayerFactory$MediaPlayerCreator;
    }
.end annotation


# static fields
.field private static sCreator:Lcom/sonymobile/music/audioplayer/MediaPlayerFactory$MediaPlayerCreator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaPlayer(Lcom/sonymobile/music/audioplayer/Watchdog;)Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;
    .locals 1

    .line 34
    sget-object v0, Lcom/sonymobile/music/audioplayer/MediaPlayerFactory;->sCreator:Lcom/sonymobile/music/audioplayer/MediaPlayerFactory$MediaPlayerCreator;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    invoke-direct {v0, p0}, Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;-><init>(Lcom/sonymobile/music/audioplayer/Watchdog;)V

    return-object v0

    .line 37
    :cond_0
    invoke-interface {v0}, Lcom/sonymobile/music/audioplayer/MediaPlayerFactory$MediaPlayerCreator;->createMediaPlayer()Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static setMediaPlayerCreator(Lcom/sonymobile/music/audioplayer/MediaPlayerFactory$MediaPlayerCreator;)V
    .locals 0

    .line 41
    sput-object p0, Lcom/sonymobile/music/audioplayer/MediaPlayerFactory;->sCreator:Lcom/sonymobile/music/audioplayer/MediaPlayerFactory$MediaPlayerCreator;

    return-void
.end method
