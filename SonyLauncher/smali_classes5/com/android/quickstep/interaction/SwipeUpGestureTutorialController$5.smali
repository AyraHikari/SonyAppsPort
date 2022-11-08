.class Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeUpGestureTutorialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->createFingerDotOverviewSwipeAnimator(F)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    .line 389
    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$5;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 392
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 393
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$5;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$5;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->onMotionPaused(Z)V

    .line 395
    return-void
.end method
