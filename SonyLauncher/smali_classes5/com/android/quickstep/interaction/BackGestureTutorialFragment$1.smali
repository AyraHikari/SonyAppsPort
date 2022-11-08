.class Lcom/android/quickstep/interaction/BackGestureTutorialFragment$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BackGestureTutorialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/BackGestureTutorialFragment;->createGestureAnimation()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/BackGestureTutorialFragment;

.field final synthetic val$fingerDotStartTranslationX:F


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/BackGestureTutorialFragment;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/BackGestureTutorialFragment;

    .line 56
    iput-object p1, p0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment$1;->this$0:Lcom/android/quickstep/interaction/BackGestureTutorialFragment;

    iput p2, p0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment$1;->val$fingerDotStartTranslationX:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 59
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 60
    iget-object v0, p0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment$1;->this$0:Lcom/android/quickstep/interaction/BackGestureTutorialFragment;

    iget-object v0, v0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;->mFingerDotView:Landroid/view/View;

    iget v1, p0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment$1;->val$fingerDotStartTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 61
    return-void
.end method
