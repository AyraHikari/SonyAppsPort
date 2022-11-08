.class Lcom/android/quickstep/TaskShortcutFactory$1;
.super Ljava/lang/Object;
.source "TaskShortcutFactory.java"

# interfaces
.implements Lcom/android/quickstep/TaskShortcutFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskShortcutFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 5
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p2, "taskContainer"    # Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 85
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 86
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;
    new-instance v1, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;

    .line 87
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->containsMultipleTasks()Z

    move-result v2

    .line 88
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/quickstep/TaskUtils;->getTitle(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 89
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getA11yNodeId()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;-><init>(ZLjava/lang/CharSequence;I)V

    .line 91
    .local v1, "accessibilityInfo":Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;
    new-instance v2, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0, v1}, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;)V

    return-object v2
.end method

.method public showForSplitscreen()Z
    .locals 1

    .line 96
    const/4 v0, 0x1

    return v0
.end method
