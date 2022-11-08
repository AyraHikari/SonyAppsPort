.class Lcom/android/quickstep/views/RecentsView$16;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/RecentsView;->createTaskDismissAnimation(Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/RecentsView;

.field final synthetic val$currentPageSnapsToEndOfGrid:Z

.field final synthetic val$dismissedIndex:I

.field final synthetic val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

.field final synthetic val$dismissedTaskViewId:I

.field final synthetic val$finalCloseGapBetweenClearAll:Z

.field final synthetic val$finalIsFocusedTaskDismissed:Z

.field final synthetic val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

.field final synthetic val$finalSnapToLastTask:Z

.field final synthetic val$isClearAllHidden:Z

.field final synthetic val$isSplitPlaceholderFirstInGrid:Z

.field final synthetic val$isSplitPlaceholderLastInGrid:Z

.field final synthetic val$shouldRemoveTask:Z

.field final synthetic val$showAsGrid:Z

.field final synthetic val$taskCount:I


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;ZIZZZIZLcom/android/quickstep/views/TaskView;ZZIZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/views/RecentsView;

    .line 3121
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$16;, "Lcom/android/quickstep/views/RecentsView$16;"
    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView$16;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    iput-boolean p3, p0, Lcom/android/quickstep/views/RecentsView$16;->val$shouldRemoveTask:Z

    iput p4, p0, Lcom/android/quickstep/views/RecentsView$16;->val$dismissedTaskViewId:I

    iput-boolean p5, p0, Lcom/android/quickstep/views/RecentsView$16;->val$showAsGrid:Z

    iput-boolean p6, p0, Lcom/android/quickstep/views/RecentsView$16;->val$finalCloseGapBetweenClearAll:Z

    iput-boolean p7, p0, Lcom/android/quickstep/views/RecentsView$16;->val$finalSnapToLastTask:Z

    iput p8, p0, Lcom/android/quickstep/views/RecentsView$16;->val$taskCount:I

    iput-boolean p9, p0, Lcom/android/quickstep/views/RecentsView$16;->val$isClearAllHidden:Z

    iput-object p10, p0, Lcom/android/quickstep/views/RecentsView$16;->val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    iput-boolean p11, p0, Lcom/android/quickstep/views/RecentsView$16;->val$isSplitPlaceholderFirstInGrid:Z

    iput-boolean p12, p0, Lcom/android/quickstep/views/RecentsView$16;->val$isSplitPlaceholderLastInGrid:Z

    iput p13, p0, Lcom/android/quickstep/views/RecentsView$16;->val$dismissedIndex:I

    iput-boolean p14, p0, Lcom/android/quickstep/views/RecentsView$16;->val$finalIsFocusedTaskDismissed:Z

    iput-boolean p15, p0, Lcom/android/quickstep/views/RecentsView$16;->val$currentPageSnapsToEndOfGrid:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onEnd(Z)V
    .locals 13
    .param p1, "success"    # Z

    .line 3137
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$16;, "Lcom/android/quickstep/views/RecentsView$16;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    .line 3139
    if-eqz p1, :cond_1e

    .line 3140
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView$16;->val$shouldRemoveTask:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3141
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$16;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3142
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$16;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    .line 3143
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3144
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget v3, p0, Lcom/android/quickstep/views/RecentsView$16;->val$dismissedTaskViewId:I

    new-instance v4, Lcom/android/quickstep/views/RecentsView$16$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v3}, Lcom/android/quickstep/views/RecentsView$16$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/views/RecentsView$16;I)V

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    goto :goto_0

    .line 3147
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget v3, p0, Lcom/android/quickstep/views/RecentsView$16;->val$dismissedTaskViewId:I

    invoke-static {v0, v3}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mremoveTaskInternal(Lcom/android/quickstep/views/RecentsView;I)V

    .line 3149
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object v0, v0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView$16;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    .line 3150
    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_DISMISS_SWIPE_UP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 3151
    invoke-interface {v0, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 3155
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0}, Lcom/android/quickstep/views/RecentsView;->access$000(Lcom/android/quickstep/views/RecentsView;)I

    move-result v0

    .line 3156
    .local v0, "pageToSnapTo":I
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v3, v1}, Lcom/android/quickstep/views/RecentsView;->access$102(Lcom/android/quickstep/views/RecentsView;I)I

    .line 3157
    const/4 v3, -0x1

    .line 3158
    .local v3, "taskViewIdToSnapTo":I
    iget-boolean v4, p0, Lcom/android/quickstep/views/RecentsView$16;->val$showAsGrid:Z

    if-eqz v4, :cond_11

    .line 3159
    iget-boolean v4, p0, Lcom/android/quickstep/views/RecentsView$16;->val$finalCloseGapBetweenClearAll:Z

    if-eqz v4, :cond_4

    .line 3160
    iget-boolean v4, p0, Lcom/android/quickstep/views/RecentsView$16;->val$finalSnapToLastTask:Z

    if-eqz v4, :cond_2

    .line 3162
    const/4 v0, -0x1

    goto/16 :goto_7

    .line 3163
    :cond_2
    iget v4, p0, Lcom/android/quickstep/views/RecentsView$16;->val$taskCount:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    .line 3164
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v4}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fgetmClearAllButton(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/ClearAllButton;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto/16 :goto_7

    .line 3165
    :cond_3
    iget-boolean v4, p0, Lcom/android/quickstep/views/RecentsView$16;->val$isClearAllHidden:Z

    if-eqz v4, :cond_13

    .line 3167
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 3173
    :cond_4
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v4}, Lcom/android/quickstep/views/RecentsView;->access$200(Lcom/android/quickstep/views/RecentsView;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    .line 3174
    .local v4, "snappedTaskView":Lcom/android/quickstep/views/TaskView;
    const/4 v5, 0x1

    .line 3175
    .local v5, "calculateScrollDiff":Z
    if-eqz v4, :cond_c

    iget-boolean v6, p0, Lcom/android/quickstep/views/RecentsView$16;->val$finalSnapToLastTask:Z

    if-nez v6, :cond_c

    .line 3176
    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v6

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget v7, v7, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    if-ne v6, v7, :cond_7

    .line 3177
    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView$16;->val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    if-eqz v6, :cond_5

    .line 3178
    nop

    .line 3179
    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v3

    goto/16 :goto_3

    .line 3180
    :cond_5
    iget v6, p0, Lcom/android/quickstep/views/RecentsView$16;->val$dismissedTaskViewId:I

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget v7, v7, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    if-eq v6, v7, :cond_6

    .line 3181
    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget v3, v6, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    goto :goto_3

    .line 3185
    :cond_6
    const/4 v0, 0x0

    .line 3186
    const/4 v5, 0x0

    goto :goto_3

    .line 3189
    :cond_7
    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v6

    .line 3190
    .local v6, "snappedTaskViewId":I
    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v7}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fgetmTopRowIdSet(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntSet;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v7

    .line 3193
    .local v7, "isSnappedTaskInTopRow":Z
    if-eqz v7, :cond_8

    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v8}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mgetTopRowIdArray(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntArray;

    move-result-object v8

    goto :goto_1

    .line 3194
    :cond_8
    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v8}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mgetBottomRowIdArray(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntArray;

    move-result-object v8

    :goto_1
    nop

    .line 3195
    .local v8, "taskViewIdArray":Lcom/android/launcher3/util/IntArray;
    invoke-virtual {v8, v6}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result v9

    .line 3196
    .local v9, "snappedIndex":I
    iget v10, p0, Lcom/android/quickstep/views/RecentsView$16;->val$dismissedTaskViewId:I

    invoke-virtual {v8, v10}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    .line 3197
    iget-object v10, p0, Lcom/android/quickstep/views/RecentsView$16;->val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    if-eqz v10, :cond_9

    .line 3198
    nop

    .line 3199
    invoke-virtual {v10}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v10

    .line 3198
    invoke-virtual {v8, v10}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    .line 3201
    :cond_9
    invoke-virtual {v8}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_a

    .line 3202
    invoke-virtual {v8, v9}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    goto :goto_3

    .line 3203
    :cond_a
    invoke-virtual {v8}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v10

    if-ne v9, v10, :cond_c

    .line 3208
    if-eqz v7, :cond_b

    iget-object v10, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v10}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mgetBottomRowIdArray(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntArray;

    move-result-object v10

    goto :goto_2

    .line 3209
    :cond_b
    iget-object v10, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v10}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mgetTopRowIdArray(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntArray;

    move-result-object v10

    :goto_2
    nop

    .line 3210
    .local v10, "inverseRowTaskViewIdArray":Lcom/android/launcher3/util/IntArray;
    invoke-virtual {v10}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v11

    if-ge v9, v11, :cond_c

    .line 3211
    invoke-virtual {v10, v9}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    .line 3218
    .end local v6    # "snappedTaskViewId":I
    .end local v7    # "isSnappedTaskInTopRow":Z
    .end local v8    # "taskViewIdArray":Lcom/android/launcher3/util/IntArray;
    .end local v9    # "snappedIndex":I
    .end local v10    # "inverseRowTaskViewIdArray":Lcom/android/launcher3/util/IntArray;
    :cond_c
    :goto_3
    if-eqz v5, :cond_10

    .line 3219
    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v6}, Lcom/android/quickstep/views/RecentsView;->access$300(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-interface {v6, v7}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v6

    .line 3221
    .local v6, "primaryScroll":I
    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v7}, Lcom/android/quickstep/views/RecentsView;->access$400(Lcom/android/quickstep/views/RecentsView;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v7

    .line 3222
    .local v7, "currentPageScroll":I
    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    sub-int v9, v6, v7

    invoke-static {v8, v9}, Lcom/android/quickstep/views/RecentsView;->access$502(Lcom/android/quickstep/views/RecentsView;I)I

    .line 3224
    iget-boolean v8, p0, Lcom/android/quickstep/views/RecentsView$16;->val$isSplitPlaceholderFirstInGrid:Z

    if-eqz v8, :cond_e

    iget-boolean v8, p0, Lcom/android/quickstep/views/RecentsView$16;->val$finalSnapToLastTask:Z

    if-nez v8, :cond_e

    .line 3225
    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    .line 3226
    invoke-static {v8}, Lcom/android/quickstep/views/RecentsView;->access$700(Lcom/android/quickstep/views/RecentsView;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v9}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fgetmSplitPlaceholderSize(Lcom/android/quickstep/views/RecentsView;)I

    move-result v9

    neg-int v9, v9

    goto :goto_4

    :cond_d
    iget-object v9, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v9}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fgetmSplitPlaceholderSize(Lcom/android/quickstep/views/RecentsView;)I

    move-result v9

    .line 3225
    :goto_4
    invoke-static {v8, v9}, Lcom/android/quickstep/views/RecentsView;->access$612(Lcom/android/quickstep/views/RecentsView;I)I

    goto :goto_6

    .line 3227
    :cond_e
    iget-boolean v8, p0, Lcom/android/quickstep/views/RecentsView$16;->val$isSplitPlaceholderLastInGrid:Z

    if-eqz v8, :cond_10

    iget-boolean v8, p0, Lcom/android/quickstep/views/RecentsView$16;->val$finalSnapToLastTask:Z

    if-eqz v8, :cond_10

    .line 3228
    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    .line 3229
    invoke-static {v8}, Lcom/android/quickstep/views/RecentsView;->access$900(Lcom/android/quickstep/views/RecentsView;)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v9}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fgetmSplitPlaceholderSize(Lcom/android/quickstep/views/RecentsView;)I

    move-result v9

    goto :goto_5

    :cond_f
    iget-object v9, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v9}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fgetmSplitPlaceholderSize(Lcom/android/quickstep/views/RecentsView;)I

    move-result v9

    neg-int v9, v9

    .line 3228
    :goto_5
    invoke-static {v8, v9}, Lcom/android/quickstep/views/RecentsView;->access$812(Lcom/android/quickstep/views/RecentsView;I)I

    .line 3232
    .end local v4    # "snappedTaskView":Lcom/android/quickstep/views/TaskView;
    .end local v5    # "calculateScrollDiff":Z
    .end local v6    # "primaryScroll":I
    .end local v7    # "currentPageScroll":I
    :cond_10
    :goto_6
    goto :goto_7

    .line 3233
    :cond_11
    iget v4, p0, Lcom/android/quickstep/views/RecentsView$16;->val$dismissedIndex:I

    if-lt v4, v0, :cond_12

    iget v4, p0, Lcom/android/quickstep/views/RecentsView$16;->val$taskCount:I

    sub-int/2addr v4, v2

    if-ne v0, v4, :cond_13

    .line 3234
    :cond_12
    add-int/lit8 v0, v0, -0x1

    .line 3236
    :cond_13
    :goto_7
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$16;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/RecentsView;->getHomeTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    if-ne v4, v5, :cond_14

    move v4, v2

    goto :goto_8

    :cond_14
    move v4, v1

    .line 3237
    .local v4, "isHomeTaskDismissed":Z
    :goto_8
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView$16;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v5, v6}, Lcom/android/quickstep/views/RecentsView;->removeViewInLayout(Landroid/view/View;)V

    .line 3238
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v5}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fgetmTopRowIdSet(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntSet;

    move-result-object v5

    iget v6, p0, Lcom/android/quickstep/views/RecentsView$16;->val$dismissedTaskViewId:I

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/IntSet;->remove(I)V

    .line 3240
    iget v5, p0, Lcom/android/quickstep/views/RecentsView$16;->val$taskCount:I

    if-ne v5, v2, :cond_16

    .line 3241
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v1}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fgetmClearAllButton(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/ClearAllButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/RecentsView;->removeViewInLayout(Landroid/view/View;)V

    .line 3242
    if-eqz v4, :cond_15

    .line 3243
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    goto/16 :goto_d

    .line 3245
    :cond_15
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    goto/16 :goto_d

    .line 3249
    :cond_16
    iget-boolean v5, p0, Lcom/android/quickstep/views/RecentsView$16;->val$finalIsFocusedTaskDismissed:Z

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$16;->val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    if-eqz v5, :cond_17

    .line 3250
    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v5

    iput v5, v6, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    .line 3251
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v5}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fgetmTopRowIdSet(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntSet;

    move-result-object v5

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget v6, v6, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/IntSet;->remove(I)V

    .line 3252
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$16;->val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->animateIconScaleAndDimIntoView()V

    .line 3254
    :cond_17
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v5, v2}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mupdateTaskSize(Lcom/android/quickstep/views/RecentsView;Z)V

    .line 3255
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v5}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mupdateChildTaskOrientations(Lcom/android/quickstep/views/RecentsView;)V

    .line 3257
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/RecentsView;->updateScrollSynchronously()V

    .line 3259
    iget-boolean v5, p0, Lcom/android/quickstep/views/RecentsView$16;->val$showAsGrid:Z

    if-eqz v5, :cond_1d

    .line 3261
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v5}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mgetHighestVisibleTaskIndex(Lcom/android/quickstep/views/RecentsView;)I

    move-result v5

    .line 3262
    .local v5, "highestVisibleTaskIndex":I
    const v6, 0x7fffffff

    if-ge v5, v6, :cond_1b

    .line 3263
    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v6, v5}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mrequireTaskViewAt(Lcom/android/quickstep/views/RecentsView;I)Lcom/android/quickstep/views/TaskView;

    move-result-object v6

    .line 3266
    .local v6, "taskView":Lcom/android/quickstep/views/TaskView;
    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v7}, Lcom/android/quickstep/views/RecentsView;->access$1000(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-interface {v7, v8}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v7

    .line 3268
    .local v7, "screenStart":I
    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v8}, Lcom/android/quickstep/views/RecentsView;->access$1100(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v8

    invoke-interface {v8, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildStart(Landroid/view/View;)I

    move-result v8

    .line 3269
    invoke-virtual {v6, v1, v2}, Lcom/android/quickstep/views/TaskView;->getOffsetAdjustment(ZZ)F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v8, v9

    .line 3275
    .local v8, "taskStart":I
    iget-object v9, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v9}, Lcom/android/quickstep/views/RecentsView;->access$1200(Lcom/android/quickstep/views/RecentsView;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 3276
    iget-object v9, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v9}, Lcom/android/quickstep/views/RecentsView;->access$1300(Lcom/android/quickstep/views/RecentsView;)I

    move-result v9

    add-int/2addr v9, v7

    if-gt v8, v9, :cond_18

    move v9, v2

    goto :goto_9

    :cond_18
    move v9, v1

    .local v9, "shouldRebalance":Z
    :goto_9
    goto :goto_b

    .line 3278
    .end local v9    # "shouldRebalance":Z
    :cond_19
    iget-object v9, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    .line 3279
    invoke-static {v9}, Lcom/android/quickstep/views/RecentsView;->access$1400(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-interface {v9, v10}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v9

    add-int/2addr v9, v7

    .line 3281
    .local v9, "screenEnd":I
    iget-object v10, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v10}, Lcom/android/quickstep/views/RecentsView;->access$1500(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v10

    invoke-interface {v10, v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v10

    int-to-float v10, v10

    .line 3283
    invoke-virtual {v6, v1}, Lcom/android/quickstep/views/TaskView;->getSizeAdjustment(Z)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 3284
    .local v10, "taskSize":I
    add-int v11, v8, v10

    .line 3286
    .local v11, "taskEnd":I
    iget-object v12, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v12}, Lcom/android/quickstep/views/RecentsView;->access$1600(Lcom/android/quickstep/views/RecentsView;)I

    move-result v12

    sub-int v12, v9, v12

    if-lt v11, v12, :cond_1a

    move v12, v2

    goto :goto_a

    :cond_1a
    move v12, v1

    :goto_a
    move v9, v12

    .line 3289
    .end local v10    # "taskSize":I
    .end local v11    # "taskEnd":I
    .local v9, "shouldRebalance":Z
    :goto_b
    if-eqz v9, :cond_1b

    .line 3290
    iget-object v10, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v10, v2, v5}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mupdateGridProperties(Lcom/android/quickstep/views/RecentsView;ZI)V

    .line 3292
    iget-object v10, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v10}, Lcom/android/quickstep/views/RecentsView;->updateScrollSynchronously()V

    .line 3296
    .end local v6    # "taskView":Lcom/android/quickstep/views/TaskView;
    .end local v7    # "screenStart":I
    .end local v8    # "taskStart":I
    .end local v9    # "shouldRebalance":Z
    :cond_1b
    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v6}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mgetTopRowIdArray(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntArray;

    move-result-object v6

    .line 3297
    .local v6, "topRowIdArray":Lcom/android/launcher3/util/IntArray;
    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v7}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mgetBottomRowIdArray(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntArray;

    move-result-object v7

    .line 3298
    .local v7, "bottomRowIdArray":Lcom/android/launcher3/util/IntArray;
    iget-boolean v8, p0, Lcom/android/quickstep/views/RecentsView$16;->val$finalSnapToLastTask:Z

    if-eqz v8, :cond_1c

    .line 3300
    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    .line 3301
    invoke-static {v8, v6, v7}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mgetLastGridTaskView(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)Lcom/android/quickstep/views/TaskView;

    move-result-object v9

    .line 3300
    invoke-virtual {v8, v9}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_c

    .line 3302
    :cond_1c
    const/4 v8, -0x1

    if-eq v3, v8, :cond_1d

    .line 3305
    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    .line 3306
    invoke-static {v8, v3}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mgetTaskViewFromTaskViewId(Lcom/android/quickstep/views/RecentsView;I)Lcom/android/quickstep/views/TaskView;

    move-result-object v9

    .line 3305
    invoke-virtual {v8, v9}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3307
    iget-boolean v8, p0, Lcom/android/quickstep/views/RecentsView$16;->val$currentPageSnapsToEndOfGrid:Z

    if-nez v8, :cond_1d

    .line 3311
    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v8, v0, v6, v7}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mgetOffsetFromScrollPosition(Lcom/android/quickstep/views/RecentsView;ILcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/quickstep/views/RecentsView;->access$1712(Lcom/android/quickstep/views/RecentsView;I)I

    .line 3316
    .end local v5    # "highestVisibleTaskIndex":I
    .end local v6    # "topRowIdArray":Lcom/android/launcher3/util/IntArray;
    .end local v7    # "bottomRowIdArray":Lcom/android/launcher3/util/IntArray;
    :cond_1d
    :goto_c
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v5}, Lcom/android/quickstep/views/RecentsView;->access$1800(Lcom/android/quickstep/views/RecentsView;)V

    .line 3317
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v5, v0}, Lcom/android/quickstep/views/RecentsView;->setCurrentPage(I)V

    .line 3319
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v5}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mdispatchScrollChanged(Lcom/android/quickstep/views/RecentsView;)V

    .line 3320
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v5}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mupdateActionsViewFocusedScroll(Lcom/android/quickstep/views/RecentsView;)V

    .line 3321
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/quickstep/views/RecentsView;->isClearAllHidden()Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object v5, v5, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v5, :cond_1e

    .line 3322
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v5}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fgetmActionsView(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Lcom/android/quickstep/views/OverviewActionsView;->updateDisabledFlags(IZ)V

    .line 3327
    .end local v0    # "pageToSnapTo":I
    .end local v3    # "taskViewIdToSnapTo":I
    .end local v4    # "isHomeTaskDismissed":Z
    :cond_1e
    :goto_d
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mupdateCurrentTaskActionsVisibility(Lcom/android/quickstep/views/RecentsView;)V

    .line 3328
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->onDismissAnimationEnds()V

    .line 3329
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fputmPendingAnimation(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 3330
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "success"    # Ljava/lang/Boolean;

    .line 3124
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$16;, "Lcom/android/quickstep/views/RecentsView$16;"
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-boolean v0, v0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$16;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    .line 3125
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3126
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/quickstep/views/RecentsView$16$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/android/quickstep/views/RecentsView$16$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/views/RecentsView$16;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    goto :goto_0

    .line 3129
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView$16;->onEnd(Z)V

    .line 3131
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 3121
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$16;, "Lcom/android/quickstep/views/RecentsView$16;"
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView$16;->accept(Ljava/lang/Boolean;)V

    return-void
.end method

.method synthetic lambda$accept$0$com-android-quickstep-views-RecentsView$16(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "success"    # Ljava/lang/Boolean;

    .line 3127
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$16;, "Lcom/android/quickstep/views/RecentsView$16;"
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView$16;->onEnd(Z)V

    return-void
.end method

.method synthetic lambda$onEnd$1$com-android-quickstep-views-RecentsView$16(I)V
    .locals 1
    .param p1, "dismissedTaskViewId"    # I

    .line 3145
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$16;, "Lcom/android/quickstep/views/RecentsView$16;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$16;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0, p1}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mremoveTaskInternal(Lcom/android/quickstep/views/RecentsView;I)V

    return-void
.end method
