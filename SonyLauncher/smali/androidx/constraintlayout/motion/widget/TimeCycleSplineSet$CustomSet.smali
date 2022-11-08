.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mCache:[F

.field mConstraintAttributeList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mTempValues:[F

.field mWaveProperties:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 2
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    .line 318
    .local p2, "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    .line 314
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    .line 319
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mAttributeName:Ljava/lang/String;

    .line 320
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    .line 321
    return-void
.end method


# virtual methods
.method public setPoint(IFFIF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "value"    # F
    .param p3, "period"    # F
    .param p4, "shape"    # I
    .param p5, "offset"    # F

    .line 346
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute,...)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;FIF)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "value"    # Landroidx/constraintlayout/widget/ConstraintAttribute;
    .param p3, "period"    # F
    .param p4, "shape"    # I
    .param p5, "offset"    # F

    .line 350
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 351
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 v2, 0x1

    aput p5, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 352
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveShape:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveShape:I

    .line 353
    return-void
.end method

.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 357
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    move/from16 v4, p2

    float-to-double v5, v4

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v3, v5, v6, v7}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[F)V

    .line 358
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    aget v5, v3, v5

    .line 359
    .local v5, "period":F
    array-length v6, v3

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget v3, v3, v6

    .line 360
    .local v3, "offset":F
    iget-wide v8, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_time:J

    sub-long v8, v1, v8

    .line 361
    .local v8, "delta_time":J
    iget v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_cycle:F

    float-to-double v10, v6

    long-to-double v12, v8

    const-wide v14, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v12, v14

    float-to-double v14, v5

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v10, v12

    double-to-float v6, v10

    iput v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_cycle:F

    .line 362
    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_time:J

    .line 363
    iget v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_cycle:F

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->calcWave(F)F

    move-result v6

    .line 364
    .local v6, "wave":F
    const/4 v10, 0x0

    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    .line 365
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCache:[F

    array-length v12, v12

    if-ge v11, v12, :cond_1

    .line 366
    iget-boolean v12, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    aget v13, v13, v11

    float-to-double v13, v13

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_0

    move v13, v7

    goto :goto_1

    :cond_0
    move v13, v10

    :goto_1
    or-int/2addr v12, v13

    iput-boolean v12, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    .line 367
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCache:[F

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    aget v13, v13, v11

    mul-float/2addr v13, v6

    add-float/2addr v13, v3

    aput v13, v12, v11

    .line 365
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 369
    .end local v11    # "i":I
    :cond_1
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCache:[F

    move-object/from16 v12, p1

    invoke-virtual {v10, v12, v11}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    .line 370
    const/4 v10, 0x0

    cmpl-float v10, v5, v10

    if-eqz v10, :cond_2

    .line 371
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    .line 373
    :cond_2
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    return v7
.end method

.method public setup(I)V
    .locals 16
    .param p1, "curveType"    # I

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 325
    .local v1, "size":I
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v2

    .line 326
    .local v2, "dimensionality":I
    new-array v4, v1, [D

    .line 327
    .local v4, "time":[D
    add-int/lit8 v5, v2, 0x2

    new-array v5, v5, [F

    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    .line 328
    new-array v5, v2, [F

    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCache:[F

    .line 329
    add-int/lit8 v5, v2, 0x2

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x1

    aput v5, v6, v7

    aput v1, v6, v3

    const-class v5, D

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 330
    .local v5, "values":[[D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_1

    .line 331
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 332
    .local v8, "key":I
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 333
    .local v9, "ca":Landroidx/constraintlayout/widget/ConstraintAttribute;
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    .line 334
    .local v10, "waveProp":[F
    int-to-double v11, v8

    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v11, v13

    aput-wide v11, v4, v6

    .line 335
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v9, v11}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    .line 336
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_1
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    array-length v13, v12

    if-ge v11, v13, :cond_0

    .line 337
    aget-object v13, v5, v6

    aget v12, v12, v11

    float-to-double v14, v12

    aput-wide v14, v13, v11

    .line 336
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 339
    .end local v11    # "k":I
    :cond_0
    aget-object v11, v5, v6

    aget v12, v10, v3

    float-to-double v12, v12

    aput-wide v12, v11, v2

    .line 340
    aget-object v11, v5, v6

    add-int/lit8 v12, v2, 0x1

    aget v13, v10, v7

    float-to-double v13, v13

    aput-wide v13, v11, v12

    .line 330
    .end local v8    # "key":I
    .end local v9    # "ca":Landroidx/constraintlayout/widget/ConstraintAttribute;
    .end local v10    # "waveProp":[F
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 342
    .end local v6    # "i":I
    :cond_1
    move/from16 v3, p1

    invoke-static {v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v6

    iput-object v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    .line 343
    return-void
.end method
