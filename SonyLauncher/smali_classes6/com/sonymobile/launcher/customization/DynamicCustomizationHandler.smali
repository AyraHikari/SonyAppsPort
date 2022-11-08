.class public Lcom/sonymobile/launcher/customization/DynamicCustomizationHandler;
.super Ljava/lang/Object;
.source "DynamicCustomizationHandler.java"


# static fields
.field private static final ACTIVE_CUSTOMIZATION_PROPERTY:Ljava/lang/String; = "ro.semc.version.cust.active"

.field private static final DYNAMIC_CUSTOMIZATION_TRIGGERED_PREF:Ljava/lang/String; = "xperia_cust_dynamic_triggered"

.field private static final TAG:Ljava/lang/String; = "DynCustHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static activeCustomizationVersion()Ljava/lang/String;
    .locals 6

    .line 122
    nop

    .line 123
    const-string v0, "ro.semc.version.cust.active"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "activeCustomizationVersion":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    const-string v2, "home.cust.active"

    invoke-static {v2, v1}, Lcom/android/launcher3/Utilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "debugActiveCustomVersion":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    move-object v0, v2

    .line 129
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activeCustomizationVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is overridden by home.cust.active for debug purpose"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "DynCustHandler"

    invoke-static {v3, v1}, Lcom/sonymobile/launcher/util/Log;->d(Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    .end local v2    # "debugActiveCustomVersion":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static checkDynamicConfig(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    invoke-static {p0}, Lcom/sonymobile/launcher/customization/DynamicCustomizationHandler;->needsToDoDynamicCustomization(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "Dynamic configuration triggered"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynCustHandler"

    invoke-static {v1, v0}, Lcom/sonymobile/launcher/util/Log;->i(Ljava/lang/String;[Ljava/lang/String;)I

    .line 48
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getOwnOrderApps()Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->stopBindOwnOrderApps()V

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "create_empty_db"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    .line 57
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/sonymobile/launcher/customization/DynamicCustomizationHandler;->setDynamicCustomizationTriggered(Landroid/content/Context;Z)V

    .line 59
    return v1

    .line 61
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static hasDynamicCustomizationTriggered(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "xperia_cust_dynamic_triggered"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static needsToDoDynamicCustomization(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "changed":Z
    invoke-static {}, Lcom/sonymobile/launcher/customization/DynamicCustomizationHandler;->activeCustomizationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-static {p0}, Lcom/sonymobile/launcher/customization/DynamicCustomizationHandler;->hasDynamicCustomizationTriggered(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 118
    :cond_0
    return v0
.end method

.method private static setDynamicCustomizationTriggered(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isTriggered"    # Z

    .line 93
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    const-string v1, "xperia_cust_dynamic_triggered"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 97
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 98
    const-string v1, "setDynamicCustomizationTriggered: Couldn\'t write preferences"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynCustHandler"

    invoke-static {v2, v1}, Lcom/sonymobile/launcher/util/Log;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    :cond_0
    return-void
.end method
