.class public final Lcom/android/launcher3/uioverrides/RecentsViewStateController;
.super Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;
.source "RecentsViewStateController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController<",
        "Lcom/android/quickstep/views/LauncherRecentsView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    .line 60
    return-void
.end method

.method private handleSplitSelectionState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 8
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "builder"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 110
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 111
    .local v1, "animate":Z
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 112
    invoke-virtual {v2}, Lcom/android/launcher3/BaseQuickstepLauncher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    .line 113
    .local v2, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    sget-object v3, Lcom/android/quickstep/views/RecentsView;->TASK_PRIMARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;

    sget-object v4, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 116
    invoke-virtual {v5}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    .line 114
    invoke-interface {v2, v3, v4, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSplitSelectTaskOffset(Landroid/util/FloatProperty;Landroid/util/FloatProperty;Lcom/android/launcher3/DeviceProfile;)Landroid/util/Pair;

    move-result-object v3

    .line 118
    .local v3, "taskViewsFloat":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/FloatProperty;Landroid/util/FloatProperty;>;"
    sget-object v4, Lcom/android/launcher3/LauncherState;->OVERVIEW_SPLIT_SELECT:Lcom/android/launcher3/LauncherState;

    if-ne p1, v4, :cond_2

    .line 120
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v4, Lcom/android/quickstep/views/LauncherRecentsView;

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 121
    invoke-virtual {p1, v5, v0}, Lcom/android/launcher3/LauncherState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v0

    .line 120
    invoke-virtual {v4, v0}, Lcom/android/quickstep/views/LauncherRecentsView;->createSplitSelectInitAnimation(I)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v0

    .line 123
    .local v0, "splitSelectInitAnimation":Lcom/android/launcher3/anim/PendingAnimation;
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v4, Lcom/android/quickstep/views/LauncherRecentsView;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/FloatProperty;

    iget-object v6, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 124
    invoke-virtual {p1, v6}, Lcom/android/launcher3/LauncherState;->getSplitSelectTranslation(Lcom/android/launcher3/Launcher;)F

    move-result v6

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 123
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 125
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v4, Lcom/android/quickstep/views/LauncherRecentsView;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/util/FloatProperty;

    const/4 v6, 0x0

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 127
    if-nez v1, :cond_1

    .line 128
    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    .line 133
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v4, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v4}, Lcom/android/quickstep/views/LauncherRecentsView;->applySplitPrimaryScrollOffset()V

    .line 134
    .end local v0    # "splitSelectInitAnimation":Lcom/android/launcher3/anim/PendingAnimation;
    goto :goto_2

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/LauncherRecentsView;->resetSplitPrimaryScrollOffset()V

    .line 137
    :goto_2
    return-void
.end method

.method private setAlphas(Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/LauncherState;)V
    .locals 6
    .param p1, "propertySetter"    # Lcom/android/launcher3/anim/PropertySetter;
    .param p2, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .param p3, "state"    # Lcom/android/launcher3/LauncherState;

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/16 v1, 0x10

    invoke-virtual {p3, v0, v1}, Lcom/android/launcher3/LauncherState;->areElementsVisible(Lcom/android/launcher3/Launcher;I)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 142
    .local v0, "clearAllButtonAlpha":F
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v3, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/LauncherRecentsView;->getClearAllButton()Lcom/android/quickstep/views/ClearAllButton;

    move-result-object v3

    sget-object v4, Lcom/android/quickstep/views/ClearAllButton;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3, v4, v0, v5}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 144
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/16 v4, 0x8

    invoke-virtual {p3, v3, v4}, Lcom/android/launcher3/LauncherState;->areElementsVisible(Lcom/android/launcher3/Launcher;I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 145
    .local v1, "overviewButtonAlpha":F
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseQuickstepLauncher;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/views/OverviewActionsView;->getVisibilityAlpha()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/util/MultiValueAlpha;->VALUE:Landroid/util/FloatProperty;

    const/16 v4, 0xe

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 146
    invoke-virtual {p2, v4, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 145
    invoke-virtual {p1, v2, v3, v1, v4}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 148
    return-void
.end method


# virtual methods
.method getContentAlphaProperty()Landroid/util/FloatProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    return-object v0
.end method

.method getTaskModalnessProperty()Landroid/util/FloatProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/android/quickstep/views/RecentsView;->TASK_MODALNESS:Landroid/util/FloatProperty;

    return-object v0
.end method

.method synthetic lambda$setStateWithAnimationInternal$0$com-android-launcher3-uioverrides-RecentsViewStateController()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/LauncherRecentsView;->loadVisibleTaskData(I)V

    return-void
.end method

.method synthetic lambda$setStateWithAnimationInternal$1$com-android-launcher3-uioverrides-RecentsViewStateController(Lcom/android/launcher3/LauncherState;)V
    .locals 2
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statehandlers/DepthController;->setHasContentBehindLauncher(Z)V

    return-void
.end method

.method public setState(Lcom/android/launcher3/LauncherState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/launcher3/LauncherState;

    .line 64
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->setState(Lcom/android/launcher3/LauncherState;)V

    .line 65
    iget-boolean v0, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/LauncherRecentsView;->updateEmptyMessage()V

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/LauncherRecentsView;->resetTaskVisuals()V

    .line 69
    :cond_0
    sget-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    new-instance v1, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v1}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->setAlphas(Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/LauncherState;)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherState;->getOverviewFullscreenProgress()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/LauncherRecentsView;->setFullscreenProgress(F)V

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statehandlers/DepthController;->setHasContentBehindLauncher(Z)V

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->handleSplitSelectionState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 76
    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method setStateWithAnimationInternal(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 4
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .param p3, "builder"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->setStateWithAnimationInternal(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 83
    iget-boolean v0, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/launcher3/uioverrides/RecentsViewStateController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/RecentsViewStateController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/uioverrides/RecentsViewStateController;)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/LauncherRecentsView;->updateEmptyMessage()V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 89
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/uioverrides/RecentsViewStateController$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/launcher3/uioverrides/RecentsViewStateController$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/views/LauncherRecentsView;)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    .line 88
    invoke-virtual {p3, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 93
    :goto_0
    new-instance v0, Lcom/android/launcher3/uioverrides/RecentsViewStateController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/uioverrides/RecentsViewStateController$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/uioverrides/RecentsViewStateController;Lcom/android/launcher3/LauncherState;)V

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 96
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->handleSplitSelectionState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 98
    invoke-direct {p0, p3, p2, p1}, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->setAlphas(Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/LauncherState;)V

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/RecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    sget-object v1, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    .line 100
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherState;->getOverviewFullscreenProgress()F

    move-result v2

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 99
    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 101
    return-void
.end method
