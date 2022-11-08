.class Lcom/android/quickstep/AbsSwipeUpHandler$5;
.super Ljava/lang/Object;
.source "AbsSwipeUpHandler.java"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/AbsSwipeUpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/AbsSwipeUpHandler;

    .line 1241
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$5;, "Lcom/android/quickstep/AbsSwipeUpHandler$5;"
    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$5;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 3
    .param p1, "task"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "homeTaskVisible"    # Z
    .param p3, "clearedTask"    # Z
    .param p4, "wasVisible"    # Z

    .line 1245
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$5;, "Lcom/android/quickstep/AbsSwipeUpHandler$5;"
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$5;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v1, v1, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1246
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$5;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->-$$Nest$mendRunningWindowAnim(Lcom/android/quickstep/AbsSwipeUpHandler;Z)V

    .line 1251
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$5;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->-$$Nest$fgetmActivityRestartListener(Lcom/android/quickstep/AbsSwipeUpHandler;)Lcom/android/systemui/shared/system/TaskStackChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 1253
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    .line 1255
    :cond_0
    return-void
.end method
