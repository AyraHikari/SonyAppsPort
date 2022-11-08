.class public Lcom/android/launcher3/testing/TestInformationHandler;
.super Ljava/lang/Object;
.source "TestInformationHandler.java"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field protected mLauncherAppState:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDescendantRectRelativeToDragLayerForCell(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;
    .locals 8
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "cellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I

    .line 214
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 215
    .local v0, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 217
    .local v1, "target":Landroid/graphics/Rect;
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 218
    const/4 v2, 0x2

    new-array v3, v2, [I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, v1, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 219
    .local v3, "leftTop":[I
    new-array v2, v2, [I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    aput v4, v2, v5

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    aput v4, v2, v6

    .line 220
    .local v2, "rightBottom":[I
    invoke-virtual {v0, p1, v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 221
    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 223
    aget v4, v3, v5

    aget v7, v3, v6

    aget v5, v2, v5

    aget v6, v2, v6

    invoke-virtual {v1, v4, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 224
    return-object v1
.end method

.method public static getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Lcom/android/launcher3/Launcher;",
            "TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 241
    .local p0, "bundleSetter":Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;, "Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter<TT;>;"
    .local p1, "provider":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/launcher3/Launcher;TT;>;"
    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/ActivityTracker;)V

    invoke-static {p0, p1, v1}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TS;TT;>;",
            "Ljava/util/function/Supplier<",
            "TS;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 250
    .local p0, "bundleSetter":Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;, "Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter<TT;>;"
    .local p1, "provider":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;TT;>;"
    .local p2, "targetSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TS;>;"
    :try_start_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1, p0}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 259
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    return-object v0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic lambda$call$0(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 3
    .param p0, "l"    # Lcom/android/launcher3/Launcher;

    .line 87
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    .line 88
    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 89
    .local v0, "progress":F
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result v1

    mul-float/2addr v1, v0

    .line 90
    .local v1, "distance":F
    float-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$call$10(Lcom/android/launcher3/Launcher;)[I
    .locals 6
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 181
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 182
    .local v0, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    nop

    .line 183
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    .line 182
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v1

    .line 184
    .local v1, "screenId":I
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 185
    .local v2, "cellLayout":Lcom/android/launcher3/CellLayout;
    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    return-object v3
.end method

.method static synthetic lambda$call$11(Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .locals 8
    .param p0, "request"    # Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 192
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 194
    .local v0, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    nop

    .line 195
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    .line 194
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 196
    .local v1, "cellLayout":Lcom/android/launcher3/CellLayout;
    iget v4, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->cellX:I

    iget v5, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->cellY:I

    iget v6, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->spanX:I

    iget v7, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->spanY:I

    move-object v2, p1

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/testing/TestInformationHandler;->getDescendantRectRelativeToDragLayerForCell(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v2

    .line 198
    .local v2, "cellRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method static synthetic lambda$call$2()Ljava/lang/Boolean;
    .locals 1

    .line 95
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$call$3(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "l"    # Lcom/android/launcher3/Launcher;

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->enableDeferUpdates(I)V

    .line 101
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$call$4(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "l"    # Lcom/android/launcher3/Launcher;

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->disableDeferUpdates(I)V

    .line 106
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$call$5(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 1
    .param p0, "l"    # Lcom/android/launcher3/Launcher;

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$call$6(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 1
    .param p0, "l"    # Lcom/android/launcher3/Launcher;

    .line 116
    invoke-static {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getCurrentScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$call$7(Landroid/app/Activity;)Landroid/graphics/Insets;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 123
    .local v0, "insets":Landroid/view/WindowInsets;
    nop

    .line 124
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 125
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v2

    .line 123
    invoke-static {v1, v2}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$call$8(Landroid/app/Activity;)Landroid/graphics/Insets;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 133
    .local v0, "insets":Landroid/view/WindowInsets;
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$call$9(Ljava/lang/String;)V
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    .line 175
    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    .line 176
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/states/RotationHelper;->forceAllowRotationForTesting(Z)V

    .line 175
    return-void
.end method

.method static synthetic lambda$getUIProperty$12(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)Landroid/os/Bundle;
    .locals 4
    .param p0, "targetSupplier"    # Ljava/util/function/Supplier;
    .param p1, "provider"    # Ljava/util/function/Function;
    .param p2, "bundleSetter"    # Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 251
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 252
    .local v0, "target":Ljava/lang/Object;, "TS;"
    if-nez v0, :cond_0

    .line 253
    const/4 v1, 0x0

    return-object v1

    .line 255
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 256
    .local v1, "value":Ljava/lang/Object;, "TT;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 257
    .local v2, "response":Landroid/os/Bundle;
    const-string v3, "response"

    invoke-interface {p2, v2, v3, v1}, Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;->set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    return-object v2
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/testing/TestInformationHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    const-class v0, Lcom/android/launcher3/testing/TestInformationHandler;

    sget v1, Lcom/android/launcher3/R$string;->test_information_handler_class:I

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/testing/TestInformationHandler;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extra"    # Landroid/os/Bundle;

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, "response":Landroid/os/Bundle;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 84
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "has-touch-interaction-service"

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "start-drag-threshold"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "icon-height"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "freeze-app-list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "target-insets"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "workspace-cell-center"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "widgets-scroll-y"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "home-to-all-apps-swipe-height"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "window-insets"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x7

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "enable_rotation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xf

    goto :goto_0

    :sswitch_a
    const-string v2, "mock-sensor-rotation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_b
    const-string v2, "unfreeze-app-list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_c
    const-string v2, "is-launcher-initialized"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_d
    const-string v2, "apps-list-scroll-y"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_e
    const-string v2, "get-had-nontest-events"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xd

    goto :goto_0

    :sswitch_f
    const-string v2, "set-force-pause-timeout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xc

    goto :goto_0

    :sswitch_10
    const-string v2, "workspace-cell-layout-size"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x10

    goto :goto_0

    :sswitch_11
    const-string v2, "is-two-panel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xb

    goto :goto_0

    :sswitch_12
    const-string v2, "is-tablet"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xa

    :goto_0
    const/4 v2, 0x0

    const-string v6, "response"

    packed-switch v1, :pswitch_data_0

    .line 208
    return-object v2

    .line 202
    :pswitch_0
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 204
    return-object v0

    .line 189
    :pswitch_1
    const-string v1, "request"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;

    .line 191
    .local v1, "request":Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;
    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda13;-><init>()V

    new-instance v3, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda14;

    invoke-direct {v3, v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda14;-><init>(Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;)V

    invoke-static {v2, v3}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v2

    return-object v2

    .line 180
    .end local v1    # "request":Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;
    :pswitch_2
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda11;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 174
    :pswitch_3
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda9;

    invoke-direct {v3, p2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 177
    return-object v2

    .line 166
    :pswitch_4
    iget-object v1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 167
    .local v1, "resources":Landroid/content/res/Resources;
    sget v2, Lcom/android/launcher3/R$dimen;->deep_shortcuts_start_drag_threshold:I

    .line 168
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/android/launcher3/R$dimen;->pre_drag_view_scale:I

    .line 169
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 167
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    return-object v0

    .line 161
    .end local v1    # "resources":Landroid/content/res/Resources;
    :pswitch_5
    sget-boolean v1, Lcom/android/launcher3/testing/TestLogging;->sHadEventsNotFromTest:Z

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    return-object v0

    .line 157
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/testing/TestProtocol;->sForcePauseTimeout:Ljava/lang/Long;

    .line 158
    return-object v0

    .line 152
    :pswitch_7
    iget-object v1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    return-object v0

    .line 148
    :pswitch_8
    iget-object v1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    return-object v0

    .line 144
    :pswitch_9
    sput-boolean v4, Lcom/android/launcher3/testing/TestProtocol;->sDisableSensorRotation:Z

    .line 145
    return-object v0

    .line 138
    :pswitch_a
    iget-object v1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    return-object v0

    .line 130
    :pswitch_b
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda5;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda8;-><init>()V

    new-instance v3, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/testing/TestInformationHandler;)V

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 120
    :pswitch_c
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda5;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda6;-><init>()V

    new-instance v3, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/testing/TestInformationHandler;)V

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 115
    :pswitch_d
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 110
    :pswitch_e
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 104
    :pswitch_f
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda15;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda19;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda19;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 99
    :pswitch_10
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda15;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda18;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 95
    :pswitch_11
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda15;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda16;-><init>(Lcom/android/launcher3/testing/TestInformationHandler;)V

    new-instance v3, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda17;

    invoke-direct {v3}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda17;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 86
    :pswitch_12
    new-instance v1, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v1, v2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6dd7a797 -> :sswitch_12
        -0x48da05a0 -> :sswitch_11
        -0x36ccc0ef -> :sswitch_10
        -0x300a94c3 -> :sswitch_f
        -0x2c10c6e0 -> :sswitch_e
        -0x25d3e253 -> :sswitch_d
        -0x1405cf16 -> :sswitch_c
        -0x7e26c79 -> :sswitch_b
        -0x7f4a12 -> :sswitch_a
        0x6f79eba -> :sswitch_9
        0x6fb0373 -> :sswitch_8
        0x11da58c5 -> :sswitch_7
        0x1ceb16d7 -> :sswitch_6
        0x1e8681e8 -> :sswitch_5
        0x23b480f9 -> :sswitch_4
        0x2c0406b2 -> :sswitch_3
        0x2dcdc740 -> :sswitch_2
        0x7a5274fb -> :sswitch_1
        0x7f975bdd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 233
    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    iput-object p1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    .line 67
    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 68
    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 69
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    .line 70
    return-void
.end method

.method protected isLauncherInitialized()Z
    .locals 1

    .line 228
    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    .line 229
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 228
    :goto_1
    return v0
.end method

.method synthetic lambda$call$1$com-android-launcher3-testing-TestInformationHandler(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "t"    # Ljava/lang/Boolean;

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->isLauncherInitialized()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
