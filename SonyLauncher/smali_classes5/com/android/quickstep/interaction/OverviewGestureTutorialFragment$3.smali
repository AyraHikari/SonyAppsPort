.class Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OverviewGestureTutorialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;->createGestureAnimation()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;

.field final synthetic val$controller:Lcom/android/quickstep/interaction/OverviewGestureTutorialController;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;Lcom/android/quickstep/interaction/OverviewGestureTutorialController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;

    .line 75
    iput-object p1, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment$3;->this$0:Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;

    iput-object p2, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment$3;->val$controller:Lcom/android/quickstep/interaction/OverviewGestureTutorialController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 78
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 79
    iget-object v0, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment$3;->val$controller:Lcom/android/quickstep/interaction/OverviewGestureTutorialController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->resetFakeTaskView(Z)V

    .line 80
    return-void
.end method
