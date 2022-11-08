.class public Lcom/android/launcher3/statemanager/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;,
        Lcom/android/launcher3/statemanager/StateManager$StateListener;,
        Lcom/android/launcher3/statemanager/StateManager$StateHandler;,
        Lcom/android/launcher3/statemanager/StateManager$AnimationState;,
        Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<STATE_TYPE::",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "TSTATE_TYPE;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "StateManager"


# instance fields
.field private final mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "TSTATE_TYPE;>;"
        }
    .end annotation
.end field

.field private final mAtomicAnimationFactory:Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;

.field private final mBaseState:Lcom/android/launcher3/statemanager/BaseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSTATE_TYPE;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

.field private mCurrentStableState:Lcom/android/launcher3/statemanager/BaseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSTATE_TYPE;"
        }
    .end annotation
.end field

.field private mLastStableState:Lcom/android/launcher3/statemanager/BaseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSTATE_TYPE;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
            "TSTATE_TYPE;>;>;"
        }
    .end annotation
.end field

.field private mRestState:Lcom/android/launcher3/statemanager/BaseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSTATE_TYPE;"
        }
    .end annotation
.end field

.field private mState:Lcom/android/launcher3/statemanager/BaseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSTATE_TYPE;"
        }
    .end annotation
.end field

.field private mStateHandlers:[Lcom/android/launcher3/statemanager/StateManager$StateHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
            "TSTATE_TYPE;>;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAtomicAnimationFactory(Lcom/android/launcher3/statemanager/StateManager;)Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager;->mAtomicAnimationFactory:Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfig(Lcom/android/launcher3/statemanager/StateManager;)Lcom/android/launcher3/statemanager/StateManager$AnimationState;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monStateTransitionEnd(Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->onStateTransitionEnd(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStateTransitionStart(Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->onStateTransitionStart(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "TSTATE_TYPE;>;TSTATE_TYPE;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "l":Lcom/android/launcher3/statemanager/StatefulActivity;, "Lcom/android/launcher3/statemanager/StatefulActivity<TSTATE_TYPE;>;"
    .local p2, "baseState":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/statemanager/StateManager$AnimationState;-><init>(Lcom/android/launcher3/statemanager/StateManager$AnimationState-IA;)V

    iput-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mListeners:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mUiHandler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 68
    iput-object p2, p0, Lcom/android/launcher3/statemanager/StateManager;->mBaseState:Lcom/android/launcher3/statemanager/BaseState;

    .line 69
    iput-object p2, p0, Lcom/android/launcher3/statemanager/StateManager;->mCurrentStableState:Lcom/android/launcher3/statemanager/BaseState;

    iput-object p2, p0, Lcom/android/launcher3/statemanager/StateManager;->mLastStableState:Lcom/android/launcher3/statemanager/BaseState;

    iput-object p2, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    .line 70
    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->createAtomicAnimationFactory()Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mAtomicAnimationFactory:Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;

    .line 71
    return-void
.end method

.method private clearCurrentAnimation()V
    .locals 3

    .line 483
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 485
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iput-object v1, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iput-object v1, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 488
    return-void
.end method

.method private createAnimationToNewWorkspaceInternal(Lcom/android/launcher3/statemanager/BaseState;)Lcom/android/launcher3/anim/PendingAnimation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;)",
            "Lcom/android/launcher3/anim/PendingAnimation;"
        }
    .end annotation

    .line 321
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-wide v1, v1, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->duration:J

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 322
    .local v0, "builder":Lcom/android/launcher3/anim/PendingAnimation;
    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->hasAnimationFlag(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getStateHandlers()[Lcom/android/launcher3/statemanager/StateManager$StateHandler;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 324
    .local v4, "handler":Lcom/android/launcher3/statemanager/StateManager$StateHandler;
    iget-object v5, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    invoke-interface {v4, p1, v5, v0}, Lcom/android/launcher3/statemanager/StateManager$StateHandler;->setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 323
    .end local v4    # "handler":Lcom/android/launcher3/statemanager/StateManager$StateHandler;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 327
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->createStateAnimationListener(Lcom/android/launcher3/statemanager/BaseState;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 328
    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->setAnimation(Landroid/animation/AnimatorSet;Ljava/lang/Object;)V

    .line 329
    return-object v0
.end method

.method private createStateAnimationListener(Lcom/android/launcher3/statemanager/BaseState;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;)",
            "Landroid/animation/Animator$AnimatorListener;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    new-instance v0, Lcom/android/launcher3/statemanager/StateManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/statemanager/StateManager$1;-><init>(Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statemanager/BaseState;)V

    return-object v0
.end method

.method private goToState(Lcom/android/launcher3/statemanager/BaseState;ZJLandroid/animation/Animator$AnimatorListener;)V
    .locals 10
    .param p2, "animated"    # Z
    .param p3, "delay"    # J
    .param p5, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;ZJ",
            "Landroid/animation/Animator$AnimatorListener;",
            ")V"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    and-int/2addr p2, v0

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    .line 204
    if-eqz p5, :cond_0

    .line 205
    invoke-interface {p5, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 207
    :cond_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-boolean v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->userControlled:Z

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->targetState:Ljava/lang/Object;

    if-ne v0, p1, :cond_3

    .line 210
    if-eqz p5, :cond_2

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    :cond_2
    return-void

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    .line 219
    .local v0, "fromState":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->cancelAnimation()V

    .line 221
    if-nez p2, :cond_6

    .line 222
    iget-object v2, p0, Lcom/android/launcher3/statemanager/StateManager;->mAtomicAnimationFactory:Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;->cancelAllStateElementAnimation()V

    .line 223
    invoke-direct {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->onStateTransitionStart(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getStateHandlers()[Lcom/android/launcher3/statemanager/StateManager$StateHandler;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 225
    .local v5, "handler":Lcom/android/launcher3/statemanager/StateManager$StateHandler;
    invoke-interface {v5, p1}, Lcom/android/launcher3/statemanager/StateManager$StateHandler;->setState(Ljava/lang/Object;)V

    .line 224
    .end local v5    # "handler":Lcom/android/launcher3/statemanager/StateManager$StateHandler;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 228
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->onStateTransitionEnd(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 231
    if-eqz p5, :cond_5

    .line 232
    invoke-interface {p5, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 234
    :cond_5
    return-void

    .line 237
    :cond_6
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_7

    .line 240
    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget v7, v1, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->changeId:I

    .line 241
    .local v7, "startChangeId":I
    iget-object v8, p0, Lcom/android/launcher3/statemanager/StateManager;->mUiHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/launcher3/statemanager/StateManager$$ExternalSyntheticLambda0;

    move-object v1, v9

    move-object v2, p0

    move v3, v7

    move-object v4, p1

    move-object v5, v0

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/statemanager/StateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/statemanager/StateManager;ILcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8, v9, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    .end local v7    # "startChangeId":I
    goto :goto_1

    .line 247
    :cond_7
    invoke-direct {p0, p1, v0, p5}, Lcom/android/launcher3/statemanager/StateManager;->goToStateAnimated(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    :goto_1
    return-void
.end method

.method private goToStateAnimated(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Landroid/animation/Animator$AnimatorListener;)V
    .locals 3
    .param p3, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;TSTATE_TYPE;",
            "Landroid/animation/Animator$AnimatorListener;",
            ")V"
        }
    .end annotation

    .line 255
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    .local p2, "fromState":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mBaseState:Lcom/android/launcher3/statemanager/BaseState;

    if-ne p1, v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Lcom/android/launcher3/statemanager/BaseState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lcom/android/launcher3/statemanager/BaseState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v1

    int-to-long v1, v1

    :goto_0
    iput-wide v1, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->duration:J

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->prepareForAtomicAnimation(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 259
    invoke-direct {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspaceInternal(Lcom/android/launcher3/statemanager/BaseState;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 260
    .local v0, "animation":Landroid/animation/AnimatorSet;
    if-eqz p3, :cond_1

    .line 261
    invoke-virtual {v0, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;-><init>(Lcom/android/launcher3/statemanager/StateManager;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    return-void
.end method

.method private onStateTransitionEnd(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;)V"
        }
    .end annotation

    .line 359
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mCurrentStableState:Lcom/android/launcher3/statemanager/BaseState;

    if-eq p1, v0, :cond_0

    .line 360
    invoke-interface {p1, v0}, Lcom/android/launcher3/statemanager/BaseState;->getHistoryForState(Lcom/android/launcher3/statemanager/BaseState;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mLastStableState:Lcom/android/launcher3/statemanager/BaseState;

    .line 361
    iput-object p1, p0, Lcom/android/launcher3/statemanager/StateManager;->mCurrentStableState:Lcom/android/launcher3/statemanager/BaseState;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 365
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mBaseState:Lcom/android/launcher3/statemanager/BaseState;

    if-ne p1, v0, :cond_1

    .line 366
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->setRestState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 370
    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/statemanager/StateManager$StateListener;->onStateTransitionComplete(Ljava/lang/Object;)V

    .line 369
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 372
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private onStateTransitionStart(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;)V"
        }
    .end annotation

    .line 349
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    iput-object p1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    .line 350
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStateSetStart(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/statemanager/StateManager$StateListener;->onStateTransitionStart(Ljava/lang/Object;)V

    .line 352
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 355
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/statemanager/StateManager$StateListener;

    .line 109
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .line 402
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->reset()V

    .line 405
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 408
    :cond_0
    return-void

    .line 406
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->reset()V

    goto :goto_0
.end method

.method public cancelStateElementAnimation(I)V
    .locals 1
    .param p1, "index"    # I

    .line 464
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mAtomicAnimationFactory:Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;

    invoke-static {v0}, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;->-$$Nest$fgetmStateElementAnimators(Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;)[Landroid/animation/Animator;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mAtomicAnimationFactory:Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;

    invoke-static {v0}, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;->-$$Nest$fgetmStateElementAnimators(Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;)[Landroid/animation/Animator;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 467
    :cond_0
    return-void
.end method

.method public createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 1
    .param p2, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;J)",
            "Lcom/android/launcher3/anim/AnimatorPlaybackController;"
        }
    .end annotation

    .line 299
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;JI)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    return-object v0
.end method

.method public createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;JI)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 2
    .param p2, "duration"    # J
    .param p4, "animFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;JI)",
            "Lcom/android/launcher3/anim/AnimatorPlaybackController;"
        }
    .end annotation

    .line 304
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    .line 305
    .local v0, "config":Lcom/android/launcher3/states/StateAnimationConfig;
    iput-wide p2, v0, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    .line 306
    iput p4, v0, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    .line 307
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    return-object v1
.end method

.method public createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 2
    .param p2, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;",
            "Lcom/android/launcher3/states/StateAnimationConfig;",
            ")",
            "Lcom/android/launcher3/anim/AnimatorPlaybackController;"
        }
    .end annotation

    .line 312
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    .line 313
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->cancelAnimation()V

    .line 314
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->copyTo(Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 315
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    invoke-direct {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspaceInternal(Lcom/android/launcher3/statemanager/BaseState;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 317
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-object v0
.end method

.method public createAtomicAnimation(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)Landroid/animation/AnimatorSet;
    .locals 5
    .param p3, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;TSTATE_TYPE;",
            "Lcom/android/launcher3/states/StateAnimationConfig;",
            ")",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .line 281
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "fromState":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    .local p2, "toState":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    iget-wide v1, p3, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 282
    .local v0, "builder":Lcom/android/launcher3/anim/PendingAnimation;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/statemanager/StateManager;->prepareForAtomicAnimation(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 284
    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getStateHandlers()[Lcom/android/launcher3/statemanager/StateManager$StateHandler;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 285
    .local v4, "handler":Lcom/android/launcher3/statemanager/StateManager$StateHandler;
    invoke-interface {v4, p2, p3, v0}, Lcom/android/launcher3/statemanager/StateManager$StateHandler;->setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 284
    .end local v4    # "handler":Lcom/android/launcher3/statemanager/StateManager$StateHandler;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v1

    return-object v1
.end method

.method public varargs createStateElementAnimation(I[F)Landroid/animation/Animator;
    .locals 2
    .param p1, "index"    # I
    .param p2, "values"    # [F

    .line 470
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->cancelStateElementAnimation(I)V

    .line 471
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mAtomicAnimationFactory:Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;->createStateElementAnimation(I[F)Landroid/animation/Animator;

    move-result-object v0

    .line 472
    .local v0, "anim":Landroid/animation/Animator;
    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mAtomicAnimationFactory:Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;

    invoke-static {v1}, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;->-$$Nest$fgetmStateElementAnimators(Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;)[Landroid/animation/Animator;

    move-result-object v1

    aput-object v0, v1, p1

    .line 473
    new-instance v1, Lcom/android/launcher3/statemanager/StateManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/statemanager/StateManager$2;-><init>(Lcom/android/launcher3/statemanager/StateManager;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 479
    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 91
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "StateManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmLastStableState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mLastStableState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmCurrentStableState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mCurrentStableState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tmRestState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mRestState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisInTransition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->isInTransition()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSTATE_TYPE;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mCurrentStableState:Lcom/android/launcher3/statemanager/BaseState;

    return-object v0
.end method

.method public getLastState()Lcom/android/launcher3/statemanager/BaseState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSTATE_TYPE;"
        }
    .end annotation

    .line 375
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mLastStableState:Lcom/android/launcher3/statemanager/BaseState;

    return-object v0
.end method

.method public getRestState()Lcom/android/launcher3/statemanager/BaseState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSTATE_TYPE;"
        }
    .end annotation

    .line 391
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mRestState:Lcom/android/launcher3/statemanager/BaseState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mBaseState:Lcom/android/launcher3/statemanager/BaseState;

    :cond_0
    return-object v0
.end method

.method public getState()Lcom/android/launcher3/statemanager/BaseState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSTATE_TYPE;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    return-object v0
.end method

.method public getStateHandlers()[Lcom/android/launcher3/statemanager/StateManager$StateHandler;
    .locals 2

    .line 100
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mStateHandlers:[Lcom/android/launcher3/statemanager/StateManager$StateHandler;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/statemanager/StateManager$StateHandler;>;"
    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->collectStateHandlers(Ljava/util/List;)V

    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/launcher3/statemanager/StateManager$StateHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/launcher3/statemanager/StateManager$StateHandler;

    iput-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mStateHandlers:[Lcom/android/launcher3/statemanager/StateManager$StateHandler;

    .line 105
    .end local v0    # "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/statemanager/StateManager$StateHandler;>;"
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mStateHandlers:[Lcom/android/launcher3/statemanager/StateManager$StateHandler;

    return-object v0
.end method

.method public goToState(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;)V"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->shouldAnimateStateChange()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    .line 144
    return-void
.end method

.method public goToState(Lcom/android/launcher3/statemanager/BaseState;J)V
    .locals 6
    .param p2, "delay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;J)V"
        }
    .end annotation

    .line 175
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 176
    return-void
.end method

.method public goToState(Lcom/android/launcher3/statemanager/BaseState;JLandroid/animation/Animator$AnimatorListener;)V
    .locals 6
    .param p2, "delay"    # J
    .param p4, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;J",
            "Landroid/animation/Animator$AnimatorListener;",
            ")V"
        }
    .end annotation

    .line 168
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 169
    return-void
.end method

.method public goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V
    .locals 6
    .param p2, "animated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;Z)V"
        }
    .end annotation

    .line 150
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 151
    return-void
.end method

.method public goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V
    .locals 6
    .param p2, "animated"    # Z
    .param p3, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;Z",
            "Landroid/animation/Animator$AnimatorListener;",
            ")V"
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 162
    return-void
.end method

.method public isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;)Z"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mCurrentStableState:Lcom/android/launcher3/statemanager/BaseState;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->targetState:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->targetState:Ljava/lang/Object;

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInTransition()Z
    .locals 1

    .line 136
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$goToState$0$com-android-launcher3-statemanager-StateManager(ILcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "startChangeId"    # I
    .param p2, "state"    # Lcom/android/launcher3/statemanager/BaseState;
    .param p3, "fromState"    # Lcom/android/launcher3/statemanager/BaseState;
    .param p4, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 242
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->changeId:I

    if-ne v0, p1, :cond_0

    .line 243
    invoke-direct {p0, p2, p3, p4}, Lcom/android/launcher3/statemanager/StateManager;->goToStateAnimated(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Landroid/animation/Animator$AnimatorListener;)V

    .line 245
    :cond_0
    return-void
.end method

.method public moveToRestState()V
    .locals 1

    .line 379
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-boolean v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->userControlled:Z

    if-eqz v0, :cond_0

    .line 381
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-interface {v0}, Lcom/android/launcher3/statemanager/BaseState;->shouldDisableRestore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getRestState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 386
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mBaseState:Lcom/android/launcher3/statemanager/BaseState;

    iput-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mLastStableState:Lcom/android/launcher3/statemanager/BaseState;

    .line 388
    :cond_1
    return-void
.end method

.method public prepareForAtomicAnimation(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 1
    .param p3, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;TSTATE_TYPE;",
            "Lcom/android/launcher3/states/StateAnimationConfig;",
            ")V"
        }
    .end annotation

    .line 273
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "fromState":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    .local p2, "toState":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mAtomicAnimationFactory:Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;->prepareForAtomicAnimation(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 274
    return-void
.end method

.method public reapplyState()V
    .locals 1

    .line 179
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState(Z)V

    .line 180
    return-void
.end method

.method public reapplyState(Z)V
    .locals 6
    .param p1, "cancelCurrentAnimation"    # Z

    .line 183
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 184
    .local v0, "wasInAnimation":Z
    :goto_0
    if-eqz p1, :cond_1

    .line 185
    iget-object v2, p0, Lcom/android/launcher3/statemanager/StateManager;->mAtomicAnimationFactory:Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;->cancelAllStateElementAnimation()V

    .line 186
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->cancelAnimation()V

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v2, v2, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_3

    .line 189
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getStateHandlers()[Lcom/android/launcher3/statemanager/StateManager$StateHandler;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 190
    .local v4, "handler":Lcom/android/launcher3/statemanager/StateManager$StateHandler;
    iget-object v5, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-interface {v4, v5}, Lcom/android/launcher3/statemanager/StateManager$StateHandler;->setState(Ljava/lang/Object;)V

    .line 189
    .end local v4    # "handler":Lcom/android/launcher3/statemanager/StateManager$StateHandler;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 192
    :cond_2
    if-eqz v0, :cond_3

    .line 193
    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-direct {p0, v1}, Lcom/android/launcher3/statemanager/StateManager;->onStateTransitionEnd(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 196
    :cond_3
    return-void
.end method

.method public removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/statemanager/StateManager$StateListener;

    .line 113
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public setCurrentAnimation(Landroid/animation/AnimatorSet;Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/AnimatorSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "TSTATE_TYPE;)V"
        }
    .end annotation

    .line 425
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p2, "toState":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->cancelAnimation()V

    .line 426
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/animation/Animator;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    .line 427
    invoke-direct {p0, p2}, Lcom/android/launcher3/statemanager/StateManager;->createStateAnimationListener(Lcom/android/launcher3/statemanager/BaseState;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 428
    return-void
.end method

.method public varargs setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V
    .locals 5
    .param p1, "anim"    # Landroid/animation/AnimatorSet;
    .param p2, "childAnimations"    # [Landroid/animation/Animator;

    .line 437
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    .line 438
    .local v3, "childAnim":Landroid/animation/Animator;
    if-nez v3, :cond_0

    .line 439
    goto :goto_1

    .line 441
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v4, v4, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v4, v4, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 442
    invoke-virtual {v4}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v4

    if-ne v4, v3, :cond_1

    .line 443
    invoke-direct {p0}, Lcom/android/launcher3/statemanager/StateManager;->clearCurrentAnimation()V

    .line 444
    goto :goto_2

    .line 445
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v4, v4, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    if-ne v4, v3, :cond_2

    .line 446
    invoke-direct {p0}, Lcom/android/launcher3/statemanager/StateManager;->clearCurrentAnimation()V

    .line 447
    goto :goto_2

    .line 437
    .end local v3    # "childAnim":Landroid/animation/Animator;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    move v0, v1

    .line 451
    .local v0, "reapplyNeeded":Z
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->cancelAnimation()V

    .line 452
    if-eqz v0, :cond_5

    .line 453
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    .line 455
    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-direct {p0, v1}, Lcom/android/launcher3/statemanager/StateManager;->onStateTransitionEnd(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 457
    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->setAnimation(Landroid/animation/AnimatorSet;Ljava/lang/Object;)V

    .line 458
    return-void
.end method

.method public setCurrentUserControlledAnimation(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 411
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    invoke-direct {p0}, Lcom/android/launcher3/statemanager/StateManager;->clearCurrentAnimation()V

    .line 412
    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/animation/Animator;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    .line 413
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->userControlled:Z

    .line 414
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mConfig:Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    iput-object p1, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->playbackController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 415
    return-void
.end method

.method public setRestState(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;)V"
        }
    .end annotation

    .line 395
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    .local p1, "restState":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    iput-object p1, p0, Lcom/android/launcher3/statemanager/StateManager;->mRestState:Lcom/android/launcher3/statemanager/BaseState;

    .line 396
    return-void
.end method

.method public shouldAnimateStateChange()Z
    .locals 1

    .line 120
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isForceInvisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<TSTATE_TYPE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " StateManager(mLastStableState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mLastStableState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCurrentStableState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mCurrentStableState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRestState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager;->mRestState:Lcom/android/launcher3/statemanager/BaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInTransition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->isInTransition()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    return-object v0
.end method
