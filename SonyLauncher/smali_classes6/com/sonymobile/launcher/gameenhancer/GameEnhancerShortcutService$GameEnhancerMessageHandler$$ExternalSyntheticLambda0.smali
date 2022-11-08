.class public final synthetic Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$ModelLoadedListener;


# instance fields
.field public final synthetic f$0:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;

.field public final synthetic f$1:Lcom/android/launcher3/LauncherModel;


# direct methods
.method public synthetic constructor <init>(Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;Lcom/android/launcher3/LauncherModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;

    iput-object p2, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/LauncherModel;

    return-void
.end method


# virtual methods
.method public final onModelLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;

    iget-object v1, p0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutService$GameEnhancerMessageHandler;->lambda$handleMessage$0$com-sonymobile-launcher-gameenhancer-GameEnhancerShortcutService$GameEnhancerMessageHandler(Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method
