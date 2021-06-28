.class Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$FactoryImpl;
.super Ljava/lang/Object;
.source "PlayerServiceCompatV5.java"

# interfaces
.implements Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallbacks()Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;
    .locals 1

    .line 55
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;

    invoke-direct {v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;-><init>()V

    return-object v0
.end method

.method public getPlayer(Landroid/os/IBinder;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;
    .locals 2

    .line 51
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$PlayerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$PlayerImpl;-><init>(Landroid/os/IBinder;Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$1;)V

    return-object v0
.end method

.method public getPlayerServiceIntent()Landroid/content/Intent;
    .locals 2

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sonyericsson.dlna.intent.action.BIND_PUSH_SERVICE_V5"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonymobile.dlna"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
