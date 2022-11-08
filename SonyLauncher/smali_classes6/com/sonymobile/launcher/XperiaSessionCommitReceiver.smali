.class public Lcom/sonymobile/launcher/XperiaSessionCommitReceiver;
.super Lcom/android/launcher3/SessionCommitReceiver;
.source "XperiaSessionCommitReceiver.java"


# static fields
.field private static final APPS_PENDING_INSTALL:Ljava/lang/String; = "apps_to_install"

.field private static final APP_INSTALL_REASONS:Ljava/lang/String; = "app_install_reasons"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/launcher3/SessionCommitReceiver;-><init>()V

    return-void
.end method

.method public static getInstallReason(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "installReason":Ljava/lang/Integer;
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 51
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "app_install_reasons"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "jsonString":Ljava/lang/String;
    if-eqz v4, :cond_0

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v5, "json":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v0, v6

    .line 56
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v4    # "jsonString":Ljava/lang/String;
    .local v3, "jsonString":Ljava/lang/String;
    nop

    .line 62
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    return-object v0

    .line 58
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v5    # "json":Lorg/json/JSONObject;
    .restart local v4    # "jsonString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 60
    return-object v3
.end method

.method public static removeInstallReason(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 67
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "app_install_reasons"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "jsonString":Ljava/lang/String;
    if-eqz v2, :cond_0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v3, "json":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 77
    nop

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    return-void

    .line 74
    .end local v3    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 76
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 83
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 87
    :cond_0
    const-string v0, "android.content.pm.extra.SESSION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 88
    .local v0, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 90
    .local v1, "user":Landroid/os/UserHandle;
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    return-void

    .line 94
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallReason()I

    move-result v2

    .line 95
    .local v2, "installReason":I
    const-class v3, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherApps;

    .line 96
    .local v3, "launcherApps":Landroid/content/pm/LauncherApps;
    nop

    .line 97
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {v3, v4, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 100
    .local v4, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    invoke-static {p1}, Lcom/sonymobile/launcher/XperiaSessionCommitReceiver;->isEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 101
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 102
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 103
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const/4 v6, 0x0

    const-string v7, "app_install_reasons"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "jsonString":Ljava/lang/String;
    if-eqz v6, :cond_3

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 107
    .local v8, "json":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v9

    .line 111
    goto :goto_1

    .line 109
    .end local v8    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 110
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 113
    .end local v8    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 114
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v6    # "jsonString":Ljava/lang/String;
    :cond_4
    sget-object v5, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v5, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/ItemInstallQueue;

    .line 118
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/android/launcher3/model/ItemInstallQueue;->queueItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 120
    :cond_5
    return-void
.end method
