.class Lcom/android/quickstep/interaction/BackGestureTutorialFragment$3;
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

.field final synthetic val$controller:Lcom/android/quickstep/interaction/BackGestureTutorialController;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/BackGestureTutorialFragment;Lcom/android/quickstep/interaction/BackGestureTutorialController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/BackGestureTutorialFragment;

    .line 77
    iput-object p1, p0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment$3;->this$0:Lcom/android/quickstep/interaction/BackGestureTutorialFragment;

    iput-object p2, p0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment$3;->val$controller:Lcom/android/quickstep/interaction/BackGestureTutorialController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 80
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 81
    iget-object v0, p0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment$3;->val$controller:Lcom/android/quickstep/interaction/BackGestureTutorialController;

    .line 82
    invoke-virtual {v0}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->getMockAppTaskCurrentPageLayoutResId()I

    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->updateFakeAppTaskViewLayout(I)V

    .line 83
    return-void
.end method
