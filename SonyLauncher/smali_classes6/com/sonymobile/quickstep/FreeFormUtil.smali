.class public Lcom/sonymobile/quickstep/FreeFormUtil;
.super Ljava/lang/Object;
.source "FreeFormUtil.java"


# static fields
.field private static final SOMC_FREE_FORM_ACTION_SHOW:Ljava/lang/String; = "com.sonymobile.freeformcontroller.action.SHOW_FROM_RECENTS"

.field private static final SOMC_FREE_FORM_BLACK_LIST_DEF_TYPE:Ljava/lang/String; = "array"

.field private static final SOMC_FREE_FORM_BLACK_LIST_NAME:Ljava/lang/String; = "tw_black_list"

.field private static final SOMC_FREE_FORM_CLASS_NAME:Ljava/lang/String; = "com.sonymobile.freeformcontroller.FreeformControllerService"

.field private static final SOMC_FREE_FORM_EXTRA_COMPONENT_NAME:Ljava/lang/String; = "com.sonymobile.freeformcontroller.extra.COMPONENT_NAME"

.field private static final SOMC_FREE_FORM_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.freeformcontroller"

.field private static sProhibitedPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getComponentInFreeForm(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 122
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 123
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 124
    const-string v2, "com.sonymobile.freeformcontroller"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 125
    const-string v2, "tw_state"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 127
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 128
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 130
    .local v9, "componentNameStr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v8, v2

    .line 131
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    const-string v2, "component_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v2

    .line 137
    :cond_0
    if-eqz v8, :cond_2

    .line 138
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 137
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_1

    .line 138
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_1
    throw v2

    .line 134
    :catch_0
    move-exception v2

    .line 137
    if-eqz v8, :cond_2

    .line 138
    goto :goto_0

    .line 141
    :cond_2
    :goto_1
    if-nez v9, :cond_3

    .line 142
    const/4 v2, 0x0

    return-object v2

    .line 144
    :cond_3
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    return-object v2
.end method

.method private static hasFreeFormFeature(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.freeform_window_management"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAospFreeFromEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    invoke-static {p0}, Lcom/sonymobile/quickstep/FreeFormUtil;->isFreeFormDevOptionEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sonymobile/quickstep/FreeFormUtil;->hasFreeFormFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isComponentNameSame(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "componentName1"    # Landroid/content/ComponentName;
    .param p1, "componentName2"    # Landroid/content/ComponentName;

    .line 114
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isFreeFormDevOptionEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_freeform_support"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static isPackageNameSame(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 2
    .param p0, "componentName1"    # Landroid/content/ComponentName;
    .param p1, "componentName2"    # Landroid/content/ComponentName;

    .line 105
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x1

    return v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isProhibited(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 69
    const-string v0, "com.sonymobile.freeformcontroller"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 70
    return v1

    .line 72
    :cond_0
    sget-object v2, Lcom/sonymobile/quickstep/FreeFormUtil;->sProhibitedPackageNames:Ljava/util/List;

    if-nez v2, :cond_2

    .line 74
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 75
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 76
    .local v2, "res":Landroid/content/res/Resources;
    const-string v3, "tw_black_list"

    const-string v4, "array"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, "resId":I
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/sonymobile/quickstep/FreeFormUtil;->sProhibitedPackageNames:Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "resId":I
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_1
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 86
    :cond_2
    :goto_0
    sget-object v0, Lcom/sonymobile/quickstep/FreeFormUtil;->sProhibitedPackageNames:Ljava/util/List;

    if-nez v0, :cond_3

    .line 87
    return v1

    .line 89
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/sonymobile/quickstep/FreeFormUtil;->sProhibitedPackageNames:Ljava/util/List;

    .line 90
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    .line 89
    :cond_5
    return v1
.end method

.method public static isRunningInFreeForm(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 54
    invoke-static {p0}, Lcom/sonymobile/quickstep/FreeFormUtil;->getComponentInFreeForm(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 55
    .local v0, "componentNameInFreeForm":Landroid/content/ComponentName;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 56
    return v1

    .line 58
    :cond_0
    invoke-static {v0, p1}, Lcom/sonymobile/quickstep/FreeFormUtil;->isPackageNameSame(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    return v1

    .line 61
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static isSomcFreeFromEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 35
    invoke-static {p0}, Lcom/sonymobile/quickstep/FreeFormUtil;->hasFreeFormFeature(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static showInSomcFreeForm(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 43
    if-nez p1, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sonymobile.freeformcontroller"

    const-string v2, "com.sonymobile.freeformcontroller.FreeformControllerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "com.sonymobile.freeformcontroller.action.SHOW_FROM_RECENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sonymobile.freeformcontroller.extra.COMPONENT_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51
    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 65
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 66
    return-void
.end method
