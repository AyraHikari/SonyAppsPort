.class public Lcom/android/launcher3/taskbar/TaskbarUIController;
.super Ljava/lang/Object;
.source "TaskbarUIController.java"


# static fields
.field public static final DEFAULT:Lcom/android/launcher3/taskbar/TaskbarUIController;


# instance fields
.field protected mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarUIController;->DEFAULT:Lcom/android/launcher3/taskbar/TaskbarUIController;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 98
    const-string v1, "%sTaskbarUIController: using an instance of %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public getAppIconsForEdu()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    return-object v0
.end method

.method public hideAllApps()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->hide()V

    .line 83
    return-void
.end method

.method protected init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0
    .param p1, "taskbarControllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 40
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 41
    return-void
.end method

.method protected isTaskbarTouchable()Z
    .locals 1

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 46
    return-void
.end method

.method public onExpandPip()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    .line 91
    .local v0, "stashController":Lcom/android/launcher3/taskbar/TaskbarStashController;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 92
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState()V

    .line 94
    .end local v0    # "stashController":Lcom/android/launcher3/taskbar/TaskbarStashController;
    :cond_0
    return-void
.end method

.method protected onStashedInAppChanged()V
    .locals 0

    .line 57
    return-void
.end method

.method public onTaskbarIconLaunched(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 64
    return-void
.end method

.method public setSystemGestureInProgress(Z)V
    .locals 1
    .param p1, "inProgress"    # Z

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->setSystemGestureInProgress(Z)V

    .line 76
    return-void
.end method

.method public supportsVisualStashing()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 54
    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
