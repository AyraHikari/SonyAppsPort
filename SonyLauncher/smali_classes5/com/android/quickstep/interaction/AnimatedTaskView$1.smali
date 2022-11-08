.class Lcom/android/quickstep/interaction/AnimatedTaskView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatedTaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/AnimatedTaskView;->createAnimationToMultiRowLayout()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

.field final synthetic val$outlineStartRadius:F

.field final synthetic val$outlineStartRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/AnimatedTaskView;Landroid/graphics/Rect;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/AnimatedTaskView;

    .line 112
    iput-object p1, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$1;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    iput-object p2, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$1;->val$outlineStartRect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$1;->val$outlineStartRadius:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 137
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 138
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$1;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-static {v0}, Lcom/android/quickstep/interaction/AnimatedTaskView;->-$$Nest$fgetmFullTaskView(Lcom/android/quickstep/interaction/AnimatedTaskView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$1;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-static {v1}, Lcom/android/quickstep/interaction/AnimatedTaskView;->-$$Nest$fgetmTaskViewOutlineProvider(Lcom/android/quickstep/interaction/AnimatedTaskView;)Landroid/view/ViewOutlineProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 139
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 131
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 132
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$1;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-static {v0}, Lcom/android/quickstep/interaction/AnimatedTaskView;->-$$Nest$fgetmFullTaskView(Lcom/android/quickstep/interaction/AnimatedTaskView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$1;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-static {v1}, Lcom/android/quickstep/interaction/AnimatedTaskView;->-$$Nest$fgetmTaskViewOutlineProvider(Lcom/android/quickstep/interaction/AnimatedTaskView;)Landroid/view/ViewOutlineProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 133
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 115
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 117
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$1;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-static {v0}, Lcom/android/quickstep/interaction/AnimatedTaskView;->-$$Nest$fgetmTaskViewAnimatedRect(Lcom/android/quickstep/interaction/AnimatedTaskView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$1;->val$outlineStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 118
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$1;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    iget v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$1;->val$outlineStartRadius:F

    invoke-static {v0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskView;->-$$Nest$fputmTaskViewAnimatedRadius(Lcom/android/quickstep/interaction/AnimatedTaskView;F)V

    .line 120
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$1;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-static {v0}, Lcom/android/quickstep/interaction/AnimatedTaskView;->-$$Nest$fgetmFullTaskView(Lcom/android/quickstep/interaction/AnimatedTaskView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$1;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-static {v0}, Lcom/android/quickstep/interaction/AnimatedTaskView;->-$$Nest$fgetmFullTaskView(Lcom/android/quickstep/interaction/AnimatedTaskView;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/interaction/AnimatedTaskView$1$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/AnimatedTaskView$1$1;-><init>(Lcom/android/quickstep/interaction/AnimatedTaskView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 127
    return-void
.end method
