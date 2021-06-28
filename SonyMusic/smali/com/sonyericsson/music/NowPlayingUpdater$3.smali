.class Lcom/sonyericsson/music/NowPlayingUpdater$3;
.super Ljava/lang/Object;
.source "NowPlayingUpdater.java"

# interfaces
.implements Lcom/sonyericsson/music/MediaServiceConnection;


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

    .line 124
    iput-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$3;->this$0:Lcom/sonyericsson/music/NowPlayingUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaServiceConnected(Lcom/sonyericsson/music/player/PlayerController;)V
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$3;->this$0:Lcom/sonyericsson/music/NowPlayingUpdater;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/NowPlayingUpdater;->access$102(Lcom/sonyericsson/music/NowPlayingUpdater;Lcom/sonyericsson/music/player/PlayerController;)Lcom/sonyericsson/music/player/PlayerController;

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$3;->this$0:Lcom/sonyericsson/music/NowPlayingUpdater;

    invoke-static {v0}, Lcom/sonyericsson/music/NowPlayingUpdater;->access$200(Lcom/sonyericsson/music/NowPlayingUpdater;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$3;->this$0:Lcom/sonyericsson/music/NowPlayingUpdater;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/music/NowPlayingUpdater;->access$202(Lcom/sonyericsson/music/NowPlayingUpdater;Z)Z

    .line 132
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerState;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/NowPlayingUpdater$3;->this$0:Lcom/sonyericsson/music/NowPlayingUpdater;

    new-instance v3, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;

    invoke-static {v2}, Lcom/sonyericsson/music/NowPlayingUpdater;->access$300(Lcom/sonyericsson/music/NowPlayingUpdater;)Z

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;-><init>(IZ)V

    invoke-static {v2, p1, v1, v3}, Lcom/sonyericsson/music/NowPlayingUpdater;->access$000(Lcom/sonyericsson/music/NowPlayingUpdater;Lcom/sonyericsson/music/player/PlayerState;ZLcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo$State;)V

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/NowPlayingUpdater$3;->this$0:Lcom/sonyericsson/music/NowPlayingUpdater;

    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater;->registerPlayerStateListener()V

    return-void
.end method

.method public onMediaServiceDisconnected()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$3;->this$0:Lcom/sonyericsson/music/NowPlayingUpdater;

    invoke-virtual {v0}, Lcom/sonyericsson/music/NowPlayingUpdater;->unregisterPlayerStateListener()V

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/music/NowPlayingUpdater$3;->this$0:Lcom/sonyericsson/music/NowPlayingUpdater;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/music/NowPlayingUpdater;->access$102(Lcom/sonyericsson/music/NowPlayingUpdater;Lcom/sonyericsson/music/player/PlayerController;)Lcom/sonyericsson/music/player/PlayerController;

    return-void
.end method
