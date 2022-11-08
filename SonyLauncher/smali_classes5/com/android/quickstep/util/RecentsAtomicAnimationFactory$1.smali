.class Lcom/android/quickstep/util/RecentsAtomicAnimationFactory$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentsAtomicAnimationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;->createStateElementAnimation(I[F)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;

    .line 58
    .local p0, "this":Lcom/android/quickstep/util/RecentsAtomicAnimationFactory$1;, "Lcom/android/quickstep/util/RecentsAtomicAnimationFactory$1;"
    iput-object p1, p0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory$1;->this$0:Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 66
    .local p0, "this":Lcom/android/quickstep/util/RecentsAtomicAnimationFactory$1;, "Lcom/android/quickstep/util/RecentsAtomicAnimationFactory$1;"
    iget-object v0, p0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory$1;->this$0:Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;

    iget-object v0, v0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 67
    .local v0, "recent":Lcom/android/quickstep/views/RecentsView;
    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    invoke-virtual {v1, v0}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 68
    .local v1, "alpha":F
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RAAF createStateElementAnimation onCancel, alpha="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "b/223498680"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 74
    .local p0, "this":Lcom/android/quickstep/util/RecentsAtomicAnimationFactory$1;, "Lcom/android/quickstep/util/RecentsAtomicAnimationFactory$1;"
    const-string v0, "b/223498680"

    const-string v1, "RAAF createStateElementAnimation onEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 61
    .local p0, "this":Lcom/android/quickstep/util/RecentsAtomicAnimationFactory$1;, "Lcom/android/quickstep/util/RecentsAtomicAnimationFactory$1;"
    const-string v0, "b/223498680"

    const-string v1, "RAAF createStateElementAnimation onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method
