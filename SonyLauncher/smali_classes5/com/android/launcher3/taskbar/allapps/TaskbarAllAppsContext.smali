.class Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;
.super Lcom/android/launcher3/taskbar/BaseTaskbarContext;
.source "TaskbarAllAppsContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;
    }
.end annotation


# instance fields
.field private final mAllAppsViewController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;

.field private final mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

.field private final mDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

.field private final mDragLayer:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

.field private final mOnboardingPrefs:Lcom/android/launcher3/util/OnboardingPrefs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/OnboardingPrefs<",
            "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mStashedTaskbarHeight:I

.field private final mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private final mWillTaskbarBeVisuallyStashed:Z

.field private final mWindowController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDragController(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;)Lcom/android/launcher3/taskbar/TaskbarDragController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStashedTaskbarHeight(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mStashedTaskbarHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWillTaskbarBeVisuallyStashed(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mWillTaskbarBeVisuallyStashed:Z

    return p0
.end method

.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Lcom/android/launcher3/taskbar/TaskbarStashController;)V
    .locals 4
    .param p1, "taskbarContext"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .param p2, "windowController"    # Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;
    .param p3, "taskbarStashController"    # Lcom/android/launcher3/taskbar/TaskbarStashController;

    .line 78
    const/16 v0, 0x7f6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 80
    iput-object p2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mWindowController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    .line 81
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;-><init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    .line 82
    new-instance v0, Lcom/android/launcher3/util/OnboardingPrefs;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/util/OnboardingPrefs;-><init>(Lcom/android/launcher3/views/ActivityContext;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mOnboardingPrefs:Lcom/android/launcher3/util/OnboardingPrefs;

    .line 84
    new-instance v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;-><init>(Landroid/content/Context;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer-IA;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mDragLayer:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

    .line 85
    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/launcher3/R$layout;->taskbar_all_apps:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    .line 87
    .local v0, "slideInView":Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;
    new-instance v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mAllAppsViewController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;

    .line 92
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    .line 94
    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mWillTaskbarBeVisuallyStashed:Z

    .line 95
    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStashedHeight()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mStashedTaskbarHeight:I

    .line 96
    return-void
.end method


# virtual methods
.method public createSearchAdapterProvider(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;)",
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;"
        }
    .end annotation

    .line 161
    .local p1, "appsView":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<*>;"
    new-instance v0, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;-><init>(Lcom/android/launcher3/views/AppLauncher;)V

    return-object v0
.end method

.method getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mAllAppsViewController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;

    return-object v0
.end method

.method public bridge synthetic getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object v0

    return-object v0
.end method

.method public getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    return-object v0
.end method

.method public getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mWindowController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDragController()Lcom/android/launcher3/dragndrop/DragController;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object v0

    return-object v0
.end method

.method public getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mDragLayer:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

    return-object v0
.end method

.method public bridge synthetic getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragLayer()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

    move-result-object v0

    return-object v0
.end method

.method public getItemOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/OnboardingPrefs<",
            "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mOnboardingPrefs:Lcom/android/launcher3/util/OnboardingPrefs;

    return-object v0
.end method

.method public getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    return-object v0
.end method

.method public isBindingItems()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isBindingItems()Z

    move-result v0

    return v0
.end method

.method public onDragEnd()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mWindowController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->maybeCloseWindow()V

    .line 153
    return-void
.end method

.method public onDragStart()V
    .locals 0

    .line 148
    return-void
.end method

.method public onPopupVisibilityChanged(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .line 156
    return-void
.end method
