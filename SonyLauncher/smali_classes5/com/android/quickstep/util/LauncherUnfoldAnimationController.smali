.class public Lcom/android/quickstep/util/LauncherUnfoldAnimationController;
.super Ljava/lang/Object;
.source "LauncherUnfoldAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;,
        Lcom/android/quickstep/util/LauncherUnfoldAnimationController$QsbAnimationListener;
    }
.end annotation


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

.field private static final MAX_WIDTH_INSET_FRACTION:F = 0.15f

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

.field private final mNaturalOrientationProgressProvider:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

.field private final mProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

.field private mQsbInsettable:Lcom/android/launcher3/util/HorizontalInsettableView;

.field private final mUnfoldMoveFromCenterHotseatAnimator:Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;

.field private final mUnfoldMoveFromCenterWorkspaceAnimator:Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLauncher(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)Lcom/android/launcher3/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQsbInsettable(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)Lcom/android/launcher3/util/HorizontalInsettableView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mQsbInsettable:Lcom/android/launcher3/util/HorizontalInsettableView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetHOTSEAT_SCALE_PROPERTY()Landroid/util/FloatProperty;
    .locals 1

    sget-object v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->HOTSEAT_SCALE_PROPERTY:Landroid/util/FloatProperty;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetWORKSPACE_SCALE_PROPERTY()Landroid/util/FloatProperty;
    .locals 1

    sget-object v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->WORKSPACE_SCALE_PROPERTY:Landroid/util/FloatProperty;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 48
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->WORKSPACE_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    .line 49
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->get(Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->WORKSPACE_SCALE_PROPERTY:Landroid/util/FloatProperty;

    .line 50
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->HOTSEAT_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    .line 51
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->get(Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->HOTSEAT_SCALE_PROPERTY:Landroid/util/FloatProperty;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/WindowManager;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V
    .locals 5
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "windowManager"    # Landroid/view/WindowManager;
    .param p3, "unfoldTransitionProgressProvider"    # Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 67
    new-instance v0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-direct {v0, p3}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    iput-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    .line 69
    new-instance v1, Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;

    invoke-direct {v1, p1, p2}, Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/WindowManager;)V

    iput-object v1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mUnfoldMoveFromCenterHotseatAnimator:Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;

    .line 71
    new-instance v2, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;

    invoke-direct {v2, p1, p2}, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/WindowManager;)V

    iput-object v2, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mUnfoldMoveFromCenterWorkspaceAnimator:Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;

    .line 73
    new-instance v3, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    .line 74
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    invoke-direct {v3, p1, v4, v0}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    iput-object v3, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mNaturalOrientationProgressProvider:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    .line 75
    invoke-virtual {v3}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->init()V

    .line 78
    invoke-virtual {v0, v2}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->addCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    .line 79
    new-instance v2, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener;-><init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;Lcom/android/quickstep/util/LauncherUnfoldAnimationController$LauncherScaleAnimationListener-IA;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->addCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    .line 82
    new-instance v0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$QsbAnimationListener;

    invoke-direct {v0, p0, v4}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$QsbAnimationListener;-><init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;Lcom/android/quickstep/util/LauncherUnfoldAnimationController$QsbAnimationListener-IA;)V

    invoke-virtual {v3, v0}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->addCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    .line 83
    invoke-virtual {v3, v1}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->addCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    .line 84
    return-void
.end method


# virtual methods
.method synthetic lambda$onResume$0$com-android-quickstep-util-LauncherUnfoldAnimationController()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->setReadyToHandleTransition(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    invoke-virtual {v0}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->destroy()V

    .line 112
    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mNaturalOrientationProgressProvider:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    invoke-virtual {v0}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->destroy()V

    .line 113
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->setReadyToHandleTransition(Z)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mQsbInsettable:Lcom/android/launcher3/util/HorizontalInsettableView;

    .line 105
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    .line 91
    .local v0, "hotseat":Lcom/android/launcher3/Hotseat;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getQsb()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/util/HorizontalInsettableView;

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getQsb()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/HorizontalInsettableView;

    iput-object v1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mQsbInsettable:Lcom/android/launcher3/util/HorizontalInsettableView;

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    new-instance v2, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/quickstep/util/LauncherUnfoldAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/LauncherUnfoldAnimationController;)V

    invoke-static {v1, v2}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 97
    return-void
.end method

.method public updateRegisteredViewsIfNeeded()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mUnfoldMoveFromCenterHotseatAnimator:Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;

    invoke-virtual {v0}, Lcom/android/quickstep/util/UnfoldMoveFromCenterHotseatAnimator;->updateRegisteredViewsIfNeeded()V

    .line 118
    iget-object v0, p0, Lcom/android/quickstep/util/LauncherUnfoldAnimationController;->mUnfoldMoveFromCenterWorkspaceAnimator:Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;

    invoke-virtual {v0}, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;->updateRegisteredViewsIfNeeded()V

    .line 119
    return-void
.end method
