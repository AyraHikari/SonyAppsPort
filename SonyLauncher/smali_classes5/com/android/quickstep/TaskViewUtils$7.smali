.class Lcom/android/quickstep/TaskViewUtils$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskViewUtils;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$recentsView:Lcom/android/quickstep/views/RecentsView;

.field final synthetic val$stateManager:Lcom/android/launcher3/statemanager/StateManager;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statemanager/StateManager;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/android/quickstep/TaskViewUtils$7;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/android/quickstep/TaskViewUtils$7;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAnimationEnd$0(Lcom/android/launcher3/statemanager/StateManager;)V
    .locals 0
    .param p0, "stateManager"    # Lcom/android/launcher3/statemanager/StateManager;

    .line 608
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    .line 609
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    .line 610
    return-void
.end method

.method static synthetic lambda$onAnimationEnd$1(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statemanager/StateManager;)V
    .locals 1
    .param p0, "recentsView"    # Lcom/android/quickstep/views/RecentsView;
    .param p1, "stateManager"    # Lcom/android/launcher3/statemanager/StateManager;

    .line 607
    new-instance v0, Lcom/android/quickstep/TaskViewUtils$7$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/quickstep/TaskViewUtils$7$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/statemanager/StateManager;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    .line 611
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 606
    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$7;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$7;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    new-instance v2, Lcom/android/quickstep/TaskViewUtils$7$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/android/quickstep/TaskViewUtils$7$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statemanager/StateManager;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    .line 612
    return-void
.end method
