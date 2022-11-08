.class public Lcom/android/launcher3/taskbar/TaskbarScrimViewController;
.super Ljava/lang/Object;
.source "TaskbarScrimViewController.java"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# static fields
.field private static final SCRIM_ALPHA:F = 0.6f

.field private static final SCRIM_ALPHA_IN:Landroid/view/animation/Interpolator;

.field private static final SCRIM_ALPHA_OUT:Landroid/view/animation/Interpolator;


# instance fields
.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mScrimAlpha:Lcom/android/quickstep/AnimatedFloat;

.field private final mScrimView:Lcom/android/launcher3/taskbar/TaskbarScrimView;


# direct methods
.method public static synthetic $r8$lambda$4ouiatwyV8PV98MVHVJB-ROWZ8E(Lcom/android/launcher3/taskbar/TaskbarScrimViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->updateScrimAlpha()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->SCRIM_ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 38
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->SCRIM_ALPHA_OUT:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarScrimView;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .param p2, "scrimView"    # Lcom/android/launcher3/taskbar/TaskbarScrimView;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarScrimViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/TaskbarScrimViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimAlpha:Lcom/android/quickstep/AnimatedFloat;

    .line 50
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 51
    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimView:Lcom/android/launcher3/taskbar/TaskbarScrimView;

    .line 52
    return-void
.end method

.method private onClick()V
    .locals 2

    .line 94
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->onBackPressed()V

    .line 95
    return-void
.end method

.method private showScrim(ZFZ)V
    .locals 2
    .param p1, "showScrim"    # Z
    .param p2, "alpha"    # F
    .param p3, "skipAnim"    # Z

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimView:Lcom/android/launcher3/taskbar/TaskbarScrimView;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarScrimViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarScrimViewController;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarScrimView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimView:Lcom/android/launcher3/taskbar/TaskbarScrimView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarScrimView;->setClickable(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimAlpha:Lcom/android/quickstep/AnimatedFloat;

    if-eqz p1, :cond_1

    move v1, p2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 82
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->SCRIM_ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->SCRIM_ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 84
    if-eqz p3, :cond_3

    .line 85
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 87
    :cond_3
    return-void
.end method

.method private updateScrimAlpha()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimView:Lcom/android/launcher3/taskbar/TaskbarScrimView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimAlpha:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarScrimView;->setScrimAlpha(F)V

    .line 91
    return-void
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TaskbarScrimViewController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimAlpha:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s\tmScrimAlpha.value=%.2f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0
    .param p1, "controllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 58
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 59
    return-void
.end method

.method synthetic lambda$showScrim$0$com-android-launcher3-taskbar-TaskbarScrimViewController(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 79
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->onClick()V

    return-void
.end method

.method public updateStateForSysuiFlags(IZ)V
    .locals 5
    .param p1, "stateFlags"    # I
    .param p2, "skipAnim"    # Z

    .line 65
    and-int/lit16 v0, p1, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 66
    .local v0, "bubblesExpanded":Z
    :goto_0
    const/high16 v3, 0x800000

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 68
    .local v3, "manageMenuExpanded":Z
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v4, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isImeVisible()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v4, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    .line 69
    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInAppAndNotStashed()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 70
    .local v1, "showScrim":Z
    :goto_2
    if-eqz v3, :cond_3

    .line 73
    const v2, 0x3f570a3e    # 0.84000003f

    goto :goto_3

    .line 74
    :cond_3
    if-eqz v1, :cond_4

    const v2, 0x3f19999a    # 0.6f

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    nop

    .line 75
    .local v2, "scrimAlpha":F
    invoke-direct {p0, v1, v2, p2}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->showScrim(ZFZ)V

    .line 76
    return-void
.end method
