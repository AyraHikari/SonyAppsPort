.class Lcom/sonyericsson/music/fullplayer/PlayerFragment$10;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Lcom/sonyericsson/music/fullplayer/SeekHandler$OnSeekListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/fullplayer/PlayerFragment;->setupPlayerView(Landroid/view/ViewGroup;)V
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

    .line 807
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$10;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetPosition(I)V
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$10;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$2600(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/player/PlayerController;->setPlaybackPosition(I)V

    :cond_0
    return-void
.end method

.method public onStartWinding(Z)V
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$10;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$2600(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/player/PlayerController;->startWinding(Z)V

    :cond_0
    return-void
.end method

.method public onStopWinding()V
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$10;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$2600(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerController;->stopWinding()V

    :cond_0
    return-void
.end method
