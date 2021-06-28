.class Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$FactoryImpl;
.super Ljava/lang/Object;
.source "PlayerServiceCompatV6.java"

# interfaces
.implements Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FactoryImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallbacks()Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;
    .locals 1

    .line 53
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;

    invoke-direct {v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$CallbacksImpl;-><init>()V

    return-object v0
.end method

.method public getPlayer(Landroid/os/IBinder;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;
    .locals 2

    .line 48
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$PlayerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$PlayerImpl;-><init>(Landroid/os/IBinder;Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$1;)V

    return-object v0
.end method

.method public getPlayerServiceIntent()Landroid/content/Intent;
    .locals 1

    .line 38
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/dlna/playerservice/PlayerServiceFactory;->getPlayerServiceV6()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
