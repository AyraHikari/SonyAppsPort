.class Lcom/android/quickstep/views/TaskView$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/TaskView;->animateIconScaleAndDimIntoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/TaskView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/views/TaskView;

    .line 1065
    iput-object p1, p0, Lcom/android/quickstep/views/TaskView$15;->this$0:Lcom/android/quickstep/views/TaskView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1068
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView$15;->this$0:Lcom/android/quickstep/views/TaskView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/quickstep/views/TaskView;->-$$Nest$fputmIconAndDimAnimator(Lcom/android/quickstep/views/TaskView;Landroid/animation/ObjectAnimator;)V

    .line 1069
    return-void
.end method
