.class Lcom/android/quickstep/interaction/AnimatedTaskView$1$1;
.super Landroid/view/ViewOutlineProvider;
.source "AnimatedTaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/AnimatedTaskView$1;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/quickstep/interaction/AnimatedTaskView$1;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/AnimatedTaskView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/quickstep/interaction/AnimatedTaskView$1;

    .line 121
    iput-object p1, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$1$1;->this$1:Lcom/android/quickstep/interaction/AnimatedTaskView$1;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 124
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$1$1;->this$1:Lcom/android/quickstep/interaction/AnimatedTaskView$1;

    iget-object v0, v0, Lcom/android/quickstep/interaction/AnimatedTaskView$1;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-static {v0}, Lcom/android/quickstep/interaction/AnimatedTaskView;->-$$Nest$fgetmTaskViewAnimatedRect(Lcom/android/quickstep/interaction/AnimatedTaskView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/AnimatedTaskView$1$1;->this$1:Lcom/android/quickstep/interaction/AnimatedTaskView$1;

    iget-object v1, v1, Lcom/android/quickstep/interaction/AnimatedTaskView$1;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-static {v1}, Lcom/android/quickstep/interaction/AnimatedTaskView;->-$$Nest$fgetmTaskViewAnimatedRadius(Lcom/android/quickstep/interaction/AnimatedTaskView;)F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 125
    return-void
.end method
