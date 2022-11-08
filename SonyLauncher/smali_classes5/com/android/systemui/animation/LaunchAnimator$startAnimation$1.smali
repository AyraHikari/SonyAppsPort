.class public final Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/LaunchAnimator;->startAnimation(Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;IZ)Lcom/android/systemui/animation/LaunchAnimator$Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u001a\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/android/systemui/animation/LaunchAnimator$startAnimation$1",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationStart",
        "isReverse",
        "",
        "frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

.field final synthetic $isExpandingFullyAbove:Z

.field final synthetic $launchContainerOverlay:Landroid/view/ViewGroupOverlay;

.field final synthetic $moveBackgroundLayerWhenAppIsVisible:Z

.field final synthetic $openingWindowSyncViewOverlay:Landroid/view/ViewOverlay;

.field final synthetic $windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/animation/LaunchAnimator$Controller;ZLandroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;ZLandroid/view/ViewOverlay;)V
    .locals 0
    .param p1, "$controller"    # Lcom/android/systemui/animation/LaunchAnimator$Controller;
    .param p2, "$isExpandingFullyAbove"    # Z
    .param p3, "$launchContainerOverlay"    # Landroid/view/ViewGroupOverlay;
    .param p4, "$windowBackgroundLayer"    # Landroid/graphics/drawable/GradientDrawable;
    .param p5, "$moveBackgroundLayerWhenAppIsVisible"    # Z
    .param p6, "$openingWindowSyncViewOverlay"    # Landroid/view/ViewOverlay;

    iput-object p1, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    iput-boolean p2, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$isExpandingFullyAbove:Z

    iput-object p3, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$launchContainerOverlay:Landroid/view/ViewGroupOverlay;

    iput-object p4, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    iput-boolean p5, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$moveBackgroundLayerWhenAppIsVisible:Z

    iput-object p6, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$openingWindowSyncViewOverlay:Landroid/view/ViewOverlay;

    .line 280
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 294
    nop

    .line 297
    iget-object v0, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    iget-boolean v1, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$isExpandingFullyAbove:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationEnd(Z)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$launchContainerOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-boolean v0, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$moveBackgroundLayerWhenAppIsVisible:Z

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$openingWindowSyncViewOverlay:Landroid/view/ViewOverlay;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 303
    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "isReverse"    # Z

    .line 282
    nop

    .line 285
    iget-object v0, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    iget-boolean v1, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$isExpandingFullyAbove:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationStart(Z)V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$launchContainerOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 291
    return-void
.end method
