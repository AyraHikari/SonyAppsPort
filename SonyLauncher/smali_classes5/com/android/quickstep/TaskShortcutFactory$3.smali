.class Lcom/android/quickstep/TaskShortcutFactory$3;
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

    .line 335
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;-><init>(IILcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    return-void
.end method


# virtual methods
.method protected isAvailable(Lcom/android/launcher3/BaseDraggingActivity;ILcom/android/systemui/shared/recents/model/Task;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p2, "displayId"    # I
    .param p3, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 339
    invoke-static {p1}, Lcom/sonymobile/quickstep/FreeFormUtil;->isAospFreeFromEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected makeLaunchOptions(Landroid/app/Activity;)Landroid/app/ActivityOptions;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 344
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeFreeformOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 346
    .local v0, "activityOptions":Landroid/app/ActivityOptions;
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x32

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 347
    .local v1, "r":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 348
    return-object v0
.end method

.method protected onActivityStarted(Lcom/android/launcher3/BaseDraggingActivity;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;

    .line 353
    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->returnToHomescreen()V

    .line 354
    const/4 v0, 0x1

    return v0
.end method
