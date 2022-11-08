.class public Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;
.super Landroid/app/Service;
.source "GameEnhancerShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;
    }
.end annotation


# static fields
.field public static final MSG_EXISTS_GAME_ENHANCER_SHORTCUT:I = 0x29

.field public static final MSG_NOT_EXISTS_GAME_ENHANCER_SHORTCUT:I = 0x2a

.field public static final MSG_REGISTER_CLIENT:I = 0xa

.field public static final MSG_REQUEST_EXISTS_GAME_ENHANCER_SHORTCUT:I = 0x1e

.field public static final MSG_STORE_GAME_ICON_UPDATE_STATE_CHANGED:I = 0x33

.field public static final MSG_UNREGISTER_CLIENT:I = 0x14


# instance fields
.field private final handler:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;

.field final mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    new-instance v0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;

    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;-><init>(Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;->handler:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;

    .line 34
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;->mMessenger:Landroid/os/Messenger;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;->mClients:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 48
    iget-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 39
    if-nez p1, :cond_0

    .line 40
    const/4 v0, 0x2

    return v0

    .line 42
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
