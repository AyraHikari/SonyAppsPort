.class Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;
.super Ljava/lang/Object;
.source "TaskbarUnfoldAnimationController.java"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransitionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;-><init>(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)V

    return-void
.end method


# virtual methods
.method public onTransitionFinished()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->-$$Nest$fgetmMoveFromCenterAnimator(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->onTransitionFinished()V

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->-$$Nest$fgetmMoveFromCenterAnimator(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->clearRegisteredViews()V

    .line 98
    return-void
.end method

.method public onTransitionProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->-$$Nest$fgetmMoveFromCenterAnimator(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->onTransitionProgress(F)V

    .line 103
    return-void
.end method

.method public onTransitionStarted()V
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->-$$Nest$fgetmMoveFromCenterAnimator(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->updateDisplayProperties()V

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->-$$Nest$fgetmTaskbarViewController(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)Lcom/android/launcher3/taskbar/TaskbarViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getIconViews()[Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "icons":[Landroid/view/View;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 88
    .local v3, "icon":Landroid/view/View;
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    invoke-static {v4}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->-$$Nest$fgetmMoveFromCenterAnimator(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->registerViewForAnimation(Landroid/view/View;)V

    .line 85
    .end local v3    # "icon":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->-$$Nest$fgetmMoveFromCenterAnimator(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->onTransitionStarted()V

    .line 92
    return-void
.end method
