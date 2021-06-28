.class Lcom/sonyericsson/music/MiniPlayerFragment$1;
.super Lcom/sonyericsson/music/player/PlayerStateListener$PlayerStateAdapter;
.source "MiniPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/MiniPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MiniPlayerFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MiniPlayerFragment;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$1;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-direct {p0}, Lcom/sonyericsson/music/player/PlayerStateListener$PlayerStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentTrackChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$1;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$300(Lcom/sonyericsson/music/MiniPlayerFragment;Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method public onDelayedPauseEndMillisChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 4

    .line 132
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getDelayedPauseEndMillis()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$1;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/sonyericsson/music/MiniPlayerFragment$1;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v2}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$600(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v2

    .line 134
    invoke-virtual {p1, v0, v1, v2}, Lcom/sonyericsson/music/MiniPlayerFragment;->setTimer(JLcom/sonyericsson/music/player/PlayerController;)V

    .line 136
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$1;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->showTimerBanner()V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$1;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->hideTimerBanner()V

    .line 139
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$1;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->cancelTimer()V

    :goto_0
    return-void
.end method

.method public onIsPlayingChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$1;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$000(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/ui/PlayPauseButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/ui/PlayPauseButton;->setPlaying(ZZ)V

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$1;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$100(Lcom/sonyericsson/music/MiniPlayerFragment;Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method public onLoadingStateChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$1;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getLoadingState()Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->IDLE:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$200(Lcom/sonyericsson/music/MiniPlayerFragment;Z)V

    return-void
.end method

.method public onPlaybackPositionChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$1;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$400(Lcom/sonyericsson/music/MiniPlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$1;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$500(Lcom/sonyericsson/music/MiniPlayerFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getPlaybackPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
