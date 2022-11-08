.class Lcom/android/launcher3/Workspace$StateTransitionListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateTransitionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 0

    .line 3592
    .local p0, "this":Lcom/android/launcher3/Workspace$StateTransitionListener;, "Lcom/android/launcher3/Workspace<TT;>.StateTransitionListener;"
    iput-object p1, p0, Lcom/android/launcher3/Workspace$StateTransitionListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$StateTransitionListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace$StateTransitionListener;-><init>(Lcom/android/launcher3/Workspace;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 3607
    .local p0, "this":Lcom/android/launcher3/Workspace$StateTransitionListener;, "Lcom/android/launcher3/Workspace<TT;>.StateTransitionListener;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace$StateTransitionListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->-$$Nest$monEndStateTransition(Lcom/android/launcher3/Workspace;)V

    .line 3608
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 3602
    .local p0, "this":Lcom/android/launcher3/Workspace$StateTransitionListener;, "Lcom/android/launcher3/Workspace<TT;>.StateTransitionListener;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace$StateTransitionListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->-$$Nest$monStartStateTransition(Lcom/android/launcher3/Workspace;)V

    .line 3603
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/ValueAnimator;

    .line 3597
    .local p0, "this":Lcom/android/launcher3/Workspace$StateTransitionListener;, "Lcom/android/launcher3/Workspace<TT;>.StateTransitionListener;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace$StateTransitionListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/Workspace;->-$$Nest$fputmTransitionProgress(Lcom/android/launcher3/Workspace;F)V

    .line 3598
    return-void
.end method
