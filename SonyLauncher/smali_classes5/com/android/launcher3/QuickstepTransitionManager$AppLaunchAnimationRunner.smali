.class Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;
.super Ljava/lang/Object;
.source "QuickstepTransitionManager.java"

# interfaces
.implements Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/QuickstepTransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLaunchAnimationRunner"
.end annotation


# instance fields
.field private final mOnEndCallback:Lcom/android/launcher3/util/RunnableList;

.field private final mV:Landroid/view/View;

.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/view/View;Lcom/android/launcher3/util/RunnableList;)V
    .locals 0
    .param p2, "v"    # Landroid/view/View;
    .param p3, "onEndCallback"    # Lcom/android/launcher3/util/RunnableList;

    .line 1724
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1725
    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    .line 1726
    iput-object p3, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mOnEndCallback:Lcom/android/launcher3/util/RunnableList;

    .line 1727
    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 1

    .line 1771
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mOnEndCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    .line 1772
    return-void
.end method

.method public onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 13
    .param p1, "transit"    # I
    .param p2, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "nonAppTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p5, "result"    # Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    .line 1735
    move-object v0, p0

    move-object v8, p2

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v9, v1

    .line 1736
    .local v9, "anim":Landroid/animation/AnimatorSet;
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    .line 1737
    const/4 v2, 0x1

    invoke-static {v1, p2, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$mlauncherIsATargetWithMode(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Z

    move-result v10

    .line 1739
    .local v10, "launcherClosing":Z
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    instance-of v11, v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 1740
    .local v11, "launchingFromWidget":Z
    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-virtual {v2, v1, p2}, Lcom/android/launcher3/QuickstepTransitionManager;->isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v12

    .line 1742
    .local v12, "launchingFromRecents":Z
    if-eqz v11, :cond_0

    .line 1743
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    move-object v2, v9

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$mcomposeWidgetLaunchAnimator(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 1745
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    const/16 v2, 0x1b

    invoke-static {v1, v9, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$maddCujInstrumentation(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/Animator;I)V

    .line 1747
    const/4 v1, 0x1

    .local v1, "skipFirstFrame":Z
    goto :goto_0

    .line 1748
    .end local v1    # "skipFirstFrame":Z
    :cond_0
    if-eqz v12, :cond_1

    .line 1749
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    move-object v2, v9

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move v7, v10

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/QuickstepTransitionManager;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V

    .line 1751
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    const/4 v2, 0x7

    invoke-static {v1, v9, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$maddCujInstrumentation(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/Animator;I)V

    .line 1753
    const/4 v1, 0x1

    .restart local v1    # "skipFirstFrame":Z
    goto :goto_0

    .line 1755
    .end local v1    # "skipFirstFrame":Z
    :cond_1
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mV:Landroid/view/View;

    move-object v2, v9

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move v7, v10

    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$mcomposeIconLaunchAnimator(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)V

    .line 1757
    iget-object v1, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    const/16 v2, 0x8

    invoke-static {v1, v9, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$maddCujInstrumentation(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/animation/Animator;I)V

    .line 1758
    const/4 v1, 0x0

    .line 1761
    .restart local v1    # "skipFirstFrame":Z
    :goto_0
    if-eqz v10, :cond_2

    .line 1762
    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v2}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmForceInvisibleListener(Lcom/android/launcher3/QuickstepTransitionManager;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1765
    :cond_2
    iget-object v2, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v2, v2, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iget-object v3, v0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->mOnEndCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    move-object/from16 v3, p5

    invoke-virtual {v3, v9, v2, v4, v1}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V

    .line 1767
    return-void
.end method
