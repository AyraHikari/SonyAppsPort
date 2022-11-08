.class Lcom/android/quickstep/AbsSwipeUpHandler$10;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "AbsSwipeUpHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/AbsSwipeUpHandler;->setupWindowAnimation([Lcom/android/quickstep/util/RectFSpringAnim;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/AbsSwipeUpHandler;

    .line 1527
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$10;, "Lcom/android/quickstep/AbsSwipeUpHandler$10;"
    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$10;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 1530
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$10;, "Lcom/android/quickstep/AbsSwipeUpHandler$10;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$10;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$10;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$10;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v1, v1, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/AbsSwipeUpHandler$10$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/quickstep/AbsSwipeUpHandler$10$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$10;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->-$$Nest$mmaybeUpdateRecentsAttachedState(Lcom/android/quickstep/AbsSwipeUpHandler;Z)V

    .line 1535
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$10;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$10;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v1, v1, Lcom/android/quickstep/AbsSwipeUpHandler;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/BaseActivityInterface;->onSwipeUpToHomeComplete(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    .line 1536
    return-void
.end method
