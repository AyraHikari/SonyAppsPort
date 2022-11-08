.class Lcom/android/quickstep/interaction/AnimatedTaskView$2;
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

.field final synthetic val$outlineStartRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/AnimatedTaskView;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/AnimatedTaskView;

    .line 149
    iput-object p1, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$2;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    iput-object p2, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$2;->val$outlineStartRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 166
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 167
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$2;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setToMultiRowLayout()V

    .line 168
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 160
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 161
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$2;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setToMultiRowLayout()V

    .line 162
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 152
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 153
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$2;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setToSingleRowLayout(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$2;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$2;->val$outlineStartRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$2;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/AnimatedTaskView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$2;->val$outlineStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setPadding(IIII)V

    .line 156
    return-void
.end method
