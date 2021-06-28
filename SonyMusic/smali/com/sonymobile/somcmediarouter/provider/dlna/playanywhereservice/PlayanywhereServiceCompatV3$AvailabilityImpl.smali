.class Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompatV3$AvailabilityImpl;
.super Ljava/lang/Object;
.source "PlayanywhereServiceCompatV3.java"

# interfaces
.implements Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat$Availability;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 24
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompatV3$FactoryImpl;

    invoke-direct {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompatV3$FactoryImpl;-><init>()V

    .line 25
    invoke-virtual {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompatV3$FactoryImpl;->getPlayanywhereServiceIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sonymobile.playanywhere"

    .line 24
    invoke-static {p1, v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/ClassChecker;->isServiceActionAvailable(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
