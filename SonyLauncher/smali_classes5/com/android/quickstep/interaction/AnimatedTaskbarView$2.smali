.class Lcom/android/quickstep/interaction/AnimatedTaskbarView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatedTaskbarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/AnimatedTaskbarView;->animateAppearanceFromHotseat(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/AnimatedTaskbarView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    .line 158
    iput-object p1, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$2;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 161
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 162
    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$2;->this$0:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->setVisibility(I)V

    .line 163
    return-void
.end method
