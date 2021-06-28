.class Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;
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

    .line 281
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 284
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 285
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PA service : onServiceConnected()"

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat$Factory;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat$Factory;->isConnectPlayanywhere(Landroid/os/IBinder;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 290
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 291
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;->getPlayerServiceIntent()Landroid/content/Intent;

    move-result-object p1

    .line 292
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 293
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 295
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$902(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z

    goto :goto_0

    .line 298
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 299
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$800(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;->getPlayerServiceIntent()Landroid/content/Intent;

    move-result-object p1

    .line 300
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 301
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 303
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1802(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 310
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 311
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PA service : onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$902(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z

    .line 316
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$900(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 317
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 319
    :try_start_0
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 321
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_1

    .line 322
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PA service : release PA player failed"

    invoke-static {p1, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$2300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 328
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$902(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Z)Z

    .line 331
    :cond_2
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer$3;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;->access$1602(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaPlayer;Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;

    return-void
.end method
