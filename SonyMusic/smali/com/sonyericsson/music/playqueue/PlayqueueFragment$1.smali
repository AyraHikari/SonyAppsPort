.class Lcom/sonyericsson/music/playqueue/PlayqueueFragment$1;
.super Lcom/sonyericsson/music/player/PlayerStateListener$PlayerStateAdapter;
.source "PlayqueueFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/PlayqueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playqueue/PlayqueueFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playqueue/PlayqueueFragment;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$1;->this$0:Lcom/sonyericsson/music/playqueue/PlayqueueFragment;

    invoke-direct {p0}, Lcom/sonyericsson/music/player/PlayerStateListener$PlayerStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentTrackChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$1;->this$0:Lcom/sonyericsson/music/playqueue/PlayqueueFragment;

    iget-object v0, v0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->onTrackChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method public onIsInPlayQueueModeChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$1;->this$0:Lcom/sonyericsson/music/playqueue/PlayqueueFragment;

    iget-object v0, v0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->onPlayQueueModeChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method public onIsPlayingChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$1;->this$0:Lcom/sonyericsson/music/playqueue/PlayqueueFragment;

    iget-object v0, v0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->onPlayingStateChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method public onLoadingStateChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$1;->this$0:Lcom/sonyericsson/music/playqueue/PlayqueueFragment;

    iget-object v0, v0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->onLoadingStateChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method

.method public onPlayQueueChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$1;->this$0:Lcom/sonyericsson/music/playqueue/PlayqueueFragment;

    iget-object v0, v0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;->mAdapter:Lcom/sonyericsson/music/library/LibraryListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/playqueue/PlayqueueAdapter;->onPlayQueueChanged(Lcom/sonyericsson/music/player/PlayerState;)V

    return-void
.end method
