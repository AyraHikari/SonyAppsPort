.class public Lcom/android/launcher3/allapps/DiscoveryBounce;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "DiscoveryBounce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;
    }
.end annotation


# static fields
.field private static final DELAY_MS:J = 0x1c2L


# instance fields
.field private final mDiscoBounceAnimation:Landroid/animation/Animator;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
            "Lcom/android/launcher3/LauncherState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 6
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v1, Lcom/android/launcher3/allapps/DiscoveryBounce$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/DiscoveryBounce$1;-><init>(Lcom/android/launcher3/allapps/DiscoveryBounce;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    .line 59
    iput-object p1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 61
    sget v2, Lcom/android/launcher3/R$animator;->discovery_bounce:I

    .line 62
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mDiscoBounceAnimation:Landroid/animation/Animator;

    .line 63
    new-instance v3, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;

    .line 64
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v4, v5, v0}, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;-><init>(Landroid/view/View;FLcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper-IA;)V

    .line 63
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 65
    new-instance v0, Lcom/android/launcher3/allapps/DiscoveryBounce$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/DiscoveryBounce$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/allapps/DiscoveryBounce;)V

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 66
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 67
    return-void
.end method

.method static synthetic lambda$showForHomeIfNeeded$0(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 135
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/allapps/DiscoveryBounce;->showForHomeIfNeeded(Lcom/android/launcher3/Launcher;Z)V

    return-void
.end method

.method private show()V
    .locals 1

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mIsOpen:Z

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method public static showForHomeIfNeeded(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 121
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/allapps/DiscoveryBounce;->showForHomeIfNeeded(Lcom/android/launcher3/Launcher;Z)V

    .line 122
    return-void
.end method

.method private static showForHomeIfNeeded(Lcom/android/launcher3/Launcher;Z)V
    .locals 5
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "withDelay"    # Z

    .line 125
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object v0

    .line 126
    .local v0, "onboardingPrefs":Lcom/android/launcher3/util/OnboardingPrefs;
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    const-string v1, "launcher.apps_view_shown"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/OnboardingPrefs;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 128
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    if-nez v1, :cond_2

    const-class v1, Landroid/os/UserManager;

    .line 129
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    if-eqz p1, :cond_1

    .line 135
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher3/allapps/DiscoveryBounce$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/DiscoveryBounce$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/Launcher;)V

    const-wide/16 v3, 0x1c2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    return-void

    .line 138
    :cond_1
    const-string v1, "launcher.home_bounce_count"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/OnboardingPrefs;->incrementEventCount(Ljava/lang/String;)Z

    .line 139
    new-instance v1, Lcom/android/launcher3/allapps/DiscoveryBounce;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/DiscoveryBounce;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-direct {v1}, Lcom/android/launcher3/allapps/DiscoveryBounce;->show()V

    .line 140
    return-void

    .line 131
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected handleClose(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 99
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mIsOpen:Z

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 104
    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherState;->getHotseatScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationY:F

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setTranslationY(F)V

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 107
    :cond_0
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 111
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onAttachedToWindow()V

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mDiscoBounceAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 73
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onBackPressed()Z

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/DiscoveryBounce;->handleClose(Z)V

    .line 94
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onDetachedFromWindow()V

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mDiscoBounceAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce;->mDiscoBounceAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 81
    :cond_0
    return-void
.end method
