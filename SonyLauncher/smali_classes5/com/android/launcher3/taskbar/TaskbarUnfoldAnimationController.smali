.class public Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;
.super Ljava/lang/Object;
.source "TaskbarUnfoldAnimationController.java"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;
    }
.end annotation


# instance fields
.field private final mMoveFromCenterAnimator:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

.field private final mNaturalUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

.field private final mScopedUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

.field private mTaskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

.field private final mTransitionListener:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMoveFromCenterAnimator(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mMoveFromCenterAnimator:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskbarViewController(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)Lcom/android/launcher3/taskbar/TaskbarViewController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTaskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;Landroid/view/WindowManager;Landroid/view/IWindowManager;)V
    .locals 2
    .param p1, "context"    # Lcom/android/launcher3/taskbar/BaseTaskbarContext;
    .param p2, "source"    # Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;
    .param p3, "windowManager"    # Landroid/view/WindowManager;
    .param p4, "iWindowManager"    # Landroid/view/IWindowManager;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;-><init>(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener-IA;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTransitionListener:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;

    .line 45
    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mScopedUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    .line 46
    new-instance v0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    invoke-direct {v0, p1, p4, p2}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mNaturalUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    .line 48
    new-instance v0, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    new-instance v1, Lcom/android/quickstep/util/LauncherViewsMoveFromCenterTranslationApplier;

    invoke-direct {v1}, Lcom/android/quickstep/util/LauncherViewsMoveFromCenterTranslationApplier;-><init>()V

    invoke-direct {v0, p3, v1}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;-><init>(Landroid/view/WindowManager;Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$TranslationApplier;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mMoveFromCenterAnimator:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    .line 50
    return-void
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TaskbarUnfoldAnimationController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 2
    .param p1, "taskbarControllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mNaturalUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    invoke-virtual {v0}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->init()V

    .line 58
    iget-object v0, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTaskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    .line 59
    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->addOneTimePreDrawListener(Ljava/lang/Runnable;)V

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mNaturalUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTransitionListener:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->addCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    .line 62
    return-void
.end method

.method synthetic lambda$init$0$com-android-launcher3-taskbar-TaskbarUnfoldAnimationController()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mScopedUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->setReadyToHandleTransition(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mScopedUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->setReadyToHandleTransition(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mNaturalUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTransitionListener:Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController$TransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->removeCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mNaturalUnfoldTransitionProgressProvider:Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    invoke-virtual {v0}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;->destroy()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUnfoldAnimationController;->mTaskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    .line 72
    return-void
.end method
