.class Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;
.super Lcom/sonyericsson/music/player/PlayerStateListener$PlayerStateAdapter;
.source "PlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/fullplayer/PlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-direct {p0}, Lcom/sonyericsson/music/player/PlayerStateListener$PlayerStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentTrackChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$300(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Lcom/sonyericsson/music/player/PlayerState;)V

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$400(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->swapState(Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method public onCurrentTrackColorChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$400(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->swapState(Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method public onIsInPlayQueueModeChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$400(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->swapState(Lcom/sonyericsson/music/player/PlayerState;)V

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$500(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Lcom/sonyericsson/music/player/PlayerState;)V

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$900(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method public onIsPlayingChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$000(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/ui/PlayPauseButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/ui/PlayPauseButton;->setPlaying(ZZ)V

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$100(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method public onLoadingStateChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getLoadingState()Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$200(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Lcom/sonyericsson/music/player/PlayerState$LoadingState;)V

    return-void
.end method

.method public onPlayQueueChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$400(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/fullplayer/MyArtPagerAdapter;->swapState(Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method public onPlaybackPositionChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$700(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$800(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/fullplayer/SeekHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getPlaybackPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/fullplayer/SeekHandler;->setPlaybackPosition(I)V

    :cond_0
    return-void
.end method

.method public onRepeatModeChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$500(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Lcom/sonyericsson/music/player/PlayerState;)V

    .line 164
    new-instance p1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRepeatModeTask;

    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRepeatModeTask;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRepeatModeTask;->run()V

    return-void
.end method

.method public onShuffleChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$1;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$600(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/fullplayer/ShuffleButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isShuffle()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/fullplayer/ShuffleButton;->setShuffleActive(Z)V

    return-void
.end method
