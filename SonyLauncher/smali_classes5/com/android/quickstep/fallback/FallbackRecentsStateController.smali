.class public Lcom/android/quickstep/fallback/FallbackRecentsStateController;
.super Ljava/lang/Object;
.source "FallbackRecentsStateController.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/quickstep/fallback/RecentsState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/quickstep/RecentsActivity;

.field private final mNoConfig:Lcom/android/launcher3/states/StateAnimationConfig;

.field private final mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/RecentsActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/quickstep/RecentsActivity;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mNoConfig:Lcom/android/launcher3/states/StateAnimationConfig;

    .line 61
    iput-object p1, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    .line 62
    invoke-virtual {p1}, Lcom/android/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/fallback/FallbackRecentsView;

    iput-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    .line 63
    return-void
.end method

.method private isSplitSelectionState(Lcom/android/quickstep/fallback/RecentsState;)Z
    .locals 1
    .param p1, "toState"    # Lcom/android/quickstep/fallback/RecentsState;

    .line 137
    sget-object v0, Lcom/android/quickstep/fallback/RecentsState;->OVERVIEW_SPLIT_SELECT:Lcom/android/quickstep/fallback/RecentsState;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setProperties(Lcom/android/quickstep/fallback/RecentsState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;)V
    .locals 11
    .param p1, "state"    # Lcom/android/quickstep/fallback/RecentsState;
    .param p2, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .param p3, "setter"    # Lcom/android/launcher3/anim/PropertySetter;

    .line 87
    invoke-virtual {p1}, Lcom/android/quickstep/fallback/RecentsState;->hasClearAllButton()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 88
    .local v0, "clearAllButtonAlpha":F
    :goto_0
    iget-object v3, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v3}, Lcom/android/quickstep/fallback/FallbackRecentsView;->getClearAllButton()Lcom/android/quickstep/views/ClearAllButton;

    move-result-object v3

    sget-object v4, Lcom/android/quickstep/views/ClearAllButton;->VISIBILITY_ALPHA:Landroid/util/FloatProperty;

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v3, v4, v0, v5}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 90
    invoke-virtual {p1}, Lcom/android/quickstep/fallback/RecentsState;->hasOverviewActions()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 91
    .local v3, "overviewButtonAlpha":F
    :goto_1
    iget-object v4, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v4}, Lcom/android/quickstep/RecentsActivity;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/views/OverviewActionsView;->getVisibilityAlpha()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/util/MultiValueAlpha;->VALUE:Landroid/util/FloatProperty;

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v4, v5, v3, v6}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 94
    iget-object v4, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p1, v4}, Lcom/android/quickstep/fallback/RecentsState;->getOverviewScaleAndOffset(Lcom/android/quickstep/RecentsActivity;)[F

    move-result-object v4

    .line 95
    .local v4, "scaleAndOffset":[F
    iget-object v5, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    sget-object v6, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v7, 0x0

    aget v7, v4, v7

    const/4 v8, 0x6

    sget-object v9, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 96
    invoke-virtual {p2, v8, v9}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v8

    .line 95
    invoke-virtual {p3, v5, v6, v7, v8}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 97
    iget-object v5, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    sget-object v6, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    const/4 v7, 0x1

    aget v8, v4, v7

    const/4 v9, 0x7

    sget-object v10, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 98
    invoke-virtual {p2, v9, v10}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v9

    .line 97
    invoke-virtual {p3, v5, v6, v8, v9}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 99
    iget-object v5, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    sget-object v6, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_TRANSLATION:Landroid/util/FloatProperty;

    const/16 v8, 0x8

    sget-object v9, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 100
    invoke-virtual {p2, v8, v9}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v8

    .line 99
    invoke-virtual {p3, v5, v6, v2, v8}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 102
    iget-object v5, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    sget-object v6, Lcom/android/quickstep/views/RecentsView;->TASK_MODALNESS:Landroid/util/FloatProperty;

    invoke-virtual {p1}, Lcom/android/quickstep/fallback/RecentsState;->getOverviewModalness()F

    move-result v8

    const/16 v9, 0xc

    sget-object v10, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 103
    invoke-virtual {p2, v9, v10}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v9

    .line 102
    invoke-virtual {p3, v5, v6, v8, v9}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 104
    iget-object v5, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    sget-object v6, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    invoke-virtual {p1}, Lcom/android/quickstep/fallback/RecentsState;->isFullScreen()Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    move v8, v2

    :goto_2
    sget-object v9, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v5, v6, v8, v9}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 105
    iget-object v5, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v5}, Lcom/android/quickstep/RecentsActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/quickstep/fallback/RecentsState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v5

    .line 106
    .local v5, "showAsGrid":Z
    iget-object v6, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    sget-object v8, Lcom/android/quickstep/views/RecentsView;->RECENTS_GRID_PROGRESS:Landroid/util/FloatProperty;

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 107
    :goto_3
    if-eqz v5, :cond_4

    sget-object v9, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_4
    sget-object v9, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    .line 106
    :goto_4
    invoke-virtual {p3, v6, v8, v1, v9}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 109
    iget-object v1, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsActivity;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v1

    iget-object v6, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {p1, v6}, Lcom/android/quickstep/fallback/RecentsState;->getScrimColor(Lcom/android/quickstep/RecentsActivity;)I

    move-result v6

    const/16 v8, 0xb

    sget-object v9, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 110
    invoke-virtual {p2, v8, v9}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v8

    .line 109
    invoke-virtual {p3, v1, v6, v8}, Lcom/android/launcher3/anim/PropertySetter;->setViewBackgroundColor(Landroid/view/View;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 112
    iget-object v1, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/fallback/RecentsState;

    .line 113
    .local v1, "currentState":Lcom/android/quickstep/fallback/RecentsState;
    invoke-direct {p0, p1}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->isSplitSelectionState(Lcom/android/quickstep/fallback/RecentsState;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, v1}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->isSplitSelectionState(Lcom/android/quickstep/fallback/RecentsState;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 114
    iget-object v6, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    iget-object v8, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    .line 115
    invoke-virtual {p1, v8, v7}, Lcom/android/quickstep/fallback/RecentsState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v7

    .line 114
    invoke-virtual {v6, v7}, Lcom/android/quickstep/fallback/FallbackRecentsView;->createSplitSelectInitAnimation(I)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v6

    .line 115
    invoke-virtual {v6}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v6

    .line 114
    invoke-virtual {p3, v6}, Lcom/android/launcher3/anim/PropertySetter;->add(Landroid/animation/Animator;)V

    .line 118
    :cond_5
    iget-object v6, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    .line 119
    invoke-virtual {v6}, Lcom/android/quickstep/fallback/FallbackRecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v6

    sget-object v7, Lcom/android/quickstep/views/RecentsView;->TASK_PRIMARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;

    sget-object v8, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;

    iget-object v9, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mActivity:Lcom/android/quickstep/RecentsActivity;

    .line 121
    invoke-virtual {v9}, Lcom/android/quickstep/RecentsActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v9

    .line 119
    invoke-interface {v6, v7, v8, v9}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSplitSelectTaskOffset(Landroid/util/FloatProperty;Landroid/util/FloatProperty;Lcom/android/launcher3/DeviceProfile;)Landroid/util/Pair;

    move-result-object v6

    .line 122
    .local v6, "taskViewsFloat":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/FloatProperty;Landroid/util/FloatProperty;>;"
    iget-object v7, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/util/FloatProperty;

    sget-object v9, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v7, v8, v2, v9}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 123
    invoke-direct {p0, p1}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->isSplitSelectionState(Lcom/android/quickstep/fallback/RecentsState;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 124
    iget-object v2, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/fallback/FallbackRecentsView;->applySplitPrimaryScrollOffset()V

    .line 125
    iget-object v2, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/util/FloatProperty;

    iget-object v8, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    .line 126
    invoke-virtual {v8}, Lcom/android/quickstep/fallback/FallbackRecentsView;->getSplitSelectTranslation()F

    move-result v8

    sget-object v9, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 125
    invoke-virtual {p3, v2, v7, v8, v9}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    goto :goto_5

    .line 128
    :cond_6
    iget-object v7, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v7}, Lcom/android/quickstep/fallback/FallbackRecentsView;->resetSplitPrimaryScrollOffset()V

    .line 129
    iget-object v7, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/util/FloatProperty;

    sget-object v9, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v7, v8, v2, v9}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 131
    :goto_5
    return-void
.end method


# virtual methods
.method synthetic lambda$setStateWithAnimation$0$com-android-quickstep-fallback-FallbackRecentsStateController()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/quickstep/fallback/FallbackRecentsView;->loadVisibleTaskData(I)V

    return-void
.end method

.method public setState(Lcom/android/quickstep/fallback/RecentsState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/quickstep/fallback/RecentsState;

    .line 67
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->updateEmptyMessage()V

    .line 68
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->resetTaskVisuals()V

    .line 69
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mNoConfig:Lcom/android/launcher3/states/StateAnimationConfig;

    sget-object v1, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->setProperties(Lcom/android/quickstep/fallback/RecentsState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;)V

    .line 70
    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->setState(Lcom/android/quickstep/fallback/RecentsState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/quickstep/fallback/RecentsState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 1
    .param p1, "toState"    # Lcom/android/quickstep/fallback/RecentsState;
    .param p2, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .param p3, "setter"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 75
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->hasAnimationFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/android/quickstep/fallback/FallbackRecentsStateController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/fallback/FallbackRecentsStateController$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/fallback/FallbackRecentsStateController;)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    .line 80
    iget-object v0, p0, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->mRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->updateEmptyMessage()V

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->setProperties(Lcom/android/quickstep/fallback/RecentsState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;)V

    .line 83
    return-void
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quickstep/fallback/FallbackRecentsStateController;->setStateWithAnimation(Lcom/android/quickstep/fallback/RecentsState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method
