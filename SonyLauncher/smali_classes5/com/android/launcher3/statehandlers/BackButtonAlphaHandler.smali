.class public Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;
.super Ljava/lang/Object;
.source "BackButtonAlphaHandler.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBackAlpha:Lcom/android/quickstep/AnimatedFloat;

.field private final mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;


# direct methods
.method public static synthetic $r8$lambda$mrdHyxBR9D2GejP0Z1FCHuzG_k0(Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;->updateBackAlpha()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;->mBackAlpha:Lcom/android/quickstep/AnimatedFloat;

    .line 42
    iput-object p1, p0, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 43
    return-void
.end method

.method private updateBackAlpha()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/BaseQuickstepLauncher;->SET_BACK_BUTTON_ALPHA:Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;

    iget-object v2, p0, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;->mBackAlpha:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/util/UiThreadHelper;->setBackButtonAlphaAsync(Landroid/content/Context;Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;FZ)V

    .line 63
    return-void
.end method


# virtual methods
.method public setState(Lcom/android/launcher3/LauncherState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/launcher3/LauncherState;

    .line 46
    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 4
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .param p3, "animation"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 51
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->TWO_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq v0, v1, :cond_0

    .line 52
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;->mBackAlpha:Lcom/android/quickstep/AnimatedFloat;

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1}, Lcom/android/quickstep/SystemUiProxy;->getLastNavButtonAlpha()F

    move-result v1

    iput v1, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 56
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;->mBackAlpha:Lcom/android/quickstep/AnimatedFloat;

    sget-object v1, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    .line 57
    iget-object v2, p0, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->shouldBackButtonBeHidden(Lcom/android/launcher3/LauncherState;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 56
    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 58
    return-void
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/statehandlers/BackButtonAlphaHandler;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method
