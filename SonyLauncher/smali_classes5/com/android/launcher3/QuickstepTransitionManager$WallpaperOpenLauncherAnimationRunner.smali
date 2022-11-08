.class public Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;
.super Ljava/lang/Object;
.source "QuickstepTransitionManager.java"

# interfaces
.implements Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/QuickstepTransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WallpaperOpenLauncherAnimationRunner"
.end annotation


# instance fields
.field private final mFromUnlock:Z

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/os/Handler;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/QuickstepTransitionManager;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "fromUnlock"    # Z

    .line 1683
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1684
    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    .line 1685
    iput-boolean p3, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->mFromUnlock:Z

    .line 1686
    return-void
.end method


# virtual methods
.method public onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 7
    .param p1, "transit"    # I
    .param p2, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "wallpaperTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "nonAppTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p5, "result"    # Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    .line 1694
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1695
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1696
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v1, p2}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$mgetFallbackClosingWindowAnimators(Lcom/android/launcher3/QuickstepTransitionManager;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1697
    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V

    .line 1698
    return-void

    .line 1701
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->hasSomeInvisibleFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1702
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->addForceInvisibleFlag(I)V

    .line 1703
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    .line 1706
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-boolean v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->mFromUnlock:Z

    new-instance v5, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmDeviceProfile(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v2}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmDeviceProfile(Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v5, v3, v3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 1709
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v6

    .line 1706
    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/QuickstepTransitionManager;->createWallpaperOpenAnimations([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLandroid/graphics/RectF;F)Landroid/util/Pair;

    move-result-object v0

    .line 1711
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/quickstep/util/RectFSpringAnim;Landroid/animation/AnimatorSet;>;"
    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BaseQuickstepLauncher;->clearForceInvisibleFlag(I)V

    .line 1712
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v2, v2, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p5, v1, v2}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V

    .line 1713
    return-void
.end method
