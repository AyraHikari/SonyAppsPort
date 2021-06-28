.class Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$AvailabilityImpl;
.super Ljava/lang/Object;
.source "PlayerServiceCompatV5.java"

# interfaces
.implements Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Availability;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 31
    :try_start_0
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$FactoryImpl;

    invoke-direct {v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$FactoryImpl;-><init>()V

    .line 32
    invoke-virtual {v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$FactoryImpl;->getPlayerServiceIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sonymobile.dlna"

    .line 31
    invoke-static {p1, v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/ClassChecker;->isServiceActionAvailable(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
