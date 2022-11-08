.class Lcom/android/quickstep/AbsSwipeUpHandler$6;
.super Landroid/animation/AnimatorListenerAdapter;
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

    .line 1273
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$6;, "Lcom/android/quickstep/AbsSwipeUpHandler$6;"
    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$6;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1276
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$6;, "Lcom/android/quickstep/AbsSwipeUpHandler$6;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$6;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->-$$Nest$fputmParallelRunningAnim(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/animation/Animator;)V

    .line 1277
    return-void
.end method
