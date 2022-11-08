.class Lcom/android/quickstep/TaskShortcutFactory$4;
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

    .line 360
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;-><init>(IILcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    return-void
.end method


# virtual methods
.method protected isAvailable(Lcom/android/launcher3/BaseDraggingActivity;ILcom/android/systemui/shared/recents/model/Task;)Z
    .locals 6
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p2, "displayId"    # I
    .param p3, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "isProhibited":Z
    const/4 v1, 0x0

    .line 366
    .local v1, "isGame":Z
    const/4 v2, 0x0

    if-nez p3, :cond_0

    .line 367
    return v2

    .line 369
    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 370
    .local v3, "component":Landroid/content/ComponentName;
    if-eqz v3, :cond_1

    .line 371
    invoke-static {p1, v3}, Lcom/sonymobile/quickstep/FreeFormUtil;->isProhibited(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    .line 372
    invoke-static {p1}, Lcom/sonymobile/quickstep/GeServiceHelper;->getInstance(Landroid/content/Context;)Lcom/sonymobile/quickstep/GeServiceHelper;

    move-result-object v4

    .line 373
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/quickstep/GeServiceHelper;->maybeGameApp(Ljava/lang/String;)Z

    move-result v1

    .line 375
    :cond_1
    invoke-static {p1}, Lcom/sonymobile/quickstep/FreeFormUtil;->isSomcFreeFromEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method protected makeLaunchOptions(Landroid/app/Activity;)Landroid/app/ActivityOptions;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 381
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onActivityStarted(Lcom/android/launcher3/BaseDraggingActivity;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;

    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareToStartActivity(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p2, "key"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 392
    if-eqz p2, :cond_0

    .line 393
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonymobile/quickstep/FreeFormUtil;->showInSomcFreeForm(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 394
    sget v0, Lcom/android/launcher3/R$string;->recents_guide_toast_tap_card_next_to_popup_window:I

    invoke-static {p1, v0}, Lcom/sonymobile/quickstep/FreeFormUtil;->showToast(Landroid/content/Context;I)V

    .line 396
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incPopupwindowMenuCountUse(Landroid/content/Context;)V

    .line 397
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incPopupwindowMenuCountUseWeekly(Landroid/content/Context;)V

    .line 399
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
