.class public Lcom/android/quickstep/util/QuickstepOnboardingPrefs;
.super Lcom/android/launcher3/util/OnboardingPrefs;
.source "QuickstepOnboardingPrefs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/util/OnboardingPrefs<",
        "Lcom/android/launcher3/uioverrides/QuickstepLauncher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher3/uioverrides/QuickstepLauncher;
    .param p2, "sharedPrefs"    # Landroid/content/SharedPreferences;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/OnboardingPrefs;-><init>(Lcom/android/launcher3/views/ActivityContext;Landroid/content/SharedPreferences;)V

    .line 49
    invoke-virtual {p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 50
    .local v0, "stateManager":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<Lcom/android/launcher3/LauncherState;>;"
    const-string v1, "launcher.apps_view_shown"

    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$1;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$1;-><init>(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;Lcom/android/launcher3/statemanager/StateManager;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 68
    :cond_0
    sget-boolean v1, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-nez v1, :cond_1

    .line 69
    const-string v1, "launcher.hotseat_discovery_tip_count"

    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->hasReachedMaxCount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    new-instance v1, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$2;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$2;-><init>(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;Lcom/android/launcher3/statemanager/StateManager;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 91
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_EDU:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 92
    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    new-instance v1, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$3;-><init>(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 137
    :cond_2
    const-string v1, "launcher.all_apps_visited_count"

    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->hasReachedMaxCount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    check-cast v1, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    new-instance v2, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$4;

    invoke-direct {v2, p0}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs$4;-><init>(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 155
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    .line 44
    iget-object v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    .line 44
    iget-object v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    .line 44
    iget-object v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    .line 44
    iget-object v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    .line 44
    iget-object v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    .line 44
    iget-object v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    .line 44
    iget-object v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/quickstep/util/QuickstepOnboardingPrefs;)Lcom/android/launcher3/views/ActivityContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    .line 44
    iget-object v0, p0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    return-object v0
.end method
