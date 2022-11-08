.class Lcom/android/quickstep/AbsSwipeUpHandler$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbsSwipeUpHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/AbsSwipeUpHandler;->createWindowAnimationToPip(Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;F)Lcom/android/quickstep/util/SwipePipToHomeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHasAnimationEnded:Z

.field final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

.field final synthetic val$activityAnimationToHome:Lcom/android/launcher3/anim/AnimatorPlaybackController;


# direct methods
.method constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/AbsSwipeUpHandler;

    .line 1453
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$9;, "Lcom/android/quickstep/AbsSwipeUpHandler$9;"
    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$9;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$9;->val$activityAnimationToHome:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1464
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$9;, "Lcom/android/quickstep/AbsSwipeUpHandler$9;"
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$9;->mHasAnimationEnded:Z

    if-eqz v0, :cond_0

    return-void

    .line 1465
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$9;->mHasAnimationEnded:Z

    .line 1466
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$9;->val$activityAnimationToHome:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1467
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$9;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_1

    .line 1471
    return-void

    .line 1474
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$9;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->setState(I)V

    .line 1475
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1457
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$9;, "Lcom/android/quickstep/AbsSwipeUpHandler$9;"
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$9;->mHasAnimationEnded:Z

    if-eqz v0, :cond_0

    return-void

    .line 1459
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$9;->val$activityAnimationToHome:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 1460
    return-void
.end method
