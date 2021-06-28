.class Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;
.super Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;
.source "DlnaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;


# direct methods
.method private constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)V
    .locals 1

    .line 1599
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$1;)V
    .locals 0

    .line 1599
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)V

    return-void
.end method


# virtual methods
.method public onOpened(Landroid/content/Intent;)V
    .locals 1

    .line 1688
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat$Factory;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    .line 1689
    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat$Factory;->isConnectPlayanywhere()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1690
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$4300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$IdleState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$4100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;)V

    goto :goto_0

    .line 1692
    :cond_0
    invoke-super {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->onOpened(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onPlaying(Landroid/content/Intent;)V
    .locals 2

    .line 1667
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1668
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->isTrackingUri(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1669
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 1670
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalidate PLAYING of non-tracking URI."

    invoke-static {p1, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    :cond_0
    monitor-exit v0

    return-void

    .line 1674
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->getNotifiedItemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$4802(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 1675
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1677
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$4902(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z

    .line 1679
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->enableGetPosition()V

    .line 1680
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->startThread()V

    return-void

    :catchall_0
    move-exception p1

    .line 1675
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public open(Landroid/net/Uri;IIZLandroid/os/Bundle;)V
    .locals 0

    .line 1603
    invoke-virtual/range {p0 .. p5}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->innerOpen(Landroid/net/Uri;IIZLandroid/os/Bundle;)V

    return-void
.end method

.method public pause()V
    .locals 5

    .line 1634
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1635
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v1, :cond_1

    .line 1636
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1637
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v1

    const-string v4, "pause failure"

    invoke-interface {v1, v4, v3, v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerError(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1642
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1645
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;->pause()V

    .line 1647
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->disableGetPosition()V

    .line 1648
    invoke-virtual {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->updatePlaybackPosition()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1650
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1651
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v1

    const-string v4, "pause failure"

    invoke-interface {v1, v4, v3, v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerError(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1657
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public play()V
    .locals 5

    .line 1608
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1609
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v1, :cond_1

    .line 1610
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1611
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v1

    const-string v4, "play failure"

    invoke-interface {v1, v4, v3, v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerError(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1616
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1619
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2702(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z

    .line 1620
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;->play()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1622
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1623
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v1

    const-string v4, "play failure"

    invoke-interface {v1, v4, v3, v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerError(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1629
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 0

    .line 1662
    invoke-virtual {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->innerRelease()V

    return-void
.end method
