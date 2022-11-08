.class public Lcom/android/launcher3/uioverrides/QuickstepLauncher;
.super Lcom/android/launcher3/BaseQuickstepLauncher;
.source "QuickstepLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/uioverrides/QuickstepLauncher$LauncherTaskViewController;
    }
.end annotation


# static fields
.field public static final GO_LOW_RAM_RECENTS_ENABLED:Z

.field public static final SET_SHELF_HEIGHT:Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;


# instance fields
.field private mAllAppsPredictions:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

.field private mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->SET_SHELF_HEIGHT:Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .line 105
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/android/quickstep/SystemUiProxy;->setShelfHeight(ZI)V

    return-void
.end method

.method private onStateOrResumeChanging(Z)V
    .locals 9
    .param p1, "inTransition"    # Z

    .line 222
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    .line 223
    .local v0, "state":Lcom/android/launcher3/LauncherState;
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getActivityFlags()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 224
    .local v1, "started":Z
    :goto_0
    if-eqz v1, :cond_6

    .line 225
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    .line 226
    .local v4, "profile":Lcom/android/launcher3/DeviceProfile;
    nop

    .line 227
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getActivityFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    .line 228
    .local v5, "willUserBeActive":Z
    :goto_1
    sget-object v6, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v0, v6, :cond_4

    :cond_2
    if-nez v5, :cond_3

    .line 229
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->isUserActive()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 230
    :cond_3
    invoke-virtual {v4}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v2

    goto :goto_2

    :cond_4
    move v6, v3

    .line 231
    .local v6, "visible":Z
    :goto_2
    sget-object v7, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->SET_SHELF_HEIGHT:Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    iget v8, v4, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    invoke-static {p0, v7, v2, v8}, Lcom/android/launcher3/util/UiThreadHelper;->runAsyncCommand(Landroid/content/Context;Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;II)V

    .line 234
    .end local v4    # "profile":Lcom/android/launcher3/DeviceProfile;
    .end local v5    # "willUserBeActive":Z
    .end local v6    # "visible":Z
    :cond_6
    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v2, :cond_7

    if-nez p1, :cond_7

    .line 235
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/RecentsView;->setSwipeDownShouldLaunchApp(Z)V

    .line 237
    :cond_7
    return-void
.end method


# virtual methods
.method public bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    .line 241
    iget v0, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->containerId:I

    const/16 v1, -0x68

    if-ne v0, v1, :cond_0

    .line 242
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAllAppsPredictions:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    .line 243
    nop

    .line 244
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    const-class v1, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/appprediction/PredictionRowView;

    .line 246
    .local v0, "predictionRowView":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<*>;"
    iget-object v1, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appprediction/PredictionRowView;->setPredictedApps(Ljava/util/List;)V

    .line 247
    .end local v0    # "predictionRowView":Lcom/android/launcher3/appprediction/PredictionRowView;, "Lcom/android/launcher3/appprediction/PredictionRowView<*>;"
    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->containerId:I

    const/16 v1, -0x67

    if-ne v0, v1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->setPredictedItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    goto :goto_0

    .line 249
    :cond_1
    iget v0, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->containerId:I

    const/16 v1, -0x6f

    if-ne v0, v1, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->setRecommendedWidgets(Ljava/util/List;)V

    .line 252
    :cond_2
    :goto_0
    return-void
.end method

.method public bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 256
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->onModelItemsRemoved(Ljava/util/function/Predicate;)V

    .line 258
    return-void
.end method

.method protected completeAddShortcut(Landroid/content/Intent;IIIILcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 1
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "cellX"    # I
    .param p5, "cellY"    # I
    .param p6, "args"    # Lcom/android/launcher3/util/PendingRequestArgs;

    .line 152
    const/16 v0, -0x65

    if-ne p2, v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-virtual {v0, p4, p5}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->onDeferredDrop(II)V

    .line 155
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/launcher3/BaseQuickstepLauncher;->completeAddShortcut(Landroid/content/Intent;IIIILcom/android/launcher3/util/PendingRequestArgs;)V

    .line 156
    return-void
.end method

.method protected createAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .locals 1

    .line 160
    new-instance v0, Lcom/android/launcher3/QuickstepAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/QuickstepAccessibilityDelegate;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    return-object v0
.end method

.method protected createAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;
    .locals 2

    .line 358
    invoke-super {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->createAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v0

    .line 359
    .local v0, "appWidgetHost":Lcom/android/launcher3/widget/LauncherAppWidgetHost;
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_WIDGET_APP_START:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    new-instance v1, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;

    invoke-direct {v1, p0}, Lcom/android/launcher3/uioverrides/QuickstepInteractionHandler;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 362
    :cond_0
    return-object v0
.end method

.method public createAtomicAnimationFactory()Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;
    .locals 1

    .line 354
    new-instance v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    return-object v0
.end method

.method protected bridge synthetic createOnboardingPrefs(Landroid/content/SharedPreferences;)Lcom/android/launcher3/util/OnboardingPrefs;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->createOnboardingPrefs(Landroid/content/SharedPreferences;)Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    move-result-object p1

    return-object p1
.end method

.method protected createOnboardingPrefs(Landroid/content/SharedPreferences;)Lcom/android/quickstep/util/QuickstepOnboardingPrefs;
    .locals 1
    .param p1, "sharedPrefs"    # Landroid/content/SharedPreferences;

    .line 172
    new-instance v0, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/util/QuickstepOnboardingPrefs;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public createTouchControllers()[Lcom/android/launcher3/util/TouchController;
    .locals 4

    .line 322
    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    .line 324
    .local v0, "mode":Lcom/android/launcher3/util/DisplayController$NavigationMode;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/TouchController;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v2, Lcom/android/launcher3/uioverrides/QuickstepLauncher$1;->$SwitchMap$com$android$launcher3$util$DisplayController$NavigationMode:[I

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController$NavigationMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 341
    new-instance v2, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 333
    :pswitch_0
    new-instance v2, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TwoButtonNavbarTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    new-instance v2, Lcom/android/launcher3/uioverrides/touchcontrollers/TransposedQuickSwitchTouchController;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/TransposedQuickSwitchTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    goto :goto_0

    .line 336
    :cond_0
    new-instance v2, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/QuickSwitchTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 334
    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v2, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    goto :goto_1

    .line 328
    :pswitch_1
    new-instance v2, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v2, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v2, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonNavbarToOverviewTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    nop

    .line 344
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v2, :cond_1

    .line 345
    new-instance v2, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/StatusBarTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_1
    new-instance v2, Lcom/android/launcher3/uioverrides/QuickstepLauncher$LauncherTaskViewController;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher$LauncherTaskViewController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/launcher3/util/TouchController;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/launcher3/util/TouchController;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 390
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/BaseQuickstepLauncher;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 392
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    const-string v1, "\nQuickstepLauncher:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tmOrientationState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v2, "recentsNull"

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public getHotseatPredictionController()Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    return-object v0
.end method

.method public getSupportedShortcuts()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/launcher3/popup/SystemShortcut$Factory;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    .line 215
    invoke-static {v0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-super {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getSupportedShortcuts()Ljava/util/stream/Stream;

    move-result-object v1

    .line 214
    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onStateSetEnd$1$com-android-launcher3-uioverrides-QuickstepLauncher(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .line 305
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    .line 310
    :goto_0
    return-void
.end method

.method public logAppLaunch(Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V
    .locals 6
    .param p1, "statsLogManager"    # Lcom/android/launcher3/logging/StatsLogManager;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    .line 122
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object p3, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAllAppsSessionLogId:Lcom/android/launcher3/logging/InstanceId;

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 128
    .local v0, "logger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAllAppsPredictions:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    if-eqz v1, :cond_3

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v1, :cond_1

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAllAppsPredictions:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 133
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 134
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mAllAppsPredictions:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 135
    .local v3, "targetInfo":Lcom/android/launcher3/model/data/ItemInfo;
    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v4, v5, :cond_2

    iget-object v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 136
    invoke-virtual {v4, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    invoke-interface {v0, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withRank(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    .line 139
    goto :goto_1

    .line 133
    .end local v3    # "targetInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_3
    :goto_1
    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 146
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-virtual {v1, p2, p3}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->logLaunchedAppRankingInfo(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    .line 147
    return-void
.end method

.method protected onActivityFlagsChanged(I)V
    .locals 2
    .param p1, "changeBits"    # I

    .line 194
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->onActivityFlagsChanged(I)V

    .line 195
    and-int/lit8 v0, p1, 0x55

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getActivityFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onStateOrResumeChanging(Z)V

    .line 200
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getActivityFlags()I

    move-result v0

    and-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->setPauseUIUpdate(Z)V

    .line 204
    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 177
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onStateOrResumeChanging(Z)V

    .line 179
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 262
    invoke-super {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->onDestroy()V

    .line 263
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-virtual {v0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->destroy()V

    .line 264
    return-void
.end method

.method public onStateSetEnd(Lcom/android/launcher3/LauncherState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/launcher3/LauncherState;

    .line 268
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->onStateSetEnd(Lcom/android/launcher3/LauncherState;)V

    .line 270
    iget v0, p1, Lcom/android/launcher3/LauncherState;->ordinal:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 280
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->performHapticFeedback(I)Z

    .line 282
    goto/16 :goto_0

    .line 272
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 273
    .local v0, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 274
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/android/launcher3/Launcher$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 291
    .end local v0    # "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 292
    .local v0, "rv":Lcom/android/quickstep/views/RecentsView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 293
    .local v1, "tasktolaunch":Lcom/android/quickstep/views/TaskView;
    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 298
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 297
    invoke-static {p0, v2}, Lcom/sonymobile/quickstep/FreeFormUtil;->isRunningInFreeForm(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 300
    sget v2, Lcom/android/launcher3/R$string;->recents_error_toast_cannot_open_multi_window_from_popup_window:I

    invoke-static {p0, v2}, Lcom/sonymobile/quickstep/FreeFormUtil;->showToast(Landroid/content/Context;I)V

    .line 302
    return-void

    .line 304
    :cond_0
    new-instance v2, Lcom/android/launcher3/uioverrides/QuickstepLauncher$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->launchTask(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 314
    goto :goto_0

    .line 285
    .end local v0    # "rv":Lcom/android/quickstep/views/RecentsView;
    .end local v1    # "tasktolaunch":Lcom/android/quickstep/views/TaskView;
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 286
    .restart local v0    # "rv":Lcom/android/quickstep/views/RecentsView;
    nop

    .line 287
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 286
    invoke-static {v1, v2, v3}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 288
    nop

    .line 318
    .end local v0    # "rv":Lcom/android/quickstep/views/RecentsView;
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0

    .line 98
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->onStateSetEnd(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method protected setupViews()V
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->setupViews()V

    .line 113
    new-instance v0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    .line 114
    return-void
.end method

.method protected showAllAppsFromIntent(Z)V
    .locals 1
    .param p1, "alreadyOnHome"    # Z

    .line 208
    const-string v0, "homekey"

    invoke-static {v0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    .line 209
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->showAllAppsFromIntent(Z)V

    .line 210
    return-void
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->setPauseUIUpdate(Z)V

    .line 185
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseQuickstepLauncher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    .line 186
    .local v0, "started":Z
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 187
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->mHotseatPredictionController:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->setPauseUIUpdate(Z)V

    .line 189
    :cond_1
    return v0
.end method
