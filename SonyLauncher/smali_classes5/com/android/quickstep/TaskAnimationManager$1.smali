.class Lcom/android/quickstep/TaskAnimationManager$1;
.super Ljava/lang/Object;
.source "TaskAnimationManager.java"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/TaskAnimationManager;


# direct methods
.method constructor <init>(Lcom/android/quickstep/TaskAnimationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/TaskAnimationManager;

    .line 66
    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager$1;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 4
    .param p1, "task"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "homeTaskVisible"    # Z
    .param p3, "clearedTask"    # Z
    .param p4, "wasVisible"    # Z

    .line 70
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$1;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fgetmLastGestureState(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/GestureState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/TaskAnimationManager$1;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v1}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fgetmLiveTileRestartListener(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/systemui/shared/system/TaskStackChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 73
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$1;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fgetmLastGestureState(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/GestureState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    .line 76
    .local v0, "activityInterface":Lcom/android/quickstep/BaseActivityInterface;
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->isInLiveTileMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    .line 79
    .local v1, "recentsView":Lcom/android/quickstep/views/RecentsView;
    if-eqz v1, :cond_1

    .line 80
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/RecentsView;->launchSideTaskInLiveTileModeForRestartedApp(I)V

    .line 81
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/TaskAnimationManager$1;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v3}, Lcom/android/quickstep/TaskAnimationManager;->-$$Nest$fgetmLiveTileRestartListener(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/systemui/shared/system/TaskStackChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 85
    .end local v1    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    :cond_1
    return-void
.end method
