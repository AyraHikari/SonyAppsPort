.class public Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatPlayAnywhere$AvailabilityImpl;
.super Ljava/lang/Object;
.source "PlayerServiceCompatPlayAnywhere.java"

# interfaces
.implements Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Availability;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 24
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatPlayAnywhere$FactoryImpl;

    invoke-direct {v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatPlayAnywhere$FactoryImpl;-><init>()V

    .line 25
    invoke-virtual {v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatPlayAnywhere$FactoryImpl;->getPlayerServiceIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sonymobile.playanywhere"

    invoke-static {p1, v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/ClassChecker;->isServiceActionAvailable(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
