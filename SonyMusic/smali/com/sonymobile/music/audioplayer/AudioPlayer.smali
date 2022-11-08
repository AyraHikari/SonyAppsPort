.class public Lcom/sonymobile/music/audioplayer/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/music/audioplayer/AudioPlayer$Factory;,
        Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;,
        Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerException;,
        Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;,
        Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;
    }
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


# static fields
.field static final SUPPORT_SDK_S_API:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mAudioPlayerListener:Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener<",
            "TTrack;>;"
        }
    .end annotation
.end field

.field private mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

.field private mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

.field private mNextTrack:Lcom/sonymobile/music/audioplayer/BasicTrack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTrack;"
        }
    .end annotation
.end field

.field private final mWatchdog:Lcom/sonymobile/music/audioplayer/Watchdog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->SUPPORT_SDK_S_API:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;Lcom/sonymobile/music/audioplayer/Watchdog$WatchDogListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener<",
            "TTrack;>;",
            "Lcom/sonymobile/music/audioplayer/Watchdog$WatchDogListener;",
            ")V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    invoke-direct {v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    .line 56
    new-instance v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    invoke-direct {v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    if-eqz p2, :cond_0

    .line 118
    iput-object p2, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mAudioPlayerListener:Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;

    .line 120
    new-instance p2, Lcom/sonymobile/music/audioplayer/Watchdog;

    const-string v0, "audioplayer"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1, p3}, Lcom/sonymobile/music/audioplayer/Watchdog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Thread;Lcom/sonymobile/music/audioplayer/Watchdog$WatchDogListener;)V

    iput-object p2, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mWatchdog:Lcom/sonymobile/music/audioplayer/Watchdog;

    .line 122
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->createCurrentMp()V

    return-void

    .line 115
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Listener must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/sonymobile/music/audioplayer/AudioPlayer;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/music/audioplayer/AudioPlayer;)Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/music/audioplayer/AudioPlayer;Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->updateCurrentState(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V

    return-void
.end method

.method private clearNextMediaPlayer(Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 215
    iget-boolean v0, p1, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mHasNextMediaPlayer:Z

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p1, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    .line 217
    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->IDLE:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->END:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->ERROR:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_0

    .line 218
    iget-object v0, p1, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 220
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    :cond_0
    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p1, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mHasNextMediaPlayer:Z

    :cond_1
    return-void
.end method

.method private createCurrentMp()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    invoke-static {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->initNewMediaPlayer(Lcom/sonymobile/music/audioplayer/AudioPlayer;)Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    move-result-object v1

    iput-object v1, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    .line 156
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->IDLE:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    iput-object v1, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    return-void
.end method

.method private createNextMp()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    invoke-static {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->initNewMediaPlayer(Lcom/sonymobile/music/audioplayer/AudioPlayer;)Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    move-result-object v1

    iput-object v1, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    .line 161
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->IDLE:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    iput-object v1, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    return-void
.end method

.method private init()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mWatchdog:Lcom/sonymobile/music/audioplayer/Watchdog;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private static initNewMediaPlayer(Lcom/sonymobile/music/audioplayer/AudioPlayer;)Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Track::",
            "Lcom/sonymobile/music/audioplayer/BasicTrack;",
            ">(",
            "Lcom/sonymobile/music/audioplayer/AudioPlayer<",
            "TTrack;>;)",
            "Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mWatchdog:Lcom/sonymobile/music/audioplayer/Watchdog;

    invoke-static {v0}, Lcom/sonymobile/music/audioplayer/MediaPlayerFactory;->getMediaPlayer(Lcom/sonymobile/music/audioplayer/Watchdog;)Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    move-result-object v0

    .line 167
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 168
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 169
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 170
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 171
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    return-object v0
.end method

.method private releaseCurrentMp()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    invoke-direct {p0, v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->clearNextMediaPlayer(Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;)V

    .line 177
    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->END:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-direct {p0, v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->updateCurrentState(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V

    .line 178
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 180
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 181
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 182
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 183
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 184
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 185
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 186
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iput-object v1, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    :cond_0
    return-void
.end method

.method private releaseNextMp()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    invoke-direct {p0, v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->clearNextMediaPlayer(Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;)V

    .line 192
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->END:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    iput-object v1, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    const/4 v1, 0x0

    .line 193
    iput-object v1, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNextTrack:Lcom/sonymobile/music/audioplayer/BasicTrack;

    .line 194
    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 197
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 198
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 199
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 200
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 201
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 202
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iput-object v1, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    :cond_0
    return-void
.end method

.method private setDataSourceAndMode(Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaPlayer;",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    sget-boolean v0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->SUPPORT_SDK_S_API:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    .line 130
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v0

    if-lez v0, :cond_1

    .line 132
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    :cond_1
    if-eqz p4, :cond_2

    .line 140
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 145
    :goto_0
    iget-object p2, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mAudioPlayerListener:Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;

    invoke-interface {p2, p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;->onDataSourceSet(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private switchMediaPlayerInternal()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    .line 229
    iget-object v1, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iput-object v1, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    .line 230
    iput-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    .line 231
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-direct {p0, v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->updateCurrentState(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V

    return-void
.end method

.method private updateCurrentState(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iput-object p1, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    .line 236
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mAudioPlayerListener:Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;

    invoke-interface {v0, p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;->onPlayerStateChanged(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V

    return-void
.end method


# virtual methods
.method public cancelNext()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARING:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->releaseNextMp()V

    goto :goto_0

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    invoke-direct {p0, v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->clearNextMediaPlayer(Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;)V

    .line 392
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-eqz v0, :cond_1

    .line 393
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;->reset()V

    .line 394
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->IDLE:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    iput-object v1, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    const/4 v1, 0x0

    .line 395
    iput-boolean v1, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mHasNextMediaPlayer:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getAudioSessionId()I
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0

    .line 419
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current MediaPlayer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    .line 481
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current MediaPlayer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDuration()I
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    .line 473
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current MediaPlayer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextPreparedTrack()Lcom/sonymobile/music/audioplayer/BasicTrack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTrack;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNextTrack:Lcom/sonymobile/music/audioplayer/BasicTrack;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasPlayer()Z
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    .line 501
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current MediaPlayer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-ne p1, v0, :cond_1

    .line 513
    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->COMPLETED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-direct {p0, v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->updateCurrentState(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V

    .line 514
    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$1;->$SwitchMap$com$sonymobile$music$audioplayer$AudioPlayer$PlayerState:[I

    iget-object v1, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v1, v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 528
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->releaseNextMp()V

    .line 529
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mAudioPlayerListener:Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    .line 518
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->switchMediaPlayerInternal()V

    .line 522
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mAudioPlayerListener:Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;

    iget-object v1, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNextTrack:Lcom/sonymobile/music/audioplayer/BasicTrack;

    invoke-interface {v0, v1, p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;->onNextMediaPlayer(Lcom/sonymobile/music/audioplayer/BasicTrack;I)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 537
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onCompletion for mp != mCurr.mMediaPlayer is not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v1, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-ne p1, v1, :cond_1

    .line 545
    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->ERROR:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->releaseNextMp()V

    .line 547
    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->ERROR:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-direct {p0, v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->updateCurrentState(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V

    .line 548
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mAudioPlayerListener:Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 553
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    sget-object p2, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->ERROR:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    iput-object p2, p1, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    .line 554
    invoke-direct {p0, v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->clearNextMediaPlayer(Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;)V

    .line 555
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->releaseNextMp()V

    const/4 p1, 0x0

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-ne p1, v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mAudioPlayerListener:Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v1, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-ne p1, v1, :cond_3

    .line 563
    iget-object v1, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v2, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARING:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v2, v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v3, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->END:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v2, v3, :cond_1

    .line 564
    sget-object v2, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    iput-object v2, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    .line 566
    :try_start_0
    iget-object v0, v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 567
    iget-object p1, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mHasNextMediaPlayer:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 569
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->releaseNextMp()V

    .line 571
    sget-object v0, Lcom/sonymobile/music/audioplayer/Debug;->DEBUG:Lcom/sonymobile/music/audioplayer/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not call setNextMediaPlayer. curr state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v3, v3, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Exception. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/music/debug/DebugBase;->logW(Ljava/lang/Class;Ljava/lang/String;)V

    .line 575
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 576
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not call setNextMediaPlayer. curr state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v2, v2, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Exception. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->releaseNextMp()V

    .line 583
    sget-object p1, Lcom/sonymobile/music/audioplayer/Debug;->DEBUG:Lcom/sonymobile/music/audioplayer/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not call setNextMediaPlayer. curr state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v2, v2, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; next state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v2, v2, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;->logW(Ljava/lang/Class;Ljava/lang/String;)V

    .line 587
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "eng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "userdebug"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 588
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared is called when in wrong state. curr state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v1, v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; next state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v1, v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 593
    :cond_3
    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-direct {p0, v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->updateCurrentState(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V

    .line 594
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mAudioPlayerListener:Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :goto_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-ne p1, v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mAudioPlayerListener:Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PAUSED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-direct {p0, v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->updateCurrentState(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V

    .line 435
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;->pause()V

    return-void

    .line 437
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current MediaPlayer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareCurrent(Landroid/content/Context;Landroid/net/Uri;ZLjava/util/Map;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerException;
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 247
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-nez v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->createCurrentMp()V

    .line 250
    :cond_0
    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARING:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-direct {p0, v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->updateCurrentState(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V

    .line 252
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    .line 254
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->releaseNextMp()V

    .line 257
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->setDataSourceAndMode(Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x1

    if-eqz p3, :cond_1

    .line 263
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "setLowPowerAudio"

    new-array p4, p1, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, p4, v2

    invoke-virtual {p2, p3, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 265
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 266
    new-array p3, p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 277
    :catch_0
    :cond_1
    :try_start_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_2

    .line 278
    new-instance p2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 p3, 0x2

    .line 279
    invoke-virtual {p2, p3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    .line 280
    invoke-virtual {p2, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 278
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    .line 282
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 284
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 295
    sget-object p2, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->ERROR:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-direct {p0, p2}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->updateCurrentState(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V

    .line 296
    new-instance p2, Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerException;

    invoke-direct {p2, p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p1

    .line 292
    sget-object p2, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->ERROR:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-direct {p0, p2}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->updateCurrentState(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V

    .line 293
    new-instance p2, Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerException;

    invoke-direct {p2, p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p1

    .line 289
    sget-object p2, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->ERROR:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-direct {p0, p2}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->updateCurrentState(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V

    .line 290
    new-instance p2, Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerException;

    invoke-direct {p2, p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_4
    move-exception p1

    .line 286
    sget-object p2, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->ERROR:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-direct {p0, p2}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->updateCurrentState(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V

    .line 287
    new-instance p2, Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerException;

    invoke-direct {p2, p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerException;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 243
    :cond_3
    sget-object p1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->ERROR:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-direct {p0, p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->updateCurrentState(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V

    .line 244
    new-instance p1, Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerException;

    new-instance p2, Ljava/io/IOException;

    const-string p3, "Track Uri is null"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public prepareNext(Landroid/content/Context;Lcom/sonymobile/music/audioplayer/BasicTrack;Landroid/net/Uri;ZLjava/util/Map;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TTrack;",
            "Landroid/net/Uri;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->ERROR:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq v0, v1, :cond_5

    .line 309
    :try_start_0
    iput-object p2, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNextTrack:Lcom/sonymobile/music/audioplayer/BasicTrack;

    .line 311
    iget-object p2, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object p2, p2, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->END:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object p2, p2, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-nez p2, :cond_1

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->createNextMp()V

    :cond_1
    if-eqz p3, :cond_5

    .line 318
    iget-object p2, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object p2, p2, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    .line 319
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->IDLE:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne v0, v1, :cond_2

    .line 322
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARING:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    iput-object v1, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    .line 325
    invoke-direct {p0, p2, p1, p3, p5}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->setDataSourceAndMode(Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x1

    if-eqz p4, :cond_3

    .line 333
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string p4, "setLowPowerAudio"

    new-array p5, p1, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object v0, p5, v1

    invoke-virtual {p3, p4, p5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 335
    invoke-virtual {p3, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 336
    new-array p4, p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    aput-object p5, p4, v1

    invoke-virtual {p3, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 347
    :catch_0
    :cond_3
    :try_start_2
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-lt p3, p4, :cond_4

    .line 348
    new-instance p3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 p4, 0x2

    .line 349
    invoke-virtual {p3, p4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p3

    .line 350
    invoke-virtual {p3, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 348
    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    .line 352
    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 354
    :goto_0
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 363
    :catch_1
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->releaseNextMp()V

    goto :goto_1

    .line 361
    :catch_2
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->releaseNextMp()V

    goto :goto_1

    .line 359
    :catch_3
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->releaseNextMp()V

    goto :goto_1

    .line 357
    :catch_4
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->releaseNextMp()V

    :cond_5
    :goto_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 453
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->releaseCurrentMp()V

    .line 454
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->releaseNextMp()V

    .line 456
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mWatchdog:Lcom/sonymobile/music/audioplayer/Watchdog;

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/Watchdog;->halt()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-eqz v0, :cond_0

    .line 443
    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->IDLE:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-direct {p0, v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->updateCurrentState(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V

    .line 444
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;->reset()V

    .line 445
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mHasNextMediaPlayer:Z

    .line 449
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->releaseNextMp()V

    return-void

    .line 447
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current MediaPlayer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seekTo(I)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void

    .line 465
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Current MediaPlayer must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVolume(FF)V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 492
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void

    .line 489
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Current MediaPlayer must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    if-eqz v0, :cond_0

    .line 425
    sget-object v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->STARTED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    invoke-direct {p0, v0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->updateCurrentState(Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;)V

    .line 426
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    invoke-virtual {v0}, Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;->start()V

    return-void

    .line 428
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current MediaPlayer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public switchMediaPlayer()Z
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNext:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v0, v0, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mState:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    sget-object v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;->PREPARED:Lcom/sonymobile/music/audioplayer/AudioPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->switchMediaPlayerInternal()V

    .line 406
    invoke-direct {p0}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->releaseNextMp()V

    .line 409
    iget-object v0, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mAudioPlayerListener:Lcom/sonymobile/music/audioplayer/AudioPlayer$AudioPlayerListener;

    iget-object v1, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mCurr:Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;

    iget-object v1, v1, Lcom/sonymobile/music/audioplayer/AudioPlayer$MediaPlayerHolder;->mMediaPlayer:Lcom/sonymobile/music/audioplayer/WatchedMediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateNext(Lcom/sonymobile/music/audioplayer/BasicTrack;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTrack;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNextTrack:Lcom/sonymobile/music/audioplayer/BasicTrack;

    invoke-interface {p1, v1, v0}, Lcom/sonymobile/music/audioplayer/BasicTrack;->isSame(Lcom/sonymobile/music/audioplayer/BasicTrack;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iput-object p1, p0, Lcom/sonymobile/music/audioplayer/AudioPlayer;->mNextTrack:Lcom/sonymobile/music/audioplayer/BasicTrack;

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
