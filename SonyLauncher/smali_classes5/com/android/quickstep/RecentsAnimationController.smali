.class public Lcom/android/quickstep/RecentsAnimationController;
.super Ljava/lang/Object;
.source "RecentsAnimationController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentsAnimationController"


# instance fields
.field private final mAllowMinimizeSplitScreen:Z

.field private final mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

.field private mFinishRequested:Z

.field private mFinishTargetIsLauncher:Z

.field private final mOnFinishedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/RecentsAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingFinishCallbacks:Lcom/android/launcher3/util/RunnableList;

.field private mSplitScreenMinimized:Z

.field private mUseLauncherSysBarFlags:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;ZLjava/util/function/Consumer;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;
    .param p2, "allowMinimizeSplitScreen"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/RecentsAnimationController;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p3, "onFinishedListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/quickstep/RecentsAnimationController;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mUseLauncherSysBarFlags:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mSplitScreenMinimized:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mFinishRequested:Z

    .line 57
    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mPendingFinishCallbacks:Lcom/android/launcher3/util/RunnableList;

    .line 62
    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    .line 63
    iput-object p3, p0, Lcom/android/quickstep/RecentsAnimationController;->mOnFinishedListener:Ljava/util/function/Consumer;

    .line 64
    iput-boolean p2, p0, Lcom/android/quickstep/RecentsAnimationController;->mAllowMinimizeSplitScreen:Z

    .line 65
    return-void
.end method

.method static synthetic lambda$setSplitScreenMinimized$1(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "splitScreenMinimized"    # Z

    .line 107
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    .line 108
    invoke-virtual {v0, p1}, Lcom/android/quickstep/SystemUiProxy;->setSplitScreenMinimized(Z)V

    .line 107
    return-void
.end method


# virtual methods
.method public animateNavigationBarToApp(J)V
    .locals 2
    .param p1, "duration"    # J

    .line 193
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda4;-><init>(Lcom/android/quickstep/RecentsAnimationController;J)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public cleanupScreenshot()V
    .locals 2

    .line 177
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/RecentsAnimationController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method public detachNavigationBarFromApp(Z)V
    .locals 2
    .param p1, "moveHomeToTop"    # Z

    .line 185
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda8;-><init>(Lcom/android/quickstep/RecentsAnimationController;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public enableInputConsumer()V
    .locals 2

    .line 224
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/RecentsAnimationController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 228
    return-void
.end method

.method public finish(ZLjava/lang/Runnable;)V
    .locals 1
    .param p1, "toRecents"    # Z
    .param p2, "onFinishComplete"    # Ljava/lang/Runnable;

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;Z)V

    .line 135
    return-void
.end method

.method public finish(ZLjava/lang/Runnable;Z)V
    .locals 0
    .param p1, "toRecents"    # Z
    .param p2, "onFinishComplete"    # Ljava/lang/Runnable;
    .param p3, "sendUserLeaveHint"    # Z

    .line 146
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 147
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quickstep/RecentsAnimationController;->finishController(ZLjava/lang/Runnable;Z)V

    .line 148
    return-void
.end method

.method public finishAnimationToApp()V
    .locals 2

    .line 128
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/quickstep/RecentsAnimationController;->finishController(ZLjava/lang/Runnable;Z)V

    .line 129
    return-void
.end method

.method public finishAnimationToHome()V
    .locals 3

    .line 123
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationController;->finishController(ZLjava/lang/Runnable;Z)V

    .line 124
    return-void
.end method

.method public finishController(ZLjava/lang/Runnable;Z)V
    .locals 2
    .param p1, "toRecents"    # Z
    .param p2, "callback"    # Ljava/lang/Runnable;
    .param p3, "sendUserLeaveHint"    # Z

    .line 152
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mFinishRequested:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mPendingFinishCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 156
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mFinishRequested:Z

    .line 161
    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationController;->mFinishTargetIsLauncher:Z

    .line 162
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mOnFinishedListener:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mPendingFinishCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 164
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda9;-><init>(Lcom/android/quickstep/RecentsAnimationController;ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method public getController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    return-object v0
.end method

.method public getFinishTargetIsLauncher()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mFinishTargetIsLauncher:Z

    return v0
.end method

.method synthetic lambda$animateNavigationBarToApp$6$com-android-quickstep-RecentsAnimationController(J)V
    .locals 1
    .param p1, "duration"    # J

    .line 193
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->animateNavigationBarToApp(J)V

    return-void
.end method

.method synthetic lambda$cleanupScreenshot$4$com-android-quickstep-RecentsAnimationController()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->cleanupScreenshot()V

    return-void
.end method

.method synthetic lambda$detachNavigationBarFromApp$5$com-android-quickstep-RecentsAnimationController(Z)V
    .locals 1
    .param p1, "moveHomeToTop"    # Z

    .line 185
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->detachNavigationBarFromApp(Z)V

    return-void
.end method

.method synthetic lambda$enableInputConsumer$9$com-android-quickstep-RecentsAnimationController()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->hideCurrentInputMethod()V

    .line 226
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    .line 227
    return-void
.end method

.method synthetic lambda$finishController$3$com-android-quickstep-RecentsAnimationController(ZZ)V
    .locals 3
    .param p1, "toRecents"    # Z
    .param p2, "sendUserLeaveHint"    # Z

    .line 165
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->finish(ZZ)V

    .line 166
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    .line 167
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    .line 168
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationController;->mPendingFinishCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method synthetic lambda$removeTaskTarget$2$com-android-quickstep-RecentsAnimationController(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 2
    .param p1, "target"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 118
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    iget v1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->removeTask(I)Z

    return-void
.end method

.method synthetic lambda$setFinishTaskTransaction$8$com-android-quickstep-RecentsAnimationController(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "finishTransaction"    # Landroid/window/PictureInPictureSurfaceTransaction;
    .param p3, "overlay"    # Landroid/view/SurfaceControl;

    .line 217
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method synthetic lambda$setUseLauncherSystemBarFlags$0$com-android-quickstep-RecentsAnimationController(Z)V
    .locals 3
    .param p1, "useLauncherSysBarFlags"    # Z

    .line 83
    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setAnimationTargetsBehindSystemBars(Z)V

    goto :goto_0

    .line 87
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setRecentsAppBehindSystemBars(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RecentsAnimationController"

    const-string v2, "Unable to reach window manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method synthetic lambda$setWillFinishToHome$7$com-android-quickstep-RecentsAnimationController(Z)V
    .locals 1
    .param p1, "willFinishToHome"    # Z

    .line 201
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setWillFinishToHome(Z)V

    return-void
.end method

.method public removeTaskTarget(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 2
    .param p1, "target"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 118
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 1
    .param p1, "taskId"    # I

    .line 72
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    return-object v0
.end method

.method public setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "finishTransaction"    # Landroid/window/PictureInPictureSurfaceTransaction;
    .param p3, "overlay"    # Landroid/view/SurfaceControl;

    .line 216
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/quickstep/RecentsAnimationController;ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method public setSplitScreenMinimized(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "splitScreenMinimized"    # Z

    .line 102
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mAllowMinimizeSplitScreen:Z

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mSplitScreenMinimized:Z

    if-eq v0, p2, :cond_1

    .line 106
    iput-boolean p2, p0, Lcom/android/quickstep/RecentsAnimationController;->mSplitScreenMinimized:Z

    .line 107
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 110
    :cond_1
    return-void
.end method

.method public setUseLauncherSystemBarFlags(Z)V
    .locals 2
    .param p1, "useLauncherSysBarFlags"    # Z

    .line 80
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mUseLauncherSysBarFlags:Z

    if-eq v0, p1, :cond_0

    .line 81
    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationController;->mUseLauncherSysBarFlags:Z

    .line 82
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda6;-><init>(Lcom/android/quickstep/RecentsAnimationController;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 95
    :cond_0
    return-void
.end method

.method public setWillFinishToHome(Z)V
    .locals 2
    .param p1, "willFinishToHome"    # Z

    .line 201
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/RecentsAnimationController$$ExternalSyntheticLambda5;-><init>(Lcom/android/quickstep/RecentsAnimationController;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method
