.class Lcom/android/launcher3/QuickstepTransitionManager$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;->getOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZI)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field final synthetic val$openingTargets:Lcom/android/quickstep/RemoteAnimationTargets;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/view/View;Lcom/android/quickstep/RemoteAnimationTargets;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/QuickstepTransitionManager;

    .line 708
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$9;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$9;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager$9;->val$openingTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 723
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$9;->val$v:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_0

    .line 724
    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$9;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    .line 727
    .local v0, "taskbarController":Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    if-eqz v0, :cond_1

    .line 728
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->showEdu()V

    .line 730
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$9;->val$openingTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteAnimationTargets;->release()V

    .line 731
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 711
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$9;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    .line 712
    .local v0, "taskbarController":Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->shouldShowEdu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$9;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "launcher_taskbar_education_showing"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 719
    :cond_0
    return-void
.end method
