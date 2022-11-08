.class public Lcom/android/launcher3/taskbar/TaskbarPopupController;
.super Ljava/lang/Object;
.source "TaskbarPopupController.java"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarSplitShortcut;,
        Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarPopupItemDragHandler;
    }
.end annotation


# static fields
.field private static final APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/taskbar/BaseTaskbarContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;


# direct methods
.method public static synthetic $r8$lambda$WeyUHQNfF0yoCUTvi8qls_G10dQ(Lcom/android/launcher3/taskbar/TaskbarPopupController;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->updateNotificationDots(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bjb975abNcaSEGI3LHUx6w6azVU(Lcom/android/launcher3/taskbar/TaskbarPopupController;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->createSplitShortcutFactory(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)Lcom/android/launcher3/popup/SystemShortcut$Factory;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/launcher3/taskbar/TaskbarPopupController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarPopupController;->APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 2
    .param p1, "context"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 74
    new-instance v0, Lcom/android/launcher3/popup/PopupDataProvider;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/taskbar/TaskbarPopupController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/PopupDataProvider;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    .line 75
    return-void
.end method

.method private createSplitShortcutFactory(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .locals 1
    .param p1, "position"    # Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;",
            ")",
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/taskbar/BaseTaskbarContext;",
            ">;"
        }
    .end annotation

    .line 246
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V

    return-object v0
.end method

.method private getSystemShortcuts()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/launcher3/popup/SystemShortcut$Factory;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 183
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getSplitPositionOptions(Lcom/android/launcher3/DeviceProfile;)Ljava/util/List;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/taskbar/TaskbarPopupController;)V

    .line 185
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarPopupController;->APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    .line 186
    invoke-static {v1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 182
    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$createSplitShortcutFactory$5(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 1
    .param p0, "position"    # Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;
    .param p1, "context"    # Lcom/android/launcher3/taskbar/BaseTaskbarContext;
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "originalView"    # Landroid/view/View;

    .line 246
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarSplitShortcut;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarSplitShortcut;-><init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V

    return-object v0
.end method

.method static synthetic lambda$showForIcon$2(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/popup/SystemShortcut$Factory;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 1
    .param p0, "context"    # Lcom/android/launcher3/taskbar/BaseTaskbarContext;
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "icon"    # Lcom/android/launcher3/BubbleTextView;
    .param p3, "s"    # Lcom/android/launcher3/popup/SystemShortcut$Factory;

    .line 163
    invoke-interface {p3, p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut$Factory;->getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$showForIcon$3(Lcom/android/launcher3/taskbar/BaseTaskbarContext;)V
    .locals 1
    .param p0, "context"    # Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->onPopupVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic lambda$showForIcon$4(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 2
    .param p0, "context"    # Lcom/android/launcher3/taskbar/BaseTaskbarContext;
    .param p1, "container"    # Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 171
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->post(Ljava/lang/Runnable;)Z

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setOnCloseCallback(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method static synthetic lambda$updateNotificationDots$0(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "packageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;
    .param p1, "updatedDots"    # Ljava/util/function/Predicate;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 98
    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/PackageUserKey;->updateFromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 98
    :goto_1
    return v0
.end method

.method private updateNotificationDots(Ljava/util/function/Predicate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p1, "updatedDots":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/util/PackageUserKey;>;"
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 98
    .local v0, "packageUserKey":Lcom/android/launcher3/util/PackageUserKey;
    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;)V

    .line 101
    .local v1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/taskbar/TaskbarPopupController;Ljava/util/function/Predicate;)V

    .line 121
    .local v2, "op":Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 122
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v3}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v3

    .line 123
    .local v3, "folder":Lcom/android/launcher3/folder/Folder;
    if-eqz v3, :cond_0

    .line 124
    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/Folder;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TaskbarPopupController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/popup/PopupDataProvider;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 195
    return-void
.end method

.method public getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    return-object v0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 1
    .param p1, "controllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 78
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->addNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    .line 81
    return-void
.end method

.method synthetic lambda$updateNotificationDots$1$com-android-launcher3-taskbar-TaskbarPopupController(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 5
    .param p1, "matcher"    # Ljava/util/function/Predicate;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "v"    # Landroid/view/View;

    .line 102
    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    instance-of v0, p3, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    move-object v0, p3

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/BubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_1

    .line 106
    :cond_0
    instance-of v0, p2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_2

    instance-of v0, p3, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_2

    .line 107
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    .line 108
    .local v0, "fi":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v1, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    new-instance v1, Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-direct {v1}, Lcom/android/launcher3/dot/FolderDotInfo;-><init>()V

    .line 110
    .local v1, "folderDotInfo":Lcom/android/launcher3/dot/FolderDotInfo;
    iget-object v2, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 111
    .local v3, "si":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/popup/PopupDataProvider;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/dot/FolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    .line 112
    .end local v3    # "si":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_0

    .line 113
    :cond_1
    move-object v2, p3

    check-cast v2, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/folder/FolderIcon;->setDotInfo(Lcom/android/launcher3/dot/FolderDotInfo;)V

    .line 118
    .end local v0    # "fi":Lcom/android/launcher3/model/data/FolderInfo;
    .end local v1    # "folderDotInfo":Lcom/android/launcher3/dot/FolderDotInfo;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->removeNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    .line 85
    return-void
.end method

.method public setDeepShortcutMap(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p1, "deepShortcutMapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher3/util/ComponentKey;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->setDeepShortcutMap(Ljava/util/HashMap;)V

    .line 94
    return-void
.end method

.method public showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .locals 7
    .param p1, "icon"    # Lcom/android/launcher3/BubbleTextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/BubbleTextView;",
            ")",
            "Lcom/android/launcher3/popup/PopupContainerWithArrow<",
            "Lcom/android/launcher3/taskbar/BaseTaskbarContext;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    .line 134
    .local v0, "context":Lcom/android/launcher3/taskbar/BaseTaskbarContext;
    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->clearFocus()V

    .line 137
    return-object v2

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 140
    .local v1, "item":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-static {v1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    return-object v2

    .line 144
    :cond_1
    nop

    .line 145
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$layout;->popup_container:I

    .line 146
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v4

    const/4 v5, 0x0

    .line 145
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 147
    .local v2, "container":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<Lcom/android/launcher3/taskbar/BaseTaskbarContext;>;"
    new-instance v3, Lcom/android/launcher3/taskbar/TaskbarPopupController$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/launcher3/taskbar/TaskbarPopupController$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarPopupController;Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 155
    new-instance v3, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarPopupItemDragHandler;

    invoke-direct {v3, p0}, Lcom/android/launcher3/taskbar/TaskbarPopupController$TaskbarPopupItemDragHandler;-><init>(Lcom/android/launcher3/taskbar/TaskbarPopupController;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setPopupItemDragHandler(Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;)V

    .line 156
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/taskbar/TaskbarDragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 158
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    .line 159
    invoke-virtual {v3, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getShortcutCountForItem(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    .line 160
    invoke-virtual {v4, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getNotificationKeysForItem(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/util/List;

    move-result-object v4

    .line 162
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->getSystemShortcuts()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0, v1, p1}, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/BubbleTextView;)V

    .line 163
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda1;-><init>()V

    .line 164
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 165
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 158
    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->populateAndShow(Lcom/android/launcher3/BubbleTextView;ILjava/util/List;Ljava/util/List;)V

    .line 166
    invoke-virtual {v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->requestFocus()Z

    .line 169
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->onPopupVisibilityChanged(Z)V

    .line 170
    new-instance v3, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v2}, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setOnCloseCallback(Ljava/lang/Runnable;)V

    .line 175
    return-object v2
.end method
