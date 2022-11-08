.class public Lcom/android/quickstep/util/StaggeredWorkspaceAnim;
.super Ljava/lang/Object;
.source "StaggeredWorkspaceAnim.java"


# static fields
.field private static final ALPHA_DURATION_MS:I = 0xfa

.field private static final APP_CLOSE_ROW_START_DELAY_MS:I = 0xa

.field public static final DURATION_MS:I = 0xfa

.field private static final MAX_VELOCITY_PX_PER_S:F = 22.0f


# instance fields
.field private final mAnimators:Landroid/animation/AnimatorSet;

.field private final mIgnoredView:Landroid/view/View;

.field private final mSpringTransY:F

.field private final mVelocity:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;FZLandroid/view/View;)V
    .locals 6
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "velocity"    # F
    .param p3, "animateOverviewScrim"    # Z
    .param p4, "ignoredView"    # Landroid/view/View;

    .line 78
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;-><init>(Lcom/android/launcher3/Launcher;FZLandroid/view/View;Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;FZLandroid/view/View;Z)V
    .locals 24
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "velocity"    # F
    .param p3, "animateOverviewScrim"    # Z
    .param p4, "ignoredView"    # Landroid/view/View;
    .param p5, "staggerWorkspace"    # Z

    .line 82
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v8, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    .line 83
    invoke-direct {v8, v9, v10}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->prepareToAnimate(Lcom/android/launcher3/Launcher;Z)V

    .line 85
    move-object/from16 v11, p4

    iput-object v11, v8, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mIgnoredView:Landroid/view/View;

    .line 86
    move/from16 v12, p2

    iput v12, v8, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mVelocity:F

    .line 90
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41b00000    # 22.0f

    div-float/2addr v0, v1

    const v1, 0x3e4ccccd    # 0.2f

    add-float v13, v0, v1

    .line 91
    .local v13, "transFactor":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->swipe_up_max_workspace_trans_y:I

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v13

    iput v0, v8, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mSpringTransY:F

    .line 94
    const/4 v14, 0x2

    if-eqz p5, :cond_5

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v15

    .line 96
    .local v15, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v7

    .line 97
    .local v7, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v6

    .line 100
    .local v6, "hotseat":Lcom/android/launcher3/Hotseat;
    iget-object v0, v15, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v15}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v14

    :goto_0
    add-int v5, v0, v1

    .line 103
    .local v5, "totalRows":I
    new-instance v0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$$ExternalSyntheticLambda0;

    invoke-direct {v0, v8, v5}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/StaggeredWorkspaceAnim;I)V

    invoke-virtual {v7, v0}, Lcom/android/launcher3/Workspace;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    .line 105
    invoke-virtual {v7}, Lcom/android/launcher3/Workspace;->getClipChildren()Z

    move-result v16

    .line 106
    .local v16, "workspaceClipChildren":Z
    invoke-virtual {v7}, Lcom/android/launcher3/Workspace;->getClipToPadding()Z

    move-result v17

    .line 107
    .local v17, "workspaceClipToPadding":Z
    invoke-virtual {v6}, Lcom/android/launcher3/Hotseat;->getClipChildren()Z

    move-result v18

    .line 108
    .local v18, "hotseatClipChildren":Z
    invoke-virtual {v6}, Lcom/android/launcher3/Hotseat;->getClipToPadding()Z

    move-result v19

    .line 110
    .local v19, "hotseatClipToPadding":Z
    invoke-virtual {v7, v2}, Lcom/android/launcher3/Workspace;->setClipChildren(Z)V

    .line 111
    invoke-virtual {v7, v2}, Lcom/android/launcher3/Workspace;->setClipToPadding(Z)V

    .line 112
    invoke-virtual {v6, v2}, Lcom/android/launcher3/Hotseat;->setClipChildren(Z)V

    .line 113
    invoke-virtual {v6, v2}, Lcom/android/launcher3/Hotseat;->setClipToPadding(Z)V

    .line 116
    invoke-virtual {v6}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    .line 117
    .local v4, "hotseatIcons":Landroid/view/ViewGroup;
    invoke-virtual {v15}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 119
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, "child":Landroid/view/View;
    nop

    .line 121
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 122
    .local v2, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v8, v1, v3, v5}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->addStaggeredAnimationForView(Landroid/view/View;II)V

    .line 118
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_1
    goto :goto_4

    .line 126
    :cond_2
    iget-boolean v0, v15, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, v15, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    add-int/lit8 v0, v0, 0x1

    .line 128
    .local v0, "qsbRow":I
    iget-object v1, v15, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    add-int/2addr v1, v14

    .local v1, "hotseatRow":I
    goto :goto_2

    .line 130
    .end local v0    # "qsbRow":I
    .end local v1    # "hotseatRow":I
    :cond_3
    iget-object v0, v15, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    add-int/lit8 v1, v0, 0x1

    .line 131
    .restart local v1    # "hotseatRow":I
    iget-object v0, v15, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    add-int/2addr v0, v14

    .line 133
    .restart local v0    # "qsbRow":I
    :goto_2
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_4

    .line 134
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 135
    .local v3, "child":Landroid/view/View;
    invoke-direct {v8, v3, v1, v5}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->addStaggeredAnimationForView(Landroid/view/View;II)V

    .line 133
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 138
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v6}, Lcom/android/launcher3/Hotseat;->getQsb()Landroid/view/View;

    move-result-object v2

    invoke-direct {v8, v2, v0, v5}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->addStaggeredAnimationForView(Landroid/view/View;II)V

    .line 141
    .end local v0    # "qsbRow":I
    .end local v1    # "hotseatRow":I
    :goto_4
    iget-object v3, v8, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$1;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v14, v2

    move-object v2, v7

    move-object v11, v3

    move/from16 v3, v16

    move-object/from16 v20, v4

    .end local v4    # "hotseatIcons":Landroid/view/ViewGroup;
    .local v20, "hotseatIcons":Landroid/view/ViewGroup;
    move/from16 v4, v17

    move/from16 v21, v5

    .end local v5    # "totalRows":I
    .local v21, "totalRows":I
    move-object v5, v6

    move-object/from16 v22, v6

    .end local v6    # "hotseat":Lcom/android/launcher3/Hotseat;
    .local v22, "hotseat":Lcom/android/launcher3/Hotseat;
    move/from16 v6, v18

    move-object/from16 v23, v7

    .end local v7    # "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    .local v23, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    move/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$1;-><init>(Lcom/android/quickstep/util/StaggeredWorkspaceAnim;Lcom/android/launcher3/Workspace;ZZLcom/android/launcher3/Hotseat;ZZ)V

    invoke-virtual {v11, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 152
    .end local v15    # "grid":Lcom/android/launcher3/DeviceProfile;
    .end local v16    # "workspaceClipChildren":Z
    .end local v17    # "workspaceClipToPadding":Z
    .end local v18    # "hotseatClipChildren":Z
    .end local v19    # "hotseatClipToPadding":Z
    .end local v20    # "hotseatIcons":Landroid/view/ViewGroup;
    .end local v21    # "totalRows":I
    .end local v22    # "hotseat":Lcom/android/launcher3/Hotseat;
    .end local v23    # "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->pauseExpensiveViewUpdates()V

    .line 153
    iget-object v0, v8, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$$ExternalSyntheticLambda1;

    invoke-direct {v1, v9}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 155
    const-wide/16 v0, 0xfa

    if-eqz v10, :cond_6

    .line 156
    new-instance v2, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v2, v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 157
    .local v2, "pendingAnimation":Lcom/android/launcher3/anim/PendingAnimation;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getStateTransitionAnimation()Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    new-instance v5, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v5}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    .line 158
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setScrim(Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 159
    iget-object v3, v8, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 162
    .end local v2    # "pendingAnimation":Lcom/android/launcher3/anim/PendingAnimation;
    :cond_6
    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-direct {v8, v9, v2, v0, v1}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->addDepthAnimationForState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;J)V

    .line 164
    iget-object v2, v8, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherRootView;->getSysUiScrim()Lcom/android/launcher3/graphics/SysUiScrim;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/graphics/SysUiScrim;->createSysuiMultiplierAnim([F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 165
    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 164
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 166
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addAnimationForPage(Lcom/android/launcher3/CellLayout;I)V
    .locals 8
    .param p1, "page"    # Lcom/android/launcher3/CellLayout;
    .param p2, "totalRows"    # I

    .line 169
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 171
    .local v0, "itemsContainer":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getClipChildren()Z

    move-result v1

    .line 172
    .local v1, "pageClipChildren":Z
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getClipToPadding()Z

    move-result v2

    .line 174
    .local v2, "pageClipToPadding":Z
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/launcher3/CellLayout;->setClipChildren(Z)V

    .line 175
    invoke-virtual {p1, v3}, Lcom/android/launcher3/CellLayout;->setClipToPadding(Z)V

    .line 178
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 179
    invoke-virtual {v0, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 180
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 181
    .local v5, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget v6, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v7, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v6, v7

    invoke-direct {p0, v4, v6, p2}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->addStaggeredAnimationForView(Landroid/view/View;II)V

    .line 178
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 184
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$2;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$2;-><init>(Lcom/android/quickstep/util/StaggeredWorkspaceAnim;Lcom/android/launcher3/CellLayout;ZZ)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 191
    return-void
.end method

.method private addDepthAnimationForState(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;J)V
    .locals 4
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "state"    # Lcom/android/launcher3/LauncherState;
    .param p3, "duration"    # J

    .line 281
    instance-of v0, p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    if-nez v0, :cond_0

    .line 282
    return-void

    .line 284
    :cond_0
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v0, p3, p4}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 285
    .local v0, "builder":Lcom/android/launcher3/anim/PendingAnimation;
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v1

    .line 286
    .local v1, "depthController":Lcom/android/launcher3/statehandlers/DepthController;
    new-instance v2, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v2}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    invoke-virtual {v1, p2, v2, v0}, Lcom/android/launcher3/statehandlers/DepthController;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 287
    iget-object v2, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 288
    return-void
.end method

.method private addStaggeredAnimationForView(Landroid/view/View;II)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "row"    # I
    .param p3, "totalRows"    # I

    .line 236
    iget-object v0, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mIgnoredView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    return-void

    .line 238
    :cond_0
    sub-int v0, p3, p2

    .line 240
    .local v0, "invertedRow":I
    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0xa

    int-to-long v1, v1

    .line 242
    .local v1, "startDelay":J
    iget v3, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mSpringTransY:F

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object v3

    .line 245
    .local v3, "rp":Lcom/android/systemui/plugins/ResourceProvider;
    sget v4, Lcom/android/launcher3/R$dimen;->staggered_stiffness:I

    invoke-interface {v3, v4}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v4

    .line 246
    .local v4, "stiffness":F
    sget v5, Lcom/android/launcher3/R$dimen;->staggered_damping_ratio:I

    invoke-interface {v3, v5}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v5

    .line 247
    .local v5, "damping":F
    const/4 v6, 0x0

    .line 248
    .local v6, "endTransY":F
    iget v7, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mVelocity:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mSpringTransY:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    mul-float/2addr v7, v8

    .line 249
    .local v7, "springVelocity":F
    new-instance v8, Lcom/android/launcher3/anim/SpringAnimationBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/launcher3/anim/SpringAnimationBuilder;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {v8, v4}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStiffness(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v8

    .line 251
    invoke-virtual {v8, v5}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    .line 252
    invoke-virtual {v8, v9}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setMinimumVisibleChange(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mSpringTransY:F

    .line 253
    invoke-virtual {v8, v9}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStartValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v8

    .line 254
    invoke-virtual {v8, v6}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setEndValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v8

    .line 255
    invoke-virtual {v8, v7}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStartVelocity(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    .line 256
    invoke-virtual {v8, p1, v9}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->build(Ljava/lang/Object;Landroid/util/FloatProperty;)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 257
    .local v8, "springTransY":Landroid/animation/ValueAnimator;
    invoke-virtual {v8, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 258
    new-instance v9, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$3;

    invoke-direct {v9, p0, p1}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$3;-><init>(Lcom/android/quickstep/util/StaggeredWorkspaceAnim;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 264
    iget-object v9, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 266
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 267
    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {p1, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 268
    .local v9, "alpha":Landroid/animation/ObjectAnimator;
    sget-object v10, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 269
    const-wide/16 v10, 0xfa

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 270
    invoke-virtual {v9, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 271
    new-instance v10, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$4;

    invoke-direct {v10, p0, p1}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$4;-><init>(Lcom/android/quickstep/util/StaggeredWorkspaceAnim;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 277
    iget-object v10, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v10, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 278
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

    .line 197
    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    .line 198
    .local v0, "config":Lcom/android/launcher3/states/StateAnimationConfig;
    const/16 v1, 0xe

    iput v1, v0, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    .line 199
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    .line 201
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher3/statemanager/StateManager;->createAtomicAnimation(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 204
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->forceFinishScroller()V

    .line 206
    if-eqz p2, :cond_0

    .line 207
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getStateTransitionAnimation()Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    sget-object v3, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    .line 208
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setScrim(Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 210
    :cond_0
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/quickstep/util/StaggeredWorkspaceAnim;
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 217
    iget-object v0, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 218
    return-object p0
.end method

.method public getAnimators()Landroid/animation/AnimatorSet;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method synthetic lambda$new$0$com-android-quickstep-util-StaggeredWorkspaceAnim(ILandroid/view/View;)V
    .locals 1
    .param p1, "totalRows"    # I
    .param p2, "page"    # Landroid/view/View;

    .line 103
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->addAnimationForPage(Lcom/android/launcher3/CellLayout;I)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->mAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 226
    return-void
.end method
