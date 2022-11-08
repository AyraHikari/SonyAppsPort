.class public Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
.super Lcom/android/launcher3/taskbar/TaskbarUIController;
.source "LauncherTaskbarUIController.java"


# static fields
.field public static final ALL_APPS_PAGE_PROGRESS_INDEX:I = 0x1

.field public static final MINUS_ONE_PAGE_PROGRESS_INDEX:I = 0x0

.field public static final SYSUI_SURFACE_PROGRESS_INDEX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TaskbarUIController"

.field public static final WIDGETS_PAGE_PROGRESS_INDEX:I = 0x2


# instance fields
.field private mKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

.field private final mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

.field private final mOnDeviceProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

.field private final mTaskbarInAppDisplayProgress:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

.field private mTaskbarOverrideBackgroundAlpha:Lcom/android/quickstep/AnimatedFloat;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 84
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;-><init>()V

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarInAppDisplayProgress:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mOnDeviceProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    .line 81
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    .line 85
    iput-object p1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 86
    return-void
.end method

.method private getInAppDisplayProgress()F
    .locals 3

    .line 345
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Float;

    .line 346
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 347
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 348
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 349
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 345
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController$$ExternalSyntheticLambda1;-><init>()V

    .line 350
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 345
    return v0
.end method

.method private getInAppDisplayProgress(I)F
    .locals 2
    .param p1, "index"    # I

    .line 338
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarInAppDisplayProgress:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarInAppDisplayProgress:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarInAppDisplayProgress:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private onLauncherResumedOrPaused(ZZZI)Landroid/animation/Animator;
    .locals 3
    .param p1, "isResumed"    # Z
    .param p2, "fromInit"    # Z
    .param p3, "startAnimation"    # Z
    .param p4, "duration"    # I

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->isScreenOff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    if-nez p1, :cond_0

    .line 182
    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->setScreenOn()V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    if-eqz p2, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_2
    int-to-long v1, p4

    :goto_0
    invoke-virtual {v0, v1, v2, p3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState(JZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private onLauncherResumedOrPaused(ZZ)V
    .locals 2
    .param p1, "isResumed"    # Z
    .param p2, "fromInit"    # Z

    .line 170
    const/4 v0, 0x1

    const/16 v1, 0xd9

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onLauncherResumedOrPaused(ZZZI)Landroid/animation/Animator;

    .line 175
    return-void
.end method

.method private onStashedInAppChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 2
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashedInApp()Z

    move-result v0

    .line 224
    .local v0, "taskbarStashedInApps":Z
    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p1, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    .line 225
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->updateTaskTransitionSpec(Z)V

    .line 226
    return-void
.end method

.method private updateTaskTransitionSpec(Z)V
    .locals 3
    .param p1, "taskbarIsHidden"    # Z

    .line 230
    if-eqz p1, :cond_0

    .line 232
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->clearTaskTransitionSpec()V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget v1, Lcom/android/launcher3/R$color;->taskbar_background:I

    .line 236
    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getColor(I)I

    move-result v0

    .line 238
    .local v0, "taskAnimationBackgroundColor":I
    new-instance v1, Landroid/view/TaskTransitionSpec;

    const/16 v2, 0x15

    .line 240
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/view/TaskTransitionSpec;-><init>(ILjava/util/Set;)V

    .line 242
    .local v1, "customTaskAnimationSpec":Landroid/view/TaskTransitionSpec;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 243
    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->setTaskTransitionSpec(Landroid/view/TaskTransitionSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v0    # "taskAnimationBackgroundColor":I
    .end local v1    # "customTaskAnimationSpec":Landroid/view/TaskTransitionSpec;
    :goto_0
    goto :goto_1

    .line 245
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TaskbarUIController"

    const-string v2, "Failed to update task transition spec to account for new taskbar state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method


# virtual methods
.method protected addLauncherResumeAnimation(Landroid/animation/AnimatorSet;I)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/AnimatorSet;
    .param p2, "placeholderDuration"    # I

    .line 155
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p2}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onLauncherResumedOrPaused(ZZZI)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 160
    return-void
.end method

.method public createAnimToLauncher(Lcom/android/launcher3/LauncherState;Lcom/android/quickstep/RecentsAnimationCallbacks;J)Landroid/animation/Animator;
    .locals 1
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "callbacks"    # Lcom/android/quickstep/RecentsAnimationCallbacks;
    .param p3, "duration"    # J

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->createAnimToLauncher(Lcom/android/launcher3/LauncherState;Lcom/android/quickstep/RecentsAnimationCallbacks;J)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 356
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarUIController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 358
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarOverrideBackgroundAlpha:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 361
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 358
    const-string v3, "%s\tmTaskbarOverrideBackgroundAlpha=%.2f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v3, "%s\tTaskbar in-app display progress:"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v1, :cond_0

    .line 365
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v1, "%s\t\tMissing mControllers"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 370
    invoke-direct {p0, v2}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    .line 367
    const-string v3, "%s\t\tprogress at MINUS_ONE_PAGE_PROGRESS_INDEX=%.2f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 374
    invoke-direct {p0, v4}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    .line 371
    const-string v3, "%s\t\tprogress at ALL_APPS_PAGE_PROGRESS_INDEX=%.2f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 378
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    .line 375
    const-string v3, "%s\t\tprogress at WIDGETS_PAGE_PROGRESS_INDEX=%.2f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const/4 v1, 0x3

    .line 382
    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v4

    .line 379
    const-string v1, "%s\t\tprogress at SYSUI_SURFACE_PROGRESS_INDEX=%.2f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 386
    return-void
.end method

.method public enableManualStashingForTests(Z)V
    .locals 1
    .param p1, "enableManualStashing"    # Z

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->enableManualStashingForTests(Z)V

    .line 133
    return-void
.end method

.method public forceHideBackground(Z)V
    .locals 2
    .param p1, "forceHide"    # Z

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarOverrideBackgroundAlpha:Lcom/android/quickstep/AnimatedFloat;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .line 258
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

    .line 262
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public hideEdu()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarEduController:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->hideEdu()V

    .line 290
    return-void
.end method

.method protected init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 3
    .param p1, "taskbarControllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 90
    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/BaseQuickstepLauncher;)V

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    .line 94
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getOverrideBackgroundAlpha()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarOverrideBackgroundAlpha:Lcom/android/quickstep/AnimatedFloat;

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->setTaskbarUIController(Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;)V

    .line 97
    iget-object v0, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mKeyguardController:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->hasBeenResumed()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onLauncherResumedOrPaused(ZZ)V

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onStashedInAppChanged(Lcom/android/launcher3/DeviceProfile;)V

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mOnDeviceProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 103
    return-void
.end method

.method public isDraggingItem()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->isDragging()Z

    move-result v0

    return v0
.end method

.method public isEventOverAnyTaskbarItem(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->isEventOverAnyItem(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    .line 210
    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isEventOverAnyItem(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 209
    :goto_1
    return v0
.end method

.method protected isTaskbarTouchable()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isAnimatingToLauncher()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$new$0$com-android-launcher3-taskbar-LauncherTaskbarUIController(Lcom/android/launcher3/DeviceProfile;)V
    .locals 1
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onStashedInAppChanged(Lcom/android/launcher3/DeviceProfile;)V

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->onRotationChanged(Lcom/android/launcher3/DeviceProfile;)V

    .line 76
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 107
    invoke-super {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onDestroy()V

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onLauncherResumedOrPaused(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->onDestroy()V

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->setTaskbarUIController(Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;)V

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mOnDeviceProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 113
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->updateTaskTransitionSpec(Z)V

    .line 114
    return-void
.end method

.method public onLauncherResumedOrPaused(Z)V
    .locals 1
    .param p1, "isResumed"    # Z

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onLauncherResumedOrPaused(ZZ)V

    .line 167
    return-void
.end method

.method protected onStashedInAppChanged()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onStashedInAppChanged(Lcom/android/launcher3/DeviceProfile;)V

    .line 220
    return-void
.end method

.method public onTaskbarIconLaunched(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 294
    new-instance v0, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    .line 295
    .local v0, "instanceId":Lcom/android/launcher3/logging/InstanceId;
    iget-object v1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->logAppLaunch(Lcom/android/launcher3/logging/StatsLogManager;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    .line 297
    return-void
.end method

.method public onTaskbarInAppDisplayProgressUpdate(FI)V
    .locals 3
    .param p1, "progress"    # F
    .param p2, "progressIndex"    # I

    .line 316
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v0, :cond_0

    .line 318
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarInAppDisplayProgress:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInApp()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    .line 322
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->isAnimatingToLauncher()Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    .line 326
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getTaskbarNavButtonTranslationYForInAppDisplay()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 327
    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v1

    int-to-float v1, v1

    .line 328
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress()F

    move-result v2

    mul-float/2addr v1, v2

    .line 327
    invoke-virtual {v0, v1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .line 330
    :cond_1
    return-void
.end method

.method public setShouldDelayLauncherStateAnim(Z)V
    .locals 1
    .param p1, "shouldDelayLauncherStateAnim"    # Z

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mTaskbarLauncherStateController:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->setShouldDelayLauncherStateAnim(Z)V

    .line 124
    return-void
.end method

.method public setSystemGestureInProgress(Z)V
    .locals 0
    .param p1, "inProgress"    # Z

    .line 301
    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->setSystemGestureInProgress(Z)V

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->forceHideBackground(Z)V

    .line 305
    return-void
.end method

.method public shouldShowEdu()Z
    .locals 2

    .line 281
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 282
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object v0

    const-string v1, "launcher.taskbar_edu_seen"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/OnboardingPrefs;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 281
    :goto_0
    return v0
.end method

.method public shouldUseInAppLayout()Z
    .locals 2

    .line 334
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getInAppDisplayProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showEdu()V
    .locals 2

    .line 269
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->shouldShowEdu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object v0

    const-string v1, "launcher.taskbar_edu_seen"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/OnboardingPrefs;->markChecked(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarEduController:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->showEdu()V

    .line 275
    return-void
.end method

.method public unstashTaskbarIfStashed()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onLongPressToUnstashTaskbar()Z

    .line 142
    return-void
.end method
