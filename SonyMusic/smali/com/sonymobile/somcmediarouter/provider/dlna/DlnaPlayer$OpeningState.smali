.class Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;
.super Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;
.source "DlnaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpeningState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;


# direct methods
.method private constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)V
    .locals 1

    .line 1555
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$1;)V
    .locals 0

    .line 1555
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/content/Intent;)V
    .locals 3

    .line 1587
    invoke-super {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->onError(Landroid/content/Intent;)V

    .line 1589
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v0

    const-string v1, "extra_error_code"

    const/4 v2, -0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_0

    .line 1594
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$4300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$IdleState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$4100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;)V

    :cond_0
    return-void
.end method

.method public onOpened(Landroid/content/Intent;)V
    .locals 2

    .line 1565
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1566
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->isTrackingUri(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1567
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 1568
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalidate OPENED of non-tracking URI."

    invoke-static {p1, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    :cond_0
    monitor-exit v0

    return-void

    .line 1572
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->getNotifiedItemId()Ljava/lang/String;

    move-result-object p1

    .line 1573
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1574
    invoke-virtual {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->updateVolume()V

    .line 1575
    invoke-virtual {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->updateDuration()V

    .line 1577
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1579
    invoke-interface {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerOpened(Ljava/lang/String;)V

    .line 1582
    :cond_2
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$4700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpenedState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$4100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1573
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public open(Landroid/net/Uri;IIZLandroid/os/Bundle;)V
    .locals 0

    .line 1559
    invoke-virtual/range {p0 .. p5}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->innerOpen(Landroid/net/Uri;IIZLandroid/os/Bundle;)V

    return-void
.end method
