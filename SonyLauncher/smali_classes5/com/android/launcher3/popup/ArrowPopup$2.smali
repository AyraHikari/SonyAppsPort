.class Lcom/android/launcher3/popup/ArrowPopup$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ArrowPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/popup/ArrowPopup;->animateOpen()V
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

    .line 698
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup$2;, "Lcom/android/launcher3/popup/ArrowPopup$2;"
    iput-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup$2;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 701
    .local p0, "this":Lcom/android/launcher3/popup/ArrowPopup$2;, "Lcom/android/launcher3/popup/ArrowPopup$2;"
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup$2;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/ArrowPopup;->setAlpha(F)V

    .line 702
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup$2;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    invoke-static {v0}, Lcom/android/launcher3/popup/ArrowPopup;->access$000(Lcom/android/launcher3/popup/ArrowPopup;)V

    .line 703
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup$2;->this$0:Lcom/android/launcher3/popup/ArrowPopup;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    .line 704
    return-void
.end method
