.class public Lcom/android/searchlauncher/OverlayCallbackImpl;
.super Ljava/lang/Object;
.source "OverlayCallbackImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;
.implements Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;
.implements Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final KEY_ENABLE_MINUS_ONE:Ljava/lang/String; = "pref_enable_minus_one"


# instance fields
.field private final mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mLauncherOverlayCallbacks:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;

.field private mWasOverlayAttached:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mWasOverlayAttached:Z

    .line 42
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    .local v0, "prefs":Landroid/content/SharedPreferences;
    iput-object p1, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 45
    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-direct {p0, v0}, Lcom/android/searchlauncher/OverlayCallbackImpl;->getClientOptions(Landroid/content/SharedPreferences;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)V

    iput-object v1, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 46
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 47
    return-void
.end method

.method private getClientOptions(Landroid/content/SharedPreferences;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .line 167
    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 168
    const-string v1, "pref_enable_minus_one"

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;-><init>(ZZZ)V

    .line 167
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "w"    # Ljava/io/PrintWriter;

    .line 66
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 67
    return-void
.end method

.method public hideOverlay(I)V
    .locals 1
    .param p1, "duration"    # I

    .line 81
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->hideOverlay(I)V

    .line 82
    return-void
.end method

.method public hideOverlay(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 76
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->hideOverlay(Z)V

    .line 77
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 92
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 119
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 121
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 106
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onPause()V

    .line 107
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 101
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onResume()V

    .line 102
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 115
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 96
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onStart()V

    .line 97
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 111
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onStop()V

    .line 112
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onAttachedToWindow()V

    .line 57
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onDetachedFromWindow()V

    .line 62
    return-void
.end method

.method public onDeviceProvideChanged()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reattachOverlay()V

    .line 52
    return-void
.end method

.method public onOverlayScrollChanged(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 140
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mLauncherOverlayCallbacks:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;->onScrollChanged(F)V

    .line 143
    :cond_0
    return-void
.end method

.method public onScrollChange(FZ)V
    .locals 1
    .param p1, "progress"    # F
    .param p2, "rtl"    # Z

    .line 157
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->updateMove(F)V

    .line 158
    return-void
.end method

.method public onScrollInteractionBegin()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->startMove()V

    .line 148
    return-void
.end method

.method public onScrollInteractionEnd()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->endMove()V

    .line 153
    return-void
.end method

.method public onServiceStateChanged(ZZ)V
    .locals 2
    .param p1, "overlayAttached"    # Z
    .param p2, "hotwordActive"    # Z

    .line 132
    iget-boolean v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mWasOverlayAttached:Z

    if-eq p1, v0, :cond_1

    .line 133
    iput-boolean p1, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mWasOverlayAttached:Z

    .line 134
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->setLauncherOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V

    .line 136
    :cond_1
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 125
    const-string v0, "pref_enable_minus_one"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-direct {p0, p1}, Lcom/android/searchlauncher/OverlayCallbackImpl;->getClientOptions(Landroid/content/SharedPreferences;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setClientOptions(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)V

    .line 128
    :cond_0
    return-void
.end method

.method public openOverlay()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->showOverlay(Z)V

    .line 72
    return-void
.end method

.method public setOverlayCallbacks(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;

    .line 162
    iput-object p1, p0, Lcom/android/searchlauncher/OverlayCallbackImpl;->mLauncherOverlayCallbacks:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;

    .line 163
    return-void
.end method

.method public startSearch([BLandroid/os/Bundle;)Z
    .locals 1
    .param p1, "config"    # [B
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 86
    const/4 v0, 0x0

    return v0
.end method
