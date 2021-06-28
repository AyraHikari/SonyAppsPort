.class Lcom/sonyericsson/music/player/PlayerController$3;
.super Landroid/content/BroadcastReceiver;
.source "PlayerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/player/PlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/player/PlayerController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/player/PlayerController;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/sonyericsson/music/player/PlayerController$3;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController$3;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    invoke-static {v0}, Lcom/sonyericsson/music/player/PlayerController;->access$100(Lcom/sonyericsson/music/player/PlayerController;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerController$3;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    invoke-static {v0}, Lcom/sonyericsson/music/player/PlayerController;->access$200(Lcom/sonyericsson/music/player/PlayerController;)Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->isServiceSet()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 738
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 743
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 744
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSkippedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 745
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackStartedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 746
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackCompletedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 747
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPausedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 748
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getPlaybackErrorIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 750
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getBufferingUpdatedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 751
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController$3;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    invoke-static {p1}, Lcom/sonyericsson/music/player/PlayerController;->access$200(Lcom/sonyericsson/music/player/PlayerController;)Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isBuffering()Z

    move-result p1

    .line 752
    iget-object p2, p0, Lcom/sonyericsson/music/player/PlayerController$3;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    invoke-static {p2}, Lcom/sonyericsson/music/player/PlayerController;->access$200(Lcom/sonyericsson/music/player/PlayerController;)Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isInPlayQueueMode()Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    .line 754
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController$3;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    sget-object p2, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->BUFFERING:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    invoke-static {p1, p2}, Lcom/sonyericsson/music/player/PlayerController;->access$302(Lcom/sonyericsson/music/player/PlayerController;Lcom/sonyericsson/music/player/PlayerState$LoadingState;)Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    goto :goto_1

    .line 756
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController$3;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    sget-object p2, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->IDLE:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    invoke-static {p1, p2}, Lcom/sonyericsson/music/player/PlayerController;->access$302(Lcom/sonyericsson/music/player/PlayerController;Lcom/sonyericsson/music/player/PlayerState$LoadingState;)Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    .line 760
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController$3;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    sget-object p2, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->IDLE:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    invoke-static {p1, p2}, Lcom/sonyericsson/music/player/PlayerController;->access$302(Lcom/sonyericsson/music/player/PlayerController;Lcom/sonyericsson/music/player/PlayerState$LoadingState;)Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    goto :goto_1

    .line 761
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController$3;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    invoke-static {p1}, Lcom/sonyericsson/music/player/PlayerController;->access$200(Lcom/sonyericsson/music/player/PlayerController;)Lcom/sonyericsson/music/player/MediaPlaybackWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getRouteType()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_8

    .line 763
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController$3;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    sget-object p2, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->BUFFERING:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    invoke-static {p1, p2}, Lcom/sonyericsson/music/player/PlayerController;->access$302(Lcom/sonyericsson/music/player/PlayerController;Lcom/sonyericsson/music/player/PlayerState$LoadingState;)Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    goto :goto_1

    .line 766
    :cond_5
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 767
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IS_LOCAL"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 769
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "PLAYQUEUE_SUPPORTED"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    .line 772
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController$3;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    sget-object p2, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->PREPARING:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    invoke-static {p1, p2}, Lcom/sonyericsson/music/player/PlayerController;->access$302(Lcom/sonyericsson/music/player/PlayerController;Lcom/sonyericsson/music/player/PlayerState$LoadingState;)Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    goto :goto_1

    .line 774
    :cond_6
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController$3;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    sget-object p2, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->IDLE:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    invoke-static {p1, p2}, Lcom/sonyericsson/music/player/PlayerController;->access$302(Lcom/sonyericsson/music/player/PlayerController;Lcom/sonyericsson/music/player/PlayerState$LoadingState;)Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    goto :goto_1

    .line 749
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController$3;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    sget-object p2, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->IDLE:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    invoke-static {p1, p2}, Lcom/sonyericsson/music/player/PlayerController;->access$302(Lcom/sonyericsson/music/player/PlayerController;Lcom/sonyericsson/music/player/PlayerState$LoadingState;)Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    .line 784
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController$3;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/sonyericsson/music/player/PlayerController;->access$402(Lcom/sonyericsson/music/player/PlayerController;I)I

    .line 786
    iget-object p1, p0, Lcom/sonyericsson/music/player/PlayerController$3;->this$0:Lcom/sonyericsson/music/player/PlayerController;

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->refreshState()V

    return-void

    :cond_9
    :goto_2
    return-void
.end method
