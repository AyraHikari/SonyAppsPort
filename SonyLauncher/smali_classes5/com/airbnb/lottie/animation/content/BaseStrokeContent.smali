.class public abstract Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    }
.end annotation


# instance fields
.field private colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final dashPatternAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final dashPatternValues:[F

.field protected final layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final pathGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final pm:Landroid/graphics/PathMeasure;

.field private final rect:Landroid/graphics/RectF;

.field private final trimPathPath:Landroid/graphics/Path;

.field private final widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 3
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layer"    # Lcom/airbnb/lottie/model/layer/BaseLayer;
    .param p3, "cap"    # Landroid/graphics/Paint$Cap;
    .param p4, "join"    # Landroid/graphics/Paint$Join;
    .param p5, "miterLimit"    # F
    .param p6, "opacity"    # Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .param p7, "width"    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .param p9, "offset"    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .line 57
    .local p8, "dashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 40
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 41
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 47
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 58
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 59
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 61
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 63
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 64
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 66
    invoke-virtual {p6}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 67
    invoke-virtual {p7}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 69
    if-nez p9, :cond_0

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p9}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 74
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 75
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 82
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 83
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 86
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 91
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 93
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 94
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 96
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_5

    .line 97
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 99
    :cond_5
    return-void
.end method

.method private applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "parentMatrix"    # Landroid/graphics/Matrix;

    .line 274
    const-string v0, "StrokeContent#applyDashPattern"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 277
    return-void

    .line 280
    :cond_0
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v1

    .line 281
    .local v1, "scale":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 282
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v3, v2

    .line 287
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    .line 288
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v4, v3, v2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 289
    aput v5, v3, v2

    goto :goto_1

    .line 292
    :cond_1
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v4, v3, v2

    const v5, 0x3dcccccd    # 0.1f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 293
    aput v5, v3, v2

    .line 296
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v4, v3, v2

    mul-float/2addr v4, v1

    aput v4, v3, v2

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v1

    .line 299
    .local v2, "offset":F
    :goto_2
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/DashPathEffect;

    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    invoke-direct {v4, v5, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 300
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 301
    return-void
.end method

.method private applyTrimPath(Landroid/graphics/Canvas;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pathGroup"    # Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    .param p3, "parentMatrix"    # Landroid/graphics/Matrix;

    .line 182
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "StrokeContent#applyTrimPath"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 183
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 184
    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 185
    return-void

    .line 187
    :cond_0
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 188
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_0
    if-ltz v4, :cond_1

    .line 189
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v6}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 188
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 191
    .end local v4    # "j":I
    :cond_1
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 192
    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    .line 193
    .local v4, "totalLength":F
    :goto_1
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 194
    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    add-float/2addr v4, v5

    goto :goto_1

    .line 196
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getOffset()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v5, v4

    const/high16 v7, 0x43b40000    # 360.0f

    div-float/2addr v5, v7

    .line 197
    .local v5, "offsetLength":F
    nop

    .line 198
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getStart()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    mul-float/2addr v7, v4

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    add-float/2addr v7, v5

    .line 199
    .local v7, "startLength":F
    nop

    .line 200
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getEnd()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v9, v4

    div-float/2addr v9, v8

    add-float/2addr v9, v5

    .line 202
    .local v9, "endLength":F
    const/4 v8, 0x0

    .line 203
    .local v8, "currentLength":F
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .local v10, "j":I
    :goto_2
    if-ltz v10, :cond_a

    .line 204
    iget-object v11, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v12}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 205
    iget-object v11, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-virtual {v11, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 206
    iget-object v11, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-virtual {v11, v12, v6}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 207
    iget-object v11, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v11

    .line 208
    .local v11, "length":F
    cmpl-float v12, v9, v4

    const/4 v13, 0x0

    if-lez v12, :cond_4

    sub-float v12, v9, v4

    add-float v14, v8, v11

    cmpg-float v12, v12, v14

    if-gez v12, :cond_4

    sub-float v12, v9, v4

    cmpg-float v12, v8, v12

    if-gez v12, :cond_4

    .line 213
    cmpl-float v12, v7, v4

    if-lez v12, :cond_3

    .line 214
    sub-float v12, v7, v4

    div-float/2addr v12, v11

    .local v12, "startValue":F
    goto :goto_3

    .line 216
    .end local v12    # "startValue":F
    :cond_3
    const/4 v12, 0x0

    .line 218
    .restart local v12    # "startValue":F
    :goto_3
    sub-float v14, v9, v4

    div-float/2addr v14, v11

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 219
    .local v14, "endValue":F
    iget-object v15, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {v15, v12, v14, v13}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 220
    iget-object v13, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v15, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 221
    .end local v12    # "startValue":F
    .end local v14    # "endValue":F
    goto :goto_6

    .line 223
    :cond_4
    add-float v12, v8, v11

    cmpg-float v12, v12, v7

    if-ltz v12, :cond_9

    cmpl-float v12, v8, v9

    if-lez v12, :cond_5

    goto :goto_6

    .line 225
    :cond_5
    add-float v12, v8, v11

    cmpg-float v12, v12, v9

    if-gtz v12, :cond_6

    cmpg-float v12, v7, v8

    if-gez v12, :cond_6

    .line 226
    iget-object v12, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v13, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 229
    :cond_6
    cmpg-float v12, v7, v8

    if-gez v12, :cond_7

    .line 230
    const/4 v12, 0x0

    .restart local v12    # "startValue":F
    goto :goto_4

    .line 232
    .end local v12    # "startValue":F
    :cond_7
    sub-float v12, v7, v8

    div-float/2addr v12, v11

    .line 235
    .restart local v12    # "startValue":F
    :goto_4
    add-float v14, v8, v11

    cmpl-float v14, v9, v14

    if-lez v14, :cond_8

    .line 236
    const/high16 v14, 0x3f800000    # 1.0f

    .restart local v14    # "endValue":F
    goto :goto_5

    .line 238
    .end local v14    # "endValue":F
    :cond_8
    sub-float v14, v9, v8

    div-float/2addr v14, v11

    .line 240
    .restart local v14    # "endValue":F
    :goto_5
    iget-object v15, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {v15, v12, v14, v13}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 241
    iget-object v13, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v15, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 243
    .end local v12    # "startValue":F
    .end local v14    # "endValue":F
    :cond_9
    :goto_6
    add-float/2addr v8, v11

    .line 203
    .end local v11    # "length":F
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_2

    .line 245
    .end local v10    # "j":I
    :cond_a
    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 246
    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 312
    .local p1, "property":Ljava/lang/Object;, "TT;"
    .local p2, "callback":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->OPACITY:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 314
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_0

    .line 316
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    .line 317
    if-nez p2, :cond_2

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    .line 320
    :cond_2
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 322
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 323
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 326
    :cond_3
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .line 141
    const-string v0, "StrokeContent#draw"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 142
    invoke-static {p2}, Lcom/airbnb/lottie/utils/Utils;->hasZeroScaleAxis(Landroid/graphics/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 144
    return-void

    .line 146
    :cond_0
    int-to-float v1, p3

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;->getIntValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 147
    .local v1, "alpha":I
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-static {v1, v3, v4}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 148
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v3

    invoke-static {p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 151
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 152
    return-void

    .line 154
    :cond_1
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V

    .line 156
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v2, :cond_2

    .line 157
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 160
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 161
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    .line 164
    .local v3, "pathGroup":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    invoke-static {v3}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 165
    invoke-direct {p0, p1, v3, p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->applyTrimPath(Landroid/graphics/Canvas;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V

    goto :goto_2

    .line 167
    :cond_3
    const-string v4, "StrokeContent#buildPath"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 168
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 169
    invoke-static {v3}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_1
    if-ltz v5, :cond_4

    .line 170
    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v7}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v7

    invoke-virtual {v6, v7, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 169
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 172
    .end local v5    # "j":I
    :cond_4
    invoke-static {v4}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 173
    const-string v4, "StrokeContent#drawPath"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 174
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 175
    invoke-static {v4}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 160
    .end local v3    # "pathGroup":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v2    # "i":I
    :cond_5
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 179
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 8
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "applyParents"    # Z

    .line 249
    const-string v0, "StrokeContent#getBounds"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 251
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    .line 253
    .local v2, "pathGroup":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-static {v2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 254
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v5}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 253
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 251
    .end local v2    # "pathGroup":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 259
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v1

    .line 260
    .local v1, "width":F
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    div-float v6, v1, v4

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    div-float v7, v1, v4

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    div-float v4, v1, v4

    add-float/2addr v7, v4

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 262
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 264
    iget v2, p1, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v3

    iget v5, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v3

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v3

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 270
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 271
    return-void
.end method

.method public onValueChanged()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 103
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

    .line 305
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/KeyPath;>;"
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    .line 306
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 7
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

    .line 106
    .local p1, "contentsBefore":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    .local p2, "contentsAfter":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/content/Content;>;"
    const/4 v0, 0x0

    .line 107
    .local v0, "trimPathContentBefore":Lcom/airbnb/lottie/animation/content/TrimPathContent;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 108
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/animation/content/Content;

    .line 109
    .local v2, "content":Lcom/airbnb/lottie/animation/content/Content;
    instance-of v3, v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 110
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v3

    sget-object v4, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v3, v4, :cond_0

    .line 111
    move-object v0, v2

    check-cast v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 107
    .end local v2    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 118
    :cond_2
    const/4 v1, 0x0

    .line 119
    .local v1, "currentPathGroup":Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_7

    .line 120
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/content/Content;

    .line 121
    .local v3, "content":Lcom/airbnb/lottie/animation/content/Content;
    instance-of v4, v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    .line 122
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v4

    sget-object v6, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v4, v6, :cond_4

    .line 123
    if-eqz v1, :cond_3

    .line 124
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_3
    new-instance v4, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    move-object v6, v3

    check-cast v6, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-direct {v4, v6, v5}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$1;)V

    move-object v1, v4

    .line 127
    move-object v4, v3

    check-cast v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-virtual {v4, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_2

    .line 128
    :cond_4
    instance-of v4, v3, Lcom/airbnb/lottie/animation/content/PathContent;

    if-eqz v4, :cond_6

    .line 129
    if-nez v1, :cond_5

    .line 130
    new-instance v4, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    invoke-direct {v4, v0, v5}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$1;)V

    move-object v1, v4

    .line 132
    :cond_5
    invoke-static {v1}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v3    # "content":Lcom/airbnb/lottie/animation/content/Content;
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 135
    .end local v2    # "i":I
    :cond_7
    if-eqz v1, :cond_8

    .line 136
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_8
    return-void
.end method
