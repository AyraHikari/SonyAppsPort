.class Lcom/android/launcher3/popup/ArrowPopup$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ArrowPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/popup/ArrowPopup;->animateClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/popup/ArrowPopup;


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/ArrowPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/popup/ArrowPopup;

    .line 783
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup$3;, "Lcom/android/launcher3/popup/ArrowPopup$3;"
    iput-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup$3;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 786
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup$3;, "Lcom/android/launcher3/popup/ArrowPopup$3;"
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup$3;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    .line 787
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup$3;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    iget-boolean v0, v0, Lcom/android/launcher3/popup/ArrowPopup;->mDeferContainerRemoval:Z

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup$3;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/ArrowPopup;->setVisibility(I)V

    goto :goto_0

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup$3;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/ArrowPopup;->closeComplete()V

    .line 792
    :goto_0
    return-void
.end method
