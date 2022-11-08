.class public interface abstract Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0017J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0017J\u0008\u0010\u0007\u001a\u00020\u0003H\u0017\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0008\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;",
        "",
        "onLaunchAnimationEnd",
        "",
        "onLaunchAnimationProgress",
        "linearProgress",
        "",
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


# virtual methods
.method public onLaunchAnimationEnd()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmDefault;
    .end annotation

    .line 282
    return-void
.end method

.method public onLaunchAnimationProgress(F)V
    .locals 0
    .param p1, "linearProgress"    # F
    .annotation runtime Lkotlin/jvm/JvmDefault;
    .end annotation

    .line 286
    return-void
.end method

.method public onLaunchAnimationStart()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmDefault;
    .end annotation

    .line 275
    return-void
.end method
