.class public abstract Lcom/sonyericsson/music/ui/ShadowLayout;
.super Landroid/widget/LinearLayout;
.source "ShadowLayout.java"


# static fields
.field static final DEFAULT_BASE_COLOR:I = 0x40000000

.field public static final GRADIENT_DIRECTION_BOTTOM_TO_TOP:I = 0x2

.field public static final GRADIENT_DIRECTION_TOP_TO_BOTTOM:I = 0x1

.field public static final SHADOW_ANIMATION_DURATION:I = 0x258


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mShadow:Lcom/sonyericsson/music/ui/ExpLinearShadow;

.field private mShadowAlpha:F

.field private mShadowAnimationTargetAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 29
    iput p1, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mShadowAlpha:F

    .line 31
    iput p1, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mShadowAnimationTargetAlpha:F

    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 40
    new-instance p1, Lcom/sonyericsson/music/ui/ExpLinearShadow;

    invoke-virtual {p0}, Lcom/sonyericsson/music/ui/ShadowLayout;->getBaseColorForGradient()I

    move-result p2

    invoke-virtual {p0}, Lcom/sonyericsson/music/ui/ShadowLayout;->getGradientDirection()I

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/sonyericsson/music/ui/ExpLinearShadow;-><init>(II)V

    iput-object p1, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mShadow:Lcom/sonyericsson/music/ui/ExpLinearShadow;

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/ui/ShadowLayout;->setShadowAlpha(F)V

    return-void
.end method

.method private getTargetAlpha()F
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mShadowAnimationTargetAlpha:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mShadowAlpha:F

    :goto_0
    return v0
.end method


# virtual methods
.method public animateShadowAlpha(IF)V
    .locals 3

    .line 83
    invoke-direct {p0}, Lcom/sonyericsson/music/ui/ShadowLayout;->getTargetAlpha()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/ui/ShadowLayout;->cancelShadowAnimation()V

    .line 88
    iget v0, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mShadowAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const/4 v1, 0x2

    .line 89
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 91
    iget-object p1, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/sonyericsson/music/ui/ShadowLayout$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/ui/ShadowLayout$1;-><init>(Lcom/sonyericsson/music/ui/ShadowLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 98
    iget-object p1, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 99
    iput p2, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mShadowAnimationTargetAlpha:F

    return-void
.end method

.method public cancelShadowAnimation()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public getBaseColorForGradient()I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public abstract getBoundsForShadow()Landroid/graphics/Rect;
.end method

.method public abstract getGradientDirection()I
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mShadow:Lcom/sonyericsson/music/ui/ExpLinearShadow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/ExpLinearShadow;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 54
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/music/ui/ShadowLayout;->getBoundsForShadow()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p2, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mShadow:Lcom/sonyericsson/music/ui/ExpLinearShadow;

    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget p4, p1, Landroid/graphics/Rect;->top:I

    iget p5, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p3, p4, p5, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setShadowAlpha(F)V
    .locals 2

    .line 68
    iget v0, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mShadowAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mShadow:Lcom/sonyericsson/music/ui/ExpLinearShadow;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v1, v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/ui/ExpLinearShadow;->setAlpha(I)V

    .line 70
    iput p1, p0, Lcom/sonyericsson/music/ui/ShadowLayout;->mShadowAlpha:F

    .line 71
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_0
    return-void
.end method
