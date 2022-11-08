.class final Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DialogLaunchAnimator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/AnimatedDialog;->hideDialogIntoView(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $onAnimationFinished:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/animation/AnimatedDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/animation/AnimatedDialog;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/AnimatedDialog;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    iput-object p2, p0, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;->$onAnimationFinished:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 669
    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 677
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-virtual {v0}, Lcom/android/systemui/animation/AnimatedDialog;->getTouchSurface()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/systemui/animation/LaunchableView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/animation/LaunchableView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v1}, Lcom/android/systemui/animation/LaunchableView;->setShouldBlockVisibilityChanges(Z)V

    .line 679
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-virtual {v0}, Lcom/android/systemui/animation/AnimatedDialog;->getTouchSurface()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-virtual {v0}, Lcom/android/systemui/animation/AnimatedDialog;->getDialogContentWithBackground()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 681
    .local v0, "dialogContentWithBackground":Landroid/view/ViewGroup;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 683
    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-static {v1}, Lcom/android/systemui/animation/AnimatedDialog;->access$getBackgroundLayoutListener$p(Lcom/android/systemui/animation/AnimatedDialog;)Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 684
    nop

    .line 685
    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-static {v1}, Lcom/android/systemui/animation/AnimatedDialog;->access$getBackgroundLayoutListener$p(Lcom/android/systemui/animation/AnimatedDialog;)Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 690
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    new-instance v2, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2$1;

    iget-object v3, p0, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;->$onAnimationFinished:Lkotlin/jvm/functions/Function1;

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/animation/AnimatedDialog;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lcom/android/systemui/animation/AnimatedDialog;->access$synchronizeNextDraw(Lcom/android/systemui/animation/AnimatedDialog;Lkotlin/jvm/functions/Function0;)V

    .line 694
    return-void
.end method
