.class public Lcom/android/launcher3/touch/LandscapePagedViewHandler;
.super Ljava/lang/Object;
.source "LandscapePagedViewHandler.java"

# interfaces
.implements Lcom/android/launcher3/touch/PagedOrientationHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustFloatingIconStartVelocity(Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "velocity"    # Landroid/graphics/PointF;

    .line 100
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 101
    .local v0, "oldX":F
    iget v1, p1, Landroid/graphics/PointF;->y:F

    .line 102
    .local v1, "oldY":F
    neg-float v2, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 103
    return-void
.end method

.method public fixBoundsForHomeAnimStartRect(Landroid/graphics/RectF;Lcom/android/launcher3/DeviceProfile;)V
    .locals 3
    .param p1, "outStartRect"    # Landroid/graphics/RectF;
    .param p2, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 109
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 110
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_0

    .line 111
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 112
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 114
    :cond_1
    :goto_0
    return-void
.end method

.method public getAdditionalInsetForTaskMenu(F)Landroid/graphics/PointF;
    .locals 2
    .param p1, "margin"    # F

    .line 309
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getCenterForPage(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 239
    return v0
.end method

.method public getChildBounds(Landroid/view/View;IIZ)Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childStart"    # I
    .param p3, "pageCenter"    # I
    .param p4, "layoutChild"    # Z

    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 384
    .local v0, "childHeight":I
    add-int v1, p2, v0

    .line 385
    .local v1, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 386
    .local v2, "childWidth":I
    div-int/lit8 v3, v2, 0x2

    sub-int v3, p3, v3

    .line 387
    .local v3, "childLeft":I
    if-eqz p4, :cond_0

    .line 388
    add-int v4, v3, v2

    invoke-virtual {p1, v3, p2, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 390
    :cond_0
    new-instance v4, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;

    invoke-direct {v4, v0, v2, v1, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler$ChildBounds;-><init>(IIII)V

    return-object v4
.end method

.method public getChildStart(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getClearAllSidePadding(Landroid/view/View;Z)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isRtl"    # Z

    .line 174
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    :goto_0
    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDefaultSplitPosition(Lcom/android/launcher3/DeviceProfile;)I
    .locals 2
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 551
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default position not available in fake landscape"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDegreesRotated()F
    .locals 1

    .line 214
    const/high16 v0, 0x42b40000    # 90.0f

    return v0
.end method

.method public getDistanceToBottomOfRect(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)I
    .locals 1
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 396
    iget v0, p2, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getDwbLayoutTranslations(IILcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;Lcom/android/launcher3/DeviceProfile;[Landroid/view/View;ILandroid/view/View;)Landroid/util/Pair;
    .locals 8
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

    .line 316
    invoke-virtual {p7}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 317
    .local v0, "isRtl":Z
    :goto_0
    const/4 v3, 0x0

    .line 318
    .local v3, "translationX":F
    const/4 v4, 0x0

    .line 319
    .local v4, "translationY":F
    invoke-virtual {p7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 320
    .local v5, "bannerParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, 0x0

    invoke-virtual {p7, v6}, Landroid/view/View;->setPivotX(F)V

    .line 321
    invoke-virtual {p7, v6}, Landroid/view/View;->setPivotY(F)V

    .line 322
    invoke-virtual {p0}, Lcom/android/launcher3/touch/LandscapePagedViewHandler;->getDegreesRotated()F

    move-result v6

    invoke-virtual {p7, v6}, Landroid/view/View;->setRotation(F)V

    .line 323
    invoke-virtual {p7}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v3, v6

    .line 324
    aget-object v6, p5, v1

    .line 326
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 327
    .local v6, "snapshotParams":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_1

    const v7, 0x800005

    goto :goto_1

    :cond_1
    const v7, 0x800003

    :goto_1
    or-int/lit8 v7, v7, 0x30

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 328
    if-nez p3, :cond_2

    .line 330
    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int v1, p2, v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 331
    new-instance v1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->floatValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v1, v2, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 335
    :cond_2
    iget v7, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTopTaskId:I

    if-ne p6, v7, :cond_3

    .line 336
    aget-object v1, p5, v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_2

    .line 338
    :cond_3
    aget-object v1, p5, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 342
    :goto_2
    iget v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->rightBottomTaskId:I

    if-ne p6, v1, :cond_5

    .line 343
    iget-boolean v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    if-eqz v1, :cond_4

    .line 344
    iget v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->topTaskPercent:F

    iget v2, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->dividerHeightPercent:F

    add-float/2addr v1, v2

    goto :goto_3

    .line 345
    :cond_4
    iget v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTaskPercent:F

    iget v2, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->dividerWidthPercent:F

    add-float/2addr v1, v2

    :goto_3
    nop

    .line 346
    .local v1, "topLeftTaskPlusDividerPercent":F
    iget v2, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int v7, p2, v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    add-float v4, v2, v7

    .line 349
    .end local v1    # "topLeftTaskPlusDividerPercent":F
    :cond_5
    iget v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTopTaskId:I

    if-ne p6, v1, :cond_6

    .line 350
    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v4, v1

    .line 352
    :cond_6
    new-instance v1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v1, v2, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public getEnd(Landroid/graphics/RectF;)F
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 169
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method public getFinalSplitPlaceholderBounds(ILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "splitDividerSize"    # I
    .param p2, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "stagePosition"    # I
    .param p4, "out1"    # Landroid/graphics/Rect;
    .param p5, "out2"    # Landroid/graphics/Rect;

    .line 442
    iget v0, p2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 443
    .local v0, "screenHeight":I
    iget v1, p2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    .line 444
    .local v1, "screenWidth":I
    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v2, p1

    const/4 v3, 0x0

    invoke-virtual {p4, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 445
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p1

    invoke-virtual {p5, v3, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 446
    return-void
.end method

.method public getInitialSplitPlaceholderBounds(IILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "placeholderHeight"    # I
    .param p2, "placeholderInset"    # I
    .param p3, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p4, "stagePosition"    # I
    .param p5, "out"    # Landroid/graphics/Rect;

    .line 412
    iget v0, p3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    .line 413
    .local v0, "width":I
    invoke-virtual {p3}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 414
    .local v1, "insetThickness":I
    add-int v2, p1, v1

    const/4 v3, 0x0

    invoke-virtual {p5, v3, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 415
    invoke-virtual {p5, p2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 419
    iget v2, p3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    .line 420
    .local v2, "screenWidth":I
    iget v3, p3, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 421
    .local v3, "screenHeight":I
    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    mul-int/lit8 v5, p2, 0x2

    sub-int v5, v2, v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    int-to-float v5, v2

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 423
    .local v4, "totalHeight":I
    iget v5, p5, Landroid/graphics/Rect;->top:I

    sub-int v6, v4, p1

    sub-int/2addr v5, v6

    iput v5, p5, Landroid/graphics/Rect;->top:I

    .line 424
    return-void
.end method

.method public getMeasuredSize(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getPrimaryDirection(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 139
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method public getPrimaryScale(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    return v0
.end method

.method public getPrimaryScroll(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getPrimarySize(Landroid/graphics/RectF;)F
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 159
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    return v0
.end method

.method public getPrimarySize(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPrimaryValue(FF)F
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 85
    return p2
.end method

.method public getPrimaryValue(II)I
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 75
    return p2
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

    .line 65
    .local p1, "x":Ljava/lang/Object;, "TT;"
    .local p2, "y":Ljava/lang/Object;, "TT;"
    return-object p2
.end method

.method public getPrimaryVelocity(Landroid/view/VelocityTracker;I)F
    .locals 1
    .param p1, "velocityTracker"    # Landroid/view/VelocityTracker;
    .param p2, "pointerId"    # I

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

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

    .line 184
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    return-object v0
.end method

.method public getRecentsRtlSetting(Landroid/content/res/Resources;)Z
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 209
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getRotation()I
    .locals 1

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public getScrollOffsetEnd(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getScrollOffsetStart(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;

    .line 245
    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSecondaryDimension(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getSecondaryTranslationDirectionFactor()I
    .locals 1

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public getSecondaryValue(FF)F
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 90
    return p1
.end method

.method public getSecondaryValue(II)I
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 80
    return p1
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

    .line 70
    .local p1, "x":Ljava/lang/Object;, "TT;"
    .local p2, "y":Ljava/lang/Object;, "TT;"
    return-object p1
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

    .line 189
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    return-object v0
.end method

.method public getSplitPositionOptions(Lcom/android/launcher3/DeviceProfile;)Ljava/util/List;
    .locals 4
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

    .line 402
    new-instance v0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    sget v1, Lcom/android/launcher3/R$drawable;->ic_split_left:I

    sget v2, Lcom/android/launcher3/R$string;->split_screen_position_left:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;-><init>(IIII)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

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

    .line 557
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSplitTranslationDirectionFactor(ILcom/android/launcher3/DeviceProfile;)I
    .locals 1
    .param p1, "stagePosition"    # I
    .param p2, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 259
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 260
    const/4 v0, -0x1

    return v0

    .line 262
    :cond_0
    return v0
.end method

.method public getStart(Landroid/graphics/RectF;)F
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 164
    iget v0, p1, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public getTaskDragDisplacementFactor(Z)I
    .locals 1
    .param p1, "isRtl"    # Z

    .line 375
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTaskMenuWidth(Landroid/view/View;Lcom/android/launcher3/DeviceProfile;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getTaskMenuX(FLandroid/view/View;ILcom/android/launcher3/DeviceProfile;)F
    .locals 1
    .param p1, "x"    # F
    .param p2, "thumbnailView"    # Landroid/view/View;
    .param p3, "overScroll"    # I
    .param p4, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 269
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    return v0
.end method

.method public getTaskMenuY(FLandroid/view/View;I)F
    .locals 3
    .param p1, "y"    # F
    .param p2, "thumbnailView"    # Landroid/view/View;
    .param p3, "overScroll"    # I

    .line 274
    int-to-float v0, p3

    add-float/2addr v0, p1

    .line 275
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 274
    return v0
.end method

.method public getUpDirection(Z)I
    .locals 1
    .param p1, "isRtl"    # Z

    .line 364
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 365
    :cond_0
    const/4 v0, 0x1

    .line 364
    :goto_0
    return v0
.end method

.method public getUpDownSwipeDirection()Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;
    .locals 1

    .line 359
    sget-object v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->HORIZONTAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    return-object v0
.end method

.method public isGoingUp(FZ)Z
    .locals 3
    .param p1, "displacement"    # F
    .param p2, "isRtl"    # Z

    .line 370
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    goto :goto_0

    :cond_0
    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public isLayoutNaturalToLauncher()Z
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public measureGroupedTaskViewThumbnailBounds(Landroid/view/View;Landroid/view/View;IILcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;Lcom/android/launcher3/DeviceProfile;Z)V
    .locals 15
    .param p1, "primarySnapshot"    # Landroid/view/View;
    .param p2, "secondarySnapshot"    # Landroid/view/View;
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I
    .param p5, "splitBoundsConfig"    # Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;
    .param p6, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p7, "isRtl"    # Z

    .line 469
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    .line 470
    .local v3, "spaceAboveSnapshot":I
    sub-int v4, p4, v3

    .line 471
    .local v4, "totalThumbnailHeight":I
    iget-boolean v5, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    if-eqz v5, :cond_0

    .line 472
    iget-object v5, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    goto :goto_0

    .line 473
    :cond_0
    iget-object v5, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    :goto_0
    nop

    .line 479
    .local v5, "dividerBar":I
    iget-boolean v6, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    if-eqz v6, :cond_1

    .line 480
    iget v6, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->topTaskPercent:F

    goto :goto_1

    :cond_1
    iget v6, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTaskPercent:F

    .line 481
    .local v6, "taskPercent":F
    :goto_1
    move/from16 v7, p3

    .line 482
    .local v7, "primarySnapshotWidth":I
    int-to-float v8, v4

    mul-float/2addr v8, v6

    float-to-int v8, v8

    .line 484
    .local v8, "primarySnapshotHeight":I
    move/from16 v9, p3

    .line 485
    .local v9, "secondarySnapshotWidth":I
    sub-int v10, v4, v8

    sub-int/2addr v10, v5

    .line 486
    .local v10, "secondarySnapshotHeight":I
    add-int v11, v8, v3

    add-int/2addr v11, v5

    int-to-float v11, v11

    invoke-virtual {v0, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 487
    nop

    .line 488
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 489
    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 487
    move-object/from16 v14, p1

    invoke-virtual {v14, v12, v13}, Landroid/view/View;->measure(II)V

    .line 490
    nop

    .line 491
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 492
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 490
    invoke-virtual {v0, v12, v11}, Landroid/view/View;->measure(II)V

    .line 494
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

    .line 134
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "action":Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;, "Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction<TT;>;"
    invoke-interface {p2, p1, p4, p3}, Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;->call(Ljava/lang/Object;II)V

    .line 135
    return-void
.end method

.method public setLayoutParamsForTaskMenuOptionItem(Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout;Lcom/android/launcher3/DeviceProfile;)V
    .locals 1
    .param p1, "lp"    # Landroid/widget/LinearLayout$LayoutParams;
    .param p2, "viewGroup"    # Landroid/widget/LinearLayout;
    .param p3, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 297
    const/4 v0, -0x1

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 298
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 299
    return-void
.end method

.method public setMaxScroll(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "maxScroll"    # I

    .line 204
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 205
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

    .line 123
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "action":Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;, "Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction<TT;>;"
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3}, Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;->call(Ljava/lang/Object;FF)V

    .line 124
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

    .line 118
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "action":Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;, "Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction<TT;>;"
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3}, Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;->call(Ljava/lang/Object;II)V

    .line 119
    return-void
.end method

.method public setPrimaryScale(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scale"    # F

    .line 224
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 225
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

    .line 128
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "action":Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;, "Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction<TT;>;"
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;->call(Ljava/lang/Object;FF)V

    .line 129
    return-void
.end method

.method public setSecondaryScale(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scale"    # F

    .line 229
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 230
    return-void
.end method

.method public setSplitIconParams(Landroid/view/View;Landroid/view/View;IIIIIZLcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V
    .locals 16
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

    .line 510
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p9

    .line 511
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 512
    .local v3, "primaryIconParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 518
    .local v4, "secondaryIconParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p9 .. p9}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 519
    .local v5, "fullscreenInsetThickness":I
    iget v6, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    sub-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    .line 521
    .local v6, "fullscreenMidpointFromBottom":I
    int-to-float v7, v6

    iget v8, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 522
    .local v7, "midpointFromBottomPct":F
    int-to-float v8, v5

    iget v9, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 523
    .local v8, "insetPct":F
    iget v9, v2, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    .line 524
    .local v9, "spaceAboveSnapshots":I
    sub-int v10, p6, v9

    .line 525
    .local v10, "overviewThumbnailAreaThickness":I
    int-to-float v11, v10

    mul-float/2addr v11, v7

    float-to-int v11, v11

    .line 526
    .local v11, "bottomToMidpointOffset":I
    int-to-float v12, v10

    mul-float/2addr v12, v8

    float-to-int v12, v12

    .line 528
    .local v12, "insetOffset":I
    const v13, 0x800003

    const v14, 0x800005

    if-eqz p8, :cond_0

    move v15, v13

    goto :goto_0

    :cond_0
    move v15, v14

    :goto_0
    or-int/lit8 v15, v15, 0x50

    iput v15, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 529
    if-eqz p8, :cond_1

    goto :goto_1

    :cond_1
    move v13, v14

    :goto_1
    or-int/lit8 v13, v13, 0x50

    iput v13, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 530
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 531
    invoke-virtual {v1, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 532
    move-object/from16 v13, p10

    iget-boolean v14, v13, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->initiatedFromSeascape:Z

    if-eqz v14, :cond_2

    .line 535
    neg-int v14, v11

    sub-int/2addr v14, v12

    int-to-float v14, v14

    invoke-virtual {v0, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 536
    neg-int v14, v11

    sub-int/2addr v14, v12

    add-int v14, v14, p3

    int-to-float v14, v14

    invoke-virtual {v1, v14}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 541
    :cond_2
    neg-int v14, v11

    int-to-float v14, v14

    invoke-virtual {v0, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 542
    neg-int v14, v11

    add-int v14, v14, p3

    int-to-float v14, v14

    invoke-virtual {v1, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 545
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    return-void
.end method

.method public setSplitTaskSwipeRect(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;I)V
    .locals 5
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "splitInfo"    # Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;
    .param p4, "desiredStagePosition"    # I

    .line 451
    iget-boolean v0, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    if-eqz v0, :cond_0

    .line 452
    iget v0, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->topTaskPercent:F

    goto :goto_0

    .line 453
    :cond_0
    iget v0, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTaskPercent:F

    :goto_0
    nop

    .line 454
    .local v0, "topLeftTaskPercent":F
    iget-boolean v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    if-eqz v1, :cond_1

    .line 455
    iget v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->dividerHeightPercent:F

    goto :goto_1

    .line 456
    :cond_1
    iget v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->dividerWidthPercent:F

    :goto_1
    nop

    .line 458
    .local v1, "dividerBarPercent":F
    if-nez p4, :cond_2

    .line 459
    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 461
    :cond_2
    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float v4, v0, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 463
    :goto_2
    return-void
.end method

.method public setTaskIconParams(Landroid/widget/FrameLayout$LayoutParams;IIIZ)V
    .locals 2
    .param p1, "iconParams"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p2, "taskIconMargin"    # I
    .param p3, "taskIconHeight"    # I
    .param p4, "thumbnailTopMargin"    # I
    .param p5, "isRtl"    # Z

    .line 499
    if-eqz p5, :cond_0

    const v0, 0x800003

    goto :goto_0

    :cond_0
    const v0, 0x800005

    :goto_0
    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 500
    neg-int v0, p3

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 501
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 502
    div-int/lit8 v0, p4, 0x2

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 503
    return-void
.end method

.method public setTaskMenuAroundTaskView(Landroid/widget/LinearLayout;F)V
    .locals 2
    .param p1, "taskView"    # Landroid/widget/LinearLayout;
    .param p2, "margin"    # F

    .line 303
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 304
    .local v0, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    iget v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->topMargin:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->topMargin:I

    .line 305
    return-void
.end method

.method public setTaskOptionsMenuLayoutOrientation(Lcom/android/launcher3/DeviceProfile;Landroid/widget/LinearLayout;ILandroid/graphics/drawable/ShapeDrawable;)V
    .locals 1
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "taskMenuLayout"    # Landroid/widget/LinearLayout;
    .param p3, "dividerSpacing"    # I
    .param p4, "dividerDrawable"    # Landroid/graphics/drawable/ShapeDrawable;

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 288
    invoke-virtual {p4, p3}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 289
    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    return-void
.end method

.method public updateStagedSplitIconParams(Landroid/view/View;FFFFIILcom/android/launcher3/DeviceProfile;I)V
    .locals 5
    .param p1, "out"    # Landroid/view/View;
    .param p2, "onScreenRectCenterX"    # F
    .param p3, "onScreenRectCenterY"    # F
    .param p4, "fullscreenScaleX"    # F
    .param p5, "fullscreenScaleY"    # F
    .param p6, "drawableWidth"    # I
    .param p7, "drawableHeight"    # I
    .param p8, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p9, "stagePosition"    # I

    .line 431
    invoke-virtual {p8}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    .line 432
    .local v0, "inset":F
    div-float v1, p2, p4

    int-to-float v2, p6

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setX(F)V

    .line 434
    div-float v1, v0, v4

    add-float/2addr v1, p3

    div-float/2addr v1, p5

    int-to-float v2, p7

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setY(F)V

    .line 436
    return-void
.end method
