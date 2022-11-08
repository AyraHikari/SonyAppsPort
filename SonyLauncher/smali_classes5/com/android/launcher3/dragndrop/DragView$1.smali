.class Lcom/android/launcher3/dragndrop/DragView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/DragView;-><init>(Landroid/content/Context;Landroid/view/View;IIIIFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/dragndrop/DragView;

    .line 179
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView$1;, "Lcom/android/launcher3/dragndrop/DragView$1;"
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 187
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView$1;, "Lcom/android/launcher3/dragndrop/DragView$1;"
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/DragView;->-$$Nest$fgetmOnAnimEndCallback(Lcom/android/launcher3/dragndrop/DragView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/DragView;->-$$Nest$fgetmOnAnimEndCallback(Lcom/android/launcher3/dragndrop/DragView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 191
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 182
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView$1;, "Lcom/android/launcher3/dragndrop/DragView$1;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->-$$Nest$fputmAnimStarted(Lcom/android/launcher3/dragndrop/DragView;Z)V

    .line 183
    return-void
.end method
