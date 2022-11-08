.class Lcom/android/quickstep/interaction/HomeGestureTutorialFragment$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeGestureTutorialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;->createGestureAnimation()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;

.field final synthetic val$fingerDotStartTranslationY:F


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;

    .line 55
    iput-object p1, p0, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment$1;->this$0:Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;

    iput p2, p0, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment$1;->val$fingerDotStartTranslationY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 58
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 59
    iget-object v0, p0, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment$1;->this$0:Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;

    iget-object v0, v0, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;->mFingerDotView:Landroid/view/View;

    iget v1, p0, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment$1;->val$fingerDotStartTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 60
    return-void
.end method
