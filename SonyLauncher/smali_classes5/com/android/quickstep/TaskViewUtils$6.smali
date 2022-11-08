.class Lcom/android/quickstep/TaskViewUtils$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskViewUtils;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$recentsView:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/android/quickstep/TaskViewUtils$6;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 586
    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$6;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    if-nez v0, :cond_0

    .line 587
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .line 588
    :cond_0
    sget-object v0, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$6;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, v1}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    nop

    .line 589
    .local v0, "alpha":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TVU composeRecentsLaunchAnimator onCancel, alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "b/223498680"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 595
    const-string v0, "b/223498680"

    const-string v1, "TVU composeRecentsLaunchAnimator onEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 581
    const-string v0, "b/223498680"

    const-string v1, "TVU composeRecentsLaunchAnimator onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void
.end method
