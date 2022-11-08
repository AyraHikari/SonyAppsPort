.class public Lcom/airbnb/lottie/animation/content/PolystarContent;
.super Ljava/lang/Object;
.source "PolystarContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# static fields
.field private static final POLYGON_MAGIC_NUMBER:F = 0.25f

.field private static final POLYSTAR_MAGIC_NUMBER:F = 0.47829f


# instance fields
.field private final hidden:Z

.field private final innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

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

.field private final rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

.field private final type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/PolystarShape;)V
    .locals 7
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/model/layer/BaseLayer;
    .param p3, "polystarShape"    # Lcom/airbnb/lottie/model/content/PolystarShape;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    .line 43
    new-instance v0, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    invoke-direct {v0}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    .line 48
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 50
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    .line 51
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getType()Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 52
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->isHidden()Z

    move-result v1

    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    .line 53
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getPoints()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 54
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v2

    invoke-interface {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 55
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getRotation()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 56
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getOuterRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 57
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getOuterRoundedness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 58
    sget-object v6, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne v0, v6, :cond_0

    .line 59
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getInnerRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v6

    iput-object v6, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 60
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/PolystarShape;->getInnerRoundedness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v6

    iput-object v6, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 62
    :cond_0
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 63
    iput-object v6, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 66
    :goto_0
    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 67
    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 68
    invoke-virtual {p2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 69
    invoke-virtual {p2, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 70
    invoke-virtual {p2, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 71
    sget-object v6, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne v0, v6, :cond_1

    .line 72
    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 73
    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 76
    :cond_1
    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 77
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 78
    invoke-virtual {v3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 79
    invoke-virtual {v4, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 80
    invoke-virtual {v5, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 81
    sget-object v1, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->STAR:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    if-ne v0, v1, :cond_2

    .line 82
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 83
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 85
    :cond_2
    return-void
.end method

.method private createPolygonPath()V
    .locals 32

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 249
    .local v1, "points":I
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    .line 251
    .local v2, "currentAngle":D
    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    .line 253
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 255
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, v1

    div-double/2addr v4, v6

    double-to-float v4, v4

    .line 257
    .local v4, "anglePerPoint":F
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    .line 258
    .local v5, "roundedness":F
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 263
    .local v6, "radius":F
    float-to-double v7, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-float v7, v7

    .line 264
    .local v7, "x":F
    float-to-double v8, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v8, v8

    .line 265
    .local v8, "y":F
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 266
    float-to-double v9, v4

    add-double/2addr v2, v9

    .line 268
    int-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    .line 269
    .local v9, "numPoints":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    int-to-double v12, v11

    cmpg-double v12, v12, v9

    if-gez v12, :cond_2

    .line 270
    move v12, v7

    .line 271
    .local v12, "previousX":F
    move v13, v8

    .line 272
    .local v13, "previousY":F
    float-to-double v14, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v7, v14

    .line 273
    float-to-double v14, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v8, v14

    .line 275
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-eqz v14, :cond_1

    .line 276
    float-to-double v14, v13

    move-wide/from16 v23, v9

    .end local v9    # "numPoints":D
    .local v23, "numPoints":D
    float-to-double v9, v12

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v9, v14

    double-to-float v9, v9

    .line 277
    .local v9, "cp1Theta":F
    float-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v10, v14

    .line 278
    .local v10, "cp1Dx":F
    float-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v14, v14

    .line 280
    .local v14, "cp1Dy":F
    move v15, v1

    move-wide/from16 v25, v2

    .end local v1    # "points":I
    .end local v2    # "currentAngle":D
    .local v15, "points":I
    .local v25, "currentAngle":D
    float-to-double v1, v8

    move/from16 v27, v4

    .end local v4    # "anglePerPoint":F
    .local v27, "anglePerPoint":F
    float-to-double v3, v7

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v1, v3

    double-to-float v1, v1

    .line 281
    .local v1, "cp2Theta":F
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 282
    .local v2, "cp2Dx":F
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 284
    .local v3, "cp2Dy":F
    mul-float v4, v6, v5

    const/high16 v16, 0x3e800000    # 0.25f

    mul-float v4, v4, v16

    mul-float/2addr v4, v10

    .line 285
    .local v4, "cp1x":F
    mul-float v17, v6, v5

    mul-float v17, v17, v16

    mul-float v28, v17, v14

    .line 286
    .local v28, "cp1y":F
    mul-float v17, v6, v5

    mul-float v17, v17, v16

    mul-float v29, v17, v2

    .line 287
    .local v29, "cp2x":F
    mul-float v17, v6, v5

    mul-float v17, v17, v16

    mul-float v30, v17, v3

    .line 288
    .local v30, "cp2y":F
    move/from16 v31, v1

    .end local v1    # "cp2Theta":F
    .local v31, "cp2Theta":F
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    sub-float v17, v12, v4

    sub-float v18, v13, v28

    add-float v19, v7, v29

    add-float v20, v8, v30

    move-object/from16 v16, v1

    move/from16 v21, v7

    move/from16 v22, v8

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 289
    .end local v2    # "cp2Dx":F
    .end local v3    # "cp2Dy":F
    .end local v4    # "cp1x":F
    .end local v9    # "cp1Theta":F
    .end local v10    # "cp1Dx":F
    .end local v14    # "cp1Dy":F
    .end local v28    # "cp1y":F
    .end local v29    # "cp2x":F
    .end local v30    # "cp2y":F
    .end local v31    # "cp2Theta":F
    goto :goto_2

    .line 290
    .end local v15    # "points":I
    .end local v23    # "numPoints":D
    .end local v25    # "currentAngle":D
    .end local v27    # "anglePerPoint":F
    .local v1, "points":I
    .local v2, "currentAngle":D
    .local v4, "anglePerPoint":F
    .local v9, "numPoints":D
    :cond_1
    move v15, v1

    move-wide/from16 v25, v2

    move/from16 v27, v4

    move-wide/from16 v23, v9

    .end local v1    # "points":I
    .end local v2    # "currentAngle":D
    .end local v4    # "anglePerPoint":F
    .end local v9    # "numPoints":D
    .restart local v15    # "points":I
    .restart local v23    # "numPoints":D
    .restart local v25    # "currentAngle":D
    .restart local v27    # "anglePerPoint":F
    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 293
    :goto_2
    move/from16 v1, v27

    .end local v27    # "anglePerPoint":F
    .local v1, "anglePerPoint":F
    float-to-double v2, v1

    add-double v2, v25, v2

    .line 269
    .end local v25    # "currentAngle":D
    .restart local v2    # "currentAngle":D
    add-int/lit8 v11, v11, 0x1

    move v4, v1

    move v1, v15

    move-wide/from16 v9, v23

    goto/16 :goto_1

    .end local v12    # "previousX":F
    .end local v13    # "previousY":F
    .end local v15    # "points":I
    .end local v23    # "numPoints":D
    .local v1, "points":I
    .restart local v4    # "anglePerPoint":F
    .restart local v9    # "numPoints":D
    :cond_2
    move v15, v1

    move-wide/from16 v25, v2

    move v1, v4

    move-wide/from16 v23, v9

    .line 296
    .end local v2    # "currentAngle":D
    .end local v4    # "anglePerPoint":F
    .end local v9    # "numPoints":D
    .end local v11    # "i":I
    .local v1, "anglePerPoint":F
    .restart local v15    # "points":I
    .restart local v23    # "numPoints":D
    .restart local v25    # "currentAngle":D
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 297
    .local v2, "position":Landroid/graphics/PointF;
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Path;->offset(FF)V

    .line 298
    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 299
    return-void
.end method

.method private createStarPath()V
    .locals 47

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 143
    .local v1, "points":F
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    .line 145
    .local v2, "currentAngle":D
    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    .line 147
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 149
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v6, v1

    div-double/2addr v4, v6

    double-to-float v4, v4

    .line 150
    .local v4, "anglePerPoint":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    .line 151
    .local v6, "halfAnglePerPoint":F
    float-to-int v7, v1

    int-to-float v7, v7

    sub-float v7, v1, v7

    .line 152
    .local v7, "partialPointAmount":F
    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    if-eqz v9, :cond_1

    .line 153
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v7

    mul-float/2addr v9, v6

    float-to-double v9, v9

    add-double/2addr v2, v9

    .line 156
    :cond_1
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 158
    .local v9, "outerRadius":F
    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 160
    .local v10, "innerRadius":F
    const/4 v11, 0x0

    .line 161
    .local v11, "innerRoundedness":F
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    const/high16 v13, 0x42c80000    # 100.0f

    if-eqz v12, :cond_2

    .line 162
    invoke-virtual {v12}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    div-float v11, v12, v13

    .line 164
    :cond_2
    const/4 v12, 0x0

    .line 165
    .local v12, "outerRoundedness":F
    iget-object v14, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v14, :cond_3

    .line 166
    invoke-virtual {v14}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    div-float v12, v14, v13

    .line 173
    :cond_3
    const/4 v13, 0x0

    .line 174
    .local v13, "partialPointRadius":F
    cmpl-float v14, v7, v8

    if-eqz v14, :cond_4

    .line 175
    sub-float v14, v9, v10

    mul-float/2addr v14, v7

    add-float v13, v10, v14

    .line 176
    float-to-double v14, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v14, v14

    .line 177
    .local v14, "x":F
    move/from16 v16, v9

    .end local v9    # "outerRadius":F
    .local v16, "outerRadius":F
    float-to-double v8, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v8, v8, v17

    double-to-float v8, v8

    .line 178
    .local v8, "y":F
    iget-object v9, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v9, v14, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 179
    mul-float v9, v4, v7

    div-float/2addr v9, v5

    move/from16 v18, v6

    .end local v6    # "halfAnglePerPoint":F
    .local v18, "halfAnglePerPoint":F
    float-to-double v5, v9

    add-double/2addr v2, v5

    move/from16 v5, v16

    move/from16 v6, v18

    goto :goto_1

    .line 181
    .end local v8    # "y":F
    .end local v14    # "x":F
    .end local v16    # "outerRadius":F
    .end local v18    # "halfAnglePerPoint":F
    .restart local v6    # "halfAnglePerPoint":F
    .restart local v9    # "outerRadius":F
    :cond_4
    move/from16 v18, v6

    move/from16 v16, v9

    .end local v6    # "halfAnglePerPoint":F
    .end local v9    # "outerRadius":F
    .restart local v16    # "outerRadius":F
    .restart local v18    # "halfAnglePerPoint":F
    move/from16 v5, v16

    .end local v16    # "outerRadius":F
    .local v5, "outerRadius":F
    float-to-double v8, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v8, v8, v19

    double-to-float v14, v8

    .line 182
    .restart local v14    # "x":F
    float-to-double v8, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v8, v8, v19

    double-to-float v8, v8

    .line 183
    .restart local v8    # "y":F
    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v14, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 184
    move/from16 v16, v8

    move/from16 v6, v18

    .end local v8    # "y":F
    .end local v18    # "halfAnglePerPoint":F
    .restart local v6    # "halfAnglePerPoint":F
    .local v16, "y":F
    float-to-double v8, v6

    add-double/2addr v2, v8

    move/from16 v8, v16

    .line 188
    .end local v16    # "y":F
    .restart local v8    # "y":F
    :goto_1
    const/4 v9, 0x0

    .line 189
    .local v9, "longSegment":Z
    move-wide/from16 v18, v2

    .end local v2    # "currentAngle":D
    .local v18, "currentAngle":D
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v20

    .line 190
    .local v2, "numPoints":D
    const/16 v16, 0x0

    move/from16 v15, v16

    .local v15, "i":I
    :goto_2
    move/from16 v22, v1

    .end local v1    # "points":F
    .local v22, "points":F
    int-to-double v0, v15

    cmpg-double v0, v0, v2

    if-gez v0, :cond_13

    .line 191
    if-eqz v9, :cond_5

    move v0, v5

    goto :goto_3

    :cond_5
    move v0, v10

    .line 192
    .local v0, "radius":F
    :goto_3
    move v1, v6

    .line 193
    .local v1, "dTheta":F
    const/16 v16, 0x0

    cmpl-float v23, v13, v16

    if-eqz v23, :cond_7

    move/from16 v23, v0

    move/from16 v24, v1

    .end local v0    # "radius":F
    .end local v1    # "dTheta":F
    .local v23, "radius":F
    .local v24, "dTheta":F
    int-to-double v0, v15

    sub-double v25, v2, v20

    cmpl-double v0, v0, v25

    if-nez v0, :cond_6

    .line 194
    mul-float v0, v4, v7

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .end local v24    # "dTheta":F
    .local v0, "dTheta":F
    goto :goto_5

    .line 193
    .end local v0    # "dTheta":F
    .restart local v24    # "dTheta":F
    :cond_6
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_4

    .end local v23    # "radius":F
    .end local v24    # "dTheta":F
    .local v0, "radius":F
    .restart local v1    # "dTheta":F
    :cond_7
    move/from16 v23, v0

    move/from16 v24, v1

    const/high16 v1, 0x40000000    # 2.0f

    .line 196
    .end local v0    # "radius":F
    .end local v1    # "dTheta":F
    .restart local v23    # "radius":F
    .restart local v24    # "dTheta":F
    :goto_4
    move/from16 v0, v24

    .end local v24    # "dTheta":F
    .local v0, "dTheta":F
    :goto_5
    const/16 v16, 0x0

    cmpl-float v17, v13, v16

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    if-eqz v17, :cond_8

    move/from16 v17, v4

    move/from16 v26, v5

    .end local v4    # "anglePerPoint":F
    .end local v5    # "outerRadius":F
    .local v17, "anglePerPoint":F
    .local v26, "outerRadius":F
    int-to-double v4, v15

    sub-double v27, v2, v24

    cmpl-double v4, v4, v27

    if-nez v4, :cond_9

    .line 197
    move v4, v13

    .end local v23    # "radius":F
    .local v4, "radius":F
    goto :goto_6

    .line 196
    .end local v17    # "anglePerPoint":F
    .end local v26    # "outerRadius":F
    .local v4, "anglePerPoint":F
    .restart local v5    # "outerRadius":F
    .restart local v23    # "radius":F
    :cond_8
    move/from16 v17, v4

    move/from16 v26, v5

    .line 199
    .end local v4    # "anglePerPoint":F
    .end local v5    # "outerRadius":F
    .restart local v17    # "anglePerPoint":F
    .restart local v26    # "outerRadius":F
    :cond_9
    move/from16 v4, v23

    .end local v23    # "radius":F
    .local v4, "radius":F
    :goto_6
    move v5, v14

    .line 200
    .local v5, "previousX":F
    move/from16 v23, v8

    .line 201
    .local v23, "previousY":F
    move-wide/from16 v27, v2

    .end local v2    # "numPoints":D
    .local v27, "numPoints":D
    float-to-double v1, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    mul-double v1, v1, v29

    double-to-float v14, v1

    .line 202
    float-to-double v1, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    mul-double v1, v1, v29

    double-to-float v8, v1

    .line 204
    const/4 v1, 0x0

    cmpl-float v2, v11, v1

    if-nez v2, :cond_a

    cmpl-float v2, v12, v1

    if-nez v2, :cond_a

    .line 205
    move-object/from16 v2, p0

    iget-object v1, v2, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v14, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v39, v0

    move/from16 v36, v10

    move/from16 v37, v11

    move/from16 v38, v12

    move/from16 v40, v23

    const/16 v16, 0x0

    move/from16 v23, v4

    goto/16 :goto_c

    .line 204
    :cond_a
    move-object/from16 v2, p0

    .line 207
    move/from16 v1, v23

    move/from16 v23, v4

    .end local v4    # "radius":F
    .local v1, "previousY":F
    .local v23, "radius":F
    float-to-double v3, v1

    move/from16 v36, v10

    move/from16 v37, v11

    .end local v10    # "innerRadius":F
    .end local v11    # "innerRoundedness":F
    .local v36, "innerRadius":F
    .local v37, "innerRoundedness":F
    float-to-double v10, v5

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v3, v10

    double-to-float v3, v3

    .line 208
    .local v3, "cp1Theta":F
    float-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v4, v10

    .line 209
    .local v4, "cp1Dx":F
    float-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 211
    .local v10, "cp1Dy":F
    move/from16 v38, v12

    .end local v12    # "outerRoundedness":F
    .local v38, "outerRoundedness":F
    float-to-double v11, v8

    move/from16 v39, v0

    move/from16 v40, v1

    .end local v0    # "dTheta":F
    .end local v1    # "previousY":F
    .local v39, "dTheta":F
    .local v40, "previousY":F
    float-to-double v0, v14

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v0, v11

    double-to-float v0, v0

    .line 212
    .local v0, "cp2Theta":F
    float-to-double v11, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v1, v11

    .line 213
    .local v1, "cp2Dx":F
    float-to-double v11, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 215
    .local v11, "cp2Dy":F
    if-eqz v9, :cond_b

    move/from16 v12, v37

    goto :goto_7

    :cond_b
    move/from16 v12, v38

    .line 216
    .local v12, "cp1Roundedness":F
    :goto_7
    if-eqz v9, :cond_c

    move/from16 v29, v38

    goto :goto_8

    :cond_c
    move/from16 v29, v37

    :goto_8
    move/from16 v41, v29

    .line 217
    .local v41, "cp2Roundedness":F
    if-eqz v9, :cond_d

    move/from16 v29, v36

    goto :goto_9

    :cond_d
    move/from16 v29, v26

    :goto_9
    move/from16 v42, v29

    .line 218
    .local v42, "cp1Radius":F
    if-eqz v9, :cond_e

    move/from16 v29, v26

    goto :goto_a

    :cond_e
    move/from16 v29, v36

    :goto_a
    move/from16 v43, v29

    .line 220
    .local v43, "cp2Radius":F
    mul-float v29, v42, v12

    const v30, 0x3ef4e26d    # 0.47829f

    mul-float v29, v29, v30

    mul-float v29, v29, v4

    .line 221
    .local v29, "cp1x":F
    mul-float v31, v42, v12

    mul-float v31, v31, v30

    mul-float v31, v31, v10

    .line 222
    .local v31, "cp1y":F
    mul-float v32, v43, v41

    mul-float v32, v32, v30

    mul-float v32, v32, v1

    .line 223
    .local v32, "cp2x":F
    mul-float v33, v43, v41

    mul-float v33, v33, v30

    mul-float v33, v33, v11

    .line 224
    .local v33, "cp2y":F
    const/16 v16, 0x0

    cmpl-float v30, v7, v16

    if-eqz v30, :cond_10

    .line 225
    if-nez v15, :cond_f

    .line 226
    mul-float v29, v29, v7

    .line 227
    mul-float v31, v31, v7

    move/from16 v44, v0

    move/from16 v45, v1

    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v24, v32

    move/from16 v25, v33

    goto :goto_b

    .line 228
    :cond_f
    move/from16 v44, v0

    move/from16 v45, v1

    .end local v0    # "cp2Theta":F
    .end local v1    # "cp2Dx":F
    .local v44, "cp2Theta":F
    .local v45, "cp2Dx":F
    int-to-double v0, v15

    sub-double v24, v27, v24

    cmpl-double v0, v0, v24

    if-nez v0, :cond_11

    .line 229
    mul-float v32, v32, v7

    .line 230
    mul-float v33, v33, v7

    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v24, v32

    move/from16 v25, v33

    goto :goto_b

    .line 224
    .end local v44    # "cp2Theta":F
    .end local v45    # "cp2Dx":F
    .restart local v0    # "cp2Theta":F
    .restart local v1    # "cp2Dx":F
    :cond_10
    move/from16 v44, v0

    move/from16 v45, v1

    .line 234
    .end local v0    # "cp2Theta":F
    .end local v1    # "cp2Dx":F
    .restart local v44    # "cp2Theta":F
    .restart local v45    # "cp2Dx":F
    :cond_11
    move/from16 v0, v29

    move/from16 v1, v31

    move/from16 v24, v32

    move/from16 v25, v33

    .end local v29    # "cp1x":F
    .end local v31    # "cp1y":F
    .end local v32    # "cp2x":F
    .end local v33    # "cp2y":F
    .local v0, "cp1x":F
    .local v1, "cp1y":F
    .local v24, "cp2x":F
    .local v25, "cp2y":F
    :goto_b
    move/from16 v46, v3

    .end local v3    # "cp1Theta":F
    .local v46, "cp1Theta":F
    iget-object v3, v2, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    sub-float v30, v5, v0

    sub-float v31, v40, v1

    add-float v32, v14, v24

    add-float v33, v8, v25

    move-object/from16 v29, v3

    move/from16 v34, v14

    move/from16 v35, v8

    invoke-virtual/range {v29 .. v35}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 237
    .end local v0    # "cp1x":F
    .end local v1    # "cp1y":F
    .end local v4    # "cp1Dx":F
    .end local v10    # "cp1Dy":F
    .end local v11    # "cp2Dy":F
    .end local v12    # "cp1Roundedness":F
    .end local v24    # "cp2x":F
    .end local v25    # "cp2y":F
    .end local v41    # "cp2Roundedness":F
    .end local v42    # "cp1Radius":F
    .end local v43    # "cp2Radius":F
    .end local v44    # "cp2Theta":F
    .end local v45    # "cp2Dx":F
    .end local v46    # "cp1Theta":F
    :goto_c
    move/from16 v0, v39

    .end local v39    # "dTheta":F
    .local v0, "dTheta":F
    float-to-double v3, v0

    add-double v18, v18, v3

    .line 238
    if-nez v9, :cond_12

    const/4 v1, 0x1

    goto :goto_d

    :cond_12
    const/4 v1, 0x0

    :goto_d
    move v9, v1

    .line 190
    .end local v0    # "dTheta":F
    .end local v23    # "radius":F
    add-int/lit8 v15, v15, 0x1

    move-object v0, v2

    move/from16 v4, v17

    move/from16 v1, v22

    move/from16 v5, v26

    move-wide/from16 v2, v27

    move/from16 v10, v36

    move/from16 v11, v37

    move/from16 v12, v38

    goto/16 :goto_2

    .end local v17    # "anglePerPoint":F
    .end local v26    # "outerRadius":F
    .end local v27    # "numPoints":D
    .end local v36    # "innerRadius":F
    .end local v37    # "innerRoundedness":F
    .end local v38    # "outerRoundedness":F
    .end local v40    # "previousY":F
    .restart local v2    # "numPoints":D
    .local v4, "anglePerPoint":F
    .local v5, "outerRadius":F
    .local v10, "innerRadius":F
    .local v11, "innerRoundedness":F
    .local v12, "outerRoundedness":F
    :cond_13
    move-wide/from16 v27, v2

    move/from16 v17, v4

    move-object/from16 v2, p0

    .line 242
    .end local v2    # "numPoints":D
    .end local v4    # "anglePerPoint":F
    .end local v15    # "i":I
    .restart local v17    # "anglePerPoint":F
    .restart local v27    # "numPoints":D
    iget-object v0, v2, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 243
    .local v0, "position":Landroid/graphics/PointF;
    iget-object v1, v2, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->offset(FF)V

    .line 244
    iget-object v1, v2, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 245
    return-void
.end method

.method private invalidate()V
    .locals 1

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 93
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 94
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

    .line 309
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_POINTS:Ljava/lang/Float;

    if-ne p1, v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 311
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_ROTATION:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 313
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 315
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_3

    .line 316
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 317
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_RADIUS:Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    .line 318
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 319
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_ROUNDEDNESS:Ljava/lang/Float;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_5

    .line 321
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 322
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_ROUNDEDNESS:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    .line 323
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 325
    :cond_6
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    .line 109
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 115
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 116
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 117
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    return-object v0

    .line 120
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/animation/content/PolystarContent$1;->$SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type:[I

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/PolystarContent;->createPolygonPath()V

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/PolystarContent;->createStarPath()V

    .line 123
    nop

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 131
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->apply(Landroid/graphics/Path;)V

    .line 133
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    .line 134
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onValueChanged()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/PolystarContent;->invalidate()V

    .line 89
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

    .line 303
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/KeyPath;>;"
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    .line 304
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

    .line 97
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/content/Content;

    .line 99
    .local v1, "content":Lcom/airbnb/lottie/animation/content/Content;
    instance-of v2, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 100
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_0

    .line 101
    move-object v2, v1

    check-cast v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 102
    .local v2, "trimPath":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;

    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/animation/content/CompoundTrimPathContent;->addTrimPath(Lcom/airbnb/lottie/animation/content/TrimPathContent;)V

    .line 103
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 97
    .end local v1    # "content":Lcom/airbnb/lottie/animation/content/Content;
    .end local v2    # "trimPath":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
