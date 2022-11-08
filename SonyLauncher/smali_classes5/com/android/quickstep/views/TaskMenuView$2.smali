.class Lcom/android/quickstep/views/TaskMenuView$2;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "TaskMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/TaskMenuView;->animateOpenOrClosed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/TaskMenuView;

.field final synthetic val$closing:Z


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/TaskMenuView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/views/TaskMenuView;

    .line 318
    iput-object p1, p0, Lcom/android/quickstep/views/TaskMenuView$2;->this$0:Lcom/android/quickstep/views/TaskMenuView;

    iput-boolean p2, p0, Lcom/android/quickstep/views/TaskMenuView$2;->val$closing:Z

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 321
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView$2;->this$0:Lcom/android/quickstep/views/TaskMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskMenuView;->setVisibility(I)V

    .line 322
    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 326
    iget-boolean v0, p0, Lcom/android/quickstep/views/TaskMenuView$2;->val$closing:Z

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView$2;->this$0:Lcom/android/quickstep/views/TaskMenuView;

    invoke-static {v0}, Lcom/android/quickstep/views/TaskMenuView;->-$$Nest$mcloseComplete(Lcom/android/quickstep/views/TaskMenuView;)V

    .line 329
    :cond_0
    return-void
.end method
