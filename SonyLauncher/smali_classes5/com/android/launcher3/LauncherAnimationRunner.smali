.class public Lcom/android/launcher3/LauncherAnimationRunner;
.super Ljava/lang/Object;
.source "LauncherAnimationRunner.java"

# interfaces
.implements Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;,
        Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# instance fields
.field private mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

.field private final mFactory:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mStartAtFrontOfQueue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherAnimationRunner;->DEFAULT_FACTORY:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "factory"    # Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;
    .param p3, "startAtFrontOfQueue"    # Z

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mFactory:Ljava/lang/ref/WeakReference;

    .line 78
    iput-boolean p3, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mStartAtFrontOfQueue:Z

    .line 79
    return-void
.end method

.method private finishExistingAnimation()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    if-eqz v0, :cond_0

    .line 126
    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->-$$Nest$mfinish(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    .line 129
    :cond_0
    return-void
.end method

.method private getFactory()Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mFactory:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    .line 120
    .local v0, "factory":Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/launcher3/LauncherAnimationRunner;->DEFAULT_FACTORY:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    :goto_0
    return-object v1
.end method

.method static synthetic lambda$static$0(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 1
    .param p0, "transit"    # I
    .param p1, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "nonAppTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "result"    # Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p4, v0, v0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAnimationCancelled$3$com-android-launcher3-LauncherAnimationRunner()V
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->finishExistingAnimation()V

    .line 139
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->getFactory()Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->onAnimationCancelled()V

    .line 140
    return-void
.end method

.method synthetic lambda$onAnimationStart$1$com-android-launcher3-LauncherAnimationRunner()V
    .locals 1

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    return-void
.end method

.method synthetic lambda$onAnimationStart$2$com-android-launcher3-LauncherAnimationRunner(Ljava/lang/Runnable;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 9
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "transit"    # I
    .param p3, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p5, "nonAppTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 90
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->finishExistingAnimation()V

    .line 91
    new-instance v0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    new-instance v1, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/LauncherAnimationRunner;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult-IA;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    .line 92
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->getFactory()Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object v3

    iget-object v8, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    .line 94
    return-void
.end method

.method public onAnimationCancelled()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/LauncherAnimationRunner;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method public onAnimationStart(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "transit"    # I
    .param p2, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "nonAppTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p5, "runnable"    # Ljava/lang/Runnable;

    .line 89
    new-instance v7, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/LauncherAnimationRunner$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/LauncherAnimationRunner;Ljava/lang/Runnable;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 95
    .local v0, "r":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mStartAtFrontOfQueue:Z

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->postAtFrontOfQueueAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 100
    :goto_0
    return-void
.end method

.method public onAnimationStart([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/LauncherAnimationRunner;->onAnimationStart([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public onAnimationStart([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .line 106
    const/4 v0, 0x0

    new-array v5, v0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/LauncherAnimationRunner;->onAnimationStart(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method
