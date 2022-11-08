.class Lcom/android/quickstep/LauncherActivityInterface$1;
.super Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;
.source "LauncherActivityInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/LauncherActivityInterface;->prepareRecentsUI(Lcom/android/quickstep/RecentsAnimationDeviceState;ZLjava/util/function/Consumer;)Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/BaseActivityInterface<",
        "Lcom/android/launcher3/LauncherState;",
        "Lcom/android/launcher3/BaseQuickstepLauncher;",
        ">.DefaultAnimationFactory;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/LauncherActivityInterface;


# direct methods
.method constructor <init>(Lcom/android/quickstep/LauncherActivityInterface;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/LauncherActivityInterface;

    .line 123
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/quickstep/util/AnimatorControllerWithResistance;>;"
    iput-object p1, p0, Lcom/android/quickstep/LauncherActivityInterface$1;->this$0:Lcom/android/quickstep/LauncherActivityInterface;

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;-><init>(Lcom/android/quickstep/BaseActivityInterface;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method protected createBackgroundToOverviewAnim(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 8
    .param p1, "activity"    # Lcom/android/launcher3/BaseQuickstepLauncher;
    .param p2, "pa"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 127
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->createBackgroundToOverviewAnim(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 130
    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v0

    .line 131
    .local v0, "fromDepthRatio":F
    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v7

    .line 132
    .local v7, "toDepthRatio":F
    iget-object v1, p0, Lcom/android/quickstep/LauncherActivityInterface$1;->this$0:Lcom/android/quickstep/LauncherActivityInterface;

    invoke-virtual {v1}, Lcom/android/quickstep/LauncherActivityInterface;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/statehandlers/DepthController$ClampedDepthProperty;

    invoke-direct {v3, v0, v7}, Lcom/android/launcher3/statehandlers/DepthController$ClampedDepthProperty;-><init>(FF)V

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v1, p2

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    .line 135
    return-void
.end method

.method protected bridge synthetic createBackgroundToOverviewAnim(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 0

    .line 123
    check-cast p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/LauncherActivityInterface$1;->createBackgroundToOverviewAnim(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method
