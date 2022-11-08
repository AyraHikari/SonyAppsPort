.class public interface abstract Lcom/android/launcher3/views/AppLauncher;
.super Ljava/lang/Object;
.source "AppLauncher.java"

# interfaces
.implements Lcom/android/launcher3/views/ActivityContext;


# static fields
.field public static final TAG:Ljava/lang/String; = "AppLauncher"


# direct methods
.method public static synthetic lambda$startActivitySafely$0(Lcom/android/launcher3/views/AppLauncher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "_this"    # Lcom/android/launcher3/views/AppLauncher;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p4, "d"    # Landroid/content/DialogInterface;
    .param p5, "i"    # I

    .line 82
    invoke-interface {p0, p1, p2, p3}, Lcom/android/launcher3/views/AppLauncher;->startActivitySafelyMain(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    return-void
.end method


# virtual methods
.method public getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 149
    const/4 v0, 0x0

    .local v0, "left":I
    const/4 v1, 0x0

    .line 150
    .local v1, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .local v2, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 151
    .local v3, "height":I
    instance-of v4, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_0

    .line 153
    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v4}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v4

    .line 154
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 155
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 156
    .local v5, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v6, v2, v6

    div-int/lit8 v0, v6, 0x2

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 158
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 159
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 162
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "bounds":Landroid/graphics/Rect;
    :cond_0
    nop

    .line 163
    invoke-static {p1, v0, v1, v2, v3}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v4

    .line 165
    .local v4, "options":Landroid/app/ActivityOptions;
    nop

    .line 166
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    goto :goto_0

    .line 167
    :cond_1
    const/4 v5, 0x0

    .line 165
    :goto_0
    invoke-virtual {v4, v5}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 168
    new-instance v5, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v5}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    .line 169
    .local v5, "callback":Lcom/android/launcher3/util/RunnableList;
    new-instance v6, Lcom/android/launcher3/util/ActivityOptionsWrapper;

    invoke-direct {v6, v4, v5}, Lcom/android/launcher3/util/ActivityOptionsWrapper;-><init>(Landroid/app/ActivityOptions;Lcom/android/launcher3/util/RunnableList;)V

    return-object v6
.end method

.method public isAppBlockedForSafeMode()Z
    .locals 1

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public logAppLaunch(Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V
    .locals 2
    .param p1, "statsLogManager"    # Lcom/android/launcher3/logging/StatsLogManager;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 138
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 139
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 140
    return-void
.end method

.method public onErrorStartingShortcut(Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 73
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 74
    .local v0, "context":Landroid/content/Context;
    invoke-interface {p0}, Lcom/android/launcher3/views/AppLauncher;->isAppBlockedForSafeMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0, p2}, Lcom/android/launcher3/util/PackageManagerHelper;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    sget v1, Lcom/android/launcher3/R$string;->safemode_shortcut_error:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 76
    return v2

    .line 79
    :cond_0
    invoke-interface {p0}, Lcom/android/launcher3/views/AppLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v1, :cond_1

    .line 80
    invoke-static {v0, p2}, Lcom/android/launcher3/uioverrides/SomcUtils;->canSplitActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    new-instance v1, Lcom/android/launcher3/views/AppLauncher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/launcher3/views/AppLauncher$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/views/AppLauncher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3}, Lcom/android/launcher3/uioverrides/SomcUtils;->showConfirmationDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 84
    return v2

    .line 86
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/android/launcher3/views/AppLauncher;->startActivitySafelyMain(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    return v1
.end method

.method public startActivitySafelyMain(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 92
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 93
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p0, p1, p3}, Lcom/android/launcher3/views/AppLauncher;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 94
    .local v2, "optsBundle":Landroid/os/Bundle;
    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 97
    .local v1, "user":Landroid/os/UserHandle;
    :goto_1
    const/high16 v3, 0x10000000

    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    if-eqz p1, :cond_2

    .line 99
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 102
    :cond_2
    const/4 v3, 0x0

    :try_start_0
    instance-of v4, p3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    iget v4, p3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eq v4, v5, :cond_3

    iget v4, p3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v6, 0x6

    if-ne v4, v6, :cond_4

    :cond_3
    move-object v4, p3

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 105
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v5

    goto :goto_2

    :cond_4
    move v4, v3

    .line 106
    .local v4, "isShortcut":Z
    :goto_2
    if-eqz v4, :cond_5

    .line 108
    invoke-interface {p0, p2, v2, p3}, Lcom/android/launcher3/views/AppLauncher;->startShortcutIntentSafely(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_4

    .line 109
    :cond_5
    if-eqz v1, :cond_7

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    .line 113
    :cond_6
    const-class v6, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/LauncherApps;

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 113
    invoke-virtual {v6, v7, v1, v8, v2}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    goto :goto_4

    .line 111
    :cond_7
    :goto_3
    invoke-virtual {v0, p2, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 116
    :goto_4
    if-eqz p3, :cond_8

    .line 117
    new-instance v6, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v6}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v6}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v6

    .line 118
    .local v6, "instanceId":Lcom/android/launcher3/logging/InstanceId;
    invoke-interface {p0}, Lcom/android/launcher3/views/AppLauncher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v7

    invoke-interface {p0, v7, p3, v6}, Lcom/android/launcher3/views/AppLauncher;->logAppLaunch(Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v6    # "instanceId":Lcom/android/launcher3/logging/InstanceId;
    :cond_8
    return v5

    .line 121
    .end local v4    # "isShortcut":Z
    :catch_0
    move-exception v4

    .line 122
    .local v4, "e":Ljava/lang/RuntimeException;
    sget v5, Lcom/android/launcher3/R$string;->activity_not_found:I

    invoke-static {v0, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to launch. tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AppLauncher"

    invoke-static {v6, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .end local v4    # "e":Ljava/lang/RuntimeException;
    return v3
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "startActivityOptions"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 216
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/LauncherApps;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "AppLauncher"

    const-string v2, "Failed to start shortcut"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public startShortcutIntentSafely(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "optsBundle"    # Landroid/os/Bundle;
    .param p3, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 181
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .local v0, "oldPolicy":Landroid/os/StrictMode$VmPolicy;
    :try_start_1
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 186
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 189
    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 190
    move-object v1, p3

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v7, p3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    move-object v2, p0

    move-object v6, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/launcher3/views/AppLauncher;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 193
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "id":Ljava/lang/String;
    goto :goto_0

    .line 195
    :cond_0
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :goto_0
    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 199
    nop

    .line 204
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$VmPolicy;
    goto :goto_1

    .line 198
    .restart local v0    # "oldPolicy":Landroid/os/StrictMode$VmPolicy;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 199
    nop

    .end local p0    # "this":Lcom/android/launcher3/views/AppLauncher;
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "optsBundle":Landroid/os/Bundle;
    .end local p3    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    throw v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 200
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$VmPolicy;
    .restart local p0    # "this":Lcom/android/launcher3/views/AppLauncher;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "optsBundle":Landroid/os/Bundle;
    .restart local p3    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-interface {p0, p1, p3}, Lcom/android/launcher3/views/AppLauncher;->onErrorStartingShortcut(Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1
    return-void

    .line 202
    .restart local v0    # "e":Ljava/lang/SecurityException;
    :cond_1
    throw v0
.end method
