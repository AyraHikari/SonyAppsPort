.class Lcom/android/quickstep/AbsSwipeUpHandler$7;
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


# direct methods
.method constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/AbsSwipeUpHandler;

    .line 1311
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$7;, "Lcom/android/quickstep/AbsSwipeUpHandler$7;"
    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$7;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 1314
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$7;, "Lcom/android/quickstep/AbsSwipeUpHandler$7;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$7;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_0

    .line 1318
    return-void

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$7;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mGestureState:Lcom/android/quickstep/GestureState;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/GestureState;->setState(I)V

    .line 1322
    return-void
.end method
