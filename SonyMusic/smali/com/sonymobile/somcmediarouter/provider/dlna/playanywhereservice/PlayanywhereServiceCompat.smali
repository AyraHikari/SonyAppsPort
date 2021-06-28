.class public Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat;
.super Ljava/lang/Object;
.source "PlayanywhereServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat$Factory;,
        Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat$Availability;
    }
.end annotation


# direct methods
.method public static getFactory(Landroid/content/Context;)Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat$Factory;
    .locals 1

    .line 18
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompatV3$AvailabilityImpl;

    invoke-direct {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompatV3$AvailabilityImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompatV3$AvailabilityImpl;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance p0, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompatV3$FactoryImpl;

    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompatV3$FactoryImpl;-><init>()V

    return-object p0

    .line 20
    :cond_0
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompatV1$AvailabilityImpl;

    invoke-direct {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompatV1$AvailabilityImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompatV1$AvailabilityImpl;->isAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 21
    new-instance p0, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompatV1$FactoryImpl;

    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompatV1$FactoryImpl;-><init>()V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
