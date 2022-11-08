.class public Lcom/android/quickstep/util/OverviewToHomeAnim;
.super Ljava/lang/Object;
.source "OverviewToHomeAnim.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OverviewToHomeAnim"


# instance fields
.field private mIsHomeStaggeredAnimFinished:Z

.field private mIsOverviewHidden:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mOnReachedHome:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fputmIsHomeStaggeredAnimFinished(Lcom/android/quickstep/util/OverviewToHomeAnim;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/util/OverviewToHomeAnim;->mIsHomeStaggeredAnimFinished:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsOverviewHidden(Lcom/android/quickstep/util/OverviewToHomeAnim;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/util/OverviewToHomeAnim;->mIsOverviewHidden:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeOverviewToHomeAnimComplete(Lcom/android/quickstep/util/OverviewToHomeAnim;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/OverviewToHomeAnim;->maybeOverviewToHomeAnimComplete()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "onReachedHome"    # Ljava/lang/Runnable;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/quickstep/util/OverviewToHomeAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 49
    iput-object p2, p0, Lcom/android/quickstep/util/OverviewToHomeAnim;->mOnReachedHome:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method private maybeOverviewToHomeAnimComplete()V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/android/quickstep/util/OverviewToHomeAnim;->mIsHomeStaggeredAnimFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/util/OverviewToHomeAnim;->mIsOverviewHidden:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/quickstep/util/OverviewToHomeAnim;->mOnReachedHome:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public animateWithVelocity(F)V
    .locals 7
    .param p1, "velocity"    # F

    .line 57
    iget-object v0, p0, Lcom/android/quickstep/util/OverviewToHomeAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 58
    .local v0, "stateManager":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<Lcom/android/launcher3/LauncherState;>;"
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    .line 59
    .local v1, "startState":Lcom/android/launcher3/LauncherState;
    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v1, v2, :cond_0

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animateFromOverviewToHome: unexpected start state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OverviewToHomeAnim"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 64
    .local v2, "anim":Landroid/animation/AnimatorSet;
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    .line 65
    .local v3, "playWorkspaceRevealAnim":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 66
    new-instance v4, Lcom/android/quickstep/util/WorkspaceRevealAnim;

    iget-object v6, p0, Lcom/android/quickstep/util/OverviewToHomeAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v4, v6, v5}, Lcom/android/quickstep/util/WorkspaceRevealAnim;-><init>(Lcom/android/launcher3/Launcher;Z)V

    .line 68
    .local v4, "workspaceRevealAnim":Lcom/android/quickstep/util/WorkspaceRevealAnim;
    new-instance v6, Lcom/android/quickstep/util/OverviewToHomeAnim$1;

    invoke-direct {v6, p0}, Lcom/android/quickstep/util/OverviewToHomeAnim$1;-><init>(Lcom/android/quickstep/util/OverviewToHomeAnim;)V

    invoke-virtual {v4, v6}, Lcom/android/quickstep/util/WorkspaceRevealAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/quickstep/util/WorkspaceRevealAnim;

    .line 75
    invoke-virtual {v4}, Lcom/android/quickstep/util/WorkspaceRevealAnim;->getAnimators()Landroid/animation/AnimatorSet;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 76
    .end local v4    # "workspaceRevealAnim":Lcom/android/quickstep/util/WorkspaceRevealAnim;
    goto :goto_1

    .line 77
    :cond_2
    iput-boolean v4, p0, Lcom/android/quickstep/util/OverviewToHomeAnim;->mIsHomeStaggeredAnimFinished:Z

    .line 80
    :goto_1
    new-instance v4, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v4}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    .line 81
    .local v4, "config":Lcom/android/launcher3/states/StateAnimationConfig;
    if-eqz v3, :cond_3

    .line 83
    iget v6, v4, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v4, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    .line 85
    :cond_3
    iget-object v6, p0, Lcom/android/quickstep/util/OverviewToHomeAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v6, v5}, Lcom/android/launcher3/LauncherState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v4, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    .line 86
    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1, v5, v4}, Lcom/android/launcher3/statemanager/StateManager;->createAtomicAnimation(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v5

    .line 88
    .local v5, "stateAnim":Landroid/animation/AnimatorSet;
    new-instance v6, Lcom/android/quickstep/util/OverviewToHomeAnim$2;

    invoke-direct {v6, p0}, Lcom/android/quickstep/util/OverviewToHomeAnim$2;-><init>(Lcom/android/quickstep/util/OverviewToHomeAnim;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 96
    sget-object v6, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2, v6}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;Lcom/android/launcher3/statemanager/BaseState;)V

    .line 97
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 98
    return-void
.end method
