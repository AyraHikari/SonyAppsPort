.class public Lcom/android/launcher3/LauncherInitListener;
.super Lcom/android/quickstep/util/ActivityInitListener;
.source "LauncherInitListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/util/ActivityInitListener<",
        "Lcom/android/launcher3/Launcher;",
        ">;"
    }
.end annotation


# instance fields
.field private mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;


# direct methods
.method static bridge synthetic -$$Nest$fgetmRemoteAnimationProvider(Lcom/android/launcher3/LauncherInitListener;)Lcom/android/quickstep/util/RemoteAnimationProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherInitListener;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRemoteAnimationProvider(Lcom/android/launcher3/LauncherInitListener;Lcom/android/quickstep/util/RemoteAnimationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/LauncherInitListener;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/BiPredicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Lcom/android/launcher3/Launcher;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "onInitListener":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Lcom/android/launcher3/Launcher;Ljava/lang/Boolean;>;"
    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/util/ActivityInitListener;-><init>(Ljava/util/function/BiPredicate;Lcom/android/launcher3/util/ActivityTracker;)V

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic handleInit(Lcom/android/launcher3/BaseActivity;Z)Z
    .locals 0

    .line 29
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherInitListener;->handleInit(Lcom/android/launcher3/Launcher;Z)Z

    move-result p1

    return p1
.end method

.method public handleInit(Lcom/android/launcher3/Launcher;Z)Z
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "alreadyOnHome"    # Z

    .line 45
    iget-object v0, p0, Lcom/android/launcher3/LauncherInitListener;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    if-eqz v0, :cond_0

    .line 46
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 47
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v0

    .line 51
    .local v0, "appTransitionManager":Lcom/android/launcher3/QuickstepTransitionManager;
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    .line 52
    .local v1, "cancellationSignal":Landroid/os/CancellationSignal;
    new-instance v2, Lcom/android/launcher3/LauncherInitListener$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/launcher3/LauncherInitListener$1;-><init>(Lcom/android/launcher3/LauncherInitListener;Landroid/os/CancellationSignal;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/QuickstepTransitionManager;->setRemoteAnimationProvider(Lcom/android/quickstep/util/RemoteAnimationProvider;Landroid/os/CancellationSignal;)V

    .line 69
    .end local v0    # "appTransitionManager":Lcom/android/launcher3/QuickstepTransitionManager;
    .end local v1    # "cancellationSignal":Landroid/os/CancellationSignal;
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->deferOverlayCallbacksUntilNextResumeOrStop()V

    .line 70
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/util/ActivityInitListener;->handleInit(Lcom/android/launcher3/BaseActivity;Z)Z

    move-result v0

    return v0
.end method

.method public unregister()V
    .locals 1

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherInitListener;->mRemoteAnimationProvider:Lcom/android/quickstep/util/RemoteAnimationProvider;

    .line 76
    invoke-super {p0}, Lcom/android/quickstep/util/ActivityInitListener;->unregister()V

    .line 77
    return-void
.end method
