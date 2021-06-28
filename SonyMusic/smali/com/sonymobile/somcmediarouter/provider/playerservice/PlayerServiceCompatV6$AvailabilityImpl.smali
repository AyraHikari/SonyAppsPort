.class Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$AvailabilityImpl;
.super Ljava/lang/Object;
.source "PlayerServiceCompatV6.java"

# interfaces
.implements Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Availability;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AvailabilityImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 28
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$FactoryImpl;

    invoke-direct {v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$FactoryImpl;-><init>()V

    .line 29
    invoke-virtual {v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$FactoryImpl;->getPlayerServiceIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sonymobile.dlna"

    .line 28
    invoke-static {p1, v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/ClassChecker;->isServiceActionAvailable(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
