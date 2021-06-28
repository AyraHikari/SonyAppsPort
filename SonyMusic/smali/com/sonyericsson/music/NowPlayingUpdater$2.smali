.class Lcom/sonyericsson/music/NowPlayingUpdater$2;
.super Lcom/sonyericsson/music/player/PlayerStateListener$PlayerStateAdapter;
.source "NowPlayingUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/NowPlayingUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/NowPlayingUpdater;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/NowPlayingUpdater;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$2;->this$0:Lcom/sonyericsson/music/NowPlayingUpdater;

    invoke-direct {p0}, Lcom/sonyericsson/music/player/PlayerStateListener$PlayerStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentTrackChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 5

    .line 83
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 84
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/NowPlayingUpdater$2;->this$0:Lcom/sonyericsson/music/NowPlayingUpdater;

    const/4 v3, 0x0

    new-instance v4, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    invoke-direct {v4, v0, v1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;-><init>(IZ)V

    invoke-static {v2, p1, v3, v4}, Lcom/sonyericsson/music/NowPlayingUpdater;->access$000(Lcom/sonyericsson/music/NowPlayingUpdater;Lcom/sonyericsson/music/player/PlayerState;ZLcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;)V

    return-void
.end method

.method public onIsInPlayQueueModeChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 5

    .line 97
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isInPlayQueueMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x2

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 103
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/music/NowPlayingUpdater$2;->this$0:Lcom/sonyericsson/music/NowPlayingUpdater;

    new-instance v4, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    invoke-direct {v4, v1, v0}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;-><init>(IZ)V

    invoke-static {v3, p1, v2, v4}, Lcom/sonyericsson/music/NowPlayingUpdater;->access$000(Lcom/sonyericsson/music/NowPlayingUpdater;Lcom/sonyericsson/music/player/PlayerState;ZLcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;)V

    return-void
.end method

.method public onIsPlayingChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 4

    .line 108
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$2;->this$0:Lcom/sonyericsson/music/NowPlayingUpdater;

    new-instance v2, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;-><init>(IZ)V

    invoke-static {v1, p1, v3, v2}, Lcom/sonyericsson/music/NowPlayingUpdater;->access$000(Lcom/sonyericsson/music/NowPlayingUpdater;Lcom/sonyericsson/music/player/PlayerState;ZLcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;)V

    return-void
.end method

.method public onLoadingStateChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 4

    .line 115
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->getLoadingState()Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->IDLE:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    if-ne v0, v1, :cond_1

    .line 116
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$2;->this$0:Lcom/sonyericsson/music/NowPlayingUpdater;

    new-instance v2, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;-><init>(IZ)V

    invoke-static {v1, p1, v3, v2}, Lcom/sonyericsson/music/NowPlayingUpdater;->access$000(Lcom/sonyericsson/music/NowPlayingUpdater;Lcom/sonyericsson/music/player/PlayerState;ZLcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;)V

    return-void
.end method

.method public onPlayQueueChanged(Lcom/sonyericsson/music/player/PlayerState;)V
    .locals 4

    .line 89
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 90
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/NowPlayingUpdater$2;->this$0:Lcom/sonyericsson/music/NowPlayingUpdater;

    new-instance v3, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    invoke-direct {v3, v0, v1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;-><init>(IZ)V

    invoke-static {v2, p1, v1, v3}, Lcom/sonyericsson/music/NowPlayingUpdater;->access$000(Lcom/sonyericsson/music/NowPlayingUpdater;Lcom/sonyericsson/music/player/PlayerState;ZLcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;)V

    return-void
.end method
