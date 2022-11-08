.class public Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;
.super Lcom/android/launcher3/taskbar/TaskbarUIController;
.source "FallbackTaskbarUIController.java"


# instance fields
.field private final mRecentsActivity:Lcom/android/quickstep/RecentsActivity;

.field private final mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
            "Lcom/android/quickstep/fallback/RecentsState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmRecentsActivity(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;)Lcom/android/quickstep/RecentsActivity;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mRecentsActivity:Lcom/android/quickstep/RecentsActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$manimateToRecentsState(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;Lcom/android/quickstep/fallback/RecentsState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->animateToRecentsState(Lcom/android/quickstep/fallback/RecentsState;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/RecentsActivity;)V
    .locals 1
    .param p1, "recentsActivity"    # Lcom/android/quickstep/RecentsActivity;

    .line 49
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;-><init>()V

    .line 36
    new-instance v0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;-><init>(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    .line 50
    iput-object p1, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mRecentsActivity:Lcom/android/quickstep/RecentsActivity;

    .line 51
    return-void
.end method

.method private animateToRecentsState(Lcom/android/quickstep/fallback/RecentsState;)V
    .locals 2
    .param p1, "toState"    # Lcom/android/quickstep/fallback/RecentsState;

    .line 83
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->createAnimToRecentsState(Lcom/android/quickstep/fallback/RecentsState;J)Landroid/animation/Animator;

    move-result-object v0

    .line 84
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public createAnimToRecentsState(Lcom/android/quickstep/fallback/RecentsState;J)Landroid/animation/Animator;
    .locals 4
    .param p1, "toState"    # Lcom/android/quickstep/fallback/RecentsState;
    .param p2, "duration"    # J

    .line 73
    invoke-virtual {p1}, Lcom/android/quickstep/fallback/RecentsState;->hasOverviewActions()Z

    move-result v0

    .line 74
    .local v0, "forceStashed":Z
    iget-object v1, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    .line 77
    .local v1, "controller":Lcom/android/launcher3/taskbar/TaskbarStashController;
    const/16 v2, 0x40

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 78
    xor-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 79
    invoke-virtual {v1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyStateWithoutStart(J)Landroid/animation/Animator;

    move-result-object v2

    return-object v2
.end method

.method protected init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 2
    .param p1, "taskbarControllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 55
    invoke-super {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mRecentsActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/RecentsActivity;->setTaskbarUIController(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;)V

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mRecentsActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 63
    invoke-super {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onDestroy()V

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mRecentsActivity:Lcom/android/quickstep/RecentsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsActivity;->setTaskbarUIController(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;)V

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mRecentsActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 66
    return-void
.end method
