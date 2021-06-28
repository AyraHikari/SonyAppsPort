.class Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;
.super Landroid/content/BroadcastReceiver;
.source "DlnaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;


# direct methods
.method constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleDlnaPlaybackInfo(Landroid/content/Intent;)V
    .locals 4

    .line 419
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 421
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleDlnaPlaybackInfo() failed: Must not handle when there is not an OPEN request"

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3000(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_2

    .line 430
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleDlnaPlaybackInfo() failed: Ignore this intent when the OPENING state."

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 437
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 438
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3202(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z

    .line 439
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_4

    .line 440
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleDlnaPlaybackInfo() failed: Ignore this intent when receiving the first playback info after seek"

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    .line 447
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v0

    const-string v2, "extra_playback_position_changed"

    const/4 v3, -0x1

    invoke-interface {v0, p1, v2, v3}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 449
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-le v0, v2, :cond_7

    .line 451
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_6

    .line 452
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDlnaPlaybackInfo() failed: Ignore the position beyond the duration. duration = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : notice position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void

    .line 459
    :cond_7
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 460
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;I)V

    .line 461
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_8

    .line 462
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_PLAYBACK_INFO: position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_8
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/16 v1, 0x15

    invoke-static {v0, v1, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :catch_0
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->restartThread()V

    return-void
.end method

.method private handleDlnaPlayerState(Landroid/content/Intent;)V
    .locals 4

    .line 475
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 476
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 477
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleDlnaPlayerState() failed: Must not handle when there is not an OPEN request"

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v0

    const-string v1, "state_opened"

    .line 485
    invoke-interface {v0, p1, v1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->stateEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 486
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_2

    .line 487
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_PLAYER_STATE state=STATE_OPENED"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;I)V

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/16 v1, 0xc

    invoke-static {v0, v1, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 498
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v0

    const-string v1, "state_playing"

    .line 499
    invoke-interface {v0, p1, v1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->stateEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 500
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_4

    .line 501
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_PLAYER_STATE state=STATE_PLAYING"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;I)V

    .line 507
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/16 v1, 0xd

    invoke-static {v0, v1, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 512
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v0

    const-string v1, "state_released"

    .line 513
    invoke-interface {v0, p1, v1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->stateEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 514
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    .line 517
    :cond_6
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4$2;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4$2;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;Landroid/content/Intent;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 534
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v0

    const-string v1, "state_paused"

    .line 535
    invoke-interface {v0, p1, v1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->stateEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 536
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_8

    .line 537
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_PLAYER_STATE state=STATE_PAUSED"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_8
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;I)V

    .line 543
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/16 v1, 0xe

    invoke-static {v0, v1, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;ILjava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 548
    :cond_9
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v0

    const-string v1, "state_error"

    .line 549
    invoke-interface {v0, p1, v1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->stateEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 550
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_a

    .line 551
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_PLAYER_STATE state=STATE_ERROR"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v0

    const-string v1, "extra_error_code"

    const/4 v2, -0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_b

    .line 559
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;I)V

    .line 563
    :cond_b
    :try_start_3
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/16 v1, 0x12

    invoke-static {v0, v1, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;ILjava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 568
    :cond_c
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v0

    const-string v1, "state_idle"

    .line 569
    invoke-interface {v0, p1, v1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->stateEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 570
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_d

    .line 571
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_PLAYER_STATE state=STATE_IDLE"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_d
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;I)V

    .line 577
    :try_start_4
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/16 v1, 0xb

    invoke-static {v0, v1, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;ILjava/lang/Object;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_e
    :goto_0
    return-void
.end method

.method private isPlayanywhereReleased(Landroid/content/Intent;)Z
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v0

    const-string v1, "action_player_state"

    invoke-interface {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->getAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 389
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v0

    const-string v2, "extra_player_id"

    invoke-interface {v0, p1, v2}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 391
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1000(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v0

    const-string v2, "state_released"

    invoke-interface {v0, p1, v2}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->stateEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4$1;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4$1;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;Landroid/content/Intent;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 338
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 339
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->isPlayanywhereReleased(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 343
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_1

    .line 344
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Do not handle notice of released playanywhere player."

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 349
    :cond_2
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object p1

    const-string v0, "extra_player_id"

    invoke-interface {p1, p2, v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 353
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_3

    .line 354
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onReceive: player id is not set."

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 371
    :cond_4
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_5

    .line 372
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: player id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string p1, "action_player_state"

    .line 375
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    .line 376
    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->getAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 377
    invoke-direct {p0, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->handleDlnaPlayerState(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string p1, "action_playback_info"

    .line 379
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    .line 380
    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->getAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 381
    invoke-direct {p0, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$4;->handleDlnaPlaybackInfo(Landroid/content/Intent;)V

    :cond_7
    :goto_0
    return-void
.end method
