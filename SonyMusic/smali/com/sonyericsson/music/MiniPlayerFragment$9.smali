.class Lcom/sonyericsson/music/MiniPlayerFragment$9;
.super Ljava/lang/Object;
.source "MiniPlayerFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MiniPlayerFragment;->startTimerBannerAnimation(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

.field final synthetic val$params:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$show:Z

.field final synthetic val$to:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MiniPlayerFragment;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;IZ)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$9;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    iput-object p2, p0, Lcom/sonyericsson/music/MiniPlayerFragment$9;->val$params:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Lcom/sonyericsson/music/MiniPlayerFragment$9;->val$view:Landroid/view/View;

    iput p4, p0, Lcom/sonyericsson/music/MiniPlayerFragment$9;->val$to:I

    iput-boolean p5, p0, Lcom/sonyericsson/music/MiniPlayerFragment$9;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$9;->val$params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 582
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$9;->val$view:Landroid/view/View;

    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$9;->val$params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$9;->val$params:Landroid/view/ViewGroup$LayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$9;->val$to:I

    if-ne p1, v0, :cond_0

    .line 585
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$9;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    iget-boolean v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$9;->val$show:Z

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->setBannerVisibility(Z)V

    :cond_0
    return-void
.end method
