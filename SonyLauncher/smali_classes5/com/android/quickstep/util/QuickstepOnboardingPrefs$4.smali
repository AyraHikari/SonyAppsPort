.class Lcom/android/quickstep/util/QuickstepOnboardingPrefs$4;
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
.field final synthetic this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    .line 138
    iput-object p1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$4;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .locals 3
    .param p1, "finalState"    # Lcom/android/launcher3/LauncherState;

    .line 141
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    const-string v1, "launcher.all_apps_visited_count"

    if-ne p1, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$4;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->incrementEventCount(Ljava/lang/String;)Z

    .line 143
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$4;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->hasReachedMaxCount(Ljava/lang/String;)Z

    move-result v0

    .line 147
    .local v0, "hasReachedMaxCount":Z
    iget-object v1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$4;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    invoke-static {v1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->access$600(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v1

    const-class v2, Lcom/android/launcher3/appprediction/AppsDividerView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/appprediction/AppsDividerView;

    .line 148
    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/appprediction/AppsDividerView;->setShowAllAppsLabel(Z)V

    .line 149
    if-eqz v0, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$4;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    invoke-static {v1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->access$700(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 152
    :cond_1
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    .line 138
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$4;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
