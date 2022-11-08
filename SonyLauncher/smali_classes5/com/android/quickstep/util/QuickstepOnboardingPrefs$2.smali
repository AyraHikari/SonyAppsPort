.class Lcom/android/quickstep/util/QuickstepOnboardingPrefs$2;
.super Ljava/lang/Object;
.source "QuickstepOnboardingPrefs.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/QuickstepOnboardingPrefs;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# instance fields
.field mFromAllApps:Z

.field final synthetic this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

.field final synthetic val$stateManager:Lcom/android/launcher3/statemanager/StateManager;


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;Lcom/android/launcher3/statemanager/StateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    .line 70
    iput-object p1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$2;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    iput-object p2, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$2;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$2;->mFromAllApps:Z

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .locals 3
    .param p1, "finalState"    # Lcom/android/launcher3/LauncherState;

    .line 80
    iget-object v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$2;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    invoke-static {v0}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->access$300(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getHotseatPredictionController()Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    move-result-object v0

    .line 81
    .local v0, "client":Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;
    iget-boolean v1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$2;->mFromAllApps:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->hasPredictions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$2;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    const-string v2, "launcher.hotseat_discovery_tip_count"

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->incrementEventCount(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->showEdu()V

    .line 84
    iget-object v1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$2;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 87
    :cond_0
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$2;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .locals 2
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 75
    iget-object v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$2;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    invoke-static {v0}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->access$200(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$2;->mFromAllApps:Z

    .line 76
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$2;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
