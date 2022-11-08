.class Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient$1;
.super Ljava/lang/Object;
.source "GameEnhancerShortcutServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;


# direct methods
.method constructor <init>(Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;

    .line 38
    iput-object p1, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient$1;->this$0:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .line 41
    iget-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient$1;->this$0:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;->-$$Nest$fputserviceMessenger(Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;Landroid/os/Messenger;)V

    .line 42
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 46
    iget-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient$1;->this$0:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;->isBound:Z

    .line 47
    return-void
.end method
