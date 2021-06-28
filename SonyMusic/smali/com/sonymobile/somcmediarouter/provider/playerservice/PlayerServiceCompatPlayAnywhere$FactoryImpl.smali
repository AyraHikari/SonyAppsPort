.class public Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatPlayAnywhere$FactoryImpl;
.super Ljava/lang/Object;
.source "PlayerServiceCompatPlayAnywhere.java"

# interfaces
.implements Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallbacks()Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;
    .locals 1

    .line 45
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;

    invoke-direct {v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;-><init>()V

    return-object v0
.end method

.method public getPlayer(Landroid/os/IBinder;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;
    .locals 1

    .line 41
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;

    invoke-direct {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public getPlayerServiceIntent()Landroid/content/Intent;
    .locals 2

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.playanywhere.intent.action.PLAYANYWHERE_PLAYER_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sonymobile.playanywhere"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
