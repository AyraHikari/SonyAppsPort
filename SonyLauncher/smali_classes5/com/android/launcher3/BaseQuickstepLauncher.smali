.class public abstract Lcom/android/launcher3/BaseQuickstepLauncher;
.super Lcom/android/launcher3/Launcher;
.source "BaseQuickstepLauncher.java"


# static fields
.field public static final SET_BACK_BUTTON_ALPHA:Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;


# instance fields
.field private mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

.field private mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

.field private mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

.field private mLauncherUnfoldAnimationController:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

.field private mNextWorkspaceDragOptions:Lcom/android/launcher3/dragndrop/DragOptions;

.field private mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

.field private mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

.field private mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

.field private mTaskbarUIController:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

.field private mUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;


# direct methods
.method public static synthetic $r8$lambda$2feEpvckQJLOC3pfwy3mA8nCyaQ(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->onTISConnected(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 117
    new-instance v0, Lcom/android/launcher3/BaseQuickstepLauncher$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/launcher3/BaseQuickstepLauncher$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/launcher3/BaseQuickstepLauncher;->SET_BACK_BUTTON_ALPHA:Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;-><init>()V

    .line 111
    new-instance v0, Lcom/android/launcher3/statehandlers/DepthController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/statehandlers/DepthController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mNextWorkspaceDragOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    return-void
.end method

.method private handlePendingActivityRequest()V
    .locals 3

    .line 308
    iget v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mPendingActivityRequestCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getActivityFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 311
    iget v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mPendingActivityRequestCode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/BaseQuickstepLauncher;->onActivityResult(IILandroid/content/Intent;)V

    .line 314
    invoke-static {p0, v2}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->getLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/proxy/StartActivityParams;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->startActivity(Landroid/content/Intent;)V

    .line 316
    :cond_0
    return-void
.end method

.method private initUnfoldTransitionProgressProvider()V
    .locals 11

    .line 350
    invoke-static {p0}, Lcom/android/systemui/unfold/UnfoldTransitionFactory;->createConfig(Landroid/content/Context;)Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;

    move-result-object v10

    .line 351
    .local v10, "config":Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;
    invoke-interface {v10}, Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    sget-object v2, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->INSTANCE:Lcom/android/quickstep/util/ProxyScreenStatusProvider;

    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 357
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/hardware/devicestate/DeviceStateManager;

    const-class v0, Landroid/app/ActivityManager;

    .line 358
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/ActivityManager;

    const-class v0, Landroid/hardware/SensorManager;

    .line 359
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/hardware/SensorManager;

    .line 360
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    .line 361
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 353
    const-string v9, "launcher"

    move-object v0, p0

    move-object v1, v10

    invoke-static/range {v0 .. v9}, Lcom/android/systemui/unfold/UnfoldTransitionFactory;->createUnfoldTransitionProgressProvider(Landroid/content/Context;Lcom/android/systemui/unfold/config/UnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Landroid/hardware/devicestate/DeviceStateManager;Landroid/app/ActivityManager;Landroid/hardware/SensorManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 366
    new-instance v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    .line 368
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/WindowManager;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    iput-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mLauncherUnfoldAnimationController:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    .line 372
    :cond_0
    return-void
.end method

.method static synthetic lambda$static$0(Landroid/content/Context;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .line 118
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    .line 119
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 118
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/SystemUiProxy;->setNavBarButtonAlpha(FZ)V

    return-void
.end method

.method private onLauncherStateOrFocusChanged()V
    .locals 4

    .line 498
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->shouldBackButtonBeHidden(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    .line 499
    .local v0, "shouldBackButtonBeHidden":Z
    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/util/DisplayController$NavigationMode;->TWO_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v1, v2, :cond_1

    .line 500
    sget-object v1, Lcom/android/launcher3/BaseQuickstepLauncher;->SET_BACK_BUTTON_ALPHA:Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;

    .line 501
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    const/4 v3, 0x1

    .line 500
    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher3/util/UiThreadHelper;->setBackButtonAlphaAsync(Landroid/content/Context;Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;FZ)V

    .line 503
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 504
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherRootView;->setDisallowBackGesture(Z)V

    .line 506
    :cond_2
    return-void
.end method

.method private onTISConnected(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 1
    .param p1, "binder"    # Lcom/android/quickstep/TouchInteractionService$TISBinder;

    .line 339
    invoke-virtual {p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    .line 340
    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->setActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    .line 341
    invoke-virtual {p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->getOverviewCommandHelper()Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    .line 342
    return-void
.end method

.method private onTaskbarInAppDisplayProgressUpdate(FI)V
    .locals 1
    .param p1, "progress"    # F
    .param p2, "flag"    # I

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mTaskbarUIController:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onTaskbarInAppDisplayProgressUpdate(FI)V

    .line 261
    return-void

    .line 258
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addLaunchCookie(Lcom/android/launcher3/model/data/ItemInfo;Landroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "opts"    # Landroid/app/ActivityOptions;

    .line 574
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getLaunchCookie(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/os/IBinder;

    move-result-object v0

    .line 575
    .local v0, "launchCookie":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p2, v0}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    .line 578
    :cond_0
    return-void
.end method

.method protected closeOpenViews(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 388
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->closeOpenViews(Z)V

    .line 389
    const-string v0, "homekey"

    invoke-static {v0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method protected collectStateHandlers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/statemanager/StateManager$StateHandler;",
            ">;)V"
        }
    .end annotation

    .line 394
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/statemanager/StateManager$StateHandler;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->collectStateHandlers(Ljava/util/List;)V

    .line 395
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/RecentsViewStateController;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v0, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;

    invoke-direct {v0, p0}, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 640
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Launcher;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/statehandlers/DepthController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 644
    :cond_0
    return-void
.end method

.method public finishBindingItems(Lcom/android/launcher3/util/IntSet;)V
    .locals 1
    .param p1, "pagesBoundFirst"    # Lcom/android/launcher3/util/IntSet;

    .line 510
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->finishBindingItems(Lcom/android/launcher3/util/IntSet;)V

    .line 514
    sget-object v0, Lcom/android/launcher3/model/WellbeingModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    .line 515
    return-void
.end method

.method public getActionsView()Lcom/android/quickstep/views/OverviewActionsView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/quickstep/views/OverviewActionsView;",
            ">()TT;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    return-object v0
.end method

.method public getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 552
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    goto :goto_0

    .line 554
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Launcher;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    :goto_0
    nop

    .line 555
    .local v0, "activityOptions":Lcom/android/launcher3/util/ActivityOptionsWrapper;
    iget-wide v1, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mLastTouchUpTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 556
    iget-object v1, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    iget-wide v2, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mLastTouchUpTime:J

    invoke-static {v1, v2, v3}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->setLauncherSourceInfo(Landroid/app/ActivityOptions;J)Landroid/app/ActivityOptions;

    .line 559
    :cond_1
    iget-object v1, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    .line 560
    iget-object v1, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    .line 561
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    goto :goto_1

    .line 562
    :cond_2
    const/4 v2, 0x0

    .line 560
    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 563
    iget-object v1, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {p0, p2, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->addLaunchCookie(Lcom/android/launcher3/model/data/ItemInfo;Landroid/app/ActivityOptions;)V

    .line 564
    return-object v0
.end method

.method public getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    return-object v0
.end method

.method public getDefaultWorkspaceDragOptions()Lcom/android/launcher3/dragndrop/DragOptions;
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mNextWorkspaceDragOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mNextWorkspaceDragOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    .line 418
    .local v0, "options":Lcom/android/launcher3/dragndrop/DragOptions;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mNextWorkspaceDragOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    .line 419
    return-object v0

    .line 421
    .end local v0    # "options":Lcom/android/launcher3/dragndrop/DragOptions;
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->getDefaultWorkspaceDragOptions()Lcom/android/launcher3/dragndrop/DragOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDepthController()Lcom/android/launcher3/statehandlers/DepthController;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    return-object v0
.end method

.method public getLaunchCookie(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/os/IBinder;
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 586
    if-nez p1, :cond_0

    .line 587
    const/4 v0, 0x0

    return-object v0

    .line 589
    :cond_0
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/high16 v1, -0x80000000

    packed-switch v0, :pswitch_data_0

    .line 596
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ltz v0, :cond_1

    .line 598
    goto :goto_0

    .line 594
    :pswitch_0
    nop

    .line 603
    :goto_0
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_1

    .line 612
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/ObjectWrapper;->wrap(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 609
    :pswitch_2
    nop

    .line 614
    new-instance v0, Ljava/lang/Integer;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0}, Lcom/android/launcher3/util/ObjectWrapper;->wrap(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 601
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/ObjectWrapper;->wrap(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x65
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getNormalOverviewScaleAndOffset()[F
    .locals 2

    .line 451
    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 452
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    goto :goto_0

    :cond_0
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    .line 451
    :goto_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x0
    .end array-data
.end method

.method public getSupportedShortcuts()Ljava/util/stream/Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/launcher3/popup/SystemShortcut$Factory;",
            ">;"
        }
    .end annotation

    .line 533
    sget-object v0, Lcom/android/launcher3/model/WellbeingModel;->SHORTCUT_FACTORY:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    invoke-static {v0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 534
    .local v0, "base":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Lcom/android/launcher3/popup/SystemShortcut$Factory;>;"
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_FROM_WORKSPACE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 535
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    .line 537
    .local v1, "recentsView":Lcom/android/quickstep/views/RecentsView;
    nop

    .line 538
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-interface {v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSplitPositionOptions(Lcom/android/launcher3/DeviceProfile;)Ljava/util/List;

    move-result-object v2

    .line 540
    .local v2, "positions":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v3, "splitShortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/popup/SystemShortcut$Factory<Lcom/android/launcher3/BaseQuickstepLauncher;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    .line 542
    .local v5, "position":Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;
    invoke-static {v5}, Lcom/android/launcher3/popup/QuickstepSystemShortcut;->getSplitSelectShortcutByPosition(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)Lcom/android/launcher3/popup/SystemShortcut$Factory;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    .end local v5    # "position":Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;
    goto :goto_0

    .line 544
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 546
    .end local v1    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    .end local v2    # "positions":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;>;"
    .end local v3    # "splitShortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/popup/SystemShortcut$Factory<Lcom/android/launcher3/BaseQuickstepLauncher;>;>;"
    :cond_1
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->getSupportedShortcuts()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v1

    return-object v1
.end method

.method public getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mTaskbarUIController:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    return-object v0
.end method

.method public getUnfoldTransitionProgressProvider()Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    return-object v0
.end method

.method protected handleGestureContract(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 203
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->handleGestureContract(Landroid/content/Intent;)V

    .line 206
    :cond_0
    return-void
.end method

.method synthetic lambda$onInitialBindComplete$2$com-android-launcher3-BaseQuickstepLauncher()V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mLauncherUnfoldAnimationController:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->updateRegisteredViewsIfNeeded()V

    .line 527
    :cond_0
    return-void
.end method

.method synthetic lambda$onUiChangedWhileSleeping$1$com-android-launcher3-BaseQuickstepLauncher()V
    .locals 1

    .line 218
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->invalidateHomeTaskSnapshot(Landroid/app/Activity;)V

    return-void
.end method

.method protected onActivityFlagsChanged(I)V
    .locals 2
    .param p1, "changeBits"    # I

    .line 462
    and-int/lit8 v0, p1, 0x48

    if-eqz v0, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->onLauncherStateOrFocusChanged()V

    .line 467
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statehandlers/DepthController;->setActivityStarted(Z)V

    .line 471
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mTaskbarUIController:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-eqz v0, :cond_2

    .line 473
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->hasBeenResumed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onLauncherResumedOrPaused(Z)V

    .line 477
    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onActivityFlagsChanged(I)V

    .line 478
    return-void
.end method

.method public onAllAppsTransition(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 244
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onAllAppsTransition(F)V

    .line 245
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->onTaskbarInAppDisplayProgressUpdate(FI)V

    .line 246
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 136
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onCreate(Landroid/os/Bundle;)V

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->addMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V

    .line 138
    invoke-direct {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->initUnfoldTransitionProgressProvider()V

    .line 139
    return-void
.end method

.method protected onDeferredResumed()V
    .locals 0

    .line 297
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onDeferredResumed()V

    .line 298
    invoke-direct {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->handlePendingActivityRequest()V

    .line 299
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->onActivityDestroyed()V

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0}, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;->destroy()V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TISBindHelper;->onDestroy()V

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mTaskbarManager:Lcom/android/launcher3/taskbar/TaskbarManager;

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->clearActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mLauncherUnfoldAnimationController:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->onDestroy()V

    .line 175
    :cond_2
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onDestroy()V

    .line 176
    return-void
.end method

.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "flags"    # I

    .line 623
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    .line 626
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    .line 630
    :cond_0
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->recreateControllers()V

    .line 632
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    if-eqz v0, :cond_1

    .line 633
    iget-object v1, p2, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OverviewActionsView;->updateVerticalMargin(Lcom/android/launcher3/util/DisplayController$NavigationMode;)V

    .line 636
    :cond_1
    return-void
.end method

.method public onDragLayerHierarchyChanged()V
    .locals 0

    .line 457
    invoke-direct {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->onLauncherStateOrFocusChanged()V

    .line 458
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .line 193
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onEnterAnimationComplete()V

    .line 197
    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->setVisible(Z)V

    .line 199
    return-void
.end method

.method public onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;)V
    .locals 1
    .param p1, "boundPages"    # Lcom/android/launcher3/util/IntSet;
    .param p2, "pendingTasks"    # Lcom/android/launcher3/util/RunnableList;

    .line 519
    new-instance v0, Lcom/android/launcher3/BaseQuickstepLauncher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/BaseQuickstepLauncher$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 528
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Launcher;->onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;)V

    .line 529
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 180
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onNewIntent(Landroid/content/Intent;)V

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mOverviewCommandHelper:Lcom/android/quickstep/OverviewCommandHelper;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/android/quickstep/OverviewCommandHelper;->clearPendingCommands()V

    .line 185
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mLauncherUnfoldAnimationController:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->onPause()V

    .line 156
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onPause()V

    .line 157
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 143
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onResume()V

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mLauncherUnfoldAnimationController:Lcom/android/quickstep/util/LauncherUnfoldAnimationController;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->onResume()V

    .line 148
    :cond_0
    return-void
.end method

.method protected onScreenOff()V
    .locals 3

    .line 223
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onScreenOff()V

    .line 224
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 226
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    .line 228
    .end local v0    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    :cond_0
    return-void
.end method

.method public onScrollChanged(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 237
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onScrollChanged(F)V

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mDepthController:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/statehandlers/DepthController;->onOverlayScrollChanged(F)V

    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->onTaskbarInAppDisplayProgressUpdate(FI)V

    .line 240
    return-void
.end method

.method public onStateSetEnd(Lcom/android/launcher3/LauncherState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/launcher3/LauncherState;

    .line 303
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onStateSetEnd(Lcom/android/launcher3/LauncherState;)V

    .line 304
    invoke-direct {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->handlePendingActivityRequest()V

    .line 305
    return-void
.end method

.method public bridge synthetic onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0

    .line 109
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->onStateSetEnd(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 210
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onTrimMemory(I)V

    .line 211
    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsModel;->onTrimMemory(I)V

    .line 212
    return-void
.end method

.method public onUiChangedWhileSleeping()V
    .locals 2

    .line 217
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/BaseQuickstepLauncher$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/BaseQuickstepLauncher$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method

.method public onWidgetsTransition(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 250
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onWidgetsTransition(F)V

    .line 251
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->onTaskbarInAppDisplayProgressUpdate(FI)V

    .line 252
    return-void
.end method

.method public runOnBindToTouchInteractionService(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 346
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/TISBindHelper;->runOnBindToTouchInteractionService(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method public setHintUserWillBeActive()V
    .locals 1

    .line 618
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->addActivityFlags(I)V

    .line 619
    return-void
.end method

.method public setNextWorkspaceDragOptions(Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0
    .param p1, "dragOptions"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 425
    iput-object p1, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mNextWorkspaceDragOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    .line 426
    return-void
.end method

.method public setTaskbarUIController(Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;)V
    .locals 0
    .param p1, "taskbarUIController"    # Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    .line 375
    iput-object p1, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mTaskbarUIController:Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    .line 376
    return-void
.end method

.method protected setupViews()V
    .locals 5

    .line 320
    invoke-super {p0}, Lcom/android/launcher3/Launcher;->setupViews()V

    .line 322
    sget v0, Lcom/android/launcher3/R$id;->overview_actions_view:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/OverviewActionsView;

    iput-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    .line 323
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 324
    .local v0, "overviewPanel":Lcom/android/quickstep/views/RecentsView;
    new-instance v1, Lcom/android/quickstep/util/SplitSelectStateController;

    iget-object v2, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mHandler:Landroid/os/Handler;

    .line 325
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    .line 326
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/quickstep/util/SplitSelectStateController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statehandlers/DepthController;)V

    .line 327
    .local v1, "controller":Lcom/android/quickstep/util/SplitSelectStateController;
    iget-object v2, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/views/RecentsView;->init(Lcom/android/quickstep/views/OverviewActionsView;Lcom/android/quickstep/util/SplitSelectStateController;)V

    .line 328
    iget-object v2, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/quickstep/views/OverviewActionsView;->updateDimension(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 329
    iget-object v2, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/OverviewActionsView;->updateVerticalMargin(Lcom/android/launcher3/util/DisplayController$NavigationMode;)V

    .line 331
    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-direct {v2, p0}, Lcom/android/launcher3/QuickstepTransitionManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    .line 332
    invoke-virtual {v2}, Lcom/android/launcher3/QuickstepTransitionManager;->registerRemoteAnimations()V

    .line 333
    iget-object v2, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v2}, Lcom/android/launcher3/QuickstepTransitionManager;->registerRemoteTransitions()V

    .line 335
    new-instance v2, Lcom/android/quickstep/util/TISBindHelper;

    new-instance v3, Lcom/android/launcher3/BaseQuickstepLauncher$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/launcher3/BaseQuickstepLauncher$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    invoke-direct {v2, p0, v3}, Lcom/android/quickstep/util/TISBindHelper;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v2, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    .line 336
    return-void
.end method

.method public shouldBackButtonBeHidden(Lcom/android/launcher3/LauncherState;)Z
    .locals 5
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 481
    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    .line 482
    .local v0, "mode":Lcom/android/launcher3/util/DisplayController$NavigationMode;
    iget-boolean v1, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_HIDE_BACK_BUTTON:I

    .line 483
    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getActivityFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 486
    .local v1, "shouldBackButtonBeHidden":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 488
    const v4, 0x7fe17

    invoke-static {p0, v4}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    move v1, v2

    .line 491
    :cond_2
    return v1
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 284
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 285
    iput p2, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mPendingActivityRequestCode:I

    .line 286
    new-instance v0, Lcom/android/launcher3/proxy/StartActivityParams;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/proxy/StartActivityParams;-><init>(Landroid/app/Activity;I)V

    .line 287
    .local v0, "params":Lcom/android/launcher3/proxy/StartActivityParams;
    iput-object p1, v0, Lcom/android/launcher3/proxy/StartActivityParams;->intent:Landroid/content/Intent;

    .line 288
    iput-object p3, v0, Lcom/android/launcher3/proxy/StartActivityParams;->options:Landroid/os/Bundle;

    .line 289
    invoke-static {p0, v0}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->getLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/proxy/StartActivityParams;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->startActivity(Landroid/content/Intent;)V

    .line 290
    .end local v0    # "params":Lcom/android/launcher3/proxy/StartActivityParams;
    goto :goto_0

    .line 291
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 293
    :goto_0
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .line 266
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 267
    iput p2, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mPendingActivityRequestCode:I

    .line 268
    new-instance v0, Lcom/android/launcher3/proxy/StartActivityParams;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/proxy/StartActivityParams;-><init>(Landroid/app/Activity;I)V

    .line 269
    .local v0, "params":Lcom/android/launcher3/proxy/StartActivityParams;
    iput-object p1, v0, Lcom/android/launcher3/proxy/StartActivityParams;->intentSender:Landroid/content/IntentSender;

    .line 270
    iput-object p3, v0, Lcom/android/launcher3/proxy/StartActivityParams;->fillInIntent:Landroid/content/Intent;

    .line 271
    iput p4, v0, Lcom/android/launcher3/proxy/StartActivityParams;->flagsMask:I

    .line 272
    iput p5, v0, Lcom/android/launcher3/proxy/StartActivityParams;->flagsValues:I

    .line 273
    iput p6, v0, Lcom/android/launcher3/proxy/StartActivityParams;->extraFlags:I

    .line 274
    iput-object p7, v0, Lcom/android/launcher3/proxy/StartActivityParams;->options:Landroid/os/Bundle;

    .line 275
    invoke-static {p0, v0}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->getLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/proxy/StartActivityParams;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->startActivity(Landroid/content/Intent;)V

    .line 276
    .end local v0    # "params":Lcom/android/launcher3/proxy/StartActivityParams;
    goto :goto_0

    .line 277
    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/android/launcher3/Launcher;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 280
    :goto_0
    return-void
.end method

.method public supportsAdaptiveIconAnimation(Landroid/view/View;)Z
    .locals 1
    .param p1, "clickedView"    # Landroid/view/View;

    .line 411
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher;->mAppTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    return v0
.end method

.method public useFadeOutAnimationForLauncherStart(Landroid/os/CancellationSignal;)V
    .locals 2
    .param p1, "signal"    # Landroid/os/CancellationSignal;

    .line 430
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v0

    .line 431
    .local v0, "appTransitionManager":Lcom/android/launcher3/QuickstepTransitionManager;
    new-instance v1, Lcom/android/launcher3/BaseQuickstepLauncher$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher$1;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;Landroid/os/CancellationSignal;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->setRemoteAnimationProvider(Lcom/android/quickstep/util/RemoteAnimationProvider;Landroid/os/CancellationSignal;)V

    .line 447
    return-void
.end method
