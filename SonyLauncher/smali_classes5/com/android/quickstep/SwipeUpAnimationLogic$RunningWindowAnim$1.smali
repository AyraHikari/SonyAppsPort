.class Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim$1;
.super Ljava/lang/Object;
.source "SwipeUpAnimationLogic.java"

# interfaces
.implements Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Landroid/animation/Animator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$animator:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Landroid/animation/Animator;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim$1;->val$animator:Landroid/animation/Animator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim$1;->val$animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 379
    return-void
.end method

.method public end()V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim$1;->val$animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 374
    return-void
.end method
