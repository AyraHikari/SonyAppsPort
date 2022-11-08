.class Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskbarLauncherStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->onStateChangeApplied(IJZ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

.field final synthetic val$duration:J

.field final synthetic val$isResumed:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;ZJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    .line 273
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$2;->val$isResumed:Z

    iput-wide p3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$2;->val$duration:J

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fputmIsAnimatingToLauncherViaResume(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Z)V

    .line 277
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 281
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$2;->val$isResumed:Z

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fputmIsAnimatingToLauncherViaResume(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Z)V

    .line 283
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fgetmControllers(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    .line 285
    .local v0, "stashController":Lcom/android/launcher3/taskbar/TaskbarStashController;
    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$2;->val$isResumed:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    .line 286
    iget-wide v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$2;->val$duration:J

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    .line 287
    return-void
.end method
