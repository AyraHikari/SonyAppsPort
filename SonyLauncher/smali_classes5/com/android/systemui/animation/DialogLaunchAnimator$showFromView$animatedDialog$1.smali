.class final Lcom/android/systemui/animation/DialogLaunchAnimator$showFromView$animatedDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DialogLaunchAnimator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromView(Landroid/app/Dialog;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/animation/AnimatedDialog;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/android/systemui/animation/AnimatedDialog;",
        "invoke"
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
.field final synthetic this$0:Lcom/android/systemui/animation/DialogLaunchAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/animation/DialogLaunchAnimator;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$showFromView$animatedDialog$1;->this$0:Lcom/android/systemui/animation/DialogLaunchAnimator;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 115
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/animation/AnimatedDialog;

    invoke-virtual {p0, v0}, Lcom/android/systemui/animation/DialogLaunchAnimator$showFromView$animatedDialog$1;->invoke(Lcom/android/systemui/animation/AnimatedDialog;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/android/systemui/animation/AnimatedDialog;)V
    .locals 1
    .param p1, "it"    # Lcom/android/systemui/animation/AnimatedDialog;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator$showFromView$animatedDialog$1;->this$0:Lcom/android/systemui/animation/DialogLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/animation/DialogLaunchAnimator;->access$getOpenedDialogs$p(Lcom/android/systemui/animation/DialogLaunchAnimator;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
