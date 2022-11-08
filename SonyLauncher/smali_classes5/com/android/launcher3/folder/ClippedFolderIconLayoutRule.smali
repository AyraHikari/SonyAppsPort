.class public Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
.super Ljava/lang/Object;
.source "ClippedFolderIconLayoutRule.java"


# static fields
.field public static final ENTER_INDEX:I = -0x3

.field public static final EXIT_INDEX:I = -0x2

.field public static final ICON_OVERLAP_FACTOR:F = 1.125f

.field private static final ITEM_RADIUS_SCALE_FACTOR:F = 1.15f

.field public static final MAX_NUM_ITEMS_IN_PREVIEW:I = 0x4

.field private static final MAX_RADIUS_DILATION:F = 0.25f

.field private static final MAX_SCALE:F = 0.51f

.field private static final MIN_NUM_ITEMS_IN_PREVIEW:I = 0x2

.field private static final MIN_SCALE:F = 0.44f


# instance fields
.field private mAvailableSpace:F

.field private mBaselineIconScale:F

.field private mIconSize:F

.field private mIsRtl:Z

.field private mRadius:F

.field private mTmpPoint:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    return-void
.end method

.method private getGridPosition(II[F)V
    .locals 7
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "result"    # [F

    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPosition(II[F)V

    .line 76
    aget v2, p3, v0

    .line 77
    .local v2, "left":F
    const/4 v3, 0x1

    aget v4, p3, v3

    .line 79
    .local v4, "top":F
    const/4 v5, 0x3

    invoke-direct {p0, v5, v1, p3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPosition(II[F)V

    .line 80
    aget v1, p3, v0

    sub-float/2addr v1, v2

    .line 81
    .local v1, "dx":F
    aget v5, p3, v3

    sub-float/2addr v5, v4

    .line 83
    .local v5, "dy":F
    int-to-float v6, p2

    mul-float/2addr v6, v1

    add-float/2addr v6, v2

    aput v6, p3, v0

    .line 84
    int-to-float v0, p1

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    aput v0, p3, v3

    .line 85
    return-void
.end method

.method private getPosition(II[F)V
    .locals 20
    .param p1, "index"    # I
    .param p2, "curNumItems"    # I
    .param p3, "result"    # [F

    .line 89
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x2

    move/from16 v3, p2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 93
    .end local p2    # "curNumItems":I
    .local v3, "curNumItems":I
    iget-boolean v4, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    if-eqz v4, :cond_0

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_0
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    .line 96
    .local v5, "theta0":D
    :goto_0
    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    .line 98
    .local v4, "direction":I
    :goto_1
    const-wide/16 v8, 0x0

    .line 99
    .local v8, "thetaShift":D
    const/4 v10, 0x3

    const/4 v11, 0x4

    if-ne v3, v10, :cond_2

    .line 100
    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_2

    .line 101
    :cond_2
    if-ne v3, v11, :cond_3

    .line 102
    const-wide v8, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 104
    :cond_3
    :goto_2
    int-to-double v12, v4

    mul-double/2addr v12, v8

    add-double/2addr v5, v12

    .line 109
    if-ne v3, v11, :cond_4

    if-ne v1, v10, :cond_4

    .line 110
    const/4 v1, 0x2

    .end local p1    # "index":I
    .local v1, "index":I
    goto :goto_3

    .line 111
    .end local v1    # "index":I
    .restart local p1    # "index":I
    :cond_4
    if-ne v3, v11, :cond_5

    if-ne v1, v2, :cond_5

    .line 112
    const/4 v1, 0x3

    .line 116
    .end local p1    # "index":I
    .restart local v1    # "index":I
    :cond_5
    :goto_3
    iget v2, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mRadius:F

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3e800000    # 0.25f

    add-int/lit8 v12, v3, -0x2

    int-to-float v12, v12

    mul-float/2addr v12, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v12, v11

    add-float/2addr v12, v10

    mul-float/2addr v2, v12

    .line 118
    .local v2, "radius":F
    int-to-double v12, v1

    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    move-wide/from16 v16, v8

    .end local v8    # "thetaShift":D
    .local v16, "thetaShift":D
    int-to-double v7, v3

    div-double/2addr v14, v7

    mul-double/2addr v12, v14

    int-to-double v7, v4

    mul-double/2addr v12, v7

    add-double/2addr v12, v5

    .line 120
    .local v12, "theta":D
    iget v7, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v8

    mul-float/2addr v7, v8

    div-float/2addr v7, v11

    .line 125
    .local v7, "halfIconSize":F
    const/4 v8, 0x0

    iget v9, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    div-float/2addr v9, v11

    float-to-double v14, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v14, v14, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v14, v14, v18

    double-to-float v10, v14

    add-float/2addr v9, v10

    sub-float/2addr v9, v7

    aput v9, p3, v8

    .line 126
    iget v8, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    div-float/2addr v8, v11

    neg-float v9, v2

    float-to-double v9, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v9, v14

    div-double v9, v9, v18

    double-to-float v9, v9

    add-float/2addr v8, v9

    sub-float/2addr v8, v7

    const/4 v9, 0x1

    aput v8, p3, v9

    .line 128
    return-void
.end method


# virtual methods
.method public computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .locals 7
    .param p1, "index"    # I
    .param p2, "curNumItems"    # I
    .param p3, "params"    # Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 36
    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v0

    .line 40
    .local v0, "totalScale":F
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-ne p1, v4, :cond_0

    .line 43
    iget-object v4, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    invoke-direct {p0, v3, v1, v4}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getGridPosition(II[F)V

    goto :goto_0

    .line 44
    :cond_0
    const/4 v4, -0x3

    if-ne p1, v4, :cond_1

    .line 47
    iget-object v4, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    invoke-direct {p0, v2, v1, v4}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getGridPosition(II[F)V

    goto :goto_0

    .line 48
    :cond_1
    const/4 v1, 0x4

    if-lt p1, v1, :cond_2

    .line 50
    iget-object v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    iget v4, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v6, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    mul-float/2addr v6, v0

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    aput v4, v1, v2

    aput v4, v1, v3

    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPosition(II[F)V

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    aget v3, v1, v3

    .line 56
    .local v3, "transX":F
    aget v1, v1, v2

    .line 58
    .local v1, "transY":F
    if-nez p3, :cond_3

    .line 59
    new-instance v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-direct {v2, v3, v1, v0}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    move-object p3, v2

    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {p3, v3, v1, v0}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->update(FFF)V

    .line 63
    :goto_1
    return-object p3
.end method

.method public getIconSize()F
    .locals 1

    .line 142
    iget v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    return v0
.end method

.method public init(IFZ)V
    .locals 2
    .param p1, "availableSpace"    # I
    .param p2, "intrinsicIconSize"    # F
    .param p3, "rtl"    # Z

    .line 27
    int-to-float v0, p1

    iput v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    .line 28
    int-to-float v0, p1

    const v1, 0x3f933333    # 1.15f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mRadius:F

    .line 29
    iput p2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    .line 30
    iput-boolean p3, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    .line 31
    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    .line 32
    return-void
.end method

.method public scaleForItem(I)F
    .locals 2
    .param p1, "numItems"    # I

    .line 133
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 134
    const v0, 0x3f028f5c    # 0.51f

    .local v0, "scale":F
    goto :goto_0

    .line 136
    .end local v0    # "scale":F
    :cond_0
    const v0, 0x3ee147ae    # 0.44f

    .line 138
    .restart local v0    # "scale":F
    :goto_0
    iget v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    mul-float/2addr v1, v0

    return v1
.end method
