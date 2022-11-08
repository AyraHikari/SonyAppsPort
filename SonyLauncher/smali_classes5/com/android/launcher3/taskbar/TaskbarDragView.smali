.class public Lcom/android/launcher3/taskbar/TaskbarDragView;
.super Lcom/android/launcher3/dragndrop/DragView;
.source "TaskbarDragView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/dragndrop/DragView<",
        "Lcom/android/launcher3/taskbar/BaseTaskbarContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Landroid/graphics/drawable/Drawable;IIFFF)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/taskbar/BaseTaskbarContext;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "registrationX"    # I
    .param p4, "registrationY"    # I
    .param p5, "initialScale"    # F
    .param p6, "scaleOnDrop"    # F
    .param p7, "finalScaleDps"    # F

    .line 31
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/dragndrop/DragView;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IIFFF)V

    .line 33
    return-void
.end method


# virtual methods
.method public animateTo(IILjava/lang/Runnable;I)V
    .locals 4
    .param p1, "toTouchX"    # I
    .param p2, "toTouchY"    # I
    .param p3, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p4, "duration"    # I

    .line 37
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarDragView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/android/launcher3/taskbar/TaskbarDragView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragView;Ljava/lang/Runnable;)V

    .line 44
    .local v0, "onAnimationEnd":Ljava/lang/Runnable;
    nop

    .line 45
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$integer;->config_dropAnimMinDuration:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 44
    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 47
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragView;->mRegistrationX:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragView;->mRegistrationY:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragView;->mScaleOnDrop:F

    .line 50
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragView;->mScaleOnDrop:F

    .line 51
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p4

    .line 53
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 55
    return-void
.end method

.method synthetic lambda$animateTo$0$com-android-launcher3-taskbar-TaskbarDragView(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragView;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 42
    return-void
.end method
