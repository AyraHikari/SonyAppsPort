.class public final Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;
.super Ljava/lang/Object;
.source "DialogLaunchAnimator.kt"

# interfaces
.implements Lcom/android/systemui/animation/LaunchAnimator$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/AnimatedDialog;->startAnimation(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0010\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R$\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00038V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "com/android/systemui/animation/AnimatedDialog$startAnimation$controller$1",
        "Lcom/android/systemui/animation/LaunchAnimator$Controller;",
        "value",
        "Landroid/view/ViewGroup;",
        "launchContainer",
        "getLaunchContainer",
        "()Landroid/view/ViewGroup;",
        "setLaunchContainer",
        "(Landroid/view/ViewGroup;)V",
        "createAnimatorState",
        "Lcom/android/systemui/animation/LaunchAnimator$State;",
        "onLaunchAnimationEnd",
        "",
        "isExpandingFullyAbove",
        "",
        "onLaunchAnimationProgress",
        "state",
        "progress",
        "",
        "linearProgress",
        "onLaunchAnimationStart",
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
.field final synthetic $endState:Lcom/android/systemui/animation/LaunchAnimator$State;

.field final synthetic $endViewController:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

.field final synthetic $onLaunchAnimationEnd:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onLaunchAnimationStart:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $startViewController:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;


# direct methods
.method constructor <init>(Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/animation/LaunchAnimator$State;)V
    .locals 0
    .param p1, "$startViewController"    # Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;
    .param p2, "$endViewController"    # Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;
    .param p3, "$onLaunchAnimationStart"    # Lkotlin/jvm/functions/Function0;
    .param p4, "$onLaunchAnimationEnd"    # Lkotlin/jvm/functions/Function0;
    .param p5, "$endState"    # Lcom/android/systemui/animation/LaunchAnimator$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;",
            "Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/android/systemui/animation/LaunchAnimator$State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$startViewController:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    iput-object p2, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$endViewController:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    iput-object p3, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$onLaunchAnimationStart:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$onLaunchAnimationEnd:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$endState:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$startViewController:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    invoke-virtual {v0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$startViewController:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    invoke-virtual {v0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public onLaunchAnimationEnd(Z)V
    .locals 1
    .param p1, "isExpandingFullyAbove"    # Z

    .line 736
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$startViewController:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->onLaunchAnimationEnd(Z)V

    .line 737
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$endViewController:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->onLaunchAnimationEnd(Z)V

    .line 739
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$onLaunchAnimationEnd:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 740
    return-void
.end method

.method public onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/animation/LaunchAnimator$State;
    .param p2, "progress"    # F
    .param p3, "linearProgress"    # F

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$startViewController:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V

    .line 750
    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/animation/LaunchAnimator$State;->setVisible(Z)V

    .line 751
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$endViewController:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V

    .line 759
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$endViewController:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$endState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->fillGhostedViewState(Lcom/android/systemui/animation/LaunchAnimator$State;)V

    .line 760
    return-void
.end method

.method public onLaunchAnimationStart(Z)V
    .locals 1
    .param p1, "isExpandingFullyAbove"    # Z

    .line 729
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$onLaunchAnimationStart:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 731
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$startViewController:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->onLaunchAnimationStart(Z)V

    .line 732
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$endViewController:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->onLaunchAnimationStart(Z)V

    .line 733
    return-void
.end method

.method public setLaunchContainer(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "value"    # Landroid/view/ViewGroup;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$startViewController:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->setLaunchContainer(Landroid/view/ViewGroup;)V

    .line 718
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;->$endViewController:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->setLaunchContainer(Landroid/view/ViewGroup;)V

    .line 719
    return-void
.end method
