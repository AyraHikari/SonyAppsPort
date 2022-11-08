.class Lcom/android/quickstep/views/RecentsView$11;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/views/RecentsView;

    .line 496
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$11;, "Lcom/android/quickstep/views/RecentsView$11;"
    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$11;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onTaskRemoved$0(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "taskKey"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 537
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v0

    .line 538
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 537
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic lambda$onTaskRemoved$1$com-android-quickstep-views-RecentsView$11(ILjava/lang/Boolean;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "taskRemoved"    # Ljava/lang/Boolean;

    .line 545
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$11;, "Lcom/android/quickstep/views/RecentsView$11;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$11;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0, p1}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mdismissTask(Lcom/android/quickstep/views/RecentsView;I)V

    .line 548
    :cond_0
    return-void
.end method

.method synthetic lambda$onTaskRemoved$2$com-android-quickstep-views-RecentsView$11(ILcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "taskKey"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .param p3, "apkRemoved"    # Ljava/lang/Boolean;

    .line 541
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$11;, "Lcom/android/quickstep/views/RecentsView$11;"
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$11;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0, p1}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mdismissTask(Lcom/android/quickstep/views/RecentsView;I)V

    goto :goto_0

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$11;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fgetmModel(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/RecentsModel;

    move-result-object v0

    iget v1, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    new-instance v2, Lcom/android/quickstep/views/RecentsView$11$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/android/quickstep/views/RecentsView$11$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/views/RecentsView$11;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentsModel;->isTaskRemoved(ILjava/util/function/Consumer;)V

    .line 550
    :goto_0
    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "taskId"    # I
    .param p4, "stackId"    # I

    .line 499
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$11;, "Lcom/android/quickstep/views/RecentsView$11;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$11;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fgetmHandleTaskStackChanges(Lcom/android/quickstep/views/RecentsView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$11;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/quickstep/TaskUtils;->checkCurrentOrManagedUserId(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$11;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, p3}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 509
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v0, :cond_2

    .line 510
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView$11;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/RecentsView;->removeView(Landroid/view/View;)V

    .line 512
    :cond_2
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 1

    .line 516
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$11;, "Lcom/android/quickstep/views/RecentsView$11;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$11;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fgetmHandleTaskStackChanges(Lcom/android/quickstep/views/RecentsView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$11;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->reloadIfNeeded()V

    .line 521
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$11;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$menableLayoutTransitions(Lcom/android/quickstep/views/RecentsView;)V

    .line 522
    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 8
    .param p1, "taskId"    # I

    .line 526
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$11;, "Lcom/android/quickstep/views/RecentsView$11;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$11;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fgetmHandleTaskStackChanges(Lcom/android/quickstep/views/RecentsView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$11;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 531
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;
    if-nez v0, :cond_1

    .line 532
    return-void

    .line 534
    :cond_1
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 535
    .local v1, "taskKey":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    sget-object v2, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher3/icons/cache/HandlerRunnable;

    sget-object v4, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 536
    invoke-virtual {v4}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/quickstep/views/RecentsView$11$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Lcom/android/quickstep/views/RecentsView$11$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    sget-object v6, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v7, Lcom/android/quickstep/views/RecentsView$11$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, p1, v1}, Lcom/android/quickstep/views/RecentsView$11$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/views/RecentsView$11;ILcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/launcher3/icons/cache/HandlerRunnable;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 535
    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 551
    return-void
.end method
