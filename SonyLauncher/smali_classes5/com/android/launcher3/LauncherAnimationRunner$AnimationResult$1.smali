.class Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    .line 202
    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult$1;->this$0:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult$1;->this$0:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->-$$Nest$mfinish(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    .line 206
    return-void
.end method
