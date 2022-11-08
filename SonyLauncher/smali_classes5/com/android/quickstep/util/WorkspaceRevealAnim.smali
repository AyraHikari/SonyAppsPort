.class public Lcom/android/quickstep/util/WorkspaceRevealAnim;
.super Ljava/lang/Object;
.source "WorkspaceRevealAnim.java"


# static fields
.field public static final DURATION_MS:I = 0x15e

.field private static final HOTSEAT_SCALE_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/Hotseat;",
            ">;"
        }
    .end annotation
.end field

.field private static final WORKSPACE_SCALE_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/Workspace<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnimators:Landroid/animation/AnimatorSet;

.field private final mScaleStart:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->WORKSPACE_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    .line 57
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->get(Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/util/WorkspaceRevealAnim;->WORKSPACE_SCALE_PROPERTY:Landroid/util/FloatProperty;

    .line 59
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->HOTSEAT_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->get(Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/util/WorkspaceRevealAnim;->HOTSEAT_SCALE_PROPERTY:Landroid/util/FloatProperty;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Z)V
    .locals 9
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "animateOverviewScrim"    # Z

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/WorkspaceRevealAnim;->mAnimators:Landroid/animation/AnimatorSet;

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/util/WorkspaceRevealAnim;->prepareToAnimate(Lcom/android/launcher3/Launcher;Z)V

    .line 68
    invoke-static {p1}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object v1

    .line 69
    .local v1, "rp":Lcom/android/systemui/plugins/ResourceProvider;
    sget v2, Lcom/android/launcher3/R$dimen;->swipe_up_scale_start:I

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/quickstep/util/WorkspaceRevealAnim;->mScaleStart:F

    .line 71
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    .line 72
    .local v2, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Workspace;->setPivotToScaleWithSelf(Landroid/view/View;)V

    .line 75
    sget-object v3, Lcom/android/quickstep/util/WorkspaceRevealAnim;->WORKSPACE_SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-direct {p0, v2, v3}, Lcom/android/quickstep/util/WorkspaceRevealAnim;->addRevealAnimatorsForView(Landroid/view/View;Landroid/util/FloatProperty;)V

    .line 76
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v3

    sget-object v4, Lcom/android/quickstep/util/WorkspaceRevealAnim;->HOTSEAT_SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-direct {p0, v3, v4}, Lcom/android/quickstep/util/WorkspaceRevealAnim;->addRevealAnimatorsForView(Landroid/view/View;Landroid/util/FloatProperty;)V

    .line 79
    const-wide/16 v3, 0x15e

    if-eqz p2, :cond_0

    .line 80
    new-instance v5, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v5, v3, v4}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 81
    .local v5, "overviewScrimBuilder":Lcom/android/launcher3/anim/PendingAnimation;
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->getStateTransitionAnimation()Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    move-result-object v6

    sget-object v7, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    new-instance v8, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v8}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    .line 82
    invoke-virtual {v6, v5, v7, v8}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setScrim(Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 83
    invoke-virtual {v5}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 87
    .end local v5    # "overviewScrimBuilder":Lcom/android/launcher3/anim/PendingAnimation;
    :cond_0
    instance-of v5, p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    if-eqz v5, :cond_1

    .line 88
    new-instance v5, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v5, v3, v4}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 89
    .local v5, "depthBuilder":Lcom/android/launcher3/anim/PendingAnimation;
    move-object v6, p1

    check-cast v6, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v6}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v6

    .line 90
    .local v6, "depth":Lcom/android/launcher3/statehandlers/DepthController;
    sget-object v7, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    new-instance v8, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v8}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    invoke-virtual {v6, v7, v8, v5}, Lcom/android/launcher3/statehandlers/DepthController;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 91
    invoke-virtual {v5}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 95
    .end local v5    # "depthBuilder":Lcom/android/launcher3/anim/PendingAnimation;
    .end local v6    # "depth":Lcom/android/launcher3/statehandlers/DepthController;
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherRootView;->getSysUiScrim()Lcom/android/launcher3/graphics/SysUiScrim;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/graphics/SysUiScrim;->createSysuiMultiplierAnim([F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 97
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 98
    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->DECELERATED_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addRevealAnimatorsForView(Landroid/view/View;Landroid/util/FloatProperty;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;)V"
        }
    .end annotation

    .line 102
    .local p1, "v":Landroid/view/View;, "TT;"
    .local p2, "scaleProperty":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TT;>;"
    const/4 v0, 0x2

    new-array v1, v0, [F

    iget v2, p0, Lcom/android/quickstep/util/WorkspaceRevealAnim;->mScaleStart:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-static {p1, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 103
    .local v1, "scale":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 104
    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->DECELERATED_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 105
    iget-object v4, p0, Lcom/android/quickstep/util/WorkspaceRevealAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 107
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p1, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 108
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 109
    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->DECELERATED_EASE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    iget-object v2, p0, Lcom/android/quickstep/util/WorkspaceRevealAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 112
    iget-object v2, p0, Lcom/android/quickstep/util/WorkspaceRevealAnim;->mAnimators:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/quickstep/util/WorkspaceRevealAnim$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/quickstep/util/WorkspaceRevealAnim$1;-><init>(Lcom/android/quickstep/util/WorkspaceRevealAnim;Landroid/util/FloatProperty;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private prepareToAnimate(Lcom/android/launcher3/Launcher;Z)V
    .locals 4
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "animateOverviewScrim"    # Z

    .line 125
    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    .line 126
    .local v0, "config":Lcom/android/launcher3/states/StateAnimationConfig;
    const/16 v1, 0xe

    iput v1, v0, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    .line 127
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    .line 129
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher3/statemanager/StateManager;->createAtomicAnimation(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 132
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->forceFinishScroller()V

    .line 134
    if-eqz p2, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getStateTransitionAnimation()Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    sget-object v3, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    .line 136
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setScrim(Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/quickstep/util/WorkspaceRevealAnim;
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 145
    iget-object v0, p0, Lcom/android/quickstep/util/WorkspaceRevealAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 146
    return-object p0
.end method

.method public getAnimators()Landroid/animation/AnimatorSet;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/quickstep/util/WorkspaceRevealAnim;->mAnimators:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public start()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/quickstep/util/WorkspaceRevealAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 154
    return-void
.end method
