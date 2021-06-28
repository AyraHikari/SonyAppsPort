.class public Lcom/sonymobile/music/audioplayer/AudioPlayer$Factory;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/music/audioplayer/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static sAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/music/audioplayer/AudioPlayer<",
            "+",
            "Lcom/sonymobile/music/audioplayer/BasicTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newAudioPlayer(Landroid/content/Context;Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;Lcom/sonymobile/music/audioplayer/Watchdog$WatchDogListener;)Lcom/sonymobile/music/audioplayer/AudioPlayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Track::",
            "Lcom/sonymobile/music/audioplayer/BasicTrack;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener<",
            "TTrack;>;",
            "Lcom/sonymobile/music/audioplayer/Watchdog$WatchDogListener;",
            ")",
            "Lcom/sonymobile/music/audioplayer/AudioPlayer<",
            "TTrack;>;"
        }
    .end annotation

    .line 94
    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$Factory;->sAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/music/audioplayer/AudioPlayer;-><init>(Landroid/content/Context;Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;Lcom/sonymobile/music/audioplayer/Watchdog$WatchDogListener;)V

    .line 97
    invoke-static {v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->access$000(Lcom/sonymobile/music/audioplayer/AudioPlayer;)V

    .line 99
    :cond_0
    invoke-static {v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->access$100(Lcom/sonymobile/music/audioplayer/AudioPlayer;)Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    move-result-object p0

    iget-object p0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-static {v0, p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->access$200(Lcom/sonymobile/music/audioplayer/AudioPlayer;Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V

    return-object v0
.end method

.method public static setAudioPlayer(Lcom/sonymobile/music/audioplayer/AudioPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Track::",
            "Lcom/sonymobile/music/audioplayer/BasicTrack;",
            ">(",
            "Lcom/sonymobile/music/audioplayer/AudioPlayer<",
            "TTrack;>;)V"
        }
    .end annotation

    .line 104
    sput-object p0, Lcom/sonymobile/music/audioplayer/AudioPlayer$Factory;->sAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    return-void
.end method
