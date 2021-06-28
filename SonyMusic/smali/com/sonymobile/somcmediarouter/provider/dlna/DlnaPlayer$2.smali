.class Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;
.super Ljava/lang/Object;
.source "DlnaPlayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 230
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .line 233
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 234
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PA player : onServiceConnected()"

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;->getPlayer(Landroid/os/IBinder;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1602(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    .line 240
    :try_start_0
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_1

    .line 241
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Competition evasion with playanywhere player."

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object p1

    iget-object p2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1000(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;->setPlayerId(Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object v0

    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1700()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;->open(Landroid/net/Uri;IIZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-wide/16 p1, 0x3e8

    .line 250
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    :catch_1
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 256
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;->getPlayerServiceIntent()Landroid/content/Intent;

    move-result-object p1

    .line 257
    iget-object p2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 258
    iget-object p2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/content/ServiceConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 260
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1802(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 266
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 267
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PA player : onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$902(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z

    .line 272
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2000(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 273
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 274
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2002(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z

    .line 277
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$2;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1602(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    return-void
.end method
