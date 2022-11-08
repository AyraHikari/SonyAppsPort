.class Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeUpGestureTutorialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->createFingerDotHomeSwipeAnimator(F)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

.field final synthetic val$fingerDotStartTranslationY:F


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    .line 370
    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$4;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iput p2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$4;->val$fingerDotStartTranslationY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 373
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 374
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$4;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$4;->val$fingerDotStartTranslationY:F

    const v3, 0x441c4000    # 625.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->animateFakeTaskViewHome(Landroid/graphics/PointF;Ljava/lang/Runnable;)V

    .line 379
    return-void
.end method
