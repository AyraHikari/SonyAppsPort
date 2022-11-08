.class public Lcom/android/launcher3/touch/PortraitPagedViewHandler;
.super Ljava/lang/Object;
.source "PortraitPagedViewHandler.java"

# interfaces
.implements Lcom/android/launcher3/touch/PagedOrientationHandler;


# instance fields
.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpRectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public adjustFloatingIconStartVelocity(Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "velocity"    # Landroid/graphics/PointF;

    .line 102
    return-void
.end method

.method public fixBoundsForHomeAnimStartRect(Landroid/graphics/RectF;Lcom/android/launcher3/DeviceProfile;)V
    .locals 3
    .param p1, "outStartRect"    # Landroid/graphics/RectF;
    .param p2, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 106
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 107
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_0

    .line 108
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 109
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 111
    :cond_1
    :goto_0
    return-void
.end method

.method public getAdditionalInsetForTaskMenu(F)Landroid/graphics/PointF;
    .locals 2
    .param p1, "margin"    # F

    .line 312
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getCenterForPage(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 236
    return v0
.end method

.method public getChildBounds(Landroid/view/View;IIZ)Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childStart"    # I
    .param p3, "pageCenter"    # I
    .param p4, "layoutChild"    # Z

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 399
    .local v0, "childWidth":I
    add-int v1, p2, v0

    .line 400
    .local v1, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 401
    .local v2, "childHeight":I
    div-int/lit8 v3, v2, 0x2

    sub-int v3, p3, v3

    .line 402
    .local v3, "childTop":I
    if-eqz p4, :cond_0

    .line 403
    add-int v4, v3, v2

    invoke-virtual {p1, p2, v3, v1, v4}, Landroid/view/View;->layout(IIII)V

    .line 405
    :cond_0
    new-instance v4, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;

    invoke-direct {v4, v0, v2, v1, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;-><init>(IIII)V

    return-object v4
.end method

.method public getChildStart(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public getClearAllSidePadding(Landroid/view/View;Z)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isRtl"    # Z

    .line 171
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    neg-int v0, v0

    :goto_0
    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDefaultSplitPosition(Lcom/android/launcher3/DeviceProfile;)I
    .locals 2
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 685
    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_1

    .line 688
    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    .line 689
    const/4 v0, 0x1

    return v0

    .line 691
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 686
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default position available only for large screens"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDegreesRotated()F
    .locals 1

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public getDistanceToBottomOfRect(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 410
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDwbLayoutTranslations(IILcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;Lcom/android/launcher3/DeviceProfile;[Landroid/view/View;ILandroid/view/View;)Landroid/util/Pair;
    .locals 7
    .param p1, "taskViewWidth"    # I
    .param p2, "taskViewHeight"    # I
    .param p3, "splitBounds"    # Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;
    .param p4, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;
    .param p5, "thumbnailViews"    # [Landroid/view/View;
    .param p6, "desiredTaskId"    # I
    .param p7, "banner"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;",
            "Lcom/android/launcher3/DeviceProfile;",
            "[",
            "Landroid/view/View;",
            "I",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "translationX":F
    const/4 v1, 0x0

    .line 321
    .local v1, "translationY":F
    invoke-virtual {p7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 322
    .local v2, "bannerParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, 0x0

    invoke-virtual {p7, v3}, Landroid/view/View;->setPivotX(F)V

    .line 323
    invoke-virtual {p7, v3}, Landroid/view/View;->setPivotY(F)V

    .line 324
    invoke-virtual {p0}, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->getDegreesRotated()F

    move-result v3

    invoke-virtual {p7, v3}, Landroid/view/View;->setRotation(F)V

    .line 325
    if-nez p3, :cond_0

    .line 327
    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 328
    const/16 v3, 0x51

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 329
    new-instance v3, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 332
    :cond_0
    iget-boolean v3, p4, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const v3, 0x800003

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    or-int/lit8 v3, v3, 0x50

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 335
    iget v3, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTopTaskId:I

    const/4 v5, 0x0

    if-ne p6, v3, :cond_2

    .line 336
    aget-object v3, p5, v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1

    .line 338
    :cond_2
    aget-object v3, p5, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 342
    :goto_1
    iget-boolean v3, p4, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v3, :cond_5

    .line 343
    iget v3, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->rightBottomTaskId:I

    if-ne p6, v3, :cond_7

    .line 344
    iget-boolean v3, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    if-eqz v3, :cond_3

    .line 345
    iget v3, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->topTaskPercent:F

    goto :goto_2

    .line 346
    :cond_3
    iget v3, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTaskPercent:F

    :goto_2
    nop

    .line 347
    .local v3, "leftTopTaskPercent":F
    iget-boolean v4, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    if-eqz v4, :cond_4

    .line 348
    iget v4, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->dividerHeightPercent:F

    goto :goto_3

    .line 349
    :cond_4
    iget v4, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->dividerWidthPercent:F

    :goto_3
    nop

    .line 350
    .local v4, "dividerThicknessPercent":F
    int-to-float v5, p1

    mul-float/2addr v5, v3

    int-to-float v6, p1

    mul-float/2addr v6, v4

    add-float v0, v5, v6

    .line 352
    .end local v3    # "leftTopTaskPercent":F
    .end local v4    # "dividerThicknessPercent":F
    goto :goto_5

    .line 354
    :cond_5
    iget v3, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTopTaskId:I

    if-ne p6, v3, :cond_7

    .line 355
    aget-object v3, p5, v5

    .line 357
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 358
    .local v3, "snapshotParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v4, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_6

    .line 359
    iget v4, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->topTaskPercent:F

    sub-float/2addr v5, v4

    goto :goto_4

    .line 360
    :cond_6
    iget v4, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTaskPercent:F

    sub-float/2addr v5, v4

    :goto_4
    move v4, v5

    .line 361
    .local v4, "bottomRightTaskPlusDividerPercent":F
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    neg-float v1, v5

    .line 365
    .end local v3    # "snapshotParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "bottomRightTaskPlusDividerPercent":F
    :cond_7
    :goto_5
    new-instance v3, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public getEnd(Landroid/graphics/RectF;)F
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 166
    iget v0, p1, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method public getFinalSplitPlaceholderBounds(ILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "splitDividerSize"    # I
    .param p2, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "stagePosition"    # I
    .param p4, "out1"    # Landroid/graphics/Rect;
    .param p5, "out2"    # Landroid/graphics/Rect;

    .line 499
    iget v0, p2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 500
    .local v0, "screenHeight":I
    iget v1, p2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    .line 501
    .local v1, "screenWidth":I
    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v2, p1

    const/4 v3, 0x0

    invoke-virtual {p4, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 502
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p1

    invoke-virtual {p5, v3, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 503
    iget-boolean v2, p2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v2, :cond_0

    .line 505
    return-void

    .line 509
    :cond_0
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    move v3, v2

    :cond_1
    move v2, v3

    .line 510
    .local v2, "pinToRight":Z
    int-to-float v3, v0

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 512
    .local v3, "postRotateScale":F
    iget-object v4, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 513
    iget-object v4, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_2

    const/high16 v5, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_2
    const/high16 v5, 0x43870000    # 270.0f

    :goto_0
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 514
    iget-object v4, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    int-to-float v6, v0

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    int-to-float v5, v1

    :goto_2
    invoke-virtual {v4, v6, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 515
    iget-object v4, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v3

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 517
    iget-object v4, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 518
    iget-object v4, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 519
    iget-object v4, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, p4}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 521
    iget-object v4, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 522
    iget-object v4, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 523
    iget-object v4, p0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, p5}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 524
    return-void
.end method

.method public getInitialSplitPlaceholderBounds(IILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;)V
    .locals 16
    .param p1, "placeholderHeight"    # I
    .param p2, "placeholderInset"    # I
    .param p3, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p4, "stagePosition"    # I
    .param p5, "out"    # Landroid/graphics/Rect;

    .line 421
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    iget v4, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    .line 422
    .local v4, "screenWidth":I
    iget v5, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 423
    .local v5, "screenHeight":I
    const/4 v6, 0x1

    const/4 v7, 0x0

    move/from16 v8, p4

    if-ne v8, v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v7

    .line 425
    .local v6, "pinToRight":Z
    :goto_0
    iget-boolean v9, v2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v9, :cond_1

    .line 426
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .local v9, "insetThickness":I
    goto :goto_1

    .line 428
    .end local v9    # "insetThickness":I
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v9

    if-eqz v6, :cond_2

    iget v9, v9, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 430
    .restart local v9    # "insetThickness":I
    :goto_1
    add-int v10, p1, v9

    invoke-virtual {v3, v7, v7, v4, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 431
    iget-boolean v10, v2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v12, 0x3f800000    # 1.0f

    if-nez v10, :cond_3

    .line 433
    invoke-virtual {v3, v1, v7}, Landroid/graphics/Rect;->inset(II)V

    .line 437
    int-to-float v7, v5

    mul-float/2addr v7, v12

    div-float/2addr v7, v11

    mul-int/lit8 v10, v1, 0x2

    sub-int v10, v4, v10

    int-to-float v10, v10

    mul-float/2addr v7, v10

    int-to-float v10, v4

    div-float/2addr v7, v10

    float-to-int v7, v7

    .line 439
    .local v7, "totalHeight":I
    iget v10, v3, Landroid/graphics/Rect;->top:I

    sub-int v11, v7, p1

    sub-int/2addr v10, v11

    iput v10, v3, Landroid/graphics/Rect;->top:I

    .line 440
    return-void

    .line 445
    .end local v7    # "totalHeight":I
    :cond_3
    int-to-float v7, v5

    int-to-float v10, v4

    div-float/2addr v7, v10

    .line 446
    .local v7, "postRotateScale":F
    iget-object v10, v0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 447
    iget-object v10, v0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    if-eqz v6, :cond_4

    const/high16 v13, 0x42b40000    # 90.0f

    goto :goto_2

    :cond_4
    const/high16 v13, 0x43870000    # 270.0f

    :goto_2
    invoke-virtual {v10, v13}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 448
    iget-object v10, v0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    const/4 v13, 0x0

    if-eqz v6, :cond_5

    int-to-float v14, v4

    goto :goto_3

    :cond_5
    move v14, v13

    :goto_3
    if-eqz v6, :cond_6

    move v15, v13

    goto :goto_4

    :cond_6
    int-to-float v15, v4

    :goto_4
    invoke-virtual {v10, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 450
    iget-object v10, v0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v12, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 452
    iget-object v10, v0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v10, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 453
    iget-object v10, v0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v14, v0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v10, v14}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 454
    iget-object v10, v0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpRectF:Landroid/graphics/RectF;

    int-to-float v14, v1

    invoke-virtual {v10, v13, v14}, Landroid/graphics/RectF;->inset(FF)V

    .line 455
    iget-object v10, v0, Lcom/android/launcher3/touch/PortraitPagedViewHandler;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v10, v3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 459
    int-to-float v10, v4

    mul-float/2addr v10, v12

    div-float/2addr v10, v11

    mul-int/lit8 v11, v1, 0x2

    sub-int v11, v5, v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    int-to-float v11, v5

    div-float/2addr v10, v11

    float-to-int v10, v10

    .line 461
    .local v10, "totalWidth":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 462
    .local v11, "width":I
    if-eqz v6, :cond_7

    .line 463
    iget v12, v3, Landroid/graphics/Rect;->right:I

    sub-int v13, v10, v11

    add-int/2addr v12, v13

    iput v12, v3, Landroid/graphics/Rect;->right:I

    goto :goto_5

    .line 465
    :cond_7
    iget v12, v3, Landroid/graphics/Rect;->left:I

    sub-int v13, v10, v11

    sub-int/2addr v12, v13

    iput v12, v3, Landroid/graphics/Rect;->left:I

    .line 467
    :goto_5
    return-void
.end method

.method public getMeasuredSize(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getPrimaryDirection(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public getPrimaryScale(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method public getPrimaryScroll(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getPrimarySize(Landroid/graphics/RectF;)F
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 156
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    return v0
.end method

.method public getPrimarySize(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getPrimaryValue(FF)F
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 86
    return p1
.end method

.method public getPrimaryValue(II)I
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 76
    return p1
.end method

.method public getPrimaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 66
    .local p1, "x":Ljava/lang/Object;, "TT;"
    .local p2, "y":Ljava/lang/Object;, "TT;"
    return-object p1
.end method

.method public getPrimaryVelocity(Landroid/view/VelocityTracker;I)F
    .locals 1
    .param p1, "velocityTracker"    # Landroid/view/VelocityTracker;
    .param p2, "pointerId"    # I

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0
.end method

.method public getPrimaryViewTranslate()Landroid/util/FloatProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    return-object v0
.end method

.method public getRecentsRtlSetting(Landroid/content/res/Resources;)Z
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 206
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getRotation()I
    .locals 1

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public getScrollOffsetEnd(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getScrollOffsetStart(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;

    .line 242
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSecondaryDimension(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getSecondaryTranslationDirectionFactor()I
    .locals 1

    .line 251
    const/4 v0, -0x1

    return v0
.end method

.method public getSecondaryValue(FF)F
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 91
    return p2
.end method

.method public getSecondaryValue(II)I
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 81
    return p2
.end method

.method public getSecondaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 71
    .local p1, "x":Ljava/lang/Object;, "TT;"
    .local p2, "y":Ljava/lang/Object;, "TT;"
    return-object p2
.end method

.method public getSecondaryViewTranslate()Landroid/util/FloatProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    return-object v0
.end method

.method public getSplitPositionOptions(Lcom/android/launcher3/DeviceProfile;)Ljava/util/List;
    .locals 1
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/DeviceProfile;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;",
            ">;"
        }
    .end annotation

    .line 415
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getSplitPositionOptions(Lcom/android/launcher3/DeviceProfile;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSplitSelectTaskOffset(Landroid/util/FloatProperty;Landroid/util/FloatProperty;Lcom/android/launcher3/DeviceProfile;)Landroid/util/Pair;
    .locals 1
    .param p1, "primary"    # Landroid/util/FloatProperty;
    .param p2, "secondary"    # Landroid/util/FloatProperty;
    .param p3, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/FloatProperty;",
            "Landroid/util/FloatProperty;",
            "Lcom/android/launcher3/DeviceProfile;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/util/FloatProperty;",
            "Landroid/util/FloatProperty;",
            ">;"
        }
    .end annotation

    .line 698
    iget-boolean v0, p3, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    .line 699
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 701
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSplitTranslationDirectionFactor(ILcom/android/launcher3/DeviceProfile;)I
    .locals 2
    .param p1, "stagePosition"    # I
    .param p2, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 256
    iget-boolean v0, p2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 257
    const/4 v0, -0x1

    return v0

    .line 259
    :cond_0
    return v1
.end method

.method public getStart(Landroid/graphics/RectF;)F
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 161
    iget v0, p1, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public getTaskDragDisplacementFactor(Z)I
    .locals 1
    .param p1, "isRtl"    # Z

    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method public getTaskMenuWidth(Landroid/view/View;Lcom/android/launcher3/DeviceProfile;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 281
    iget-boolean v0, p2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 281
    :goto_0
    return v0
.end method

.method public getTaskMenuX(FLandroid/view/View;ILcom/android/launcher3/DeviceProfile;)F
    .locals 3
    .param p1, "x"    # F
    .param p2, "thumbnailView"    # Landroid/view/View;
    .param p3, "overScroll"    # I
    .param p4, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 266
    iget-boolean v0, p4, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    .line 267
    int-to-float v0, p3

    add-float/2addr v0, p1

    .line 268
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 267
    return v0

    .line 270
    :cond_0
    int-to-float v0, p3

    add-float/2addr v0, p1

    return v0
.end method

.method public getTaskMenuY(FLandroid/view/View;I)F
    .locals 0
    .param p1, "y"    # F
    .param p2, "thumbnailView"    # Landroid/view/View;
    .param p3, "overScroll"    # I

    .line 276
    return p1
.end method

.method public getUpDirection(Z)I
    .locals 1
    .param p1, "isRtl"    # Z

    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public getUpDownSwipeDirection()Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;
    .locals 1

    .line 372
    sget-object v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    return-object v0
.end method

.method public isGoingUp(FZ)Z
    .locals 1
    .param p1, "displacement"    # F
    .param p2, "isRtl"    # Z

    .line 384
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLayoutNaturalToLauncher()Z
    .locals 1

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public measureGroupedTaskViewThumbnailBounds(Landroid/view/View;Landroid/view/View;IILcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;Lcom/android/launcher3/DeviceProfile;Z)V
    .locals 16
    .param p1, "primarySnapshot"    # Landroid/view/View;
    .param p2, "secondarySnapshot"    # Landroid/view/View;
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I
    .param p5, "splitBoundsConfig"    # Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;
    .param p6, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p7, "isRtl"    # Z

    .line 556
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    iget v6, v5, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    .line 557
    .local v6, "spaceAboveSnapshot":I
    sub-int v7, v3, v6

    .line 558
    .local v7, "totalThumbnailHeight":I
    iget-boolean v8, v4, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    if-eqz v8, :cond_0

    .line 559
    iget v8, v4, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->dividerHeightPercent:F

    int-to-float v9, v3

    mul-float/2addr v8, v9

    float-to-int v8, v8

    goto :goto_0

    .line 560
    :cond_0
    iget v8, v4, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->dividerWidthPercent:F

    int-to-float v9, v2

    mul-float/2addr v8, v9

    float-to-int v8, v8

    :goto_0
    nop

    .line 565
    .local v8, "dividerBar":I
    iget-boolean v9, v4, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    if-eqz v9, :cond_1

    .line 566
    iget v9, v4, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->topTaskPercent:F

    goto :goto_1

    :cond_1
    iget v9, v4, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTaskPercent:F

    .line 567
    .local v9, "taskPercent":F
    :goto_1
    iget-boolean v10, v5, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v10, :cond_3

    .line 568
    move v10, v7

    .line 569
    .local v10, "primarySnapshotHeight":I
    int-to-float v12, v2

    mul-float/2addr v12, v9

    float-to-int v12, v12

    .line 571
    .local v12, "primarySnapshotWidth":I
    move v13, v7

    .line 572
    .local v13, "secondarySnapshotHeight":I
    sub-int v14, v2, v12

    sub-int/2addr v14, v8

    .line 573
    .local v14, "secondarySnapshotWidth":I
    add-int v15, v12, v8

    .line 574
    .local v15, "translationX":I
    if-eqz p7, :cond_2

    .line 575
    neg-int v11, v15

    int-to-float v11, v11

    invoke-virtual {v0, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 576
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    .line 578
    :cond_2
    const/4 v11, 0x0

    int-to-float v11, v15

    invoke-virtual {v1, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 579
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 581
    :goto_2
    int-to-float v11, v6

    invoke-virtual {v1, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 582
    .end local v15    # "translationX":I
    goto :goto_3

    .line 583
    .end local v10    # "primarySnapshotHeight":I
    .end local v12    # "primarySnapshotWidth":I
    .end local v13    # "secondarySnapshotHeight":I
    .end local v14    # "secondarySnapshotWidth":I
    :cond_3
    move/from16 v12, p3

    .line 584
    .restart local v12    # "primarySnapshotWidth":I
    int-to-float v10, v7

    mul-float/2addr v10, v9

    float-to-int v10, v10

    .line 586
    .restart local v10    # "primarySnapshotHeight":I
    move/from16 v14, p3

    .line 587
    .restart local v14    # "secondarySnapshotWidth":I
    sub-int v11, v7, v10

    sub-int v13, v11, v8

    .line 588
    .restart local v13    # "secondarySnapshotHeight":I
    add-int v11, v10, v6

    add-int/2addr v11, v8

    .line 589
    .local v11, "translationY":I
    int-to-float v15, v11

    invoke-virtual {v1, v15}, Landroid/view/View;->setTranslationY(F)V

    .line 590
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroid/view/View;->setTranslationX(F)V

    .line 591
    invoke-virtual {v0, v15}, Landroid/view/View;->setTranslationX(F)V

    .line 593
    .end local v11    # "translationY":I
    :goto_3
    nop

    .line 594
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 595
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 593
    invoke-virtual {v0, v15, v2}, Landroid/view/View;->measure(II)V

    .line 596
    nop

    .line 597
    invoke-static {v14, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 598
    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 596
    invoke-virtual {v1, v2, v11}, Landroid/view/View;->measure(II)V

    .line 600
    return-void
.end method

.method public set(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;II)V
    .locals 0
    .param p3, "primaryParam"    # I
    .param p4, "secondaryParam"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction<",
            "TT;>;II)V"
        }
    .end annotation

    .line 131
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "action":Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;, "Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction<TT;>;"
    invoke-interface {p2, p1, p3, p4}, Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;->call(Ljava/lang/Object;II)V

    .line 132
    return-void
.end method

.method public setLayoutParamsForTaskMenuOptionItem(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout;Lcom/android/launcher3/DeviceProfile;)V
    .locals 1
    .param p1, "lp"    # Landroid/widget/LinearLayout$LayoutParams;
    .param p2, "viewGroup"    # Landroid/widget/LinearLayout;
    .param p3, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 299
    const/4 v0, -0x1

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 300
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 301
    return-void
.end method

.method public setMaxScroll(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "maxScroll"    # I

    .line 201
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 202
    return-void
.end method

.method public setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V
    .locals 1
    .param p3, "param"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction<",
            "TT;>;F)V"
        }
    .end annotation

    .line 120
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "action":Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;, "Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction<TT;>;"
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;->call(Ljava/lang/Object;FF)V

    .line 121
    return-void
.end method

.method public setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V
    .locals 1
    .param p3, "param"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction<",
            "TT;>;I)V"
        }
    .end annotation

    .line 115
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "action":Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;, "Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction<TT;>;"
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;->call(Ljava/lang/Object;II)V

    .line 116
    return-void
.end method

.method public setPrimaryScale(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scale"    # F

    .line 221
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 222
    return-void
.end method

.method public setSecondary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V
    .locals 1
    .param p3, "param"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction<",
            "TT;>;F)V"
        }
    .end annotation

    .line 125
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "action":Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;, "Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction<TT;>;"
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3}, Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;->call(Ljava/lang/Object;FF)V

    .line 126
    return-void
.end method

.method public setSecondaryScale(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scale"    # F

    .line 226
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 227
    return-void
.end method

.method public setSplitIconParams(Landroid/view/View;Landroid/view/View;IIIIIZLcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V
    .locals 18
    .param p1, "primaryIconView"    # Landroid/view/View;
    .param p2, "secondaryIconView"    # Landroid/view/View;
    .param p3, "taskIconHeight"    # I
    .param p4, "primarySnapshotWidth"    # I
    .param p5, "primarySnapshotHeight"    # I
    .param p6, "groupedTaskViewHeight"    # I
    .param p7, "groupedTaskViewWidth"    # I
    .param p8, "isRtl"    # Z
    .param p9, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;
    .param p10, "splitConfig"    # Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    .line 615
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    .line 616
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 617
    .local v5, "primaryIconParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 620
    .local v6, "secondaryIconParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v7, v3, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v7, :cond_8

    .line 624
    invoke-virtual/range {p9 .. p9}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 625
    invoke-virtual/range {p9 .. p9}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 626
    :cond_0
    invoke-virtual/range {p9 .. p9}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    :goto_0
    nop

    .line 627
    .local v7, "fullscreenInsetThickness":I
    iget v8, v3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x2

    .line 629
    .local v8, "fullscreenMidpointFromBottom":I
    int-to-float v9, v8

    iget v10, v3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 631
    .local v9, "midpointFromBottomPct":F
    int-to-float v10, v7

    iget v11, v3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 632
    .local v10, "insetPct":F
    const/4 v11, 0x0

    .line 633
    .local v11, "spaceAboveSnapshots":I
    sub-int v12, p7, v11

    .line 634
    .local v12, "overviewThumbnailAreaThickness":I
    int-to-float v13, v12

    mul-float/2addr v13, v9

    float-to-int v13, v13

    .line 636
    .local v13, "bottomToMidpointOffset":I
    int-to-float v14, v12

    mul-float/2addr v14, v10

    float-to-int v14, v14

    .line 638
    .local v14, "insetOffset":I
    invoke-virtual/range {p9 .. p9}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v15

    const v16, 0x800003

    const v17, 0x800005

    if-eqz v15, :cond_4

    .line 639
    if-eqz p8, :cond_1

    move/from16 v15, v17

    goto :goto_1

    :cond_1
    move/from16 v15, v16

    :goto_1
    or-int/lit8 v15, v15, 0x30

    iput v15, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 640
    if-eqz p8, :cond_2

    move/from16 v16, v17

    :cond_2
    or-int/lit8 v15, v16, 0x30

    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 641
    iget-boolean v15, v4, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->initiatedFromSeascape:Z

    if-eqz v15, :cond_3

    .line 644
    sub-int v15, v13, v2

    int-to-float v15, v15

    invoke-virtual {v0, v15}, Landroid/view/View;->setTranslationX(F)V

    .line 645
    int-to-float v15, v13

    invoke-virtual {v1, v15}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_4

    .line 649
    :cond_3
    add-int v15, v13, v14

    sub-int/2addr v15, v2

    int-to-float v15, v15

    invoke-virtual {v0, v15}, Landroid/view/View;->setTranslationX(F)V

    .line 651
    add-int v15, v13, v14

    int-to-float v15, v15

    invoke-virtual {v1, v15}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_4

    .line 654
    :cond_4
    if-eqz p8, :cond_5

    move/from16 v15, v16

    goto :goto_2

    :cond_5
    move/from16 v15, v17

    :goto_2
    or-int/lit8 v15, v15, 0x30

    iput v15, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 655
    if-eqz p8, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v16, v17

    :goto_3
    or-int/lit8 v15, v16, 0x30

    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 656
    iget-boolean v15, v4, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->initiatedFromSeascape:Z

    if-nez v15, :cond_7

    .line 659
    neg-int v15, v13

    int-to-float v15, v15

    invoke-virtual {v0, v15}, Landroid/view/View;->setTranslationX(F)V

    .line 660
    neg-int v15, v13

    add-int/2addr v15, v2

    int-to-float v15, v15

    invoke-virtual {v1, v15}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_4

    .line 664
    :cond_7
    neg-int v15, v13

    sub-int/2addr v15, v14

    int-to-float v15, v15

    invoke-virtual {v0, v15}, Landroid/view/View;->setTranslationX(F)V

    .line 665
    neg-int v15, v13

    sub-int/2addr v15, v14

    add-int/2addr v15, v2

    int-to-float v15, v15

    invoke-virtual {v1, v15}, Landroid/view/View;->setTranslationX(F)V

    .line 669
    .end local v7    # "fullscreenInsetThickness":I
    .end local v8    # "fullscreenMidpointFromBottom":I
    .end local v9    # "midpointFromBottomPct":F
    .end local v10    # "insetPct":F
    .end local v11    # "spaceAboveSnapshots":I
    .end local v12    # "overviewThumbnailAreaThickness":I
    .end local v13    # "bottomToMidpointOffset":I
    .end local v14    # "insetOffset":I
    :goto_4
    goto :goto_5

    .line 670
    :cond_8
    const/16 v7, 0x31

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 672
    int-to-float v8, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    neg-float v8, v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 673
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 674
    int-to-float v7, v2

    div-float/2addr v7, v9

    invoke-virtual {v1, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 676
    :goto_5
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 677
    invoke-virtual {v1, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 679
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    return-void
.end method

.method public setSplitTaskSwipeRect(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;I)V
    .locals 6
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "splitInfo"    # Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;
    .param p4, "desiredStagePosition"    # I

    .line 529
    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    .line 530
    .local v0, "isLandscape":Z
    iget-boolean v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    if-eqz v1, :cond_0

    .line 531
    iget v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->topTaskPercent:F

    goto :goto_0

    .line 532
    :cond_0
    iget v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTaskPercent:F

    :goto_0
    nop

    .line 533
    .local v1, "topLeftTaskPercent":F
    iget-boolean v2, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    if-eqz v2, :cond_1

    .line 534
    iget v2, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->dividerHeightPercent:F

    goto :goto_1

    .line 535
    :cond_1
    iget v2, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->dividerWidthPercent:F

    :goto_1
    nop

    .line 537
    .local v2, "dividerBarPercent":F
    if-nez p4, :cond_3

    .line 538
    if-eqz v0, :cond_2

    .line 539
    iget v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p2, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 541
    :cond_2
    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 544
    :cond_3
    if-eqz v0, :cond_4

    .line 545
    iget v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    add-float v5, v1, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p2, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 547
    :cond_4
    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    add-float v5, v1, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 550
    :goto_2
    return-void
.end method

.method public setTaskIconParams(Landroid/widget/FrameLayout$LayoutParams;IIIZ)V
    .locals 1
    .param p1, "iconParams"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p2, "taskIconMargin"    # I
    .param p3, "taskIconHeight"    # I
    .param p4, "thumbnailTopMargin"    # I
    .param p5, "isRtl"    # Z

    .line 605
    const/16 v0, 0x31

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 606
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 607
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 608
    return-void
.end method

.method public setTaskMenuAroundTaskView(Landroid/widget/LinearLayout;F)V
    .locals 2
    .param p1, "taskView"    # Landroid/widget/LinearLayout;
    .param p2, "margin"    # F

    .line 305
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 306
    .local v0, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    iget v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->topMargin:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->topMargin:I

    .line 307
    iget v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->leftMargin:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->leftMargin:I

    .line 308
    return-void
.end method

.method public setTaskOptionsMenuLayoutOrientation(Lcom/android/launcher3/DeviceProfile;Landroid/widget/LinearLayout;ILandroid/graphics/drawable/ShapeDrawable;)V
    .locals 1
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "taskMenuLayout"    # Landroid/widget/LinearLayout;
    .param p3, "dividerSpacing"    # I
    .param p4, "dividerDrawable"    # Landroid/graphics/drawable/ShapeDrawable;

    .line 290
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 291
    invoke-virtual {p4, p3}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 292
    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    return-void
.end method

.method public updateStagedSplitIconParams(Landroid/view/View;FFFFIILcom/android/launcher3/DeviceProfile;I)V
    .locals 6
    .param p1, "out"    # Landroid/view/View;
    .param p2, "onScreenRectCenterX"    # F
    .param p3, "onScreenRectCenterY"    # F
    .param p4, "fullscreenScaleX"    # F
    .param p5, "fullscreenScaleY"    # F
    .param p6, "drawableWidth"    # I
    .param p7, "drawableHeight"    # I
    .param p8, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p9, "stagePosition"    # I

    .line 474
    const/4 v0, 0x1

    if-ne p9, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 475
    .local v0, "pinToRight":Z
    :goto_0
    iget-boolean v1, p8, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v1, :cond_1

    .line 476
    invoke-virtual {p8}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 477
    .local v1, "inset":F
    div-float v4, p2, p4

    int-to-float v5, p6

    mul-float/2addr v5, v2

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setX(F)V

    .line 479
    div-float v4, v1, v3

    add-float/2addr v4, p3

    div-float/2addr v4, p5

    int-to-float v5, p7

    mul-float/2addr v5, v2

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setY(F)V

    .line 481
    .end local v1    # "inset":F
    goto :goto_2

    .line 482
    :cond_1
    if-eqz v0, :cond_2

    .line 483
    invoke-virtual {p8}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 484
    .restart local v1    # "inset":F
    div-float v4, v1, v3

    sub-float v4, p2, v4

    div-float/2addr v4, p4

    int-to-float v5, p6

    mul-float/2addr v5, v2

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setX(F)V

    .line 486
    .end local v1    # "inset":F
    goto :goto_1

    .line 487
    :cond_2
    invoke-virtual {p8}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 488
    .restart local v1    # "inset":F
    div-float v4, v1, v3

    add-float/2addr v4, p2

    div-float/2addr v4, p4

    int-to-float v5, p6

    mul-float/2addr v5, v2

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setX(F)V

    .line 491
    .end local v1    # "inset":F
    :goto_1
    div-float v1, p3, p5

    int-to-float v4, p7

    mul-float/2addr v4, v2

    div-float/2addr v4, v3

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setY(F)V

    .line 494
    :goto_2
    return-void
.end method
