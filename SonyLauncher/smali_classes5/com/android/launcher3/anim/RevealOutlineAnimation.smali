.class public abstract Lcom/android/launcher3/anim/RevealOutlineAnimation;
.super Landroid/view/ViewOutlineProvider;
.source "RevealOutlineAnimation.java"


# instance fields
.field protected mOutline:Landroid/graphics/Rect;

.field protected mOutlineRadius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation;->mOutline:Landroid/graphics/Rect;

    .line 22
    return-void
.end method


# virtual methods
.method public createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
    .locals 1
    .param p1, "revealView"    # Landroid/view/View;
    .param p2, "isReversed"    # Z

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/anim/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;ZF)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public createRevealAnimator(Landroid/view/View;ZF)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "revealView"    # Landroid/view/View;
    .param p2, "isReversed"    # Z
    .param p3, "startProgress"    # F

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p2, :cond_0

    .line 48
    new-array v3, v3, [F

    sub-float/2addr v0, p3

    aput v0, v3, v2

    const/4 v0, 0x0

    aput v0, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_0
    new-array v3, v3, [F

    aput p3, v3, v2

    aput v0, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_0
    nop

    .line 50
    .local v0, "va":Landroid/animation/ValueAnimator;
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v1

    .line 52
    .local v1, "elevation":F
    new-instance v2, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/launcher3/anim/RevealOutlineAnimation$1;-><init>(Lcom/android/launcher3/anim/RevealOutlineAnimation;Landroid/view/View;F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 77
    new-instance v2, Lcom/android/launcher3/anim/RevealOutlineAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/anim/RevealOutlineAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/anim/RevealOutlineAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    return-object v0
.end method

.method public getOutline(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 96
    return-void
.end method

.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation;->mOutline:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation;->mOutlineRadius:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 88
    return-void
.end method

.method public getRadius()F
    .locals 1

    .line 91
    iget v0, p0, Lcom/android/launcher3/anim/RevealOutlineAnimation;->mOutlineRadius:F

    return v0
.end method

.method synthetic lambda$createRevealAnimator$0$com-android-launcher3-anim-RevealOutlineAnimation(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "revealView"    # Landroid/view/View;
    .param p2, "v"    # Landroid/animation/ValueAnimator;

    .line 78
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 79
    .local v0, "progress":F
    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/RevealOutlineAnimation;->setProgress(F)V

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    .line 81
    return-void
.end method

.method abstract setProgress(F)V
.end method

.method abstract shouldRemoveElevationDuringAnimation()Z
.end method
