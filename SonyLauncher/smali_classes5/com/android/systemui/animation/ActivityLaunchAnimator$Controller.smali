.class public interface abstract Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.kt"

# interfaces
.implements Lcom/android/systemui/animation/LaunchAnimator$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Controller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000 \t2\u00020\u0001:\u0001\tJ\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J\u0008\u0010\u0008\u001a\u00020\u0006H\u0016R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0004\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\n\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;",
        "Lcom/android/systemui/animation/LaunchAnimator$Controller;",
        "isDialogLaunch",
        "",
        "()Z",
        "onIntentStarted",
        "",
        "willAnimate",
        "onLaunchAnimationCancelled",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;->$$INSTANCE:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;

    sput-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;

    return-void
.end method

.method public static fromView(Landroid/view/View;Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;->fromView(Landroid/view/View;Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isDialogLaunch()Z
    .locals 1

    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public onIntentStarted(Z)V
    .locals 0
    .param p1, "willAnimate"    # Z

    .line 333
    return-void
.end method

.method public onLaunchAnimationCancelled()V
    .locals 0

    .line 340
    return-void
.end method
