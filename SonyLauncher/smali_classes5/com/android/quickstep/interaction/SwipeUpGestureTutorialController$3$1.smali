.class Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeUpGestureTutorialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->onAnimationEnd(Landroid/animation/Animator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;

    .line 166
    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3$1;->this$1:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 169
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 170
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3$1;->this$1:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$3;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    .line 171
    invoke-virtual {v0}, Lcom/android/quickstep/interaction/AnimatedTaskView;->createAnimationToMultiRowLayout()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 173
    .local v0, "multiRowAnimation":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 174
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 177
    :cond_0
    return-void
.end method
