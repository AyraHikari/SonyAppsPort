.class Lcom/android/quickstep/TaskShortcutFactory$2;
.super Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;
.source "TaskShortcutFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskShortcutFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(IILcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V
    .locals 0
    .param p1, "iconRes"    # I
    .param p2, "textRes"    # I
    .param p3, "launcherEvent"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 279
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;-><init>(IILcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    return-void
.end method


# virtual methods
.method public getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 3
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p2, "taskContainer"    # Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 307
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;->getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v0

    .line 308
    .local v0, "shortcut":Lcom/android/launcher3/popup/SystemShortcut;
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_SELECT:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/launcher3/popup/SystemShortcut;->setEnabled(Z)V

    .line 312
    :cond_1
    return-object v0
.end method

.method protected isAvailable(Lcom/android/launcher3/BaseDraggingActivity;ILcom/android/systemui/shared/recents/model/Task;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p2, "displayId"    # I
    .param p3, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 287
    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected makeLaunchOptions(Landroid/app/Activity;)Landroid/app/ActivityOptions;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 317
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    .line 318
    invoke-virtual {p1}, Landroid/app/Activity;->getDisplayId()I

    move-result v1

    .line 317
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getNavBarPosition(I)I

    move-result v0

    .line 319
    .local v0, "navBarPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 320
    const/4 v1, 0x0

    return-object v1

    .line 322
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 323
    .local v1, "dockTopOrLeft":Z
    :goto_0
    invoke-static {v1}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeSplitScreenOptions(Z)Landroid/app/ActivityOptions;

    move-result-object v2

    return-object v2
.end method

.method protected onActivityStarted(Lcom/android/launcher3/BaseDraggingActivity;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;

    .line 328
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incSplitscreenMenuCountUse(Landroid/content/Context;)V

    .line 329
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incSplitscreenMenuCountUseWeekly(Landroid/content/Context;)V

    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method protected prepareToStartActivity(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p2, "key"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 293
    if-eqz p2, :cond_0

    .line 294
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonymobile/quickstep/FreeFormUtil;->isRunningInFreeForm(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    sget v0, Lcom/android/launcher3/R$string;->recents_error_toast_cannot_open_multi_window_from_popup_window:I

    invoke-static {p1, v0}, Lcom/sonymobile/quickstep/FreeFormUtil;->showToast(Landroid/content/Context;I)V

    .line 298
    const/4 v0, 0x0

    return v0

    .line 301
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
