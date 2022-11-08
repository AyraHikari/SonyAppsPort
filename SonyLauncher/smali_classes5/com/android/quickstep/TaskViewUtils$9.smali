.class Lcom/android/quickstep/TaskViewUtils$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskViewUtils;->createSplitAuxiliarySurfacesAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLjava/util/function/Consumer;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$auxiliarySurfaces:Ljava/util/List;

.field final synthetic val$shown:Z

.field final synthetic val$t:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method constructor <init>(ZLjava/util/List;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 677
    iput-boolean p1, p0, Lcom/android/quickstep/TaskViewUtils$9;->val$shown:Z

    iput-object p2, p0, Lcom/android/quickstep/TaskViewUtils$9;->val$auxiliarySurfaces:Ljava/util/List;

    iput-object p3, p0, Lcom/android/quickstep/TaskViewUtils$9;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 692
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 693
    iget-boolean v0, p0, Lcom/android/quickstep/TaskViewUtils$9;->val$shown:Z

    if-nez v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$9;->val$auxiliarySurfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    .line 695
    .local v1, "leash":Landroid/view/SurfaceControl;
    iget-object v2, p0, Lcom/android/quickstep/TaskViewUtils$9;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 696
    .end local v1    # "leash":Landroid/view/SurfaceControl;
    goto :goto_0

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$9;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$9;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 700
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 680
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 681
    iget-boolean v0, p0, Lcom/android/quickstep/TaskViewUtils$9;->val$shown:Z

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$9;->val$auxiliarySurfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    .line 683
    .local v1, "leash":Landroid/view/SurfaceControl;
    iget-object v2, p0, Lcom/android/quickstep/TaskViewUtils$9;->val$t:Landroid/view/SurfaceControl$Transaction;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 684
    iget-object v2, p0, Lcom/android/quickstep/TaskViewUtils$9;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 685
    .end local v1    # "leash":Landroid/view/SurfaceControl;
    goto :goto_0

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$9;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 688
    :cond_1
    return-void
.end method
