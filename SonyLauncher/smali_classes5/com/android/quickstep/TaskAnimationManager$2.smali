.class Lcom/android/quickstep/TaskAnimationManager$2;
.super Ljava/lang/Object;
.source "TaskAnimationManager.java"

# interfaces
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskAnimationManager;->startRecentsAnimation(Lcom/android/quickstep/GestureState;Landroid/content/Intent;Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)Lcom/android/quickstep/RecentsAnimationCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/TaskAnimationManager;

.field final synthetic val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;


# direct methods
.method constructor <init>(Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/BaseActivityInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/TaskAnimationManager;

    .line 129
    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    iput-object p2, p0, Lcom/android/quickstep/TaskAnimationManager$2;->val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onTasksAppeared$0(I)[Landroid/view/RemoteAnimationTarget;
    .locals 1
    .param p0, "x$0"    # I

    .line 171
    new-array v0, p0, [Landroid/view/RemoteAnimationTarget;

    return-object v0
.end method

.method static synthetic lambda$onTasksAppeared$1(I)[Landroid/view/RemoteAnimationTarget;
    .locals 1
    .param p0, "x$0"    # I

    .line 174
    new-array v0, p0, [Landroid/view/RemoteAnimationTarget;

    return-object v0
.end method

.method static synthetic lambda$onTasksAppeared$2(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "dividerAnimator"    # Landroid/animation/ValueAnimator;

    .line 198
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "thumbnailDatas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$mcleanUpRecentsAnimation(Lcom/android/quickstep/TaskAnimationManager;)V

    .line 148
    return-void
.end method

.method public onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/quickstep/RecentsAnimationController;

    .line 152
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$mcleanUpRecentsAnimation(Lcom/android/quickstep/TaskAnimationManager;)V

    .line 153
    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 3
    .param p1, "controller"    # Lcom/android/quickstep/RecentsAnimationController;
    .param p2, "targets"    # Lcom/android/quickstep/RecentsAnimationTargets;

    .line 133
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fgetmCallbacks(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0, p1}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fputmController(Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/RecentsAnimationController;)V

    .line 140
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0, p2}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fputmTargets(Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/RecentsAnimationTargets;)V

    .line 141
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fgetmTargets(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/RecentsAnimationTargets;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v2}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fgetmLastGestureState(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/GestureState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/RecentsAnimationTargets;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fputmLastAppearedTaskTarget(Lcom/android/quickstep/TaskAnimationManager;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 142
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fgetmLastGestureState(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/GestureState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v1}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fgetmLastAppearedTaskTarget(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->updateLastAppearedTaskTarget(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 143
    return-void
.end method

.method public onSwitchToScreenshot(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "onFinished"    # Ljava/lang/Runnable;

    .line 214
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->isInLiveTileMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;

    .line 215
    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;

    .line 220
    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 221
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 224
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 217
    .end local v0    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 227
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public onTasksAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 11
    .param p1, "appearedTaskTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 157
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 158
    .local v1, "appearedTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget-object v2, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v2}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fgetmLastGestureState(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/GestureState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v2

    .line 160
    .local v2, "activityInterface":Lcom/android/quickstep/BaseActivityInterface;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v3, "tmpNonHomeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v4, "tmpHomeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;>;"
    array-length v5, p1

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, p1, v6

    .line 163
    .local v7, "compat":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget v8, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    .line 164
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    :cond_0
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v7    # "compat":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda5;-><init>()V

    .line 170
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/quickstep/TaskAnimationManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/quickstep/TaskAnimationManager$2$$ExternalSyntheticLambda0;-><init>()V

    .line 171
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/view/RemoteAnimationTarget;

    .line 172
    .local v5, "nonHomeApps":[Landroid/view/RemoteAnimationTarget;
    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda5;

    invoke-direct {v7}, Lcom/android/quickstep/RecentsAnimationCallbacks$$ExternalSyntheticLambda5;-><init>()V

    .line 173
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/quickstep/TaskAnimationManager$2$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/android/quickstep/TaskAnimationManager$2$$ExternalSyntheticLambda1;-><init>()V

    .line 174
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/view/RemoteAnimationTarget;

    .line 175
    .local v6, "homeApps":[Landroid/view/RemoteAnimationTarget;
    array-length v7, v6

    if-lez v7, :cond_2

    .line 176
    invoke-virtual {v2}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v7

    instance-of v7, v7, Lcom/android/quickstep/RecentsActivity;

    if-eqz v7, :cond_2

    .line 177
    invoke-virtual {v2}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->startHome()V

    .line 178
    return-void

    .line 181
    :cond_2
    sget-object v7, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 182
    invoke-virtual {v7}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v7, v5}, Lcom/android/quickstep/SystemUiProxy;->onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v7

    .line 184
    .local v7, "nonAppTargets":[Landroid/view/RemoteAnimationTarget;
    sget-object v8, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v8}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Lcom/android/quickstep/BaseActivityInterface;->isInLiveTileMode()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 185
    invoke-virtual {v2}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 186
    nop

    .line 187
    invoke-virtual {v2}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/statemanager/StatefulActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/quickstep/views/RecentsView;

    .line 188
    .local v8, "recentsView":Lcom/android/quickstep/views/RecentsView;
    if-eqz v8, :cond_3

    .line 189
    iget v9, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    new-array v0, v0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 192
    invoke-static {v7}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v10

    .line 189
    invoke-virtual {v8, v9, p1, v0, v10}, Lcom/android/quickstep/views/RecentsView;->launchSideTaskInLiveTileMode(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 193
    return-void

    .line 188
    .end local v8    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    :cond_3
    goto :goto_2

    .line 195
    :cond_4
    if-eqz v7, :cond_5

    array-length v0, v7

    if-lez v0, :cond_5

    .line 196
    nop

    .line 197
    invoke-static {v7}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v0

    new-instance v8, Lcom/android/quickstep/TaskAnimationManager$2$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Lcom/android/quickstep/TaskAnimationManager$2$$ExternalSyntheticLambda2;-><init>()V

    .line 196
    const/4 v9, 0x1

    invoke-static {v0, v9, v8}, Lcom/android/quickstep/TaskViewUtils;->createSplitAuxiliarySurfacesAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLjava/util/function/Consumer;)Landroid/animation/ValueAnimator;

    goto :goto_3

    .line 195
    :cond_5
    :goto_2
    nop

    .line 200
    :goto_3
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fgetmController(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 201
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fgetmLastAppearedTaskTarget(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v0

    if-eqz v0, :cond_6

    iget v0, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    iget-object v8, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v8}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fgetmLastAppearedTaskTarget(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v8

    iget v8, v8, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    if-eq v0, v8, :cond_8

    .line 203
    :cond_6
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fgetmLastAppearedTaskTarget(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 204
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fgetmController(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/RecentsAnimationController;

    move-result-object v0

    iget-object v8, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v8}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fgetmLastAppearedTaskTarget(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/quickstep/RecentsAnimationController;->removeTaskTarget(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 206
    :cond_7
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0, v1}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fputmLastAppearedTaskTarget(Lcom/android/quickstep/TaskAnimationManager;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 207
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fgetmLastGestureState(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/GestureState;

    move-result-object v0

    iget-object v8, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v8}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fgetmLastAppearedTaskTarget(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/quickstep/GestureState;->updateLastAppearedTaskTarget(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 210
    :cond_8
    return-void
.end method
