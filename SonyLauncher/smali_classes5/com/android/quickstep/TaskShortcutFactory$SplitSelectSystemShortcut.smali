.class public Lcom/android/quickstep/TaskShortcutFactory$SplitSelectSystemShortcut;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "TaskShortcutFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskShortcutFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitSelectSystemShortcut"
.end annotation


# instance fields
.field private final mSplitPositionOption:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

.field private final mTaskView:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V
    .locals 6
    .param p1, "target"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p2, "taskView"    # Lcom/android/quickstep/views/TaskView;
    .param p3, "option"    # Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    .line 141
    iget v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->iconResId:I

    iget v2, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->textResId:I

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v4

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    .line 142
    iput-object p2, p0, Lcom/android/quickstep/TaskShortcutFactory$SplitSelectSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    .line 143
    iput-object p3, p0, Lcom/android/quickstep/TaskShortcutFactory$SplitSelectSystemShortcut;->mSplitPositionOption:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    .line 144
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$SplitSelectSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 149
    .local v0, "key":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/quickstep/FreeFormUtil;->isRunningInFreeForm(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->recents_error_toast_cannot_open_multi_window_from_popup_window:I

    invoke-static {v1, v2}, Lcom/sonymobile/quickstep/FreeFormUtil;->showToast(Landroid/content/Context;I)V

    .line 154
    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/TaskShortcutFactory$SplitSelectSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v2, p0, Lcom/android/quickstep/TaskShortcutFactory$SplitSelectSystemShortcut;->mSplitPositionOption:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->initiateSplitSelect(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V

    .line 158
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->getInstance()Lcom/sonymobile/launcher/idd/Idd$SplitScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/TaskShortcutFactory$SplitSelectSystemShortcut;->mTaskView:Lcom/android/quickstep/views/TaskView;

    .line 159
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 158
    const-string v3, "recent"

    invoke-virtual {v1, v3, v2}, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->startSplitScreen(Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 160
    return-void
.end method
