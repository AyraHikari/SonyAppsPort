.class final Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationCancelled$1;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->onAnimationCancelled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;


# direct methods
.method constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationCancelled$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationCancelled$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    invoke-static {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$getAnimation$p(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)Lcom/android/systemui/animation/LaunchAnimator$Animation;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/animation/LaunchAnimator$Animation;->cancel()V

    .line 609
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationCancelled$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    invoke-static {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$getController$p(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled()V

    .line 610
    return-void
.end method
