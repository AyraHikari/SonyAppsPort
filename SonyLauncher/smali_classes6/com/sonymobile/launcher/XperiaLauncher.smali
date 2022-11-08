.class public Lcom/sonymobile/launcher/XperiaLauncher;
.super Lcom/android/searchlauncher/SearchLauncher;
.source "XperiaLauncher.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mDestroyed:Z

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDestroyed(Lcom/sonymobile/launcher/XperiaLauncher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonymobile/launcher/XperiaLauncher;->mDestroyed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$minitXssConfiguration(Lcom/sonymobile/launcher/XperiaLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/launcher/XperiaLauncher;->initXssConfiguration()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/sonymobile/launcher/XperiaLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/XperiaLauncher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/android/searchlauncher/SearchLauncher;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/launcher/XperiaLauncher;->mDestroyed:Z

    return-void
.end method

.method private bindAddedInsideFolder(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)Z"
        }
    .end annotation

    .line 72
    .local p1, "addedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "handledItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 75
    .local v1, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 76
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 77
    .local v3, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-lez v4, :cond_1

    .line 78
    nop

    .line 79
    invoke-virtual {p0}, Lcom/sonymobile/launcher/XperiaLauncher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v4

    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/folder/FolderIcon;

    .line 80
    .local v4, "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    if-eqz v4, :cond_1

    .line 82
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {p0}, Lcom/sonymobile/launcher/XperiaLauncher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v5

    .line 86
    .local v5, "parent":Lcom/android/launcher3/CellLayout;
    if-eqz v5, :cond_0

    .line 87
    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 90
    :cond_0
    move-object v6, v3

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 75
    .end local v3    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v4    # "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    .end local v5    # "parent":Lcom/android/launcher3/CellLayout;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 98
    const/4 v2, 0x0

    return v2
.end method

.method private getWorkerHandler()Landroid/os/Handler;
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/sonymobile/launcher/XperiaLauncher;->mWorkerHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "XperiaLauncherHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 131
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 132
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    .line 135
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sonymobile/launcher/XperiaLauncher;->mWorkerHandler:Landroid/os/Handler;

    goto :goto_0

    .line 133
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 137
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/launcher/XperiaLauncher;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initXssConfiguration()V
    .locals 4

    .line 142
    invoke-direct {p0}, Lcom/sonymobile/launcher/XperiaLauncher;->isVSOPSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lcom/sonymobile/launcher/XperiaLauncher;->TAG:Ljava/lang/String;

    const-string v1, "VSOP is not supported"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/launcher/util/Log;->d(Ljava/lang/String;[Ljava/lang/String;)I

    .line 144
    return-void

    .line 146
    :cond_0
    sget-object v0, Lcom/sonymobile/launcher/XperiaLauncher;->TAG:Ljava/lang/String;

    const-string v1, "VSOP is supported"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/launcher/util/Log;->d(Ljava/lang/String;[Ljava/lang/String;)I

    .line 147
    invoke-static {p0}, Lcom/android/launcher3/uioverrides/SomcUtils;->checkIsRroApplied(Landroid/content/Context;)Z

    move-result v0

    .line 148
    .local v0, "isXssRroApplied":Z
    if-eqz v0, :cond_1

    .line 152
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    invoke-virtual {p0}, Lcom/sonymobile/launcher/XperiaLauncher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getOwnOrderApps()Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;->stopBindOwnOrderApps()V

    .line 157
    invoke-virtual {p0}, Lcom/sonymobile/launcher/XperiaLauncher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 158
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v2, "create_empty_db"

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    .line 160
    sget-object v2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/sonymobile/launcher/XperiaLauncher$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/sonymobile/launcher/XperiaLauncher$$ExternalSyntheticLambda0;-><init>(Lcom/sonymobile/launcher/XperiaLauncher;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 171
    invoke-static {p0}, Lcom/android/launcher3/uioverrides/SomcUtils;->checkIsRroApplied(Landroid/content/Context;)Z

    .line 173
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_1
    return-void
.end method

.method private initialize()V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/sonymobile/launcher/XperiaLauncher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/launcher/XperiaLauncher$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/launcher/XperiaLauncher$1;-><init>(Lcom/sonymobile/launcher/XperiaLauncher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 123
    return-void
.end method

.method private isVSOPSupport()Z
    .locals 2

    .line 176
    const-string v0, "ro.semc.version.sw"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "sw":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "newScreens"    # Lcom/android/launcher3/util/IntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntArray;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p2, "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local p3, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-direct {p0, p3}, Lcom/sonymobile/launcher/XperiaLauncher;->bindAddedInsideFolder(Ljava/util/ArrayList;)Z

    .line 67
    invoke-direct {p0, p2}, Lcom/sonymobile/launcher/XperiaLauncher;->bindAddedInsideFolder(Ljava/util/ArrayList;)Z

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/android/searchlauncher/SearchLauncher;->bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 69
    return-void
.end method

.method synthetic lambda$initXssConfiguration$0$com-sonymobile-launcher-XperiaLauncher()V
    .locals 3

    .line 161
    iget-boolean v0, p0, Lcom/sonymobile/launcher/XperiaLauncher;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 162
    sget-object v0, Lcom/sonymobile/launcher/XperiaLauncher;->TAG:Ljava/lang/String;

    const-string v1, "XSS Configuration is executed."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/launcher/util/Log;->d(Ljava/lang/String;[Ljava/lang/String;)I

    .line 163
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 164
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    .line 165
    .local v1, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    invoke-virtual {v1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->onConfigChanged(Landroid/content/Context;)V

    .line 166
    invoke-virtual {p0}, Lcom/sonymobile/launcher/XperiaLauncher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 167
    iget-object v2, p0, Lcom/sonymobile/launcher/XperiaLauncher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    .line 169
    .end local v0    # "app":Lcom/android/launcher3/LauncherAppState;
    .end local v1    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Lcom/android/searchlauncher/SearchLauncher;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0}, Lcom/sonymobile/launcher/XperiaLauncher;->initialize()V

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/sonymobile/launcher/XperiaLauncher;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/launcher/XperiaLauncher;->mWorkerHandler:Landroid/os/Handler;

    .line 59
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/launcher/XperiaLauncher;->mDestroyed:Z

    .line 60
    invoke-super {p0}, Lcom/android/searchlauncher/SearchLauncher;->onDestroy()V

    .line 61
    return-void
.end method
