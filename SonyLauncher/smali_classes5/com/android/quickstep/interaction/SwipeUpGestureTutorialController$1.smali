.class Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeUpGestureTutorialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    .line 76
    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 79
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ClipIconView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->getRootView()Lcom/android/quickstep/interaction/RootSandboxLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/RootSandboxLayout;->getFullscreenHeight()I

    move-result v0

    .line 83
    .local v0, "height":I
    iget-object v3, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v3, v3, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v3}, Lcom/android/quickstep/interaction/TutorialFragment;->getRootView()Lcom/android/quickstep/interaction/RootSandboxLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/interaction/RootSandboxLayout;->getWidth()I

    move-result v3

    .line 84
    .local v3, "width":I
    iget-object v4, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-static {v4}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->-$$Nest$fgetmFakeTaskViewRect(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v2, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 86
    .end local v0    # "height":I
    .end local v3    # "width":I
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->-$$Nest$fputmFakeTaskViewRadius(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;F)V

    .line 87
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 88
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 90
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {v0, v3}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setAlpha(F)V

    .line 92
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setToSingleRowLayout(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-static {v0, v2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->-$$Nest$fputmShowTasks(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;Z)V

    .line 94
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-static {v0, v2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->-$$Nest$fputmShowPreviousTasks(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;Z)V

    .line 95
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$1;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mRunningWindowAnim:Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;

    .line 96
    return-void
.end method
