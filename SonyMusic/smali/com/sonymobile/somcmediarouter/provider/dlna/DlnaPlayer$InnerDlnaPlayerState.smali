.class abstract Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;
.super Ljava/lang/Object;
.source "DlnaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "InnerDlnaPlayerState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;


# direct methods
.method private constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)V
    .locals 0

    .line 1123
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$1;)V
    .locals 0

    .line 1123
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)V

    return-void
.end method

.method private createDmrInfo(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    if-nez p1, :cond_1

    .line 1381
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 1382
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "createDmrInfo() failure : invalid parameter."

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    const-string v0, "KEY_DLNA_UDN"

    .line 1387
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_DLNA_NAME"

    .line 1388
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_DLNA_ICON_URI"

    .line 1389
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KEY_DLNA_RESIZE_MODE"

    .line 1390
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 1392
    sget-boolean v3, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v3, :cond_2

    .line 1393
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDmrInfo() create udn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " icon : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resize mode : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "com.sonyericsson.dlna.intent.extra.DEVICE_UDN"

    .line 1401
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.sonyericsson.dlna.intent.extra.DEVICE_FRIENDLY_NAME"

    .line 1402
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.sonyericsson.dlna.intent.extra.PERFORMANCE_PREFERRED"

    .line 1407
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v2
.end method


# virtual methods
.method protected convertError(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 4

    .line 1478
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1480
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v1

    const-string v2, "extra_error_code"

    const/4 v3, -0x1

    invoke-interface {v1, p1, v2, v3}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v2, "com.sonymobile.somcmediarouter.provider.dlna.intent.extra.DLNA_ERROR_CODE"

    .line 1485
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v1, "com.sonymobile.somcmediarouter.provider.dlna.intent.extra.DLNA_ERROR_TITLE"

    .line 1488
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    .line 1489
    invoke-static {v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v2

    const-string v3, "extra_error_title"

    invoke-interface {v2, p1, v3}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1488
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.sonymobile.somcmediarouter.provider.dlna.intent.extra.DLNA_ERROR_MESSAGE"

    .line 1491
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    .line 1492
    invoke-static {v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v2

    const-string v3, "extra_error_message"

    invoke-interface {v2, p1, v3}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1491
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected innerOpen(Landroid/net/Uri;IIZLandroid/os/Bundle;)V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 1265
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 1266
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string p2, "innerOpen() failure : Uri is not set."

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1269
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object p1

    const-string p2, "open failure : Uri is not set."

    invoke-interface {p1, p2, v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerError(Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_1
    return-void

    .line 1278
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v2, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3902(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;

    .line 1279
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1280
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1282
    invoke-virtual/range {p0 .. p5}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->updatePendingInfo(Landroid/net/Uri;IIZLandroid/os/Bundle;)V

    .line 1283
    monitor-exit v2

    return-void

    .line 1286
    :cond_3
    invoke-direct {p0, p5}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->createDmrInfo(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p5

    .line 1287
    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    .line 1289
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v4}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1000(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;->setPlayerId(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1296
    :catch_0
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v3, p3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;I)V

    if-ltz p3, :cond_5

    .line 1298
    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1300
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;->open(Landroid/net/Uri;IIZLandroid/os/Bundle;)V

    .line 1301
    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$4000(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Landroid/net/Uri;IIZLandroid/os/Bundle;)V

    .line 1302
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1402(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z

    .line 1304
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    iget-object p2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3000(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$OpeningState;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$4100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1306
    :try_start_3
    sget-boolean p2, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p2, :cond_6

    .line 1307
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "innerOpen() failure : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    :cond_6
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1310
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object p1

    const-string p2, "open failure"

    invoke-interface {p1, p2, v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerError(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1316
    :cond_7
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method protected innerRelease()V
    .locals 5

    .line 1331
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1332
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1333
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1334
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerReleased()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_1

    .line 1340
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "release()"

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1402(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z

    .line 1345
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$4200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$ReleasingState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$4100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;)V

    .line 1347
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1348
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;->release()V

    .line 1350
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/PollingManager;->disableGetPosition()V

    .line 1351
    invoke-virtual {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->updatePlaybackPosition()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1355
    :try_start_2
    sget-boolean v2, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v2, :cond_2

    .line 1356
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "innerRelease() failure : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1359
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v1

    const-string v2, "release failure"

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerError(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1364
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$4300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$IdleState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$4100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;)V

    .line 1366
    :cond_4
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

.method protected isTrackingUri(Landroid/content/Intent;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v0

    const-string v1, "extra_track_uri"

    .line 1541
    invoke-interface {v0, p1, v1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1542
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->setNotifiedUri(Ljava/lang/String;)V

    .line 1543
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->isTracking()Z

    move-result p1

    return p1
.end method

.method public onBuffering(Landroid/content/Intent;)V
    .locals 1

    .line 1226
    invoke-virtual {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->isTrackingUri(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1227
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 1228
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalidate BUFFERING of non-tracking URI."

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1232
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1233
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerBuffering()V

    :cond_2
    return-void
.end method

.method public onError(Landroid/content/Intent;)V
    .locals 5

    .line 1238
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1239
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v0

    const-string v1, "extra_error_code"

    const/4 v2, -0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 1243
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_0

    .line 1244
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onError() errorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v2, :cond_1

    .line 1251
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    sget-object v2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;->CACHED:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;

    invoke-virtual {v0, v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->getMediaItemStatus(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PositionGetType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "KEY_DLNA_PLAYER_STATE"

    .line 1252
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v0

    const-string v2, "DLNA Error"

    invoke-virtual {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->convertError(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, v2, v1, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerError(Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public onIdle(Landroid/content/Intent;)V
    .locals 3

    .line 1142
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;

    move-result-object v0

    const-string v1, "extra_track_completed"

    .line 1143
    invoke-interface {v0, p1, v1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "com.sonyericsson.dlna.playerservice.playercallbacks.EXTRA_IS_NEXT_AVAILABLE"

    const/4 v2, 0x1

    .line 1144
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 1145
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1146
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerIdled(ZZ)V

    :cond_0
    return-void
.end method

.method public onOpened(Landroid/content/Intent;)V
    .locals 2

    .line 1152
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1153
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->isTrackingUri(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1154
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 1155
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalidate OPENED of non-tracking URI."

    invoke-static {p1, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    :cond_0
    monitor-exit v0

    return-void

    .line 1159
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->getNotifiedItemId()Ljava/lang/String;

    move-result-object p1

    .line 1160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    invoke-virtual {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->updateVolume()V

    .line 1163
    invoke-virtual {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->updateDuration()V

    .line 1164
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1165
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerOpened(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 1160
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onPaused(Landroid/content/Intent;)V
    .locals 1

    .line 1194
    invoke-virtual {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->isTrackingUri(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1195
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 1196
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalidate PAUSED of non-tracking URI."

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1200
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1201
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerPaused()V

    :cond_2
    return-void
.end method

.method public onPlaying(Landroid/content/Intent;)V
    .locals 2

    .line 1171
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1172
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->isTrackingUri(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1173
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 1174
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalidate PLAYING of non-tracking URI."

    invoke-static {p1, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    :cond_0
    monitor-exit v0

    return-void

    .line 1179
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-gez p1, :cond_3

    .line 1180
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_2

    .line 1181
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Ignore this playing: Invalid dutation value"

    invoke-static {p1, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    :cond_2
    monitor-exit v0

    return-void

    .line 1186
    :cond_3
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->getNotifiedItemId()Ljava/lang/String;

    move-result-object p1

    .line 1187
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1189
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerPlaying(Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 1187
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onReleased(Landroid/content/Intent;)V
    .locals 0

    .line 1218
    invoke-virtual {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->resetInnerData()V

    .line 1220
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1221
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerReleased()V

    :cond_0
    return-void
.end method

.method public onSkipped(Landroid/content/Intent;)V
    .locals 1

    .line 1206
    invoke-virtual {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->isTrackingUri(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1207
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 1208
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalidate SKIPPED of non-tracking URI."

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1212
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1213
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerSkipped()V

    :cond_2
    return-void
.end method

.method public abstract open(Landroid/net/Uri;IIZLandroid/os/Bundle;)V
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method protected pendingOpen()V
    .locals 7

    .line 1320
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 1321
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pendingOpen()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1324
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2702(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z

    .line 1325
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;

    move-result-object v0

    iget-object v2, v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;

    move-result-object v0

    iget v3, v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;->mPlaylistPosition:I

    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    .line 1326
    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;

    move-result-object v0

    iget v4, v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;->mPlaybackPosition:I

    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;

    move-result-object v0

    iget-boolean v5, v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;->mStart:Z

    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;

    move-result-object v0

    iget-object v6, v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;->mBundle:Landroid/os/Bundle;

    move-object v1, p0

    .line 1325
    invoke-virtual/range {v1 .. v6}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->innerOpen(Landroid/net/Uri;IIZLandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method protected resetInnerData()V
    .locals 2

    .line 1527
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 1528
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resetInnerData()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1532
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;I)V

    .line 1533
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method protected updateDuration()V
    .locals 5

    .line 1435
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1436
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/UriTrackingManager;->isTracking()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    .line 1437
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_0

    .line 1438
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v3, "updateDuration() failed: Not tracking data."

    invoke-static {v1, v3}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1441
    monitor-exit v0

    return-void

    .line 1443
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x12c

    :goto_0
    if-lez v0, :cond_5

    .line 1450
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1451
    :try_start_2
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1452
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_2

    .line 1453
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v2, "updateDuration() failed: Invalid player service."

    invoke-static {v0, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    :cond_2
    monitor-exit v1

    return-void

    .line 1457
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;->getDuration()I

    move-result v2

    .line 1458
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ltz v2, :cond_4

    goto :goto_1

    :cond_4
    const-wide/16 v3, 0x64

    .line 1462
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1458
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 1466
    :cond_5
    :goto_1
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_6

    .line 1467
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDuration() success: save duration = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    :cond_6
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 1471
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_7

    .line 1472
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateDuration() failed: Internal RemoteException."

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void

    :catchall_1
    move-exception v1

    .line 1443
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    return-void
.end method

.method protected updatePendingInfo(Landroid/net/Uri;IIZLandroid/os/Bundle;)V
    .locals 8

    .line 1372
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 1373
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updatePendingInfo()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    new-instance v7, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;-><init>(Landroid/net/Uri;IIZLandroid/os/Bundle;)V

    invoke-static {v0, v7}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3902(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$PendingContentsInfo;

    return-void
.end method

.method protected updatePlaybackPosition()V
    .locals 4

    .line 1498
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 1499
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updatePlaybackPosition()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1502
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1503
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    const/4 v1, 0x7

    .line 1506
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$4400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1509
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;->getPlaybackPosition()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;I)V

    .line 1511
    :cond_2
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_SEEK_PERFORMANCE_ENABLE:Z

    if-eqz v1, :cond_3

    .line 1512
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$3200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1513
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PERFORMANCE] after seeking get position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    .line 1514
    invoke-static {v3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$4500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1513
    invoke-static {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1518
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerUpdatePosition()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1523
    :catch_0
    :cond_4
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected updateVolume()V
    .locals 4

    .line 1413
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 1414
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateVolume()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1417
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1418
    monitor-exit v0

    return-void

    .line 1421
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    .line 1425
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$InnerDlnaPlayerState;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;->getVolume()I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1429
    :catch_0
    :try_start_2
    invoke-interface {v1, v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$DlnaPlayerCallback;->onPlayerVolumeUpdate(I)V

    .line 1431
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
