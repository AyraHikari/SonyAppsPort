.class public Lcom/android/launcher3/allapps/AllAppsTransitionController;
.super Ljava/lang/Object;
.source "AllAppsTransitionController.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;"
    }
.end annotation


# static fields
.field public static final ALL_APPS_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/allapps/AllAppsTransitionController;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL_APPS_PULL_BACK_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/allapps/AllAppsTransitionController;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL_APPS_PULL_BACK_TRANSLATION:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/allapps/AllAppsTransitionController;",
            ">;"
        }
    .end annotation
.end field

.field private static final APPS_VIEW_INDEX_COUNT:I = 0x2

.field private static final INDEX_APPS_VIEW_PROGRESS:I = 0x0

.field private static final INDEX_APPS_VIEW_PULLBACK:I = 0x1

.field public static final INTERP_COEFF:F = 1.7f


# instance fields
.field private mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsViewAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field private final mAppsViewTranslationYPropertyFactory:Lcom/android/launcher3/util/MultiAdditivePropertyFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MultiAdditivePropertyFactory<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTablet:Z

.field private mIsVerticalLayout:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mProgress:F

.field private mScrimView:Lcom/android/launcher3/views/ScrimView;

.field private mShiftRange:F


# direct methods
.method public static synthetic $r8$lambda$_2fCz4QcH9xEPIe-AbNp3djy0wg(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onProgressAnimationEnd()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppsView(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTablet(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsTablet:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgress(Lcom/android/launcher3/allapps/AllAppsTransitionController;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetAppsViewPullbackAlpha(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getAppsViewPullbackAlpha()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAppsViewPullbackTranslationY(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Landroid/util/FloatProperty;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getAppsViewPullbackTranslationY()Landroid/util/FloatProperty;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;

    const-string v1, "allAppsProgress"

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/FloatProperty;

    .line 86
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;

    const-string v1, "allAppsPullBackTranslation"

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_TRANSLATION:Landroid/util/FloatProperty;

    .line 110
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$3;

    const-string v1, "allAppsPullBackAlpha"

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 3
    .param p1, "l"    # Lcom/android/launcher3/Launcher;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const-string v2, "appsViewTranslationY"

    invoke-direct {v0, v2, v1}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;-><init>(Ljava/lang/String;Landroid/util/Property;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewTranslationYPropertyFactory:Lcom/android/launcher3/util/MultiAdditivePropertyFactory;

    .line 160
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 161
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 162
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->allAppsShiftRange:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setShiftRange(F)V

    .line 163
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    .line 164
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsVerticalLayout:Z

    .line 165
    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsTablet:Z

    .line 166
    invoke-virtual {p1, p0}, Lcom/android/launcher3/Launcher;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 167
    return-void
.end method

.method private getAppsViewProgressAlpha()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    return-object v0
.end method

.method private getAppsViewProgressTranslationY()Landroid/util/FloatProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewTranslationYPropertyFactory:Lcom/android/launcher3/util/MultiAdditivePropertyFactory;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->get(Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;

    move-result-object v0

    return-object v0
.end method

.method private getAppsViewPullbackAlpha()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    return-object v0
.end method

.method private getAppsViewPullbackTranslationY()Landroid/util/FloatProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewTranslationYPropertyFactory:Lcom/android/launcher3/util/MultiAdditivePropertyFactory;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->get(Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;

    move-result-object v0

    return-object v0
.end method

.method private onProgressAnimationEnd()V
    .locals 2

    .line 327
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 328
    :cond_0
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(Z)V

    .line 331
    :cond_1
    return-void
.end method


# virtual methods
.method public varargs createSpringAnimation([F)Landroid/animation/Animator;
    .locals 1
    .param p1, "progressValues"    # [F

    .line 272
    sget-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/FloatProperty;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 201
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    return v0
.end method

.method public getProgressAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 295
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    return-object v0
.end method

.method public getShiftRange()F
    .locals 1

    .line 170
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    return v0
.end method

.method synthetic lambda$setStateWithAnimation$0$com-android-launcher3-allapps-AllAppsTransitionController(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .line 242
    sget-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_TRANSLATION:Landroid/util/FloatProperty;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 243
    sget-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_ALPHA:Landroid/util/FloatProperty;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 244
    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 2
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 175
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsVerticalLayout:Z

    .line 176
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->allAppsShiftRange:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setShiftRange(F)V

    .line 178
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsVerticalLayout:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setTranslationY(F)V

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 183
    :cond_0
    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsTablet:Z

    .line 184
    return-void
.end method

.method public setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;)V
    .locals 10
    .param p1, "state"    # Lcom/android/launcher3/LauncherState;
    .param p2, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .param p3, "setter"    # Lcom/android/launcher3/anim/PropertySetter;

    .line 279
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result v0

    .line 280
    .local v0, "visibleElements":I
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 282
    .local v1, "hasAllAppsContent":Z
    :goto_0
    const/16 v4, 0xa

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v4, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 283
    .local v4, "allAppsFade":Landroid/view/animation/Interpolator;
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getAppsViewProgressAlpha()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/util/MultiValueAlpha;->VALUE:Landroid/util/FloatProperty;

    .line 284
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v8

    .line 283
    :goto_1
    invoke-virtual {p3, v5, v6, v9, v4}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 285
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getTabPosition()I

    move-result v5

    if-nez v5, :cond_3

    .line 286
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getMenuButtonView()Landroid/view/View;

    move-result-object v5

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    invoke-virtual {p3, v5, v7, v4}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 289
    :cond_3
    sget-object v5, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-eq v5, p1, :cond_5

    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 290
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v5, v6, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_4

    :cond_5
    :goto_3
    nop

    .line 291
    .local v2, "shouldProtectHeader":Z
    :goto_4
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v3, v5}, Lcom/android/launcher3/views/ScrimView;->setDrawingController(Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;)V

    .line 292
    return-void
.end method

.method public setProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    .line 195
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    .line 196
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getAppsViewProgressTranslationY()Landroid/util/FloatProperty;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    iget v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->onAllAppsTransition(F)V

    .line 198
    return-void
.end method

.method public setShiftRange(F)V
    .locals 0
    .param p1, "shiftRange"    # F

    .line 319
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    .line 320
    return-void
.end method

.method public setState(Lcom/android/launcher3/LauncherState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/launcher3/LauncherState;

    .line 226
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    .line 227
    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    sget-object v1, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;)V

    .line 228
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onProgressAnimationEnd()V

    .line 229
    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 6
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .param p3, "builder"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 238
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/UiThreadHelper;->hideKeyboardAsync(Lcom/android/launcher3/views/ActivityContext;Landroid/os/IBinder;)V

    .line 240
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v0

    .line 248
    .local v0, "targetProgress":F
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    .line 249
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;)V

    .line 251
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onProgressAnimationEnd()V

    .line 252
    return-void

    .line 256
    :cond_1
    nop

    .line 257
    iget-boolean v1, p2, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_7:Landroid/view/animation/Interpolator;

    .line 256
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 258
    .local v1, "verticalProgressInterpolator":Landroid/view/animation/Interpolator;
    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    aput v4, v3, v2

    const/4 v2, 0x1

    aput v0, v3, v2

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->createSpringAnimation([F)Landroid/animation/Animator;

    move-result-object v3

    .line 259
    .local v3, "anim":Landroid/animation/Animator;
    invoke-virtual {v3, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getProgressAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 261
    invoke-virtual {p3, v3}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    .line 263
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;)V

    .line 265
    sget-object v4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 266
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v4

    invoke-virtual {v4, v2, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->performHapticFeedback(II)Z

    .line 269
    :cond_3
    return-void
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 0

    .line 67
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method public setupViews(Lcom/android/launcher3/views/ScrimView;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 3
    .param p1, "scrimView"    # Lcom/android/launcher3/views/ScrimView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/views/ScrimView;",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/Launcher;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p2, "appsView":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<Lcom/android/launcher3/Launcher;>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    .line 303
    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    .line 304
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x500

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setScrimView(Lcom/android/launcher3/views/ScrimView;)V

    .line 310
    new-instance v0, Lcom/android/launcher3/util/MultiValueAlpha;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    .line 311
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ScrimView;->setLauncher(Lcom/android/launcher3/Launcher;)V

    .line 313
    return-void
.end method
