.class public Lcom/android/launcher3/anim/FlingSpringAnim;
.super Ljava/lang/Object;
.source "FlingSpringAnim.java"


# instance fields
.field private final mFlingAnim:Landroidx/dynamicanimation/animation/FlingAnimation;

.field private final mSkipFlingAnim:Z

.field private mSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTargetPosition:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFFFFFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 16
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "startPosition"    # F
    .param p5, "targetPosition"    # F
    .param p6, "startVelocityPxPerS"    # F
    .param p7, "minVisChange"    # F
    .param p8, "minValue"    # F
    .param p9, "maxValue"    # F
    .param p10, "onEndListener"    # Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroid/content/Context;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;FFFFFF",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ")V"
        }
    .end annotation

    .line 45
    .local p1, "object":Ljava/lang/Object;, "TK;"
    .local p3, "property":Landroidx/dynamicanimation/animation/FloatPropertyCompat;, "Landroidx/dynamicanimation/animation/FloatPropertyCompat<TK;>;"
    move-object/from16 v7, p0

    move/from16 v8, p6

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object v11

    .line 47
    .local v11, "rp":Lcom/android/systemui/plugins/ResourceProvider;
    sget v0, Lcom/android/launcher3/R$dimen;->swipe_up_rect_xy_damping_ratio:I

    invoke-interface {v11, v0}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v12

    .line 48
    .local v12, "damping":F
    sget v0, Lcom/android/launcher3/R$dimen;->swipe_up_rect_xy_stiffness:I

    invoke-interface {v11, v0}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v13

    .line 49
    .local v13, "stiffness":F
    sget v0, Lcom/android/launcher3/R$dimen;->swipe_up_rect_xy_fling_friction:I

    invoke-interface {v11, v0}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v14

    .line 51
    .local v14, "friction":F
    new-instance v0, Landroidx/dynamicanimation/animation/FlingAnimation;

    move-object/from16 v15, p1

    move-object/from16 v6, p3

    invoke-direct {v0, v15, v6}, Landroidx/dynamicanimation/animation/FlingAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 52
    invoke-virtual {v0, v14}, Landroidx/dynamicanimation/animation/FlingAnimation;->setFriction(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    .line 55
    move/from16 v5, p7

    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/FlingAnimation;

    .line 56
    invoke-virtual {v0, v8}, Landroidx/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v9}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v10}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v4

    iput-object v4, v7, Lcom/android/launcher3/anim/FlingSpringAnim;->mFlingAnim:Landroidx/dynamicanimation/animation/FlingAnimation;

    .line 59
    move/from16 v3, p5

    iput v3, v7, Lcom/android/launcher3/anim/FlingSpringAnim;->mTargetPosition:F

    .line 62
    cmpg-float v0, p4, v9

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    cmpg-float v0, v8, v1

    if-ltz v0, :cond_1

    :cond_0
    cmpl-float v0, p4, v10

    if-ltz v0, :cond_2

    cmpl-float v0, v8, v1

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v7, Lcom/android/launcher3/anim/FlingSpringAnim;->mSkipFlingAnim:Z

    .line 65
    new-instance v2, Lcom/android/launcher3/anim/FlingSpringAnim$$ExternalSyntheticLambda0;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v7, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object v8, v4

    move v4, v13

    move v5, v12

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/anim/FlingSpringAnim$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/anim/FlingSpringAnim;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    invoke-virtual {v8, v7}, Landroidx/dynamicanimation/animation/FlingAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 75
    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mFlingAnim:Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->cancel()V

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    .line 102
    :cond_0
    return-void
.end method

.method public getTargetPosition()F
    .locals 1

    .line 78
    iget v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mTargetPosition:F

    return v0
.end method

.method synthetic lambda$new$0$com-android-launcher3-anim-FlingSpringAnim(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "property"    # Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .param p3, "stiffness"    # F
    .param p4, "damping"    # F
    .param p5, "onEndListener"    # Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;
    .param p6, "animation"    # Landroidx/dynamicanimation/animation/DynamicAnimation;
    .param p7, "canceled"    # Z
    .param p8, "value"    # F
    .param p9, "velocity"    # F

    .line 66
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 67
    invoke-virtual {v0, p8}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 68
    invoke-virtual {v0, p9}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    iget v2, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mTargetPosition:F

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 70
    invoke-virtual {v1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 71
    invoke-virtual {v1, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 72
    invoke-virtual {v0, p5}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mTargetPosition:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 74
    return-void
.end method

.method public start()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mFlingAnim:Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->start()V

    .line 92
    iget-boolean v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mSkipFlingAnim:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mFlingAnim:Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->cancel()V

    .line 95
    :cond_0
    return-void
.end method

.method public updatePosition(FF)V
    .locals 2
    .param p1, "startPosition"    # F
    .param p2, "targetPosition"    # F

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mFlingAnim:Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    .line 83
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    .line 84
    iput p2, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mTargetPosition:F

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 88
    :cond_0
    return-void
.end method
