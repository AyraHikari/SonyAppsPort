.class public Lcom/android/launcher3/anim/SpringAnimationBuilder;
.super Ljava/lang/Object;
.source "SpringAnimationBuilder.java"


# static fields
.field private static final THRESHOLD_MULTIPLIER:F = 0.65f


# instance fields
.field private a:D

.field private b:D

.field private beta:D

.field private gamma:D

.field private final mContext:Landroid/content/Context;

.field private mDampingRatio:F

.field private mDuration:F

.field private mEndValue:F

.field private mMinVisibleChange:F

.field private mStartValue:F

.field private mStiffness:F

.field private mValueThreshold:D

.field private mVelocity:F

.field private mVelocityThreshold:D

.field private va:D

.field private vb:D


# direct methods
.method static bridge synthetic -$$Nest$fgetmEndValue(Lcom/android/launcher3/anim/SpringAnimationBuilder;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mEndValue:F

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mVelocity:F

    .line 42
    const v1, 0x44bb8000    # 1500.0f

    iput v1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mStiffness:F

    .line 43
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mDampingRatio:F

    .line 44
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mMinVisibleChange:F

    .line 69
    iput v0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mDuration:F

    .line 72
    iput-object p1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method private cosSin(DDD)D
    .locals 6
    .param p1, "t"    # D
    .param p3, "cosFactor"    # D
    .param p5, "sinFactor"    # D

    .line 230
    iget-wide v0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->gamma:D

    mul-double/2addr v0, p1

    .line 231
    .local v0, "angle":D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, p5

    add-double/2addr v2, v4

    return-wide v2
.end method

.method private cosSinV(D)D
    .locals 7
    .param p1, "t"    # D

    .line 226
    iget-wide v3, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->va:D

    iget-wide v5, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->vb:D

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->cosSin(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private cosSinX(D)D
    .locals 7
    .param p1, "t"    # D

    .line 222
    iget-wide v3, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->a:D

    iget-wide v5, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->b:D

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->cosSin(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private exponentialComponent(D)D
    .locals 4
    .param p1, "t"    # D

    .line 218
    iget-wide v0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->beta:D

    neg-double v0, v0

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private getValue(F)F
    .locals 4
    .param p1, "time"    # F

    .line 133
    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->exponentialComponent(D)D

    move-result-wide v0

    float-to-double v2, p1

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->cosSinX(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mEndValue:F

    add-float/2addr v0, v1

    return v0
.end method

.method private isAtEquilibrium(D)Z
    .locals 8
    .param p1, "t"    # D

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->exponentialComponent(D)D

    move-result-wide v0

    .line 211
    .local v0, "ec":D
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->cosSinX(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mValueThreshold:D

    cmpl-double v2, v2, v4

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    .line 212
    return v3

    .line 214
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->cosSinV(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mVelocityThreshold:D

    cmpg-double v2, v4, v6

    if-gez v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method


# virtual methods
.method public build(Ljava/lang/Object;Landroid/util/FloatProperty;)Landroid/animation/ValueAnimator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;)",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    .line 193
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->computeParams()Lcom/android/launcher3/anim/SpringAnimationBuilder;

    .line 195
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    iget v1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mDuration:F

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 196
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {p0}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 197
    new-instance v1, Lcom/android/launcher3/anim/SpringAnimationBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher3/anim/SpringAnimationBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/anim/SpringAnimationBuilder;Landroid/util/FloatProperty;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 199
    new-instance v1, Lcom/android/launcher3/anim/SpringAnimationBuilder$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher3/anim/SpringAnimationBuilder$1;-><init>(Lcom/android/launcher3/anim/SpringAnimationBuilder;Landroid/util/FloatProperty;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 205
    return-object v0
.end method

.method public computeParams()Lcom/android/launcher3/anim/SpringAnimationBuilder;
    .locals 21

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v1

    .line 138
    .local v1, "singleFrameMs":I
    iget v2, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mStiffness:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 139
    .local v2, "naturalFreq":D
    iget v4, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mDampingRatio:F

    mul-float/2addr v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    .line 142
    .local v4, "dampedFreq":D
    iget v6, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mDampingRatio:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v6, v2

    iput-wide v6, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->beta:D

    .line 143
    iput-wide v4, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->gamma:D

    .line 144
    iget v8, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mStartValue:F

    iget v9, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mEndValue:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    iput-wide v8, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->a:D

    .line 145
    mul-double v10, v6, v8

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v14, v4, v12

    div-double/2addr v10, v14

    iget v14, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mVelocity:F

    float-to-double v14, v14

    div-double/2addr v14, v4

    add-double/2addr v10, v14

    iput-wide v10, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->b:D

    .line 147
    mul-double v14, v8, v6

    div-double/2addr v14, v12

    mul-double v16, v10, v4

    sub-double v14, v14, v16

    iput-wide v14, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->va:D

    .line 148
    mul-double v14, v8, v4

    mul-double/2addr v6, v10

    div-double/2addr v6, v12

    add-double/2addr v14, v6

    iput-wide v14, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->vb:D

    .line 150
    iget v6, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mMinVisibleChange:F

    const v7, 0x3f266666    # 0.65f

    mul-float/2addr v6, v7

    float-to-double v6, v6

    iput-wide v6, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mValueThreshold:D

    .line 155
    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v14

    int-to-double v14, v1

    div-double/2addr v6, v14

    iput-wide v6, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mVelocityThreshold:D

    .line 159
    neg-double v6, v8

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    iget-wide v8, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->gamma:D

    div-double/2addr v6, v8

    .line 162
    .local v6, "duration":D
    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v10, v8

    .line 163
    .local v10, "piByG":D
    :goto_0
    const-wide/16 v8, 0x0

    cmpg-double v14, v6, v8

    if-ltz v14, :cond_3

    invoke-direct {v0, v6, v7}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->exponentialComponent(D)D

    move-result-wide v14

    invoke-direct {v0, v6, v7}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->cosSinV(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    iget-wide v8, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mVelocityThreshold:D

    cmpl-double v8, v14, v8

    if-ltz v8, :cond_0

    move/from16 v18, v1

    move-wide/from16 v19, v2

    goto :goto_3

    .line 169
    :cond_0
    div-double v8, v10, v12

    sub-double v8, v6, v8

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 170
    .local v8, "edgeTime":D
    int-to-double v14, v1

    const-wide v16, 0x409f400000000000L    # 2000.0

    div-double v14, v14, v16

    .line 173
    .local v14, "minDiff":D
    :goto_1
    sub-double v16, v6, v8

    cmpg-double v16, v16, v14

    if-gez v16, :cond_1

    .line 174
    nop

    .line 184
    double-to-float v12, v6

    iput v12, v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mDuration:F

    .line 185
    return-object v0

    .line 176
    :cond_1
    add-double v16, v8, v6

    move/from16 v18, v1

    move-wide/from16 v19, v2

    .end local v1    # "singleFrameMs":I
    .end local v2    # "naturalFreq":D
    .local v18, "singleFrameMs":I
    .local v19, "naturalFreq":D
    div-double v1, v16, v12

    .line 177
    .local v1, "mid":D
    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->isAtEquilibrium(D)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 178
    move-wide v6, v1

    goto :goto_2

    .line 180
    :cond_2
    move-wide v8, v1

    .line 182
    .end local v1    # "mid":D
    :goto_2
    move/from16 v1, v18

    move-wide/from16 v2, v19

    goto :goto_1

    .line 163
    .end local v8    # "edgeTime":D
    .end local v14    # "minDiff":D
    .end local v18    # "singleFrameMs":I
    .end local v19    # "naturalFreq":D
    .local v1, "singleFrameMs":I
    .restart local v2    # "naturalFreq":D
    :cond_3
    move/from16 v18, v1

    move-wide/from16 v19, v2

    .line 165
    .end local v1    # "singleFrameMs":I
    .end local v2    # "naturalFreq":D
    .restart local v18    # "singleFrameMs":I
    .restart local v19    # "naturalFreq":D
    :goto_3
    add-double/2addr v6, v10

    move/from16 v1, v18

    move-wide/from16 v2, v19

    goto :goto_0
.end method

.method public getDuration()J
    .locals 4

    .line 189
    iget v0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mDuration:F

    float-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public getInterpolatedValue(F)F
    .locals 1
    .param p1, "fraction"    # F

    .line 129
    iget v0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mDuration:F

    mul-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->getValue(F)F

    move-result v0

    return v0
.end method

.method synthetic lambda$build$0$com-android-launcher3-anim-SpringAnimationBuilder(Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "property"    # Landroid/util/FloatProperty;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "anim"    # Landroid/animation/ValueAnimator;

    .line 198
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->getInterpolatedValue(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method public setDampingRatio(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;
    .locals 2
    .param p1, "dampingRatio"    # F

    .line 107
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    .line 110
    iput p1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mDampingRatio:F

    .line 111
    return-object p0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Damping ratio must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEndValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;
    .locals 0
    .param p1, "value"    # F

    .line 76
    iput p1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mEndValue:F

    .line 77
    return-object p0
.end method

.method public setMinimumVisibleChange(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;
    .locals 2
    .param p1, "minimumVisibleChange"    # F

    .line 116
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 119
    iput p1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mMinVisibleChange:F

    .line 120
    return-object p0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum visible change must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStartValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;
    .locals 0
    .param p1, "value"    # F

    .line 81
    iput p1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mStartValue:F

    .line 82
    return-object p0
.end method

.method public setStartVelocity(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;
    .locals 0
    .param p1, "startVelocity"    # F

    .line 124
    iput p1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mVelocity:F

    .line 125
    return-object p0
.end method

.method public setStiffness(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;
    .locals 2
    .param p1, "stiffness"    # F

    .line 97
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 100
    iput p1, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mStiffness:F

    .line 101
    return-object p0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Spring stiffness constant must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs setValues([F)Lcom/android/launcher3/anim/SpringAnimationBuilder;
    .locals 3
    .param p1, "values"    # [F

    .line 86
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 87
    aget v0, p1, v1

    iput v0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mStartValue:F

    .line 88
    array-length v0, p1

    sub-int/2addr v0, v2

    aget v0, p1, v0

    iput v0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mEndValue:F

    goto :goto_0

    .line 90
    :cond_0
    aget v0, p1, v1

    iput v0, p0, Lcom/android/launcher3/anim/SpringAnimationBuilder;->mEndValue:F

    .line 92
    :goto_0
    return-object p0
.end method
