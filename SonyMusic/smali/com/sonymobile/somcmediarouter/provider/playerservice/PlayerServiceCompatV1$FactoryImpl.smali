.class Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV1$FactoryImpl;
.super Ljava/lang/Object;
.source "PlayerServiceCompatV1.java"

# interfaces
.implements Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FactoryImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallbacks()Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;
    .locals 1

    .line 53
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;

    invoke-direct {v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyCallbacksImpl;-><init>()V

    return-object v0
.end method

.method public getPlayer(Landroid/os/IBinder;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;
    .locals 2

    .line 46
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV1;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FactoryImpl: getPlayer()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;

    invoke-direct {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/MediaPlayerProxyPlayerImpl;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public getPlayerServiceIntent()Landroid/content/Intent;
    .locals 2

    .line 36
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV1;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FactoryImpl: getPlayerServiceIntent()"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sonyericsson.dlna"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.dlna.intent.action.BIND_PUSH_SERVICE"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
