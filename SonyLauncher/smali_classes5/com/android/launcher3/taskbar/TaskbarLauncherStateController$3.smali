.class Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$3;
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


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    .line 308
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 311
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fputmIsAnimatingToLauncherViaGesture(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Z)V

    .line 312
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 316
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$misRecentsAnimationRunning(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fputmIsAnimatingToLauncherViaGesture(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Z)V

    .line 317
    return-void
.end method
