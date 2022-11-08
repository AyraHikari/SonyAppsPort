.class Lcom/android/quickstep/views/RecentsView$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/RecentsView;->createTaskDismissAnimation(Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/views/RecentsView;

    .line 2970
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$15;, "Lcom/android/quickstep/views/RecentsView$15;"
    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2973
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$15;, "Lcom/android/quickstep/views/RecentsView$15;"
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2974
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$15;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fgetmClearAllButton(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/ClearAllButton;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/ClearAllButton;->setDismissAlpha(F)V

    .line 2975
    return-void
.end method
