.class Lcom/android/quickstep/AbsSwipeUpHandler$8;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "AbsSwipeUpHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/AbsSwipeUpHandler;->animateToProgressInternal(FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

.field final synthetic val$target:Lcom/android/quickstep/GestureState$GestureEndTarget;


# direct methods
.method constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/AbsSwipeUpHandler;

    .line 1348
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$8;, "Lcom/android/quickstep/AbsSwipeUpHandler$8;"
    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$8;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$8;->val$target:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 1351
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$8;, "Lcom/android/quickstep/AbsSwipeUpHandler$8;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$8;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_0

    .line 1355
    return-void

    .line 1357
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$8;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_2

    .line 1358
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$8;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v0

    .line 1359
    .local v0, "taskToLaunch":I
    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$8;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->getLastAppearedTaskIndex()I

    move-result v1

    .line 1360
    .local v1, "runningTask":I
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$8;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v2}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasStartedNewTask()Z

    move-result v2

    .line 1361
    .local v2, "hasStartedNewTask":Z
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler$8;->val$target:Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v4, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v3, v4, :cond_1

    if-ne v0, v1, :cond_1

    if-nez v2, :cond_1

    .line 1366
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler$8;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v3, v3, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    sget-object v4, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {v3, v4}, Lcom/android/quickstep/GestureState;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    goto :goto_0

    .line 1367
    :cond_1
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler$8;->val$target:Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v4, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_2

    .line 1373
    iget-object v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler$8;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v3, v3, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    sget-object v4, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {v3, v4}, Lcom/android/quickstep/GestureState;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    .line 1376
    .end local v0    # "taskToLaunch":I
    .end local v1    # "runningTask":I
    .end local v2    # "hasStartedNewTask":Z
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$8;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->setState(I)V

    .line 1377
    return-void
.end method
