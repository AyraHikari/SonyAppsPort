.class final Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/fullplayer/PlayerFragment;->createCurvedPathAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fromScaleX:F

.field final synthetic val$fromScaleY:F

.field final synthetic val$path:Landroid/graphics/PathMeasure;

.field final synthetic val$pathLength:F

.field final synthetic val$point:[F

.field final synthetic val$toScaleX:F

.field final synthetic val$toScaleY:F

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$viewHeight:I

.field final synthetic val$viewWidth:I


# direct methods
.method constructor <init>(Landroid/view/View;FFFFLandroid/graphics/PathMeasure;F[FII)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$fromScaleX:F

    iput p3, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$toScaleX:F

    iput p4, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$fromScaleY:F

    iput p5, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$toScaleY:F

    iput-object p6, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$path:Landroid/graphics/PathMeasure;

    iput p7, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$pathLength:F

    iput-object p8, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$point:[F

    iput p9, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$viewWidth:I

    iput p10, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$viewHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 622
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 624
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$fromScaleX:F

    iget v2, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$toScaleX:F

    invoke-static {v1, v2, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$1500(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 625
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$fromScaleY:F

    iget v2, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$toScaleY:F

    invoke-static {v1, v2, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$1500(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 627
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$path:Landroid/graphics/PathMeasure;

    iget v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$pathLength:F

    mul-float v1, v1, p1

    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$point:[F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 629
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$view:Landroid/view/View;

    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$point:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$viewWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 630
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$view:Landroid/view/View;

    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$point:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$8;->val$viewHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    return-void
.end method
