.class public interface abstract Lcom/android/quickstep/TaskShortcutFactory;
.super Ljava/lang/Object;
.source "TaskShortcutFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/TaskShortcutFactory$PinSystemShortcut;,
        Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;,
        Lcom/android/quickstep/TaskShortcutFactory$SplitSelectSystemShortcut;,
        Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;
    }
.end annotation


# static fields
.field public static final APP_INFO:Lcom/android/quickstep/TaskShortcutFactory;

.field public static final FREE_FORM:Lcom/android/quickstep/TaskShortcutFactory;

.field public static final INSTALL:Lcom/android/quickstep/TaskShortcutFactory;

.field public static final MODAL:Lcom/android/quickstep/TaskShortcutFactory;

.field public static final PIN:Lcom/android/quickstep/TaskShortcutFactory;

.field public static final SCREENSHOT:Lcom/android/quickstep/TaskShortcutFactory;

.field public static final SOMC_FREE_FORM:Lcom/android/quickstep/TaskShortcutFactory;

.field public static final SPLIT_SCREEN:Lcom/android/quickstep/TaskShortcutFactory;

.field public static final WELLBEING:Lcom/android/quickstep/TaskShortcutFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 81
    new-instance v0, Lcom/android/quickstep/TaskShortcutFactory$1;

    invoke-direct {v0}, Lcom/android/quickstep/TaskShortcutFactory$1;-><init>()V

    sput-object v0, Lcom/android/quickstep/TaskShortcutFactory;->APP_INFO:Lcom/android/quickstep/TaskShortcutFactory;

    .line 278
    new-instance v0, Lcom/android/quickstep/TaskShortcutFactory$2;

    sget v1, Lcom/android/launcher3/R$drawable;->ic_split_screen:I

    sget v2, Lcom/android/launcher3/R$string;->recent_task_option_split_screen:I

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_SPLIT_SCREEN_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/quickstep/TaskShortcutFactory$2;-><init>(IILcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    sput-object v0, Lcom/android/quickstep/TaskShortcutFactory;->SPLIT_SCREEN:Lcom/android/quickstep/TaskShortcutFactory;

    .line 334
    new-instance v0, Lcom/android/quickstep/TaskShortcutFactory$3;

    sget v1, Lcom/android/launcher3/R$drawable;->ic_split_screen:I

    sget v2, Lcom/android/launcher3/R$string;->recent_task_option_freeform:I

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_FREE_FORM_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/quickstep/TaskShortcutFactory$3;-><init>(IILcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    sput-object v0, Lcom/android/quickstep/TaskShortcutFactory;->FREE_FORM:Lcom/android/quickstep/TaskShortcutFactory;

    .line 358
    new-instance v0, Lcom/android/quickstep/TaskShortcutFactory$4;

    sget v1, Lcom/android/launcher3/R$drawable;->ic_tw:I

    sget v2, Lcom/android/launcher3/R$string;->recents_action_popup_window:I

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_SOMC_FREE_FORM_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/quickstep/TaskShortcutFactory$4;-><init>(IILcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    sput-object v0, Lcom/android/quickstep/TaskShortcutFactory;->SOMC_FREE_FORM:Lcom/android/quickstep/TaskShortcutFactory;

    .line 403
    new-instance v0, Lcom/android/quickstep/TaskShortcutFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/quickstep/TaskShortcutFactory$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/quickstep/TaskShortcutFactory;->PIN:Lcom/android/quickstep/TaskShortcutFactory;

    .line 450
    new-instance v0, Lcom/android/quickstep/TaskShortcutFactory$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/quickstep/TaskShortcutFactory$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/quickstep/TaskShortcutFactory;->INSTALL:Lcom/android/quickstep/TaskShortcutFactory;

    .line 456
    new-instance v0, Lcom/android/quickstep/TaskShortcutFactory$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/quickstep/TaskShortcutFactory$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/quickstep/TaskShortcutFactory;->WELLBEING:Lcom/android/quickstep/TaskShortcutFactory;

    .line 460
    new-instance v0, Lcom/android/quickstep/TaskShortcutFactory$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/quickstep/TaskShortcutFactory$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/quickstep/TaskShortcutFactory;->SCREENSHOT:Lcom/android/quickstep/TaskShortcutFactory;

    .line 465
    new-instance v0, Lcom/android/quickstep/TaskShortcutFactory$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/quickstep/TaskShortcutFactory$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/android/quickstep/TaskShortcutFactory;->MODAL:Lcom/android/quickstep/TaskShortcutFactory;

    return-void
.end method

.method public static synthetic lambda$static$0(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 2
    .param p0, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p1, "taskContainer"    # Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 404
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 405
    return-object v1

    .line 407
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    return-object v1

    .line 410
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isLockToAppActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    return-object v1

    .line 414
    :cond_2
    new-instance v0, Lcom/android/quickstep/TaskShortcutFactory$PinSystemShortcut;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/TaskShortcutFactory$PinSystemShortcut;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    return-object v0
.end method

.method public static synthetic lambda$static$1(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 3
    .param p0, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p1, "taskContainer"    # Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 451
    invoke-static {p0}, Lcom/android/launcher3/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;

    move-result-object v0

    .line 452
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/util/InstantAppResolver;->isInstantApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$Install;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    .line 454
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/popup/SystemShortcut$Install;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 451
    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$static$2(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 3
    .param p0, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p1, "taskContainer"    # Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 457
    sget-object v0, Lcom/android/launcher3/model/WellbeingModel;->SHORTCUT_FACTORY:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    .line 458
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    .line 457
    invoke-interface {v0, p0, v1, v2}, Lcom/android/launcher3/popup/SystemShortcut$Factory;->getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$static$3(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 3
    .param p0, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p1, "taskContainer"    # Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 461
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    .line 462
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    .line 463
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    .line 462
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getScreenshotShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v0

    .line 461
    return-object v0
.end method

.method public static synthetic lambda$static$4(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 3
    .param p0, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p1, "taskContainer"    # Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 466
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_OVERVIEW_SELECTIONS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    .line 468
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    .line 467
    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getModalStateSystemShortcut(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v0

    return-object v0

    .line 470
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
.end method

.method public showForSplitscreen()Z
    .locals 1

    .line 78
    const/4 v0, 0x0

    return v0
.end method
