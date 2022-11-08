.class public Lcom/airbnb/lottie/animation/content/RectangleContent;
.super Ljava/lang/Object;
.source "RectangleContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;
.implements Lcom/airbnb/lottie/animation/content/PathContent;


# instance fields
.field private final cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private final sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/RectangleShape;)V
    .locals 3
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/model/layer/BaseLayer;
    .param p3, "rectShape"    # Lcom/airbnb/lottie/model/content/RectangleShape;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 38
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->name:Ljava/lang/String;

    .line 39
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->hidden:Z

    .line 40
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 41
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 42
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->getSize()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 43
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/RectangleShape;->getCornerRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 45
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 46
    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 47
    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 49
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 50
    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 51
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 52
    return-void
.end method

.method private invalidate()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    .line 66
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 67
    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 165
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->RECTANGLE_SIZE:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 167
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 169
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->CORNER_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 172
    :cond_2
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 17

    .line 84
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    return-object v1

    .line 88
    :cond_0
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 90
    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->hidden:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 91
    iput-boolean v2, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    .line 92
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    return-object v1

    .line 95
    :cond_1
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 96
    .local v1, "size":Landroid/graphics/PointF;
    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 97
    .local v3, "halfWidth":F
    iget v5, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v5, v4

    .line 98
    .local v5, "halfHeight":F
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    const/4 v7, 0x0

    if-nez v6, :cond_2

    .line 99
    move v6, v7

    goto :goto_0

    :cond_2
    check-cast v6, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v6

    .line 100
    .local v6, "radius":F
    :goto_0
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 101
    .local v8, "maxRadius":F
    cmpl-float v9, v6, v8

    if-lez v9, :cond_3

    .line 102
    move v6, v8

    .line 106
    :cond_3
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    .line 108
    .local v9, "position":Landroid/graphics/PointF;
    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget v11, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v3

    iget v12, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v5

    add-float/2addr v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 110
    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget v11, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v3

    iget v12, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v5

    sub-float/2addr v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 112
    cmpl-float v10, v6, v7

    const/4 v11, 0x0

    const/high16 v12, 0x42b40000    # 90.0f

    if-lez v10, :cond_4

    .line 113
    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v13, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v13, v3

    mul-float v14, v6, v4

    sub-float/2addr v13, v14

    iget v14, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v14, v5

    mul-float v15, v6, v4

    sub-float/2addr v14, v15

    iget v15, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v15, v3

    iget v2, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v5

    invoke-virtual {v10, v13, v14, v15, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 117
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v10, v7, v12, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 120
    :cond_4
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v3

    add-float/2addr v10, v6

    iget v13, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v5

    invoke-virtual {v2, v10, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 122
    cmpl-float v2, v6, v7

    if-lez v2, :cond_5

    .line 123
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v3

    iget v13, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v5

    mul-float v14, v6, v4

    sub-float/2addr v13, v14

    iget v14, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v3

    mul-float v15, v6, v4

    add-float/2addr v14, v15

    iget v15, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v15, v5

    invoke-virtual {v2, v10, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 127
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v10, v12, v12, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 130
    :cond_5
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v3

    iget v13, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v5

    add-float/2addr v13, v6

    invoke-virtual {v2, v10, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    cmpl-float v2, v6, v7

    if-lez v2, :cond_6

    .line 133
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v3

    iget v13, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v5

    iget v14, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v3

    mul-float v15, v6, v4

    add-float/2addr v14, v15

    iget v15, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v15, v5

    mul-float v16, v6, v4

    add-float v15, v15, v16

    invoke-virtual {v2, v10, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    const/high16 v13, 0x43340000    # 180.0f

    invoke-virtual {v2, v10, v13, v12, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 140
    :cond_6
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v3

    sub-float/2addr v10, v6

    iget v13, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v5

    invoke-virtual {v2, v10, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 142
    cmpl-float v2, v6, v7

    if-lez v2, :cond_7

    .line 143
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v7, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v3

    mul-float v10, v6, v4

    sub-float/2addr v7, v10

    iget v10, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v5

    iget v13, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v13, v3

    iget v14, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v5

    mul-float/2addr v4, v6

    add-float/2addr v14, v4

    invoke-virtual {v2, v7, v10, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 147
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->rect:Landroid/graphics/RectF;

    const/high16 v7, 0x43870000    # 270.0f

    invoke-virtual {v2, v4, v7, v12, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 149
    :cond_7
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 151
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v4}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 153
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->isPathValid:Z

    .line 154
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/RectangleContent;->path:Landroid/graphics/Path;

    return-object v2
.end method

.method public onValueChanged()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/RectangleContent;->invalidate()V

    .line 62
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0
    .param p1, "keyPath"    # Lcom/airbnb/lottie/model/KeyPath;
    .param p2, "depth"    # I
    .param p4, "currentPartialKeyPath"    # Lcom/airbnb/lottie/model/KeyPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")V"
        }
    .end annotation

    .line 160
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/KeyPath;>;"
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    .line 161
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 72
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/content/Content;

    .line 73
    .local v1, "content":Lcom/airbnb/lottie/animation/content/Content;
    instance-of v2, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 74
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_0

    .line 75
    move-object v2, v1

    check-cast v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 76
    .local v2, "trimPath":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/RectangleContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->addTrimPath(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    .line 77
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 71
    .end local v1    # "content":Lcom/airbnb/lottie/animation/content/Content;
    .end local v2    # "trimPath":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
