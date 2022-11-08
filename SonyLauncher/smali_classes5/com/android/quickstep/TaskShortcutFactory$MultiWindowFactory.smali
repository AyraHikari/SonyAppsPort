.class public abstract Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;
.super Ljava/lang/Object;
.source "TaskShortcutFactory.java"

# interfaces
.implements Lcom/android/quickstep/TaskShortcutFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskShortcutFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultiWindowFactory"
.end annotation


# instance fields
.field private final mIconRes:I

.field private final mLauncherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field private final mTextRes:I


# direct methods
.method constructor <init>(IILcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V
    .locals 0
    .param p1, "iconRes"    # I
    .param p2, "textRes"    # I
    .param p3, "launcherEvent"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;->mIconRes:I

    .line 108
    iput p2, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;->mTextRes:I

    .line 109
    iput-object p3, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;->mLauncherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 110
    return-void
.end method


# virtual methods
.method public getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 10
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p2, "taskContainer"    # Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 124
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 125
    .local v0, "task":Lcom/android/systemui/shared/recents/model/Task;
    iget-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 126
    return-object v2

    .line 128
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;->isAvailable(Lcom/android/launcher3/BaseDraggingActivity;ILcom/android/systemui/shared/recents/model/Task;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    return-object v2

    .line 131
    :cond_1
    new-instance v1, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;

    iget v4, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;->mIconRes:I

    iget v5, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;->mTextRes:I

    iget-object v9, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;->mLauncherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    move-object v3, v1

    move-object v6, p1

    move-object v7, p2

    move-object v8, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;-><init>(IILcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Lcom/android/quickstep/TaskShortcutFactory$MultiWindowFactory;Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    return-object v1
.end method

.method protected abstract isAvailable(Lcom/android/launcher3/BaseDraggingActivity;ILcom/android/systemui/shared/recents/model/Task;)Z
.end method

.method protected abstract makeLaunchOptions(Landroid/app/Activity;)Landroid/app/ActivityOptions;
.end method

.method protected abstract onActivityStarted(Lcom/android/launcher3/BaseDraggingActivity;)Z
.end method

.method protected prepareToStartActivity(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p2, "key"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 118
    const/4 v0, 0x1

    return v0
.end method
