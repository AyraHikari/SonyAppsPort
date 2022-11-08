.class Lcom/android/quickstep/LauncherBackAnimationController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherBackAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/LauncherBackAnimationController;->startTransitionAnimations(Lcom/android/quickstep/util/RectFSpringAnim;Landroid/animation/AnimatorSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/LauncherBackAnimationController;


# direct methods
.method constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/LauncherBackAnimationController;

    .line 324
    iput-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController$4;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 327
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$4;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/quickstep/LauncherBackAnimationController;->-$$Nest$fputmAnimatorSetInProgress(Lcom/android/quickstep/LauncherBackAnimationController;Z)V

    .line 328
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$4;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/LauncherBackAnimationController;->-$$Nest$mtryFinishBackAnimation(Lcom/android/quickstep/LauncherBackAnimationController;)V

    .line 329
    return-void
.end method
