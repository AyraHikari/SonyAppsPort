.class public Lcom/android/launcher3/WorkspaceStateTransitionAnimation;
.super Ljava/lang/Object;
.source "WorkspaceStateTransitionAnimation.java"


# static fields
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
.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mNewScale:F

.field private final mWorkspace:Lcom/android/launcher3/Workspace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->WORKSPACE_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    .line 73
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->get(Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->WORKSPACE_SCALE_PROPERTY:Landroid/util/FloatProperty;

    .line 75
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->HOTSEAT_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    .line 76
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->get(Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->HOTSEAT_SCALE_PROPERTY:Landroid/util/FloatProperty;

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Lcom/android/launcher3/Workspace<",
            "*>;)V"
        }
    .end annotation

    .line 83
    .local p2, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 85
    iput-object p2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 86
    return-void
.end method

.method private applyChildState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/CellLayout;ILcom/android/launcher3/LauncherState$PageAlphaProvider;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 5
    .param p1, "state"    # Lcom/android/launcher3/LauncherState;
    .param p2, "cl"    # Lcom/android/launcher3/CellLayout;
    .param p3, "childIndex"    # I
    .param p4, "pageAlphaProvider"    # Lcom/android/launcher3/LauncherState$PageAlphaProvider;
    .param p5, "propertySetter"    # Lcom/android/launcher3/anim/PropertySetter;
    .param p6, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;

    .line 212
    invoke-virtual {p4, p3}, Lcom/android/launcher3/LauncherState$PageAlphaProvider;->getPageAlpha(I)F

    move-result v0

    .line 213
    .local v0, "pageAlpha":F
    instance-of v1, p1, Lcom/android/launcher3/states/SpringLoadedState;

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 215
    .local v1, "springLoadedProgress":F
    :goto_0
    sget-object v2, Lcom/android/launcher3/CellLayout;->SPRING_LOADED_PROGRESS:Landroid/util/FloatProperty;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ZOOM_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p5, p2, v2, v1, v3}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 217
    const/4 v2, 0x3

    iget-object v3, p4, Lcom/android/launcher3/LauncherState$PageAlphaProvider;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p6, v2, v3}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 219
    .local v2, "fadeInterpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    invoke-virtual {p5, v3, v4, v0, v2}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 221
    return-void
.end method

.method private applyPageTranslation(Lcom/android/launcher3/CellLayout;ILcom/android/launcher3/LauncherState$PageTranslationProvider;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 3
    .param p1, "cellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p2, "childIndex"    # I
    .param p3, "pageTranslationProvider"    # Lcom/android/launcher3/LauncherState$PageTranslationProvider;
    .param p4, "propertySetter"    # Lcom/android/launcher3/anim/PropertySetter;
    .param p5, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;

    .line 226
    invoke-virtual {p3, p2}, Lcom/android/launcher3/LauncherState$PageTranslationProvider;->getPageTranslation(I)F

    move-result v0

    .line 227
    .local v0, "pageTranslation":F
    iget-object v1, p3, Lcom/android/launcher3/LauncherState$PageTranslationProvider;->interpolator:Landroid/view/animation/Interpolator;

    const/16 v2, 0xf

    invoke-virtual {p5, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 229
    .local v1, "translationInterpolator":Landroid/view/animation/Interpolator;
    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    invoke-virtual {p4, p1, v2, v0, v1}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 231
    return-void
.end method

.method public static getSpringScaleAnimator(Lcom/android/launcher3/Launcher;Landroid/view/View;FLandroid/util/FloatProperty;)Landroid/animation/ValueAnimator;
    .locals 6
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/android/launcher3/Launcher;",
            "TT;F",
            "Landroid/util/FloatProperty<",
            "TT;>;)",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    .line 246
    .local p1, "v":Landroid/view/View;, "TT;"
    .local p3, "property":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TT;>;"
    invoke-static {p0}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object v0

    .line 247
    .local v0, "rp":Lcom/android/systemui/plugins/ResourceProvider;
    sget v1, Lcom/android/launcher3/R$dimen;->hint_scale_damping_ratio:I

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v1

    .line 248
    .local v1, "damping":F
    sget v2, Lcom/android/launcher3/R$dimen;->hint_scale_stiffness:I

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v2

    .line 249
    .local v2, "stiffness":F
    sget v3, Lcom/android/launcher3/R$dimen;->hint_scale_velocity_dp_per_s:I

    invoke-interface {v0, v3}, Lcom/android/systemui/plugins/ResourceProvider;->getDimension(I)F

    move-result v3

    .line 251
    .local v3, "velocityPxPerS":F
    new-instance v4, Lcom/android/launcher3/anim/SpringAnimationBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/launcher3/anim/SpringAnimationBuilder;-><init>(Landroid/content/Context;)V

    .line 252
    invoke-virtual {v4, v2}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStiffness(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v4

    .line 253
    invoke-virtual {v4, v1}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v4

    .line 254
    const v5, 0x3b03126f    # 0.002f

    invoke-virtual {v4, v5}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setMinimumVisibleChange(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v4

    .line 255
    invoke-virtual {v4, p2}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setEndValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v4

    .line 256
    invoke-virtual {p3, p1}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStartValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v4

    .line 257
    invoke-virtual {v4, v3}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStartVelocity(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v4

    .line 258
    invoke-virtual {v4, p1, p3}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->build(Ljava/lang/Object;Landroid/util/FloatProperty;)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 251
    return-object v4
.end method

.method public static getWorkspaceSpringScaleAnimator(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;F)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Lcom/android/launcher3/Workspace<",
            "*>;F)",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    .line 238
    .local p1, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    sget-object v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->WORKSPACE_SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getSpringScaleAnimator(Lcom/android/launcher3/Launcher;Landroid/view/View;FLandroid/util/FloatProperty;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method private setWorkspaceProperty(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 27
    .param p1, "state"    # Lcom/android/launcher3/LauncherState;
    .param p2, "propertySetter"    # Lcom/android/launcher3/anim/PropertySetter;
    .param p3, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;

    .line 109
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    iget-object v0, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v0}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v11

    .line 110
    .local v11, "scaleAndTranslation":Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    iget-object v0, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v0}, Lcom/android/launcher3/LauncherState;->getHotseatScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v12

    .line 112
    .local v12, "hotseatScaleAndTranslation":Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    iget v0, v11, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    iput v0, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    .line 113
    iget-object v0, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v0}, Lcom/android/launcher3/LauncherState;->getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    move-result-object v13

    .line 114
    .local v13, "pageAlphaProvider":Lcom/android/launcher3/LauncherState$PageAlphaProvider;
    iget-object v0, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v14

    .line 115
    .local v14, "childCount":I
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_0
    if-ge v15, v14, :cond_0

    .line 116
    iget-object v0, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v15}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v15

    move-object v4, v13

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->applyChildState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/CellLayout;ILcom/android/launcher3/LauncherState$PageAlphaProvider;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 115
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 120
    .end local v15    # "i":I
    :cond_0
    iget-object v0, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v0}, Lcom/android/launcher3/LauncherState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result v6

    .line 121
    .local v6, "elements":I
    iget-object v0, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v15

    .line 122
    .local v15, "hotseat":Lcom/android/launcher3/Hotseat;
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ZOOM_OUT:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    invoke-virtual {v10, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 123
    .local v5, "scaleInterpolator":Landroid/view/animation/Interpolator;
    iget-object v0, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/launcher3/LauncherState;

    .line 125
    .local v4, "fromState":Lcom/android/launcher3/LauncherState;
    instance-of v0, v9, Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    if-ne v4, v0, :cond_1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v8, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move/from16 v16, v1

    .line 127
    .local v16, "shouldSpring":Z
    if-eqz v16, :cond_2

    .line 128
    move-object v0, v9

    check-cast v0, Lcom/android/launcher3/anim/PendingAnimation;

    iget-object v1, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v2, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    move-object/from16 v18, v4

    .end local v4    # "fromState":Lcom/android/launcher3/LauncherState;
    .local v18, "fromState":Lcom/android/launcher3/LauncherState;
    sget-object v4, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->WORKSPACE_SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {v1, v3, v2, v4}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getSpringScaleAnimator(Lcom/android/launcher3/Launcher;Landroid/view/View;FLandroid/util/FloatProperty;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    goto :goto_2

    .line 131
    .end local v18    # "fromState":Lcom/android/launcher3/LauncherState;
    .restart local v4    # "fromState":Lcom/android/launcher3/LauncherState;
    :cond_2
    move-object/from16 v18, v4

    .end local v4    # "fromState":Lcom/android/launcher3/LauncherState;
    .restart local v18    # "fromState":Lcom/android/launcher3/LauncherState;
    iget-object v0, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    sget-object v1, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->WORKSPACE_SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget v2, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    invoke-virtual {v9, v0, v1, v2, v5}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 135
    :goto_2
    iget-object v0, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v15}, Lcom/android/launcher3/Workspace;->setPivotToScaleWithSelf(Landroid/view/View;)V

    .line 136
    iget v4, v12, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    .line 137
    .local v4, "hotseatScale":F
    const/4 v0, 0x4

    if-eqz v16, :cond_3

    .line 138
    move-object v1, v9

    check-cast v1, Lcom/android/launcher3/anim/PendingAnimation;

    .line 139
    .local v1, "pa":Lcom/android/launcher3/anim/PendingAnimation;
    iget-object v2, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v3, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->HOTSEAT_SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {v2, v15, v4, v3}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getSpringScaleAnimator(Lcom/android/launcher3/Launcher;Landroid/view/View;FLandroid/util/FloatProperty;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    .line 141
    .end local v1    # "pa":Lcom/android/launcher3/anim/PendingAnimation;
    goto :goto_3

    .line 142
    :cond_3
    invoke-virtual {v10, v0, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 144
    .local v1, "hotseatScaleInterpolator":Landroid/view/animation/Interpolator;
    sget-object v2, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->HOTSEAT_SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {v9, v15, v2, v4, v1}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 148
    .end local v1    # "hotseatScaleInterpolator":Landroid/view/animation/Interpolator;
    :goto_3
    const/4 v1, 0x3

    iget-object v2, v13, Lcom/android/launcher3/LauncherState$PageAlphaProvider;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v1, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 150
    .local v3, "workspaceFadeInterpolator":Landroid/view/animation/Interpolator;
    and-int/lit8 v1, v6, 0x20

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move/from16 v1, v19

    .line 151
    .local v1, "workspacePageIndicatorAlpha":F
    :goto_4
    iget-object v0, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v9, v0, v1, v3}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 153
    const/16 v0, 0x10

    invoke-virtual {v10, v0, v3}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 155
    .local v0, "hotseatFadeInterpolator":Landroid/view/animation/Interpolator;
    and-int/lit8 v21, v6, 0x1

    if-eqz v21, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v2, v19

    .line 156
    .local v2, "hotseatIconsAlpha":F
    :goto_5
    invoke-virtual {v9, v15, v2, v0}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 159
    nop

    .line 160
    move-object/from16 v19, v0

    .end local v0    # "hotseatFadeInterpolator":Landroid/view/animation/Interpolator;
    .local v19, "hotseatFadeInterpolator":Landroid/view/animation/Interpolator;
    sget v0, Lcom/android/launcher3/LauncherState;->FLAG_HOTSEAT_INACCESSIBLE:I

    invoke-virtual {v8, v0}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    const/4 v0, 0x4

    goto :goto_6

    .line 162
    :cond_6
    const/4 v0, 0x0

    .line 159
    :goto_6
    invoke-virtual {v15, v0}, Lcom/android/launcher3/Hotseat;->setImportantForAccessibility(I)V

    .line 164
    const/4 v0, 0x2

    move/from16 v17, v1

    .end local v1    # "workspacePageIndicatorAlpha":F
    .local v17, "workspacePageIndicatorAlpha":F
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ZOOM_OUT:Landroid/view/animation/Interpolator;

    .line 165
    invoke-virtual {v10, v0, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 166
    .local v1, "translationInterpolator":Landroid/view/animation/Interpolator;
    iget-object v0, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    move/from16 v20, v2

    .end local v2    # "hotseatIconsAlpha":F
    .local v20, "hotseatIconsAlpha":F
    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    move-object/from16 v21, v3

    .end local v3    # "workspaceFadeInterpolator":Landroid/view/animation/Interpolator;
    .local v21, "workspaceFadeInterpolator":Landroid/view/animation/Interpolator;
    iget v3, v11, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationX:F

    invoke-virtual {v9, v0, v2, v3, v1}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 168
    iget-object v0, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    iget v3, v11, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationY:F

    invoke-virtual {v9, v0, v2, v3, v1}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 170
    iget-object v0, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v0}, Lcom/android/launcher3/LauncherState;->getWorkspacePageTranslationProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageTranslationProvider;

    move-result-object v22

    .line 172
    .local v22, "pageTranslationProvider":Lcom/android/launcher3/LauncherState$PageTranslationProvider;
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_7
    if-ge v3, v14, :cond_7

    .line 173
    iget-object v0, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    move/from16 v23, v6

    move-object v6, v1

    .end local v1    # "translationInterpolator":Landroid/view/animation/Interpolator;
    .local v6, "translationInterpolator":Landroid/view/animation/Interpolator;
    .local v23, "elements":I
    move-object v1, v2

    move v2, v3

    move/from16 v24, v3

    .end local v3    # "i":I
    .local v24, "i":I
    move-object/from16 v3, v22

    move/from16 v25, v4

    .end local v4    # "hotseatScale":F
    .local v25, "hotseatScale":F
    move-object/from16 v4, p2

    move-object/from16 v26, v5

    .end local v5    # "scaleInterpolator":Landroid/view/animation/Interpolator;
    .local v26, "scaleInterpolator":Landroid/view/animation/Interpolator;
    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->applyPageTranslation(Lcom/android/launcher3/CellLayout;ILcom/android/launcher3/LauncherState$PageTranslationProvider;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 172
    add-int/lit8 v3, v24, 0x1

    move-object v1, v6

    move/from16 v6, v23

    move/from16 v4, v25

    move-object/from16 v5, v26

    .end local v24    # "i":I
    .restart local v3    # "i":I
    goto :goto_7

    .end local v23    # "elements":I
    .end local v25    # "hotseatScale":F
    .end local v26    # "scaleInterpolator":Landroid/view/animation/Interpolator;
    .restart local v1    # "translationInterpolator":Landroid/view/animation/Interpolator;
    .restart local v4    # "hotseatScale":F
    .restart local v5    # "scaleInterpolator":Landroid/view/animation/Interpolator;
    .local v6, "elements":I
    :cond_7
    move/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v23, v6

    move-object v6, v1

    .line 177
    .end local v1    # "translationInterpolator":Landroid/view/animation/Interpolator;
    .end local v3    # "i":I
    .end local v4    # "hotseatScale":F
    .end local v5    # "scaleInterpolator":Landroid/view/animation/Interpolator;
    .local v6, "translationInterpolator":Landroid/view/animation/Interpolator;
    .restart local v23    # "elements":I
    .restart local v25    # "hotseatScale":F
    .restart local v26    # "scaleInterpolator":Landroid/view/animation/Interpolator;
    const/4 v0, 0x5

    invoke-virtual {v10, v0, v6}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 179
    .local v0, "hotseatTranslationInterpolator":Landroid/view/animation/Interpolator;
    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    iget v2, v12, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationY:F

    invoke-virtual {v9, v15, v1, v2, v0}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 181
    iget-object v1, v7, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    iget v3, v12, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationY:F

    invoke-virtual {v9, v1, v2, v3, v0}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 184
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->hasAnimationFlag(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 185
    invoke-virtual {v7, v9, v8, v10}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setScrim(Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 187
    :cond_8
    return-void
.end method


# virtual methods
.method public applyChildState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/CellLayout;I)V
    .locals 8
    .param p1, "state"    # Lcom/android/launcher3/LauncherState;
    .param p2, "cl"    # Lcom/android/launcher3/CellLayout;
    .param p3, "childIndex"    # I

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    new-instance v7, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v7}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->applyChildState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/CellLayout;ILcom/android/launcher3/LauncherState$PageAlphaProvider;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 207
    return-void
.end method

.method public getFinalScale()F
    .locals 1

    .line 101
    iget v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    return v0
.end method

.method public setScrim(Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 6
    .param p1, "propertySetter"    # Lcom/android/launcher3/anim/PropertySetter;
    .param p2, "state"    # Lcom/android/launcher3/LauncherState;
    .param p3, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getWorkspaceDragScrim()Lcom/android/launcher3/graphics/Scrim;

    move-result-object v0

    .line 192
    .local v0, "workspaceDragScrim":Lcom/android/launcher3/graphics/Scrim;
    sget-object v1, Lcom/android/launcher3/graphics/Scrim;->SCRIM_PROGRESS:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 193
    invoke-virtual {p2, v2}, Lcom/android/launcher3/LauncherState;->getWorkspaceBackgroundAlpha(Lcom/android/launcher3/Launcher;)F

    move-result v2

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 192
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 195
    iget-object v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherRootView;->getSysUiScrim()Lcom/android/launcher3/graphics/SysUiScrim;

    move-result-object v1

    .line 196
    .local v1, "sysUiScrim":Lcom/android/launcher3/graphics/SysUiScrim;
    sget-object v2, Lcom/android/launcher3/graphics/SysUiScrim;->SYSUI_PROGRESS:Landroid/util/FloatProperty;

    .line 197
    sget v3, Lcom/android/launcher3/LauncherState;->FLAG_HAS_SYS_UI_SCRIM:I

    invoke-virtual {p2, v3}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 196
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 199
    iget-object v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 200
    invoke-virtual {p2, v3}, Lcom/android/launcher3/LauncherState;->getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I

    move-result v3

    const/16 v4, 0xb

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    .line 201
    invoke-virtual {p3, v4, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 199
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/launcher3/anim/PropertySetter;->setViewBackgroundColor(Landroid/view/View;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 202
    return-void
.end method

.method public setState(Lcom/android/launcher3/LauncherState;)V
    .locals 2
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 89
    sget-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    new-instance v1, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v1}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setWorkspaceProperty(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 90
    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 0
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .param p3, "animation"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 97
    invoke-direct {p0, p1, p3, p2}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setWorkspaceProperty(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 98
    return-void
.end method
