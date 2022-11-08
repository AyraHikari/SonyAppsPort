.class Lcom/android/quickstep/AnimatedFloat$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatedFloat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/AnimatedFloat;

.field final synthetic val$end:F


# direct methods
.method constructor <init>(Lcom/android/quickstep/AnimatedFloat;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/AnimatedFloat;

    .line 71
    iput-object p1, p0, Lcom/android/quickstep/AnimatedFloat$2;->this$0:Lcom/android/quickstep/AnimatedFloat;

    iput p2, p0, Lcom/android/quickstep/AnimatedFloat$2;->val$end:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 81
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat$2;->this$0:Lcom/android/quickstep/AnimatedFloat;

    invoke-static {v0}, Lcom/android/quickstep/AnimatedFloat;->-$$Nest$fgetmValueAnimator(Lcom/android/quickstep/AnimatedFloat;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat$2;->this$0:Lcom/android/quickstep/AnimatedFloat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/quickstep/AnimatedFloat;->-$$Nest$fputmValueAnimator(Lcom/android/quickstep/AnimatedFloat;Landroid/animation/ObjectAnimator;)V

    .line 83
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat$2;->this$0:Lcom/android/quickstep/AnimatedFloat;

    invoke-static {v0, v1}, Lcom/android/quickstep/AnimatedFloat;->-$$Nest$fputmEndValue(Lcom/android/quickstep/AnimatedFloat;Ljava/lang/Float;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 74
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat$2;->this$0:Lcom/android/quickstep/AnimatedFloat;

    invoke-static {v0}, Lcom/android/quickstep/AnimatedFloat;->-$$Nest$fgetmValueAnimator(Lcom/android/quickstep/AnimatedFloat;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/quickstep/AnimatedFloat$2;->this$0:Lcom/android/quickstep/AnimatedFloat;

    iget v1, p0, Lcom/android/quickstep/AnimatedFloat$2;->val$end:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/quickstep/AnimatedFloat;->-$$Nest$fputmEndValue(Lcom/android/quickstep/AnimatedFloat;Ljava/lang/Float;)V

    .line 77
    :cond_0
    return-void
.end method
