.class public Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;
.super Ljava/lang/Object;
.source "GameEnhancerShortcutServiceClient.java"


# static fields
.field private static final KEY_STORE_GAME_ICON_SETTING_UPDATE_STATUS:Ljava/lang/String; = "UpdateStatus"

.field private static sInstance:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;


# instance fields
.field isBound:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private serviceMessenger:Landroid/os/Messenger;


# direct methods
.method static bridge synthetic -$$Nest$fputserviceMessenger(Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;->serviceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;->isBound:Z

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;->serviceMessenger:Landroid/os/Messenger;

    .line 38
    new-instance v0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient$1;-><init>(Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;)V

    iput-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;->mConnection:Landroid/content/ServiceConnection;

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;
    .locals 1

    .line 35
    sget-object v0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;->sInstance:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;

    return-object v0
.end method

.method public static newInstance()V
    .locals 1

    .line 30
    new-instance v0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;

    invoke-direct {v0}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;-><init>()V

    sput-object v0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;->sInstance:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;

    .line 31
    return-void
.end method


# virtual methods
.method public doBindService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    iget-boolean v0, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;->isBound:Z

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sonymobile.launcher.gameenhancer.GameEnhancerShortcutService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .local v0, "componentName":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 55
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 56
    iput-boolean v3, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;->isBound:Z

    .line 58
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public sendStoreGameIconSettingUpdateState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 61
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 62
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x33

    iput v1, v0, Landroid/os/Message;->what:I

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "UpdateStatus"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v2

    .line 71
    :goto_0
    return-void
.end method
