.class Lcom/android/launcher3/statemanager/StateManager$AnimationState;
.super Lcom/android/launcher3/states/StateAnimationConfig;
.source "StateManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/statemanager/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<STATE_TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/launcher3/states/StateAnimationConfig;",
        "Landroid/animation/Animator$AnimatorListener;"
    }
.end annotation


# static fields
.field private static final DEFAULT:Lcom/android/launcher3/states/StateAnimationConfig;


# instance fields
.field public changeId:I

.field public currentAnimation:Landroid/animation/AnimatorSet;

.field public playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field public targetState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSTATE_TYPE;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 510
    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    sput-object v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->DEFAULT:Lcom/android/launcher3/states/StateAnimationConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 507
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$AnimationState;, "Lcom/android/launcher3/statemanager/StateManager$AnimationState<TSTATE_TYPE;>;"
    invoke-direct {p0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    .line 517
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->changeId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/statemanager/StateManager$AnimationState-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/statemanager/StateManager$AnimationState;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 567
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$AnimationState;, "Lcom/android/launcher3/statemanager/StateManager$AnimationState<TSTATE_TYPE;>;"
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 549
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$AnimationState;, "Lcom/android/launcher3/statemanager/StateManager$AnimationState<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 550
    iput-object v1, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    if-ne v0, p1, :cond_1

    .line 553
    iput-object v1, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 555
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 570
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$AnimationState;, "Lcom/android/launcher3/statemanager/StateManager$AnimationState<TSTATE_TYPE;>;"
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 564
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$AnimationState;, "Lcom/android/launcher3/statemanager/StateManager$AnimationState<TSTATE_TYPE;>;"
    return-void
.end method

.method public reset()V
    .locals 4

    .line 523
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$AnimationState;, "Lcom/android/launcher3/statemanager/StateManager$AnimationState<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 524
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 526
    .local v1, "pc":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    sget-object v2, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->DEFAULT:Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/states/StateAnimationConfig;->copyTo(Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 527
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->targetState:Ljava/lang/Object;

    .line 528
    iput-object v2, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 529
    iput-object v2, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 530
    iget v2, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->changeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->changeId:I

    .line 532
    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 534
    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    goto :goto_0

    .line 535
    :cond_0
    if-eqz v0, :cond_2

    .line 536
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 537
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 540
    new-instance v2, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->callListenerCommandRecursively(Landroid/animation/Animator;Ljava/util/function/BiConsumer;)V

    .line 541
    new-instance v2, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->callListenerCommandRecursively(Landroid/animation/Animator;Ljava/util/function/BiConsumer;)V

    .line 543
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 545
    :cond_2
    :goto_0
    return-void
.end method

.method public setAnimation(Landroid/animation/AnimatorSet;Ljava/lang/Object;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/AnimatorSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "TSTATE_TYPE;)V"
        }
    .end annotation

    .line 558
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$AnimationState;, "Lcom/android/launcher3/statemanager/StateManager$AnimationState<TSTATE_TYPE;>;"
    .local p2, "targetState":Ljava/lang/Object;, "TSTATE_TYPE;"
    iput-object p1, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 559
    iput-object p2, p0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->targetState:Ljava/lang/Object;

    .line 560
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 561
    return-void
.end method
