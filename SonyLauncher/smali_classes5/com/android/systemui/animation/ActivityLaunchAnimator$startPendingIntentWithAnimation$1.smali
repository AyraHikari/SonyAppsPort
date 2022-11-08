.class final Lcom/android/systemui/animation/ActivityLaunchAnimator$startPendingIntentWithAnimation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ActivityLaunchAnimator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator;->startPendingIntentWithAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/RemoteAnimationAdapter;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/RemoteAnimationAdapter;",
        "invoke",
        "(Landroid/view/RemoteAnimationAdapter;)Ljava/lang/Integer;"
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
.field final synthetic $intentStarter:Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;


# direct methods
.method constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$startPendingIntentWithAnimation$1;->$intentStarter:Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/RemoteAnimationAdapter;)Ljava/lang/Integer;
    .locals 1
    .param p1, "it"    # Landroid/view/RemoteAnimationAdapter;

    .line 234
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$startPendingIntentWithAnimation$1;->$intentStarter:Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;->startPendingIntent(Landroid/view/RemoteAnimationAdapter;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 233
    move-object v0, p1

    check-cast v0, Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$startPendingIntentWithAnimation$1;->invoke(Landroid/view/RemoteAnimationAdapter;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
