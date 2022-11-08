.class Lcom/android/quickstep/util/QuickstepOnboardingPrefs$1;
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

.field final synthetic val$stateManager:Lcom/android/launcher3/statemanager/StateManager;


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;Lcom/android/launcher3/statemanager/StateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    .line 51
    iput-object p1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$1;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    iput-object p2, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$1;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .locals 5
    .param p1, "finalState"    # Lcom/android/launcher3/LauncherState;

    .line 54
    iget-object v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$1;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    .line 55
    invoke-static {v0}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->access$000(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    .line 56
    .local v0, "swipeUpEnabled":Z
    iget-object v1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$1;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    .line 58
    .local v1, "prevState":Lcom/android/launcher3/LauncherState;
    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq p1, v2, :cond_2

    :cond_0
    if-nez v0, :cond_1

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v2, :cond_1

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$1;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    .line 60
    const-string v3, "launcher.home_bounce_count"

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->hasReachedMaxCount(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    :cond_2
    iget-object v2, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$1;->this$0:Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    invoke-static {v2}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->access$100(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "launcher.apps_view_shown"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    iget-object v2, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$1;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 64
    :cond_3
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$1;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
