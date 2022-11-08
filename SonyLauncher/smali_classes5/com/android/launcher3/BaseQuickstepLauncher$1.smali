.class Lcom/android/launcher3/BaseQuickstepLauncher$1;
.super Lcom/android/quickstep/util/RemoteAnimationProvider;
.source "BaseQuickstepLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/BaseQuickstepLauncher;->useFadeOutAnimationForLauncherStart(Landroid/os/CancellationSignal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/BaseQuickstepLauncher;

.field final synthetic val$signal:Landroid/os/CancellationSignal;


# direct methods
.method constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;Landroid/os/CancellationSignal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 431
    iput-object p1, p0, Lcom/android/launcher3/BaseQuickstepLauncher$1;->this$0:Lcom/android/launcher3/BaseQuickstepLauncher;

    iput-object p2, p0, Lcom/android/launcher3/BaseQuickstepLauncher$1;->val$signal:Landroid/os/CancellationSignal;

    invoke-direct {p0}, Lcom/android/quickstep/util/RemoteAnimationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 2
    .param p1, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 437
    iget-object v0, p0, Lcom/android/launcher3/BaseQuickstepLauncher$1;->val$signal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 439
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 440
    .local v0, "fadeAnimation":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/quickstep/util/RemoteFadeOutAnimationListener;

    invoke-direct {v1, p1, p2}, Lcom/android/quickstep/util/RemoteFadeOutAnimationListener;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 442
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 443
    .local v1, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 444
    return-object v1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
