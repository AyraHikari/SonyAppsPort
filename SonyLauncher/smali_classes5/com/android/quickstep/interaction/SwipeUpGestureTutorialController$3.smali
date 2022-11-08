.class Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeUpGestureTutorialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->fadeOutFakeTaskView(ZZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

.field final synthetic val$onEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$reset:Z


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    .line 147
    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iput-boolean p2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->val$reset:Z

    iput-object p3, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->val$onEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "isReverse"    # Z

    .line 150
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v1, 0x12c

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 152
    .local v0, "fadeAnim":Lcom/android/launcher3/anim/PendingAnimation;
    iget-boolean v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->val$reset:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v1, v1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTaskViewSwipeUpAnimation:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    .line 154
    invoke-virtual {v1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->getCurrentShift()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v1

    sget-object v3, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    .line 153
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 155
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-static {v1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->-$$Nest$fgetmResetTaskView(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v1, v1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/anim/PendingAnimation;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 158
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v1, v1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/anim/PendingAnimation;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->val$onEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 161
    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 163
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 165
    .local v1, "animset":Landroid/animation/AnimatorSet;
    iget-boolean v2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->val$reset:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v2, v2, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    new-instance v2, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3$1;

    invoke-direct {v2, p0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3$1;-><init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 181
    :cond_2
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 182
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 183
    iget-object v2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-static {v1}, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Landroid/animation/Animator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    move-result-object v3

    iput-object v3, v2, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    .line 184
    return-void
.end method
