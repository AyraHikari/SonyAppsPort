.class Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/music/audioplayer/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaPlayerHolder"
.end annotation


# instance fields
.field mHasNextMediaPlayer:Z

.field mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

.field mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->IDLE:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    iput-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mHasNextMediaPlayer:Z

    return-void
.end method
