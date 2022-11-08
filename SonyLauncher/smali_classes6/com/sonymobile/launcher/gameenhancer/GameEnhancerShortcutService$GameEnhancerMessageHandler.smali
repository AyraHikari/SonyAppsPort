.class Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;
.super Landroid/os/Handler;
.source "GameEnhancerShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameEnhancerMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;


# direct methods
.method public constructor <init>(Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 55
    iput-object p1, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;->this$0:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;

    .line 56
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 58
    return-void
.end method

.method private sendShortcutExistenceCheckResult(Z)V
    .locals 4
    .param p1, "exists"    # Z

    .line 92
    if-eqz p1, :cond_0

    .line 93
    const/16 v0, 0x29

    .local v0, "msgId":I
    goto :goto_0

    .line 95
    .end local v0    # "msgId":I
    :cond_0
    const/16 v0, 0x2a

    .line 98
    .restart local v0    # "msgId":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;->this$0:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;

    iget-object v1, v1, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;->this$0:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;

    iget-object v2, v2, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    const/4 v3, 0x0

    .line 101
    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_2

    .line 102
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;->this$0:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;

    iget-object v3, v3, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 98
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 106
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private sendStoreGameIconUpdateStateChanged(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 109
    iget-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;->this$0:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;

    iget-object v0, v0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;->this$0:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;

    iget-object v1, v1, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_1

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;->this$0:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;

    iget-object v2, v2, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 109
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 116
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 86
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 83
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;->sendStoreGameIconUpdateStateChanged(Landroid/os/Message;)V

    .line 84
    goto :goto_0

    .line 70
    :sswitch_1
    iget-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;->this$0:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 71
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    .line 72
    .local v1, "model":Lcom/android/launcher3/LauncherModel;
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->existsGameEnhancerShortcut()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;->sendShortcutExistenceCheckResult(Z)V

    goto :goto_0

    .line 75
    :cond_0
    new-instance v2, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;Lcom/android/launcher3/LauncherModel;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherModel;->setModelLoadedListener(Lcom/android/launcher3/LauncherModel$ModelLoadedListener;)V

    .line 79
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->startLoaderNoCallback()V

    .line 81
    goto :goto_0

    .line 67
    .end local v0    # "app":Lcom/android/launcher3/LauncherAppState;
    .end local v1    # "model":Lcom/android/launcher3/LauncherModel;
    :sswitch_2
    iget-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;->this$0:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;

    iget-object v0, v0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;->mClients:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 68
    goto :goto_0

    .line 64
    :sswitch_3
    iget-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;->this$0:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;

    iget-object v0, v0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService;->mClients:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    nop

    .line 88
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_3
        0x14 -> :sswitch_2
        0x1e -> :sswitch_1
        0x33 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic lambda$handleMessage$0$com-sonymobile-launcher-gameenhancer-GameEnhancerShortcutService$GameEnhancerMessageHandler(Lcom/android/launcher3/LauncherModel;)V
    .locals 1
    .param p1, "model"    # Lcom/android/launcher3/LauncherModel;

    .line 76
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->existsGameEnhancerShortcut()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;->sendShortcutExistenceCheckResult(Z)V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherModel;->setModelLoadedListener(Lcom/android/launcher3/LauncherModel$ModelLoadedListener;)V

    .line 78
    return-void
.end method
