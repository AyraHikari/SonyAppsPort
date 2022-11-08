.class public final Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;
.super Ljava/lang/Object;
.source "TaskbarAllAppsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;
    }
.end annotation


# static fields
.field private static final WINDOW_TITLE:Ljava/lang/String; = "Taskbar All Apps"


# instance fields
.field private mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

.field private mApps:[Lcom/android/launcher3/model/data/AppInfo;

.field private mAppsModelFlags:I

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mPredictedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxyView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;

.field private final mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private final mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllAppsContext(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;)Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProxyView(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;)Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mProxyView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskbarContext(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/DeviceProfile;)V
    .locals 2
    .param p1, "context"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .param p2, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$1;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 84
    iput-object p2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 85
    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 86
    new-instance v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Landroid/content/Context;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView-IA;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mProxyView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;

    .line 87
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 88
    return-void
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .line 208
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    const/4 v2, 0x0

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 212
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "Taskbar All Apps"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 213
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 214
    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 215
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 216
    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 217
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setSystemApplicationOverlay(Z)V

    .line 218
    return-object v0
.end method

.method static synthetic lambda$onDestroy$1(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "c"    # Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    .line 189
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic lambda$updateDeviceProfile$3(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;)V
    .locals 2
    .param p0, "c"    # Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    .line 198
    const/4 v0, 0x0

    const v1, 0x7a274

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 199
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->dispatchDeviceProfileChanged()V

    .line 200
    return-void
.end method

.method private show(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mProxyView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mProxyView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->-$$Nest$mshow(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;)V

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarControllers;->getSharedState()Lcom/android/launcher3/taskbar/TaskbarSharedState;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->allAppsVisible:Z

    .line 147
    new-instance v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    .line 150
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    .line 151
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;)V

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 155
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    iget v2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAppsModelFlags:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsStore;->setApps([Lcom/android/launcher3/model/data/AppInfo;I)V

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    const-class v1, Lcom/android/launcher3/appprediction/PredictionRowView;

    .line 157
    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/appprediction/PredictionRowView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mPredictedApps:Ljava/util/List;

    .line 158
    invoke-virtual {v0, v1}, Lcom/android/launcher3/appprediction/PredictionRowView;->setPredictedApps(Ljava/util/List;)V

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->show(Z)V

    .line 160
    return-void
.end method


# virtual methods
.method getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mProxyView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->close(Z)V

    .line 165
    return-void
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;Z)V
    .locals 1
    .param p1, "controllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;
    .param p2, "allAppsVisible"    # Z

    .line 92
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_IN_TASKBAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 101
    if-eqz p2, :cond_1

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->show(Z)V

    .line 104
    :cond_1
    return-void
.end method

.method synthetic lambda$onDestroy$2$com-android-launcher3-taskbar-allapps-TaskbarAllAppsController(Landroid/view/WindowManager;)V
    .locals 1
    .param p1, "m"    # Landroid/view/WindowManager;

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragLayer()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$show$0$com-android-launcher3-taskbar-allapps-TaskbarAllAppsController(Landroid/view/WindowManager;)V
    .locals 2
    .param p1, "m"    # Landroid/view/WindowManager;

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragLayer()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method maybeCloseWindow()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    const v1, 0x7ffff

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    .line 175
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->isSystemDragInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mProxyView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->close(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarControllers;->getSharedState()Lcom/android/launcher3/taskbar/TaskbarSharedState;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->allAppsVisible:Z

    .line 182
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->onDestroy()V

    .line 183
    return-void

    .line 176
    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 187
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$$ExternalSyntheticLambda2;-><init>()V

    .line 189
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;)V

    .line 190
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    .line 192
    return-void
.end method

.method public setApps([Lcom/android/launcher3/model/data/AppInfo;I)V
    .locals 3
    .param p1, "apps"    # [Lcom/android/launcher3/model/data/AppInfo;
    .param p2, "flags"    # I

    .line 108
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_IN_TASKBAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    .line 113
    iput p2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAppsModelFlags:I

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    iget v2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAppsModelFlags:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsStore;->setApps([Lcom/android/launcher3/model/data/AppInfo;I)V

    .line 117
    :cond_1
    return-void
.end method

.method public setPredictedApps(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "predictedApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_IN_TASKBAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    return-void

    .line 125
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mPredictedApps:Ljava/util/List;

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    const-class v1, Lcom/android/launcher3/appprediction/PredictionRowView;

    .line 128
    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/appprediction/PredictionRowView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mPredictedApps:Ljava/util/List;

    .line 129
    invoke-virtual {v0, v1}, Lcom/android/launcher3/appprediction/PredictionRowView;->setPredictedApps(Ljava/util/List;)V

    .line 131
    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->show(Z)V

    .line 136
    return-void
.end method

.method public updateDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V
    .locals 2
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 196
    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 201
    return-void
.end method
