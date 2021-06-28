.class Lcom/sonyericsson/music/fullplayer/PlayerFragment$4;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/fullplayer/PlayerFragment;->createFallbackExitAnimator()Landroid/animation/ValueAnimator;
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

    .line 518
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$4;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 521
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 522
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$4;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$1400(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 523
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$4;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$1400(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$4;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$1400(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$1500(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method
