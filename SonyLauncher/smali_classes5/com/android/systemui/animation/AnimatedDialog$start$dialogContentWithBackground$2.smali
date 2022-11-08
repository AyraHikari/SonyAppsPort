.class final Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;
.super Ljava/lang/Object;
.source "DialogLaunchAnimator.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/AnimatedDialog;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u000e"
    }
    d2 = {
        "<anonymous>",
        "",
        "v",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "onLayoutChange"
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
.field final synthetic $dialogContentWithBackground:Landroid/widget/FrameLayout;

.field final synthetic $window:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;->$window:Landroid/view/Window;

    iput-object p2, p0, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;->$dialogContentWithBackground:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 434
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;->$window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;->$window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v0, v1, :cond_1

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;->$dialogContentWithBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 439
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;->$window:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 440
    iget-object v2, p0, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;->$window:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 441
    iget-object v2, p0, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;->$dialogContentWithBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    iget-object v2, p0, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;->$window:Landroid/view/Window;

    invoke-virtual {v2, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 444
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method
