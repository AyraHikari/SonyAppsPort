.class Lcom/android/quickstep/RecentsActivity$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/RecentsActivity;->resetStateListener()Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/quickstep/RecentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/RecentsActivity;

    .line 493
    iput-object p1, p0, Lcom/android/quickstep/RecentsActivity$3;->this$0:Lcom/android/quickstep/RecentsActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 496
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity$3;->this$0:Lcom/android/quickstep/RecentsActivity;

    invoke-static {v0}, Lcom/android/quickstep/RecentsActivity;->-$$Nest$fgetmFallbackRecentsView(Lcom/android/quickstep/RecentsActivity;)Lcom/android/quickstep/fallback/FallbackRecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->resetTaskVisuals()V

    .line 497
    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity$3;->this$0:Lcom/android/quickstep/RecentsActivity;

    invoke-static {v0}, Lcom/android/quickstep/RecentsActivity;->-$$Nest$fgetmStateManager(Lcom/android/quickstep/RecentsActivity;)Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    .line 498
    return-void
.end method
