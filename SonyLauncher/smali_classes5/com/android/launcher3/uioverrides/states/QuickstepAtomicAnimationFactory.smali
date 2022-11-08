.class public Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;
.super Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;
.source "QuickstepAtomicAnimationFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/util/RecentsAtomicAnimationFactory<",
        "Lcom/android/launcher3/uioverrides/QuickstepLauncher;",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PAGE:I = 0x0

.field private static final MAX_PAGE_SCROLL_DURATION:I = 0x2ee

.field private static final PER_PAGE_SCROLL_DURATION:I = 0x96

.field private static final RECENTS_PREPARE_SCALE:F = 1.33f

.field private static final WORKSPACE_PREPARE_SCALE:F = 0.92f


# instance fields
.field private mHintToNormalDuration:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    .line 94
    invoke-direct {p0, p1}, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;-><init>(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->mHintToNormalDuration:I

    .line 95
    return-void
.end method

.method static synthetic lambda$prepareForAtomicAnimation$0(F)F
    .locals 2
    .param p0, "t"    # F

    .line 177
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public prepareForAtomicAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 16
    .param p1, "fromState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "toState"    # Lcom/android/launcher3/LauncherState;
    .param p3, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;

    .line 100
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v4, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getOverviewPanel()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/views/RecentsView;

    .line 101
    .local v4, "overview":Lcom/android/quickstep/views/RecentsView;
    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/16 v6, 0x8

    const/4 v8, 0x6

    const/4 v9, 0x7

    const/4 v10, 0x3

    const/16 v11, 0xb

    const/16 v12, 0x9

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v2, v5, :cond_7

    sget-object v5, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v1, v5, :cond_7

    .line 102
    const/16 v5, 0xe

    sget-object v15, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-static {v15, v14, v7}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 103
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v11, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 104
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v13, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 105
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v10, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 107
    iget-object v5, v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v5}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-eqz v5, :cond_0

    .line 108
    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 110
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v8, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 111
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v12, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 112
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/high16 v7, 0x3f400000    # 0.75f

    .line 113
    invoke-static {v5, v14, v7}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 112
    invoke-virtual {v3, v9, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 114
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v6, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 116
    :cond_0
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v9, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 117
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    const v6, 0x3f666666    # 0.9f

    invoke-static {v5, v14, v6}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 118
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_7:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v12, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 122
    :goto_0
    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v5

    const/4 v6, 0x0

    sub-int/2addr v5, v6

    .line 123
    .local v5, "numPagesToScroll":I
    const/16 v6, 0x2ee

    mul-int/lit16 v7, v5, 0x96

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-long v6, v6

    .line 125
    .local v6, "scrollDuration":J
    iget-wide v8, v3, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    .line 126
    iget-wide v8, v3, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    invoke-static {v8, v9}, Ljava/lang/Math;->toIntExact(J)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v8}, Lcom/android/quickstep/views/RecentsView;->snapToPage(II)Z

    .line 128
    iget-object v8, v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v8, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v8}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v8

    .line 130
    .local v8, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    invoke-virtual {v8}, Lcom/android/launcher3/Workspace;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    move v9, v13

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 131
    .local v9, "isWorkspaceVisible":Z
    :goto_1
    if-eqz v9, :cond_3

    .line 132
    nop

    .line 133
    invoke-virtual {v8}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v10

    .line 132
    invoke-virtual {v8, v10}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/CellLayout;

    .line 134
    .local v10, "currentChild":Lcom/android/launcher3/CellLayout;
    if-eqz v10, :cond_3

    .line 135
    invoke-virtual {v10}, Lcom/android/launcher3/CellLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_2

    .line 136
    invoke-virtual {v10}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v11

    cmpl-float v11, v11, v14

    if-lez v11, :cond_2

    move v11, v13

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    move v9, v11

    .line 139
    .end local v10    # "currentChild":Lcom/android/launcher3/CellLayout;
    :cond_3
    const v10, 0x3f6b851f    # 0.92f

    if-nez v9, :cond_4

    .line 140
    invoke-virtual {v8, v10}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    .line 141
    invoke-virtual {v8, v10}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    .line 143
    :cond_4
    iget-object v11, v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v11, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v11}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v11

    .line 144
    .local v11, "hotseat":Lcom/android/launcher3/Hotseat;
    invoke-virtual {v11}, Lcom/android/launcher3/Hotseat;->getVisibility()I

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v11}, Lcom/android/launcher3/Hotseat;->getAlpha()F

    move-result v12

    cmpl-float v12, v12, v14

    if-lez v12, :cond_5

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    :goto_3
    move v12, v13

    .line 145
    .local v12, "isHotseatVisible":Z
    if-nez v12, :cond_6

    .line 146
    invoke-virtual {v11, v10}, Lcom/android/launcher3/Hotseat;->setScaleX(F)V

    .line 147
    invoke-virtual {v11, v10}, Lcom/android/launcher3/Hotseat;->setScaleY(F)V

    .line 149
    .end local v5    # "numPagesToScroll":I
    .end local v6    # "scrollDuration":J
    .end local v8    # "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    .end local v9    # "isWorkspaceVisible":Z
    .end local v11    # "hotseat":Lcom/android/launcher3/Hotseat;
    .end local v12    # "isHotseatVisible":Z
    :cond_6
    goto/16 :goto_8

    :cond_7
    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/16 v7, 0xa

    const/16 v15, 0xd

    if-eq v1, v5, :cond_8

    sget-object v5, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    if-eq v1, v5, :cond_8

    sget-object v5, Lcom/android/launcher3/LauncherState;->HINT_STATE_TWO_BUTTON:Lcom/android/launcher3/LauncherState;

    if-ne v1, v5, :cond_e

    :cond_8
    sget-object v5, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v2, v5, :cond_e

    .line 151
    iget-object v5, v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v5}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-eqz v5, :cond_b

    .line 152
    nop

    .line 153
    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v1, v5, :cond_9

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_9
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    .line 152
    :goto_4
    invoke-virtual {v3, v13, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 154
    const/4 v5, 0x2

    sget-object v13, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5, v13}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 157
    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v5

    if-lez v5, :cond_a

    .line 158
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v12, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_5

    .line 160
    :cond_a
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v12, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_5

    .line 163
    :cond_b
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v13, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 164
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v12, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 167
    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getContentAlpha()F

    move-result v5

    cmpl-float v5, v5, v14

    if-nez v5, :cond_d

    .line 168
    :cond_c
    sget-object v5, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    const v12, 0x3faa3d71    # 1.33f

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v5, v4, v12}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 171
    :cond_d
    :goto_5
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v10, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 172
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v7, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 173
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v8, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 174
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v15, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 175
    new-instance v5, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v11, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 179
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v9, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 180
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v6, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto/16 :goto_8

    .line 181
    :cond_e
    sget-object v5, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    if-ne v1, v5, :cond_10

    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v2, v5, :cond_10

    .line 182
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v15, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 183
    iget v5, v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->mHintToNormalDuration:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_f

    .line 184
    iget-object v5, v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v5, Lcom/android/launcher3/Launcher;

    iget-object v6, v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v6, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    .line 185
    invoke-virtual {v6}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v7, Lcom/android/launcher3/Launcher;

    .line 186
    invoke-virtual {v2, v7}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v7

    iget v7, v7, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    .line 184
    invoke-static {v5, v6, v7}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getWorkspaceSpringScaleAnimator(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 187
    .local v5, "va":Landroid/animation/ValueAnimator;
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->mHintToNormalDuration:I

    .line 189
    .end local v5    # "va":Landroid/animation/ValueAnimator;
    :cond_f
    iget-wide v5, v3, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    iget v7, v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->mHintToNormalDuration:I

    int-to-long v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    goto :goto_8

    .line 190
    :cond_10
    sget-object v5, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v1, v5, :cond_12

    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v2, v5, :cond_12

    .line 191
    iget-object v5, v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v5, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v5}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    .line 192
    .local v5, "isTablet":Z
    nop

    .line 193
    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v5, :cond_11

    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    goto :goto_6

    :cond_11
    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const v9, 0x3e4ccccc    # 0.19999999f

    invoke-static {v8, v9, v6}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v8

    .line 192
    :goto_6
    invoke-virtual {v3, v7, v8}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 196
    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const v8, 0x3f666666    # 0.9f

    invoke-static {v7, v6, v8}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v3, v11, v6}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 199
    sget-object v6, Lcom/android/systemui/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    .line 200
    if-nez v5, :cond_13

    .line 201
    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v10, v6}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_7

    .line 203
    .end local v5    # "isTablet":Z
    :cond_12
    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v1, v5, :cond_13

    sget-object v5, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v2, v5, :cond_13

    .line 204
    iget-object v5, v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v5, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v5}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v5, :cond_14

    .line 205
    sget-object v5, Lcom/android/systemui/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_8

    .line 203
    :cond_13
    :goto_7
    nop

    .line 209
    :cond_14
    :goto_8
    return-void
.end method

.method public bridge synthetic prepareForAtomicAnimation(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 0

    .line 77
    check-cast p1, Lcom/android/launcher3/LauncherState;

    check-cast p2, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->prepareForAtomicAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)V

    return-void
.end method
