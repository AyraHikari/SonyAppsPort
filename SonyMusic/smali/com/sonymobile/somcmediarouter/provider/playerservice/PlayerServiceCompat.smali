.class public Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat;
.super Ljava/lang/Object;
.source "PlayerServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$States;,
        Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;,
        Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;,
        Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;,
        Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Player;,
        Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Availability;
    }
.end annotation


# direct methods
.method public static getFactory(Landroid/content/Context;)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;
    .locals 1

    .line 74
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$AvailabilityImpl;

    invoke-direct {v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$AvailabilityImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$AvailabilityImpl;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$FactoryImpl;

    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$FactoryImpl;-><init>()V

    return-object p0

    .line 76
    :cond_0
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$AvailabilityImpl;

    invoke-direct {v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$AvailabilityImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$AvailabilityImpl;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    new-instance p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$FactoryImpl;

    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$FactoryImpl;-><init>()V

    return-object p0

    .line 78
    :cond_1
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV1$AvailabilityImpl;

    invoke-direct {v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV1$AvailabilityImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV1$AvailabilityImpl;->isAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 79
    new-instance p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV1$FactoryImpl;

    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV1$FactoryImpl;-><init>()V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFactory(Landroid/content/Context;I)Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Factory;
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 89
    new-instance p1, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatPlayAnywhere$AvailabilityImpl;

    invoke-direct {p1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatPlayAnywhere$AvailabilityImpl;-><init>()V

    .line 90
    invoke-virtual {p1, p0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatPlayAnywhere$AvailabilityImpl;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    new-instance p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatPlayAnywhere$FactoryImpl;

    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatPlayAnywhere$FactoryImpl;-><init>()V

    return-object p0

    .line 92
    :cond_0
    new-instance p1, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$AvailabilityImpl;

    invoke-direct {p1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$AvailabilityImpl;-><init>()V

    invoke-virtual {p1, p0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$AvailabilityImpl;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    new-instance p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$FactoryImpl;

    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV6$FactoryImpl;-><init>()V

    return-object p0

    .line 94
    :cond_1
    new-instance p1, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$AvailabilityImpl;

    invoke-direct {p1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$AvailabilityImpl;-><init>()V

    invoke-virtual {p1, p0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$AvailabilityImpl;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 95
    new-instance p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$FactoryImpl;

    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV5$FactoryImpl;-><init>()V

    return-object p0

    .line 96
    :cond_2
    new-instance p1, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV1$AvailabilityImpl;

    invoke-direct {p1}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV1$AvailabilityImpl;-><init>()V

    invoke-virtual {p1, p0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV1$AvailabilityImpl;->isAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 97
    new-instance p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV1$FactoryImpl;

    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompatV1$FactoryImpl;-><init>()V

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
