.class public Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;
.super Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;
.source "RecentsAtomicAnimationFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ACTIVITY_TYPE:",
        "Lcom/android/launcher3/statemanager/StatefulActivity;",
        "STATE_TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory<",
        "TSTATE_TYPE;>;"
    }
.end annotation


# static fields
.field public static final INDEX_RECENTS_FADE_ANIM:I = 0x0

.field public static final INDEX_RECENTS_TRANSLATE_X_ANIM:I = 0x1

.field private static final MY_ANIM_COUNT:I = 0x2


# instance fields
.field protected final mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TACTIVITY_TYPE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TACTIVITY_TYPE;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;, "Lcom/android/quickstep/util/RecentsAtomicAnimationFactory<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    .local p1, "activity":Lcom/android/launcher3/statemanager/StatefulActivity;, "TACTIVITY_TYPE;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;-><init>(I)V

    .line 47
    iput-object p1, p0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 48
    return-void
.end method


# virtual methods
.method public varargs createStateElementAnimation(I[F)Landroid/animation/Animator;
    .locals 3
    .param p1, "index"    # I
    .param p2, "values"    # [F

    .line 52
    .local p0, "this":Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;, "Lcom/android/quickstep/util/RecentsAtomicAnimationFactory<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    packed-switch p1, :pswitch_data_0

    .line 88
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;->createStateElementAnimation(I[F)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 80
    .local v0, "rv":Lcom/android/quickstep/views/RecentsView;
    new-instance v1, Lcom/android/launcher3/anim/SpringAnimationBuilder;

    iget-object v2, p0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-direct {v1, v2}, Lcom/android/launcher3/anim/SpringAnimationBuilder;-><init>(Landroid/content/Context;)V

    const v2, 0x3b03126f    # 0.002f

    .line 81
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setMinimumVisibleChange(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    .line 82
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v1

    const/high16 v2, 0x437a0000    # 250.0f

    .line 83
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStiffness(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v1

    .line 84
    invoke-virtual {v1, p2}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setValues([F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    .line 85
    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->build(Ljava/lang/Object;Landroid/util/FloatProperty;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 80
    return-object v1

    .line 54
    .end local v0    # "rv":Lcom/android/quickstep/views/RecentsView;
    :pswitch_1
    iget-object v0, p0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    sget-object v1, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    invoke-static {v0, v1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 56
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RAAF createStateElementAnimation alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string v2, "b/223498680"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v1, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory$1;-><init>(Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 77
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
