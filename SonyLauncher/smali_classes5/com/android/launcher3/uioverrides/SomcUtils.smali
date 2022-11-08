.class public Lcom/android/launcher3/uioverrides/SomcUtils;
.super Ljava/lang/Object;
.source "SomcUtils.java"


# static fields
.field private static final KEY_APP_VERSION:Ljava/lang/String; = "key_app_version"

.field private static final KEY_RRO_NUMBER:Ljava/lang/String; = "key_rro_number"

.field private static final PRODUCT_DEVICE_NAME:Ljava/lang/String; = "ro.semc.product.device"

.field private static final TAG:Ljava/lang/String;

.field private static mAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/android/launcher3/uioverrides/SomcUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/uioverrides/SomcUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canSplit(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 4
    .param p0, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    return v1

    .line 53
    :cond_0
    if-nez p1, :cond_1

    .line 54
    return v1

    .line 56
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 57
    .local v0, "currentUserId":I
    sget-object v2, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/SystemUiProxy;

    const v3, 0x7fffffff

    .line 58
    invoke-virtual {v2, v3, v0}, Lcom/android/quickstep/SystemUiProxy;->getRecentTasks(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 59
    .local v2, "rawTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/wm/shell/util/GroupedRecentTaskInfo;>;"
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/launcher3/uioverrides/SomcUtils;->canSplitActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    const/4 v1, 0x1

    return v1

    .line 65
    :cond_3
    return v1

    .line 60
    :cond_4
    :goto_0
    return v1
.end method

.method public static canSplitActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 69
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 70
    sget-object v1, Lcom/android/launcher3/uioverrides/SomcUtils;->TAG:Ljava/lang/String;

    const-string v2, "Intent is null"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/launcher/util/Log;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 71
    return v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 74
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 75
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    if-nez v2, :cond_1

    .line 76
    sget-object v3, Lcom/android/launcher3/uioverrides/SomcUtils;->TAG:Ljava/lang/String;

    const-string v4, "ActivityInfo is null"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonymobile/launcher/util/Log;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    return v0

    .line 79
    :cond_1
    iget v0, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 80
    .local v0, "resizeMode":I
    invoke-static {v0}, Lcom/android/launcher3/uioverrides/SomcUtils;->canSplitResizeMode(I)Z

    move-result v3

    return v3
.end method

.method public static canSplitResizeMode(I)Z
    .locals 2
    .param p0, "resizeMode"    # I

    .line 84
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_1
    :goto_0
    return v0
.end method

.method public static checkIsRroApplied(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 107
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "key_rro_number"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 110
    .local v3, "prefRroNum":I
    invoke-static {p0}, Lcom/android/launcher3/uioverrides/SomcUtils;->getRroNum(Landroid/content/Context;)I

    move-result v4

    .line 112
    .local v4, "rroNum":I
    sget-object v5, Lcom/android/launcher3/uioverrides/SomcUtils;->TAG:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkIsRroApplied prefRroNumber : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rroNum : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v7}, Lcom/sonymobile/launcher/util/Log;->v(Ljava/lang/String;[Ljava/lang/String;)I

    .line 114
    if-le v4, v3, :cond_0

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    :cond_0
    if-eqz v3, :cond_1

    if-le v4, v3, :cond_1

    .line 120
    return v6

    .line 123
    :cond_1
    return v2
.end method

.method private static getOldVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentVersionName"    # Ljava/lang/String;

    .line 151
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "key_app_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "oldVersionName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 156
    const-string v2, "0"

    .line 158
    :cond_0
    return-object v2
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 2

    .line 166
    const-string v0, "ro.semc.product.device"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/launcher3/uioverrides/SomcUtils;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRroNum(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 92
    const-class v0, Landroid/content/om/OverlayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/om/OverlayManager;

    .line 93
    .local v0, "om":Landroid/content/om/OverlayManager;
    nop

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    .line 95
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/content/om/OverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 97
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    const/4 v2, 0x0

    .line 98
    .local v2, "rroNum":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 99
    .local v4, "info":Landroid/content/om/OverlayInfo;
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    add-int/lit8 v2, v2, 0x1

    .line 101
    :cond_0
    sget-object v5, Lcom/android/launcher3/uioverrides/SomcUtils;->TAG:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OverlayInfo : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/sonymobile/launcher/util/Log;->v(Ljava/lang/String;[Ljava/lang/String;)I

    .line 102
    .end local v4    # "info":Landroid/content/om/OverlayInfo;
    goto :goto_0

    .line 103
    :cond_1
    return v2
.end method

.method private static getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .line 162
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 138
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "0"

    .line 139
    .local v1, "versionName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 142
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 145
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 147
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public static hideDialog(Lcom/android/launcher3/BaseDraggingActivity;)V
    .locals 1
    .param p0, "baseDraggingActivity"    # Lcom/android/launcher3/BaseDraggingActivity;

    .line 189
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/uioverrides/SomcUtils;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/android/launcher3/uioverrides/SomcUtils;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 193
    :cond_0
    return-void
.end method

.method public static isVersionUp(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 127
    invoke-static {p0}, Lcom/android/launcher3/uioverrides/SomcUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "currentVersionName":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/launcher3/uioverrides/SomcUtils;->getOldVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "oldVersionName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 131
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "key_app_version"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public static showConfirmationDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 173
    sget v0, Lcom/android/launcher3/R$string;->confirm_exit_multiwindow:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "message":Ljava/lang/String;
    sget v1, Lcom/android/launcher3/R$string;->confirm_exit_multiwindow_launch:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "okButton":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 178
    invoke-virtual {v2, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 180
    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 182
    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 184
    .local v2, "alertDialog":Landroid/app/AlertDialog;
    sput-object v2, Lcom/android/launcher3/uioverrides/SomcUtils;->mAlertDialog:Landroid/app/AlertDialog;

    .line 185
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 186
    return-void
.end method
