.class Lcom/android/quickstep/views/TaskView$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/TaskView;->launchTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/TaskView;

.field final synthetic val$recentsView:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/RecentsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/views/TaskView;

    .line 860
    iput-object p1, p0, Lcom/android/quickstep/views/TaskView$14;->this$0:Lcom/android/quickstep/views/TaskView;

    iput-object p2, p0, Lcom/android/quickstep/views/TaskView$14;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAnimationStart$0(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2
    .param p0, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 865
    nop

    .line 866
    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    .line 867
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setDrawsBelowRecents(Z)V

    .line 865
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 872
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView$14;->this$0:Lcom/android/quickstep/views/TaskView;

    iget-object v0, v0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView$14;->this$0:Lcom/android/quickstep/views/TaskView;

    iget-object v0, v0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView$14;->this$0:Lcom/android/quickstep/views/TaskView;

    invoke-static {v1}, Lcom/android/quickstep/views/TaskView;->-$$Nest$mgetRootViewDisplayId(Lcom/android/quickstep/views/TaskView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 873
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView$14;->this$0:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView$14;->this$0:Lcom/android/quickstep/views/TaskView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/quickstep/views/TaskView;->-$$Nest$fputmIsClickableAsLiveTile(Lcom/android/quickstep/views/TaskView;Z)V

    .line 876
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 863
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView$14;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    new-instance v1, Lcom/android/quickstep/views/TaskView$14$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/quickstep/views/TaskView$14$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 868
    return-void
.end method
