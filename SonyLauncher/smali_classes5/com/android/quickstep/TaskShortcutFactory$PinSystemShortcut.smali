.class public Lcom/android/quickstep/TaskShortcutFactory$PinSystemShortcut;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "TaskShortcutFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskShortcutFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PinSystemShortcut"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PinSystemShortcut"


# instance fields
.field private final mTaskView:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .locals 6
    .param p1, "target"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p2, "taskContainer"    # Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 425
    sget v1, Lcom/android/launcher3/R$drawable;->ic_pin:I

    sget v2, Lcom/android/launcher3/R$string;->recent_task_option_pin:I

    .line 426
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    .line 425
    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    .line 427
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$PinSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    .line 428
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 432
    iget-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$PinSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$PinSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    .line 433
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$PinSystemShortcut;->mTarget:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/TaskShortcutFactory$PinSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    .line 435
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 434
    invoke-static {v0, v1}, Lcom/sonymobile/quickstep/FreeFormUtil;->isRunningInFreeForm(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$PinSystemShortcut;->mTarget:Landroid/content/Context;

    sget v1, Lcom/android/launcher3/R$string;->recents_error_toast_cannot_pin_popup_window:I

    invoke-static {v0, v1}, Lcom/sonymobile/quickstep/FreeFormUtil;->showToast(Landroid/content/Context;I)V

    .line 438
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$PinSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 442
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/TaskShortcutFactory$PinSystemShortcut;->mTarget:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v1, p0, Lcom/android/quickstep/TaskShortcutFactory$PinSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->startScreenPinning(I)V

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$PinSystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {v0}, Lcom/android/quickstep/TaskShortcutFactory$PinSystemShortcut;->dismissTaskMenuView(Landroid/content/Context;)V

    .line 445
    iget-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$PinSystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/TaskShortcutFactory$PinSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_PIN_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 446
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 447
    return-void
.end method
