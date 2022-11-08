.class Lcom/android/launcher3/views/AbstractSlideInView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractSlideInView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/views/AbstractSlideInView;->handleClose(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/views/AbstractSlideInView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/views/AbstractSlideInView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/views/AbstractSlideInView;

    .line 224
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView$3;, "Lcom/android/launcher3/views/AbstractSlideInView$3;"
    iput-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView$3;->this$0:Lcom/android/launcher3/views/AbstractSlideInView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 227
    .local p0, "this":Lcom/android/launcher3/views/AbstractSlideInView$3;, "Lcom/android/launcher3/views/AbstractSlideInView$3;"
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView$3;->this$0:Lcom/android/launcher3/views/AbstractSlideInView;

    iget-object v0, v0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 228
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView$3;->this$0:Lcom/android/launcher3/views/AbstractSlideInView;

    invoke-virtual {v0}, Lcom/android/launcher3/views/AbstractSlideInView;->onCloseComplete()V

    .line 229
    return-void
.end method
