.class public Lcom/sonymobile/launcher/idd/Idd$SettingsChange;
.super Ljava/lang/Object;
.source "Idd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/idd/Idd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsChange"
.end annotation


# static fields
.field private static sSettingsChange:Lcom/sonymobile/launcher/idd/Idd$SettingsChange;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sonymobile/launcher/idd/Idd$SettingsChange;
    .locals 1

    .line 84
    sget-object v0, Lcom/sonymobile/launcher/idd/Idd$SettingsChange;->sSettingsChange:Lcom/sonymobile/launcher/idd/Idd$SettingsChange;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/sonymobile/launcher/idd/Idd$SettingsChange;

    invoke-direct {v0}, Lcom/sonymobile/launcher/idd/Idd$SettingsChange;-><init>()V

    sput-object v0, Lcom/sonymobile/launcher/idd/Idd$SettingsChange;->sSettingsChange:Lcom/sonymobile/launcher/idd/Idd$SettingsChange;

    .line 87
    :cond_0
    sget-object v0, Lcom/sonymobile/launcher/idd/Idd$SettingsChange;->sSettingsChange:Lcom/sonymobile/launcher/idd/Idd$SettingsChange;

    return-object v0
.end method


# virtual methods
.method public qsbChanged(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/Idd;->-$$Nest$smisDefaultHomeApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    new-instance v0, Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;

    invoke-direct {v0, p1}, Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, "event":Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getQsbEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 105
    .local v1, "enabled":Z
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "qsb"

    invoke-virtual {v0, v3, v2}, Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;->onChanged(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;

    .line 106
    invoke-static {}, Lcom/sonymobile/launcher/idd/IddManager;->getInstance()Lcom/sonymobile/launcher/idd/IddManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/launcher/idd/IddManager;->sendEvent(Lcom/sonymobile/launcher/idd/Event;)V

    .line 107
    return-void
.end method

.method public sortModeChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Ljava/lang/String;

    .line 110
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/Idd;->-$$Nest$smisDefaultHomeApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;

    invoke-direct {v0, p1}, Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "event":Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;
    const-string v1, "sort_mode"

    invoke-virtual {v0, v1, p2}, Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;->onChanged(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;

    .line 115
    invoke-static {}, Lcom/sonymobile/launcher/idd/IddManager;->getInstance()Lcom/sonymobile/launcher/idd/IddManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/launcher/idd/IddManager;->sendEvent(Lcom/sonymobile/launcher/idd/Event;)V

    .line 116
    return-void
.end method

.method public swipeUpChanged(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .line 91
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/Idd;->-$$Nest$smisDefaultHomeApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    return-void

    .line 94
    :cond_0
    new-instance v0, Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;

    invoke-direct {v0, p1}, Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "event":Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "swipe_up"

    invoke-virtual {v0, v2, v1}, Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;->onChanged(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;

    .line 96
    invoke-static {}, Lcom/sonymobile/launcher/idd/IddManager;->getInstance()Lcom/sonymobile/launcher/idd/IddManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/launcher/idd/IddManager;->sendEvent(Lcom/sonymobile/launcher/idd/Event;)V

    .line 97
    return-void
.end method
