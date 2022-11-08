.class Lcom/android/launcher3/QuickstepTransitionManager$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;->getLauncherContentAnimator(ZIZ)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/QuickstepTransitionManager;

    .line 562
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$7;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 574
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$7;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 575
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    .line 576
    .local v0, "taskbarUIController":Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    if-eqz v0, :cond_0

    .line 577
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->forceHideBackground(Z)V

    .line 579
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 565
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$7;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 566
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    .line 567
    .local v0, "taskbarUIController":Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    if-eqz v0, :cond_0

    .line 568
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->forceHideBackground(Z)V

    .line 570
    :cond_0
    return-void
.end method
