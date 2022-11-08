.class final Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;
.super Ljava/lang/Object;
.source "TaskbarLauncherStateController.java"

# interfaces
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TaskBarRecentsAnimationListener"
.end annotation


# instance fields
.field private final mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;


# direct methods
.method static bridge synthetic -$$Nest$mendGestureStateOverride(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->endGestureStateOverride(Z)V

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Lcom/android/quickstep/RecentsAnimationCallbacks;)V
    .locals 0
    .param p2, "callbacks"    # Lcom/android/quickstep/RecentsAnimationCallbacks;

    .line 444
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    .line 446
    return-void
.end method

.method private endGestureStateOverride(Z)V
    .locals 4
    .param p1, "finishedToApp"    # Z

    .line 460
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->removeListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    .line 461
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fputmTaskBarRecentsAnimationListener(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;)V

    .line 464
    xor-int/lit8 v0, p1, 0x1

    .line 465
    .local v0, "launcherResumed":Z
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    .line 466
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    .line 467
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState()V

    .line 469
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fgetmIconAlignmentForResumedState(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Lcom/android/quickstep/AnimatedFloat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/AnimatedFloat;->cancelAnimation()V

    .line 470
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fgetmIconAlignmentForResumedState(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Lcom/android/quickstep/AnimatedFloat;

    move-result-object v1

    if-eqz v0, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .line 472
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fgetmControllers(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    .line 473
    .local v1, "controller":Lcom/android/launcher3/taskbar/TaskbarStashController;
    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 474
    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState()V

    .line 475
    return-void
.end method


# virtual methods
.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    .line 450
    .local p1, "thumbnailDatas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fgetmLauncher(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    .line 451
    .local v0, "isInOverview":Z
    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->endGestureStateOverride(Z)V

    .line 452
    return-void
.end method

.method public onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/quickstep/RecentsAnimationController;

    .line 456
    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationController;->getFinishTargetIsLauncher()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->endGestureStateOverride(Z)V

    .line 457
    return-void
.end method
