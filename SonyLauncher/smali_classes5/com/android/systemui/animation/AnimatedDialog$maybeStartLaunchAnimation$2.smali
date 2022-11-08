.class final Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DialogLaunchAnimator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/AnimatedDialog;->maybeStartLaunchAnimation()V
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
.field final synthetic this$0:Lcom/android/systemui/animation/AnimatedDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/animation/AnimatedDialog;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 579
    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-virtual {v0}, Lcom/android/systemui/animation/AnimatedDialog;->getTouchSurface()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/animation/R$id;->tag_launch_animation_running:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 592
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-virtual {v0}, Lcom/android/systemui/animation/AnimatedDialog;->getTouchSurface()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/animation/AnimatedDialog;->access$setLaunching$p(Lcom/android/systemui/animation/AnimatedDialog;Z)V

    .line 598
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-static {v0}, Lcom/android/systemui/animation/AnimatedDialog;->access$getDismissRequested$p(Lcom/android/systemui/animation/AnimatedDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-virtual {v0}, Lcom/android/systemui/animation/AnimatedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-static {v0}, Lcom/android/systemui/animation/AnimatedDialog;->access$getBackgroundLayoutListener$p(Lcom/android/systemui/animation/AnimatedDialog;)Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-virtual {v0}, Lcom/android/systemui/animation/AnimatedDialog;->getDialogContentWithBackground()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 607
    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-static {v1}, Lcom/android/systemui/animation/AnimatedDialog;->access$getBackgroundLayoutListener$p(Lcom/android/systemui/animation/AnimatedDialog;)Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 609
    :cond_1
    return-void
.end method
