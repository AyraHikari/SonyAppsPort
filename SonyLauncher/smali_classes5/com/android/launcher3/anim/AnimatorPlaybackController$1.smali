.class Lcom/android/launcher3/anim/AnimatorPlaybackController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatorPlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/AnimatorPlaybackController;-><init>(Landroid/animation/AnimatorSet;JLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/anim/AnimatorPlaybackController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 86
    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$1;->this$0:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$1;->this$0:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mTargetCancelled:Z

    .line 90
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$1;->this$0:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mTargetCancelled:Z

    .line 95
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$1;->this$0:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mTargetCancelled:Z

    .line 100
    return-void
.end method
