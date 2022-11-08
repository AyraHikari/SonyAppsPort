.class public final Lcom/sonymobile/launcher/util/HomeUtils;
.super Ljava/lang/Object;
.source "HomeUtils.java"


# static fields
.field private static final ACTION_LAUNCH_MULTI_WINDOW:Ljava/lang/String; = "com.sonymobile.senseapp.action.LAUNCH_MULTI_WINDOW"

.field private static final ACTION_LAUNCH_SIDE_SENSE_MENU:Ljava/lang/String; = "com.sonymobile.senseapp.action.LAUNCH_SIDE_SENSE_MENU"

.field private static final DUALDRIVE_PACKAGE:Ljava/lang/String; = "com.sonymobile.dualdrive"

.field private static final HOTSPORT_SHORTCUT_RESOURCE_ID:Ljava/lang/String; = "tether_settings_title_all"

.field private static final MULTI_WINDOW_SHORTCUT_RESOURCE_ID:Ljava/lang/String; = "ss_strings_multi_window_launcher_wide_screen_txt"

.field private static final MULTI_WINDOW_SWITCH_SHORTCUT_RESOURCE_ID:Ljava/lang/String; = "dd_strings_dualdrive_launcher_txt"

.field private static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final SIDESENSE_PACKAGE:Ljava/lang/String; = "com.sonymobile.sidesenseapp"

.field private static final WINDOW_MANAGER_PACKAGE:Ljava/lang/String; = "com.sonymobile.sidesenseapp"

.field private static final WINDOW_MANAGER_SHORTCUT_RESOURCE_ID:Ljava/lang/String; = "ss_strings_window_manager_launcher_txt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 47
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    if-eqz p1, :cond_1

    .line 48
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 49
    .local v3, "element":Ljava/lang/Object;, "TT;"
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    const/4 v0, 0x1

    return v0

    .line 48
    .end local v3    # "element":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_1
    return v0
.end method

.method private static getResName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    .line 104
    const-string v0, "com.sonymobile.sidesenseapp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-string v0, "com.sonymobile.senseapp.action.LAUNCH_MULTI_WINDOW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "ss_strings_multi_window_launcher_wide_screen_txt"

    return-object v0

    .line 108
    :cond_0
    const-string v0, "com.sonymobile.senseapp.action.LAUNCH_SIDE_SENSE_MENU"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    const-string v0, "ss_strings_window_manager_launcher_txt"

    return-object v0

    .line 112
    :cond_1
    const-string v0, "com.android.settings"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const-string v0, "tether_settings_title_all"

    return-object v0

    .line 115
    :cond_2
    const-string v0, "com.sonymobile.dualdrive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    const-string v0, "dd_strings_dualdrive_launcher_txt"

    return-object v0

    .line 119
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getShortcutName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 67
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    return-object p1

    .line 72
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 74
    .local v2, "packageName":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    return-object p1

    .line 78
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "action":Ljava/lang/String;
    :cond_3
    invoke-static {v2, v1}, Lcom/sonymobile/launcher/util/HomeUtils;->getResName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "resName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 81
    return-object p1

    .line 84
    :cond_4
    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 86
    .local v4, "pkgContext":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 87
    .local v5, "resource":Landroid/content/res/Resources;
    const-string v6, "string"

    invoke-virtual {v5, v3, v6, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 88
    .local v6, "resourceId":I
    if-gtz v6, :cond_5

    .line 89
    return-object p1

    .line 91
    :cond_5
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "text":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_6

    .line 93
    return-object v7

    .line 98
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "resName":Ljava/lang/String;
    .end local v4    # "pkgContext":Landroid/content/Context;
    .end local v5    # "resource":Landroid/content/res/Resources;
    .end local v6    # "resourceId":I
    .end local v7    # "text":Ljava/lang/String;
    :cond_6
    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HomeUtils"

    const-string v2, "Failed to get shortcut name"

    invoke-static {v1, v2, v0}, Lcom/sonymobile/launcher/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object p1
.end method
