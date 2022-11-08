.class Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment$2;
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

    .line 66
    iput-object p1, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment$2;->this$0:Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;

    iput-object p2, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment$2;->val$controller:Lcom/android/quickstep/interaction/OverviewGestureTutorialController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 69
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 70
    iget-object v0, p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment$2;->val$controller:Lcom/android/quickstep/interaction/OverviewGestureTutorialController;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->animateTaskViewToOverview()V

    .line 71
    return-void
.end method
