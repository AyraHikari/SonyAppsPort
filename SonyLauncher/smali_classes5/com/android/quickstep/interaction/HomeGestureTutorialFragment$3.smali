.class Lcom/android/quickstep/interaction/HomeGestureTutorialFragment$3;
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

.field final synthetic val$controller:Lcom/android/quickstep/interaction/HomeGestureTutorialController;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;Lcom/android/quickstep/interaction/HomeGestureTutorialController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;

    .line 79
    iput-object p1, p0, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment$3;->this$0:Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;

    iput-object p2, p0, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment$3;->val$controller:Lcom/android/quickstep/interaction/HomeGestureTutorialController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 82
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 83
    iget-object v0, p0, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment$3;->val$controller:Lcom/android/quickstep/interaction/HomeGestureTutorialController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/HomeGestureTutorialController;->resetFakeTaskView(Z)V

    .line 84
    return-void
.end method
