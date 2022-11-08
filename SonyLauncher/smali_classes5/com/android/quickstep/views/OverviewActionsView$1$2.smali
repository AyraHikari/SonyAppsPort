.class Lcom/android/quickstep/views/OverviewActionsView$1$2;
.super Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;
.source "OverviewActionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/OverviewActionsView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/views/OverviewActionsView<",
        "TT;>.OverviewAction;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/quickstep/views/OverviewActionsView$1;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/OverviewActionsView$1;Landroid/content/Context;IIILandroid/view/View$OnClickListener;)V
    .locals 7
    .param p1, "this$1"    # Lcom/android/quickstep/views/OverviewActionsView$1;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "actionResId"    # I
    .param p4, "spaceResId"    # I
    .param p5, "iconResId"    # I
    .param p6, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 418
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$1$2;, "Lcom/android/quickstep/views/OverviewActionsView$1$2;"
    iput-object p1, p0, Lcom/android/quickstep/views/OverviewActionsView$1$2;->this$1:Lcom/android/quickstep/views/OverviewActionsView$1;

    iget-object v1, p1, Lcom/android/quickstep/views/OverviewActionsView$1;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;-><init>(Lcom/android/quickstep/views/OverviewActionsView;Landroid/content/Context;IIILandroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method isAvailable()Z
    .locals 1

    .line 421
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$1$2;, "Lcom/android/quickstep/views/OverviewActionsView$1$2;"
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView$1$2;->this$1:Lcom/android/quickstep/views/OverviewActionsView$1;

    iget-object v0, v0, Lcom/android/quickstep/views/OverviewActionsView$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/quickstep/FreeFormUtil;->isSomcFreeFromEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method setViewEnabled(Z)V
    .locals 9
    .param p1, "isEnabled"    # Z

    .line 442
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$1$2;, "Lcom/android/quickstep/views/OverviewActionsView$1$2;"
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView$1$2;->this$1:Lcom/android/quickstep/views/OverviewActionsView$1;

    iget-object v0, v0, Lcom/android/quickstep/views/OverviewActionsView$1;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    iget v1, p0, Lcom/android/quickstep/views/OverviewActionsView$1$2;->mActionResId:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OverviewActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 443
    .local v0, "actionView":Landroid/view/View;
    const/4 v1, 0x1

    .line 444
    .local v1, "isDockable":Z
    const/4 v2, 0x0

    .line 445
    .local v2, "isProhibited":Z
    const/4 v3, 0x0

    .line 446
    .local v3, "isGame":Z
    iget-object v4, p0, Lcom/android/quickstep/views/OverviewActionsView$1$2;->this$1:Lcom/android/quickstep/views/OverviewActionsView$1;

    iget-object v4, v4, Lcom/android/quickstep/views/OverviewActionsView$1;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-static {v4}, Lcom/android/quickstep/views/OverviewActionsView;->-$$Nest$fgetmRecentsView(Lcom/android/quickstep/views/OverviewActionsView;)Lcom/android/quickstep/views/RecentsView;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 447
    iget-object v4, p0, Lcom/android/quickstep/views/OverviewActionsView$1$2;->this$1:Lcom/android/quickstep/views/OverviewActionsView$1;

    iget-object v4, v4, Lcom/android/quickstep/views/OverviewActionsView$1;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-static {v4}, Lcom/android/quickstep/views/OverviewActionsView;->-$$Nest$fgetmRecentsView(Lcom/android/quickstep/views/OverviewActionsView;)Lcom/android/quickstep/views/RecentsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    .line 448
    .local v4, "taskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v4, :cond_1

    .line 450
    instance-of v5, v4, Lcom/android/quickstep/views/GroupedTaskView;

    if-eqz v5, :cond_0

    .line 451
    move-object v5, v4

    check-cast v5, Lcom/android/quickstep/views/GroupedTaskView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/GroupedTaskView;->getSecondaryTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    .local v5, "task":Lcom/android/systemui/shared/recents/model/Task;
    goto :goto_0

    .line 453
    .end local v5    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :cond_0
    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    .line 455
    .restart local v5    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :goto_0
    if-eqz v5, :cond_1

    .line 456
    iget-boolean v1, v5, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    .line 457
    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 458
    .local v6, "component":Landroid/content/ComponentName;
    if-eqz v6, :cond_1

    .line 459
    iget-object v7, p0, Lcom/android/quickstep/views/OverviewActionsView$1$2;->this$1:Lcom/android/quickstep/views/OverviewActionsView$1;

    iget-object v7, v7, Lcom/android/quickstep/views/OverviewActionsView$1;->val$context:Landroid/content/Context;

    .line 460
    invoke-static {v7, v6}, Lcom/sonymobile/quickstep/FreeFormUtil;->isProhibited(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v2

    .line 461
    iget-object v7, p0, Lcom/android/quickstep/views/OverviewActionsView$1$2;->this$1:Lcom/android/quickstep/views/OverviewActionsView$1;

    iget-object v7, v7, Lcom/android/quickstep/views/OverviewActionsView$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/sonymobile/quickstep/GeServiceHelper;->getInstance(Landroid/content/Context;)Lcom/sonymobile/quickstep/GeServiceHelper;

    move-result-object v7

    .line 462
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/quickstep/GeServiceHelper;->maybeGameApp(Ljava/lang/String;)Z

    move-result v3

    .line 467
    .end local v4    # "taskView":Lcom/android/quickstep/views/TaskView;
    .end local v5    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .end local v6    # "component":Landroid/content/ComponentName;
    :cond_1
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-static {v0, v4}, Lcom/android/quickstep/util/LayoutUtils;->setViewEnabled(Landroid/view/View;Z)V

    .line 469
    return-void
.end method

.method setVisibility(I)V
    .locals 6
    .param p1, "hiddenFlags"    # I

    .line 426
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView$1$2;, "Lcom/android/quickstep/views/OverviewActionsView$1$2;"
    and-int/lit8 v0, p1, 0x5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 428
    .local v0, "isHidden":Z
    :goto_0
    iget-object v2, p0, Lcom/android/quickstep/views/OverviewActionsView$1$2;->this$1:Lcom/android/quickstep/views/OverviewActionsView$1;

    iget-object v2, v2, Lcom/android/quickstep/views/OverviewActionsView$1;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-static {v2}, Lcom/android/quickstep/views/OverviewActionsView;->-$$Nest$fgetmRecentsView(Lcom/android/quickstep/views/OverviewActionsView;)Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 429
    iget-object v2, p0, Lcom/android/quickstep/views/OverviewActionsView$1$2;->this$1:Lcom/android/quickstep/views/OverviewActionsView$1;

    iget-object v2, v2, Lcom/android/quickstep/views/OverviewActionsView$1;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-static {v2}, Lcom/android/quickstep/views/OverviewActionsView;->-$$Nest$fgetmRecentsView(Lcom/android/quickstep/views/OverviewActionsView;)Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    .line 430
    .local v2, "taskView":Lcom/android/quickstep/views/TaskView;
    if-nez v2, :cond_1

    .line 431
    const/4 v0, 0x1

    .line 434
    .end local v2    # "taskView":Lcom/android/quickstep/views/TaskView;
    :cond_1
    iget-object v2, p0, Lcom/android/quickstep/views/OverviewActionsView$1$2;->this$1:Lcom/android/quickstep/views/OverviewActionsView$1;

    iget-object v2, v2, Lcom/android/quickstep/views/OverviewActionsView$1;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    iget v3, p0, Lcom/android/quickstep/views/OverviewActionsView$1$2;->mActionResId:I

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/OverviewActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 435
    .local v2, "actionView":Landroid/view/View;
    iget-object v3, p0, Lcom/android/quickstep/views/OverviewActionsView$1$2;->this$1:Lcom/android/quickstep/views/OverviewActionsView$1;

    iget-object v3, v3, Lcom/android/quickstep/views/OverviewActionsView$1;->this$0:Lcom/android/quickstep/views/OverviewActionsView;

    iget v4, p0, Lcom/android/quickstep/views/OverviewActionsView$1$2;->mSpaceResId:I

    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/OverviewActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Space;

    .line 436
    .local v3, "space":Landroid/widget/Space;
    const/16 v4, 0x8

    if-eqz v0, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 437
    if-eqz v0, :cond_3

    move v1, v4

    :cond_3
    invoke-virtual {v3, v1}, Landroid/widget/Space;->setVisibility(I)V

    .line 438
    return-void
.end method
