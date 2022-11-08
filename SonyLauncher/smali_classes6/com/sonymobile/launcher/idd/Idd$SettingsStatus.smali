.class public Lcom/sonymobile/launcher/idd/Idd$SettingsStatus;
.super Ljava/lang/Object;
.source "Idd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/idd/Idd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsStatus"
.end annotation


# static fields
.field private static sSettingsStatus:Lcom/sonymobile/launcher/idd/Idd$SettingsStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sonymobile/launcher/idd/Idd$SettingsStatus;
    .locals 1

    .line 63
    sget-object v0, Lcom/sonymobile/launcher/idd/Idd$SettingsStatus;->sSettingsStatus:Lcom/sonymobile/launcher/idd/Idd$SettingsStatus;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/sonymobile/launcher/idd/Idd$SettingsStatus;

    invoke-direct {v0}, Lcom/sonymobile/launcher/idd/Idd$SettingsStatus;-><init>()V

    sput-object v0, Lcom/sonymobile/launcher/idd/Idd$SettingsStatus;->sSettingsStatus:Lcom/sonymobile/launcher/idd/Idd$SettingsStatus;

    .line 66
    :cond_0
    sget-object v0, Lcom/sonymobile/launcher/idd/Idd$SettingsStatus;->sSettingsStatus:Lcom/sonymobile/launcher/idd/Idd$SettingsStatus;

    return-object v0
.end method


# virtual methods
.method public send(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/Idd;->-$$Nest$smisDefaultHomeApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    new-instance v0, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;

    invoke-direct {v0, p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "event":Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;
    invoke-static {}, Lcom/sonymobile/launcher/idd/IddManager;->getInstance()Lcom/sonymobile/launcher/idd/IddManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/launcher/idd/IddManager;->sendEvent(Lcom/sonymobile/launcher/idd/Event;)V

    .line 75
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->resetCountUseWeekly(Landroid/content/Context;)V

    .line 76
    return-void
.end method
