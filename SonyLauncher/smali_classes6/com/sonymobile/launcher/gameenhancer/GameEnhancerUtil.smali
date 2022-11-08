.class public final Lcom/sonymobile/launcher/gameenhancer/GameEnhancerUtil;
.super Ljava/lang/Object;
.source "GameEnhancerUtil.java"


# static fields
.field private static SETTINGS_APP_PACKAGE:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "GameEnhancerUtil"

    sput-object v0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerUtil;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "com.android.settings"

    sput-object v0, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerUtil;->SETTINGS_APP_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGameEnhancerItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 3

    .line 82
    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    .line 83
    .local v0, "wi":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    .line 84
    iget v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    .line 85
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    .line 86
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerConst;->GAME_ENHANCER_MAIN_LAUNCHER_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 88
    return-object v0
.end method

.method public static existsGameEnhancerShortcut(Lcom/android/launcher3/Workspace;)Z
    .locals 12
    .param p0, "workspace"    # Lcom/android/launcher3/Workspace;

    .line 33
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 34
    .local v0, "cellLayouts":[Lcom/android/launcher3/CellLayout;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    .line 35
    .local v4, "page":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    .line 36
    .local v5, "container":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-virtual {v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_4

    .line 37
    invoke-virtual {v5, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 39
    .local v8, "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez v9, :cond_0

    .line 40
    goto :goto_2

    .line 43
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 45
    .local v9, "wItemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget v10, v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    if-eqz v10, :cond_1

    .line 46
    goto :goto_2

    .line 49
    :cond_1
    invoke-virtual {v9}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 51
    .local v10, "cn":Landroid/content/ComponentName;
    if-nez v10, :cond_2

    .line 52
    goto :goto_2

    .line 55
    :cond_2
    sget-object v11, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerConst;->GAME_ENHANCER_MAIN_LAUNCHER_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 56
    nop

    .line 36
    .end local v8    # "v":Landroid/view/View;
    .end local v9    # "wItemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v10    # "cn":Landroid/content/ComponentName;
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 59
    .restart local v8    # "v":Landroid/view/View;
    .restart local v9    # "wItemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .restart local v10    # "cn":Landroid/content/ComponentName;
    :cond_3
    return v7

    .line 34
    .end local v4    # "page":Lcom/android/launcher3/CellLayout;
    .end local v5    # "container":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .end local v6    # "i":I
    .end local v8    # "v":Landroid/view/View;
    .end local v9    # "wItemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v10    # "cn":Landroid/content/ComponentName;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_5
    return v2
.end method

.method public static existsGameEnhancerShortcut(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)Z"
        }
    .end annotation

    .line 67
    .local p0, "workspaceItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 68
    .local v1, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v2, :cond_0

    .line 69
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 73
    .local v2, "cn":Landroid/content/ComponentName;
    sget-object v3, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerConst;->GAME_ENHANCER_MAIN_LAUNCHER_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 78
    .end local v1    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v2    # "cn":Landroid/content/ComponentName;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static getStringFromSettingsApp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringName"    # Ljava/lang/String;

    .line 118
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerUtil;->SETTINGS_APP_PACKAGE:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    .local v0, "res":Landroid/content/res/Resources;
    const-string v1, "string"

    sget-object v2, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerUtil;->SETTINGS_APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 121
    .local v1, "resourceId":I
    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerUtil;->SETTINGS_APP_PACKAGE:Ljava/lang/String;

    const/4 v4, 0x0

    .line 123
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 124
    .local v2, "s":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 128
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "resourceId":I
    .end local v2    # "s":Ljava/lang/CharSequence;
    :cond_0
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerUtil;->SETTINGS_APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sonymobile/launcher/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static isGameEnhancerApp(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 92
    if-nez p1, :cond_0

    .line 93
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 96
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 97
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 98
    .local v2, "packageName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 99
    const/high16 v3, 0x10000

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 100
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    .line 101
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 103
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 106
    :goto_0
    if-nez v2, :cond_3

    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 110
    :cond_3
    const-string v3, "com.sonymobile.gameenhancer"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method
