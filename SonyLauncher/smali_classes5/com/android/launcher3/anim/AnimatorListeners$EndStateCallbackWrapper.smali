.class Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatorListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AnimatorListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EndStateCallbackWrapper"
.end annotation


# instance fields
.field private final mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerCalled:Z


# direct methods
.method constructor <init>(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;->mListenerCalled:Z

    .line 65
    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;->mListener:Ljava/util/function/Consumer;

    .line 66
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 70
    iget-boolean v0, p0, Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;->mListenerCalled:Z

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;->mListenerCalled:Z

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;->mListener:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 74
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 78
    iget-boolean v0, p0, Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;->mListenerCalled:Z

    if-nez v0, :cond_2

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;->mListenerCalled:Z

    .line 80
    iget-object v1, p0, Lcom/android/launcher3/anim/AnimatorListeners$EndStateCallbackWrapper;->mListener:Ljava/util/function/Consumer;

    instance-of v2, p1, Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    .line 81
    move-object v2, p1

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :cond_1
    nop

    .line 80
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 84
    :cond_2
    return-void
.end method
