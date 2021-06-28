.class Lcom/sonyericsson/music/fullplayer/PlayerFragment$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/fullplayer/PlayerFragment;->createExitAnimator(Landroid/graphics/Rect;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$7;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 587
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$7;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$1400(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 588
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$7;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$2200(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 570
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$7;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$1700(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/fullplayer/ArtPagerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/fullplayer/ArtPagerView;->setVignetteHeight(I)V

    .line 571
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$7;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$1800(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/fullplayer/BackPlateView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 572
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$7;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$1900(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/fullplayer/MetadataView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 573
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$7;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$2000(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 574
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$7;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$2100(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 576
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$7;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$2200(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Z)V

    .line 578
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$7;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$2300(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 579
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$7;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$2400(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/ToolbarControl;->getToolbarWrapper()Landroid/view/View;

    move-result-object p1

    .line 580
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 581
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x4b

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method
