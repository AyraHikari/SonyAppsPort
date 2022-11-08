.class Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;
.super Ljava/lang/Object;
.source "SplitSelectStateController.java"

# interfaces
.implements Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/SplitSelectStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteSplitLaunchAnimationRunner"
.end annotation


# instance fields
.field private final mInitialTaskId:I

.field private final mInitialTaskPendingIntent:Landroid/app/PendingIntent;

.field private final mSecondTaskId:I

.field private final mSuccessCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/quickstep/util/SplitSelectStateController;


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/SplitSelectStateController;ILandroid/app/PendingIntent;ILjava/util/function/Consumer;)V
    .locals 0
    .param p2, "initialTaskId"    # I
    .param p3, "initialTaskPendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "secondTaskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/PendingIntent;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 265
    .local p5, "successCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->this$0:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput p2, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->mInitialTaskId:I

    .line 267
    iput-object p3, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->mInitialTaskPendingIntent:Landroid/app/PendingIntent;

    .line 268
    iput p4, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->mSecondTaskId:I

    .line 269
    iput-object p5, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->mSuccessCallback:Ljava/util/function/Consumer;

    .line 270
    return-void
.end method


# virtual methods
.method synthetic lambda$onAnimationCancelled$2$com-android-quickstep-util-SplitSelectStateController$RemoteSplitLaunchAnimationRunner()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->mSuccessCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->this$0:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-static {v1}, Lcom/android/quickstep/util/SplitSelectStateController;->-$$Nest$fgetmRecentsAnimationRunning(Lcom/android/quickstep/util/SplitSelectStateController;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->this$0:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->resetState()V

    .line 298
    return-void
.end method

.method synthetic lambda$onAnimationStart$0$com-android-quickstep-util-SplitSelectStateController$RemoteSplitLaunchAnimationRunner(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "finishedCallback"    # Ljava/lang/Runnable;

    .line 281
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 282
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->mSuccessCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 283
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->this$0:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->resetState()V

    .line 286
    return-void
.end method

.method synthetic lambda$onAnimationStart$1$com-android-quickstep-util-SplitSelectStateController$RemoteSplitLaunchAnimationRunner([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .locals 11
    .param p1, "apps"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "wallpapers"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "nonApps"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "finishedCallback"    # Ljava/lang/Runnable;

    .line 277
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->this$0:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-static {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->-$$Nest$fgetmLaunchingTaskView(Lcom/android/quickstep/util/SplitSelectStateController;)Lcom/android/quickstep/views/GroupedTaskView;

    move-result-object v1

    iget v2, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->mInitialTaskId:I

    iget-object v3, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->mInitialTaskPendingIntent:Landroid/app/PendingIntent;

    iget v4, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->mSecondTaskId:I

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->this$0:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-static {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->-$$Nest$fgetmStateManager(Lcom/android/quickstep/util/SplitSelectStateController;)Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v8

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->this$0:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-static {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->-$$Nest$fgetmDepthController(Lcom/android/quickstep/util/SplitSelectStateController;)Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v9

    new-instance v10, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0, p4}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;Ljava/lang/Runnable;)V

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v10}, Lcom/android/quickstep/TaskViewUtils;->composeRecentsSplitLaunchAnimatorLegacy(Lcom/android/quickstep/views/GroupedTaskView;ILandroid/app/PendingIntent;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statehandlers/DepthController;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationCancelled()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->this$0:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-static {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->-$$Nest$fgetmHandler(Lcom/android/quickstep/util/SplitSelectStateController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method

.method public onAnimationStart(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "transit"    # I
    .param p2, "apps"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "wallpapers"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "nonApps"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p5, "finishedCallback"    # Ljava/lang/Runnable;

    .line 276
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->this$0:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-static {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->-$$Nest$fgetmHandler(Lcom/android/quickstep/util/SplitSelectStateController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    invoke-static {v0, v7}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 287
    return-void
.end method
