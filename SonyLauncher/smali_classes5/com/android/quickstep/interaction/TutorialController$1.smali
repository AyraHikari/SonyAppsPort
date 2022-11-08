.class Lcom/android/quickstep/interaction/TutorialController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TutorialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/TutorialController;->playFeedbackAnimation(Landroid/animation/Animator;Landroid/graphics/drawable/AnimatedVectorDrawable;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/TutorialController;

.field final synthetic val$edgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field final synthetic val$gestureAnimation:Landroid/animation/Animator;

.field final synthetic val$onStartRunnable:Ljava/lang/Runnable;

.field final synthetic val$useGestureAnimationDelay:Z


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/TutorialController;Landroid/graphics/drawable/AnimatedVectorDrawable;ZLjava/lang/Runnable;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/TutorialController;

    .line 380
    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialController$1;->this$0:Lcom/android/quickstep/interaction/TutorialController;

    iput-object p2, p0, Lcom/android/quickstep/interaction/TutorialController$1;->val$edgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-boolean p3, p0, Lcom/android/quickstep/interaction/TutorialController$1;->val$useGestureAnimationDelay:Z

    iput-object p4, p0, Lcom/android/quickstep/interaction/TutorialController$1;->val$onStartRunnable:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/quickstep/interaction/TutorialController$1;->val$gestureAnimation:Landroid/animation/Animator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 397
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 399
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController$1;->this$0:Lcom/android/quickstep/interaction/TutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/TutorialController;->mEdgeGestureVideoView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController$1;->val$edgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 402
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController$1;->val$gestureAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 403
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 383
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 385
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController$1;->this$0:Lcom/android/quickstep/interaction/TutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/TutorialController;->mEdgeGestureVideoView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController$1;->val$edgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController$1;->val$edgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 390
    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialController$1;->val$useGestureAnimationDelay:Z

    if-nez v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController$1;->val$onStartRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 393
    :cond_1
    return-void
.end method
