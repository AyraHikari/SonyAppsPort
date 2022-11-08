.class public abstract Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;
.super Ljava/lang/Object;
.source "BaseRecentsViewStateController.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/quickstep/views/RecentsView;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

.field protected final mRecentsView:Lcom/android/quickstep/views/RecentsView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 58
    .local p0, "this":Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;, "Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 60
    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 61
    return-void
.end method


# virtual methods
.method abstract getContentAlphaProperty()Landroid/util/FloatProperty;
.end method

.method abstract getTaskModalnessProperty()Landroid/util/FloatProperty;
.end method

.method public setState(Lcom/android/launcher3/LauncherState;)V
    .locals 7
    .param p1, "state"    # Lcom/android/launcher3/LauncherState;

    .line 65
    .local p0, "this":Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;, "Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F

    move-result-object v0

    .line 66
    .local v0, "scaleAndOffset":[F
    sget-object v1, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 67
    sget-object v1, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 68
    sget-object v1, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_TRANSLATION:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 70
    iget-boolean v1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 71
    .local v1, "recentsAlpha":F
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BaseRecentsViewStateController setState state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", alpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "b/223498680"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->getContentAlphaProperty()Landroid/util/FloatProperty;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->getTaskModalnessProperty()Landroid/util/FloatProperty;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherState;->getOverviewModalness()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 75
    sget-object v4, Lcom/android/quickstep/views/RecentsView;->RECENTS_GRID_PROGRESS:Landroid/util/FloatProperty;

    iget-object v5, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 76
    iget-object v6, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v6}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/launcher3/LauncherState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v2

    :cond_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 75
    invoke-virtual {v4, v5, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 77
    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .locals 0

    .line 53
    .local p0, "this":Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;, "Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController<TT;>;"
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 3
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .param p3, "builder"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 82
    .local p0, "this":Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;, "Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseRecentsViewStateController setStateWithAnimation state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", config.skipOverview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->hasAnimationFlag(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v2, "b/223498680"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->hasAnimationFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->setStateWithAnimationInternal(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 88
    return-void
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 0

    .line 53
    .local p0, "this":Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;, "Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController<TT;>;"
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method setStateWithAnimationInternal(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 9
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .param p3, "setter"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 99
    .local p0, "this":Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;, "Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F

    move-result-object v0

    .line 100
    .local v0, "scaleAndOffset":[F
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    sget-object v2, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v3, 0x0

    aget v3, v0, v3

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 101
    const/4 v5, 0x6

    invoke-virtual {p2, v5, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 100
    invoke-virtual {p3, v1, v2, v3, v4}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 102
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    sget-object v2, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    const/4 v3, 0x1

    aget v3, v0, v3

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 103
    const/4 v5, 0x7

    invoke-virtual {p2, v5, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 102
    invoke-virtual {p3, v1, v2, v3, v4}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 104
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    sget-object v2, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_TRANSLATION:Landroid/util/FloatProperty;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 105
    const/16 v4, 0x8

    invoke-virtual {p2, v4, v3}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 104
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v2, v4, v3}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 107
    iget-boolean v1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    .line 108
    .local v1, "recentsAlpha":F
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BaseRecentsViewStateController setStateWithAnimationInternal toState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", alpha="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "b/223498680"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->getContentAlphaProperty()Landroid/util/FloatProperty;

    move-result-object v5

    const/16 v6, 0x9

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE_IN_OUT:Landroid/view/animation/Interpolator;

    .line 111
    invoke-virtual {p2, v6, v7}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 110
    invoke-virtual {p3, v3, v5, v1, v6}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 113
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->getTaskModalnessProperty()Landroid/util/FloatProperty;

    move-result-object v5

    .line 115
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherState;->getOverviewModalness()F

    move-result v6

    const/16 v7, 0xc

    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 116
    invoke-virtual {p2, v7, v8}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v7

    .line 113
    invoke-virtual {p3, v3, v5, v6, v7}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 117
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/launcher3/LauncherState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v3

    .line 118
    .local v3, "showAsGrid":Z
    iget-object v5, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    sget-object v6, Lcom/android/quickstep/views/RecentsView;->RECENTS_GRID_PROGRESS:Landroid/util/FloatProperty;

    if-eqz v3, :cond_1

    move v4, v2

    .line 119
    :cond_1
    if-eqz v3, :cond_2

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    .line 118
    :goto_1
    invoke-virtual {p3, v5, v6, v4, v2}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 120
    return-void
.end method
