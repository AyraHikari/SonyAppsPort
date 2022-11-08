.class public final Lcom/android/systemui/animation/AnimatedDialog$start$2;
.super Ljava/lang/Object;
.source "DialogLaunchAnimator.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/AnimatedDialog;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001JP\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/android/systemui/animation/AnimatedDialog$start$2",
        "Landroid/view/View$OnLayoutChangeListener;",
        "onLayoutChange",
        "",
        "v",
        "Landroid/view/View;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
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
.field final synthetic $dialogContentWithBackground:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/android/systemui/animation/AnimatedDialog;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lcom/android/systemui/animation/AnimatedDialog;)V
    .locals 0
    .param p1, "$dialogContentWithBackground"    # Landroid/view/ViewGroup;
    .param p2, "$receiver"    # Lcom/android/systemui/animation/AnimatedDialog;

    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->$dialogContentWithBackground:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->$dialogContentWithBackground:Landroid/view/ViewGroup;

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 496
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/animation/AnimatedDialog;->access$setOriginalDialogViewLaidOut$p(Lcom/android/systemui/animation/AnimatedDialog;Z)V

    .line 497
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$start$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-static {v0}, Lcom/android/systemui/animation/AnimatedDialog;->access$maybeStartLaunchAnimation(Lcom/android/systemui/animation/AnimatedDialog;)V

    .line 498
    return-void
.end method
