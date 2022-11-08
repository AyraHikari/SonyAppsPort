.class public Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;
.super Ljava/lang/Object;
.source "TaskbarForceVisibleImmersiveController.java"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;


# static fields
.field private static final NAV_BAR_ICONS_DIM_ANIMATION_DURATION_MS:I = 0x1f4

.field private static final NAV_BAR_ICONS_DIM_ANIMATION_START_DELAY_MS:I = 0x1194

.field private static final NAV_BAR_ICONS_DIM_PCT:F = 0.15f

.field private static final NAV_BAR_ICONS_UNDIM_ANIMATION_DURATION_MS:I = 0xfa

.field private static final NAV_BAR_ICONS_UNDIM_PCT:F = 1.0f


# instance fields
.field private final mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mDimmingRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mIconAlphaForDimming:Lcom/android/quickstep/AnimatedFloat;

.field private final mImmersiveModeAlphaUpdater:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/util/MultiValueAlpha;",
            ">;"
        }
    .end annotation
.end field

.field private mIsImmersiveMode:Z

.field private final mUndimmingRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$9RRtPqnu6qxnqd_uoBxdN1N23i0(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->undimIcons()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ez4W9EjUD9WHQolmjBvZEqWaVIc(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->dimIcons()V

    return-void
.end method

.method public static synthetic $r8$lambda$jxlEf-vXFYj4_M3ZVEuQwhRB99o(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->updateIconDimmingAlpha()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 2
    .param p1, "context"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mDimmingRunnable:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mUndimmingRunnable:Ljava/lang/Runnable;

    .line 51
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mIconAlphaForDimming:Lcom/android/quickstep/AnimatedFloat;

    .line 53
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mImmersiveModeAlphaUpdater:Ljava/util/function/Consumer;

    .line 61
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 62
    return-void
.end method

.method private dimIcons()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mIconAlphaForDimming:Lcom/android/quickstep/AnimatedFloat;

    const v1, 0x3e19999a    # 0.15f

    invoke-virtual {v0, v1}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 110
    return-void
.end method

.method private getBackButtonAlphaOptional()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/util/MultiValueAlpha;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getBackButtonAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 126
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getHomeButtonAlphaOptional()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/util/MultiValueAlpha;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getHomeButtonAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 133
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private isNavbarShownInImmersiveMode()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mIsImmersiveMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarForceVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startIconDimming()V
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mDimmingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/16 v1, 0x1194

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->getRecommendedTimeoutMillis(Landroid/content/Context;II)I

    move-result v0

    .line 104
    .local v0, "accessibilityDimmingTimeout":I
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mDimmingRunnable:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    return-void
.end method

.method private startIconUndimming()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mDimmingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mUndimmingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mUndimmingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    return-void
.end method

.method private undimIcons()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mIconAlphaForDimming:Lcom/android/quickstep/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 97
    return-void
.end method

.method private updateIconDimmingAlpha()V
    .locals 2

    .line 120
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->getBackButtonAlphaOptional()Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mImmersiveModeAlphaUpdater:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 121
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->getHomeButtonAlphaOptional()Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mImmersiveModeAlphaUpdater:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 122
    return-void
.end method


# virtual methods
.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0
    .param p1, "controllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 68
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 69
    return-void
.end method

.method synthetic lambda$new$0$com-android-launcher3-taskbar-TaskbarForceVisibleImmersiveController(Lcom/android/launcher3/util/MultiValueAlpha;)V
    .locals 2
    .param p1, "alpha"    # Lcom/android/launcher3/util/MultiValueAlpha;

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mIconAlphaForDimming:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 54
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    .line 53
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 140
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->isNavbarShownInImmersiveMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    .line 141
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsManualStashing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 142
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 155
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->startIconDimming()V

    goto :goto_0

    .line 151
    :pswitch_2
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->startIconUndimming()V

    .line 152
    nop

    .line 158
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->startIconUndimming()V

    .line 86
    return-void
.end method

.method public updateSysuiFlags(I)V
    .locals 1
    .param p1, "sysuiFlags"    # I

    .line 73
    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mIsImmersiveMode:Z

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarForceVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mIsImmersiveMode:Z

    if-eqz v0, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->startIconDimming()V

    goto :goto_1

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->startIconUndimming()V

    .line 81
    :cond_2
    :goto_1
    return-void
.end method
