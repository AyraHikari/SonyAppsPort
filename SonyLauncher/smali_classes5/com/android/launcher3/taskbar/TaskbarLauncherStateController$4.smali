.class Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskbarLauncherStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->playStateTransitionAnim(Landroid/animation/AnimatorSet;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

.field final synthetic val$committed:Z

.field final synthetic val$isInStashedState:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    .line 353
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$4;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$4;->val$isInStashedState:Z

    iput-boolean p3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$4;->val$committed:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 356
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$4;->val$isInStashedState:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$4;->val$committed:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$4;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fgetmLauncher(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setIconsAlpha(F)V

    .line 360
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 364
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$4;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fgetmLauncher(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getIconsAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$4;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fgetmIconAlphaForHome(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$4;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->-$$Nest$fgetmLauncher(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Hotseat;->getIconsAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    .line 367
    :cond_0
    return-void
.end method
