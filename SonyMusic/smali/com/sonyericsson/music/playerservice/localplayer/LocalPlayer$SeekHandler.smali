.class Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;
.super Landroid/os/Handler;
.source "LocalPlayer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeekHandler"
.end annotation


# static fields
.field private static final SEEK_AMOUNT:I = 0x1388

.field private static final SEEK_DELAY:I = 0x1f4

.field static final SEEK_SAFETY_MARGIN:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;)V
    .locals 0

    .line 1692
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private internalSeek(I)Z
    .locals 4

    .line 1734
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object v1, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 1735
    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getPlaybackPosition()I

    move-result v0

    .line 1736
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getDuration()I

    move-result v1

    add-int/2addr p1, v0

    add-int/lit16 v0, p1, 0x3e8

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 1747
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1753
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->pause()V

    .line 1754
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iput-boolean v2, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mStartPlayingAfterWinding:Z

    goto :goto_0

    .line 1756
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iput-boolean v3, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mStartPlayingAfterWinding:Z

    .line 1760
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->setPlaybackPosition(I)V

    return v3

    :cond_1
    if-gtz p1, :cond_3

    .line 1772
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1778
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-object p1, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mAudioPlayer:Lcom/sonymobile/music/audioplayer/AudioPlayer;

    invoke-virtual {p1}, Lcom/sonymobile/music/audioplayer/AudioPlayer;->pause()V

    .line 1779
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iput-boolean v2, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mStartPlayingAfterWinding:Z

    goto :goto_1

    .line 1781
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iput-boolean v3, p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mStartPlayingAfterWinding:Z

    .line 1784
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {p1, v3}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->setPlaybackPosition(I)V

    return v3

    .line 1793
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->setPlaybackPosition(I)V

    :cond_4
    return v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1707
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    iget-boolean v0, v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->mWinding:Z

    if-eqz v0, :cond_1

    .line 1708
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x1f4

    const/16 v2, 0x14

    if-ne p1, v2, :cond_0

    const/16 p1, -0x1388

    .line 1709
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->internalSeek(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1712
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {p1, v2, v0, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->postNextSeek(IJ)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    const/16 p1, 0x1388

    .line 1715
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->internalSeek(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1718
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer$SeekHandler;->this$0:Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {p1, v2, v0, v1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->postNextSeek(IJ)V

    :cond_1
    :goto_0
    return-void
.end method
