.class public final synthetic Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iput p2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$$ExternalSyntheticLambda0;->f$1:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$$ExternalSyntheticLambda0;->f$1:F

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->lambda$createFingerDotSwipeUpAnimator$0$com-android-quickstep-interaction-SwipeUpGestureTutorialController(FLandroid/animation/ValueAnimator;)V

    return-void
.end method
