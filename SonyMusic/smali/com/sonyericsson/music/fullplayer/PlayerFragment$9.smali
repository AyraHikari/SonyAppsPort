.class Lcom/sonyericsson/music/fullplayer/PlayerFragment$9;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/fullplayer/PlayerFragment;->createEnterAnimator(Landroid/view/View;JJ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Landroid/view/View;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$9;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    iput-object p2, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$9;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 644
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 645
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$9;->val$v:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 646
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$9;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$9;->this$0:Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    invoke-static {v1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$2500(Lcom/sonyericsson/music/fullplayer/PlayerFragment;)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$1500(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
