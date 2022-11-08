.class public Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;
.super Landroidx/preference/PreferenceDataStore;
.source "PluginEnablerImpl.java"

# interfaces
.implements Lcom/android/systemui/shared/plugins/PluginEnabler;


# static fields
.field private static final PREFIX_PLUGIN_ENABLED:Ljava/lang/String; = "PLUGIN_ENABLED_"


# instance fields
.field private final mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 34
    return-void
.end method

.method static pluginEnabledKey(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p0, "cn"    # Landroid/content/ComponentName;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PLUGIN_ENABLED_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setState(Landroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 47
    invoke-static {p1}, Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;->pluginEnabledKey(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDisableReason(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 52
    invoke-static {p1}, Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;->pluginEnabledKey(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    return-void
.end method

.method public setDisabled(Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "reason"    # I

    .line 43
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;->setState(Landroid/content/ComponentName;Z)V

    .line 44
    return-void
.end method

.method public setEnabled(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;->setState(Landroid/content/ComponentName;Z)V

    .line 39
    return-void
.end method
