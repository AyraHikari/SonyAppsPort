.class public Lcom/android/launcher3/touch/SeascapePagedViewHandler;
.super Lcom/android/launcher3/touch/LandscapePagedViewHandler;
.source "SeascapePagedViewHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/launcher3/touch/LandscapePagedViewHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustFloatingIconStartVelocity(Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "velocity"    # Landroid/graphics/PointF;

    .line 80
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 81
    .local v0, "oldX":F
    iget v1, p1, Landroid/graphics/PointF;->y:F

    .line 82
    .local v1, "oldY":F
    neg-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 83
    return-void
.end method

.method public getAdditionalInsetForTaskMenu(F)Landroid/graphics/PointF;
    .locals 2
    .param p1, "margin"    # F

    .line 105
    new-instance v0, Landroid/graphics/PointF;

    neg-float v1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getDegreesRotated()F
    .locals 1

    .line 70
    const/high16 v0, 0x43870000    # 270.0f

    return v0
.end method

.method public getDistanceToBottomOfRect(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 158
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

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

    .line 114
    invoke-virtual {p7}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 115
    .local v0, "isRtl":Z
    :goto_0
    const/4 v3, 0x0

    .line 116
    .local v3, "translationX":F
    const/4 v4, 0x0

    .line 117
    .local v4, "translationY":F
    invoke-virtual {p7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 118
    .local v5, "bannerParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, 0x0

    invoke-virtual {p7, v6}, Landroid/view/View;->setPivotX(F)V

    .line 119
    invoke-virtual {p7, v6}, Landroid/view/View;->setPivotY(F)V

    .line 120
    invoke-virtual {p0}, Lcom/android/launcher3/touch/SeascapePagedViewHandler;->getDegreesRotated()F

    move-result v6

    invoke-virtual {p7, v6}, Landroid/view/View;->setRotation(F)V

    .line 121
    invoke-virtual {p7}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v6, p1, v6

    int-to-float v3, v6

    .line 122
    aget-object v6, p5, v1

    .line 124
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 125
    .local v6, "snapshotParams":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_1

    const v7, 0x800005

    goto :goto_1

    :cond_1
    const v7, 0x800003

    :goto_1
    or-int/lit8 v7, v7, 0x50

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 127
    if-nez p3, :cond_2

    .line 129
    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int v1, p2, v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 130
    invoke-virtual {p7}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 131
    .end local v4    # "translationY":F
    .local v1, "translationY":F
    new-instance v2, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v2, v4, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 135
    .end local v1    # "translationY":F
    .restart local v4    # "translationY":F
    :cond_2
    iget v7, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTopTaskId:I

    if-ne p6, v7, :cond_3

    .line 136
    aget-object v1, p5, v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_2

    .line 138
    :cond_3
    aget-object v1, p5, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 142
    :goto_2
    iget v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->rightBottomTaskId:I

    if-ne p6, v1, :cond_4

    .line 143
    invoke-virtual {p7}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v4, v1

    .line 145
    :cond_4
    iget v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTopTaskId:I

    if-ne p6, v1, :cond_6

    .line 146
    iget-boolean v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->appsStackedVertically:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_5

    .line 147
    iget v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->topTaskPercent:F

    sub-float/2addr v2, v1

    goto :goto_3

    .line 148
    :cond_5
    iget v1, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTaskPercent:F

    sub-float/2addr v2, v1

    :goto_3
    move v1, v2

    .line 149
    .local v1, "bottomRightTaskPlusDividerPercent":F
    invoke-virtual {p7}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int v7, p2, v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    sub-float v4, v2, v7

    .line 153
    .end local v1    # "bottomRightTaskPlusDividerPercent":F
    :cond_6
    new-instance v1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v1, v2, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public getRecentsRtlSetting(Landroid/content/res/Resources;)Z
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 65
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method public getRotation()I
    .locals 1

    .line 75
    const/4 v0, 0x3

    return v0
.end method

.method public getSecondaryTranslationDirectionFactor()I
    .locals 1

    .line 51
    const/4 v0, -0x1

    return v0
.end method

.method public getSplitPositionOptions(Lcom/android/launcher3/DeviceProfile;)Ljava/util/List;
    .locals 5
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

    .line 164
    new-instance v0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    sget v1, Lcom/android/launcher3/R$drawable;->ic_split_right:I

    sget v2, Lcom/android/launcher3/R$string;->split_screen_position_right:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;-><init>(IIII)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSplitTranslationDirectionFactor(ILcom/android/launcher3/DeviceProfile;)I
    .locals 1
    .param p1, "stagePosition"    # I
    .param p2, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 56
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 57
    const/4 v0, -0x1

    return v0

    .line 59
    :cond_0
    return v0
.end method

.method public getTaskDragDisplacementFactor(Z)I
    .locals 1
    .param p1, "isRtl"    # Z

    .line 245
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getTaskMenuX(FLandroid/view/View;ILcom/android/launcher3/DeviceProfile;)F
    .locals 0
    .param p1, "x"    # F
    .param p2, "thumbnailView"    # Landroid/view/View;
    .param p3, "overScroll"    # I
    .param p4, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 88
    return p1
.end method

.method public getTaskMenuY(FLandroid/view/View;I)F
    .locals 3
    .param p1, "y"    # F
    .param p2, "thumbnailView"    # Landroid/view/View;
    .param p3, "overScroll"    # I

    .line 93
    int-to-float v0, p3

    add-float/2addr v0, p1

    .line 94
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 93
    return v0
.end method

.method public getUpDirection(Z)I
    .locals 1
    .param p1, "isRtl"    # Z

    .line 234
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    const/4 v0, 0x2

    .line 234
    :goto_0
    return v0
.end method

.method public getUpDownSwipeDirection()Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;
    .locals 1

    .line 229
    sget-object v0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->HORIZONTAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    return-object v0
.end method

.method public isGoingUp(FZ)Z
    .locals 3
    .param p1, "displacement"    # F
    .param p2, "isRtl"    # Z

    .line 240
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_0
    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
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

    .line 183
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p9

    invoke-super/range {p0 .. p10}, Lcom/android/launcher3/touch/LandscapePagedViewHandler;->setSplitIconParams(Landroid/view/View;Landroid/view/View;IIIIIZLcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V

    .line 186
    nop

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 188
    .local v3, "primaryIconParams":Landroid/widget/FrameLayout$LayoutParams;
    nop

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 194
    .local v4, "secondaryIconParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p9 .. p9}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 195
    .local v5, "fullscreenInsetThickness":I
    iget v6, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    sub-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    .line 197
    .local v6, "fullscreenMidpointFromBottom":I
    int-to-float v7, v6

    iget v8, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 198
    .local v7, "midpointFromBottomPct":F
    int-to-float v8, v5

    iget v9, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 199
    .local v8, "insetPct":F
    iget v9, v2, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    .line 200
    .local v9, "spaceAboveSnapshots":I
    sub-int v10, p6, v9

    .line 201
    .local v10, "overviewThumbnailAreaThickness":I
    int-to-float v11, v10

    mul-float/2addr v11, v7

    float-to-int v11, v11

    .line 202
    .local v11, "bottomToMidpointOffset":I
    int-to-float v12, v10

    mul-float/2addr v12, v8

    float-to-int v12, v12

    .line 204
    .local v12, "insetOffset":I
    const v13, 0x800005

    const v14, 0x800003

    if-eqz p8, :cond_0

    move v15, v13

    goto :goto_0

    :cond_0
    move v15, v14

    :goto_0
    or-int/lit8 v15, v15, 0x50

    iput v15, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 205
    if-eqz p8, :cond_1

    goto :goto_1

    :cond_1
    move v13, v14

    :goto_1
    or-int/lit8 v13, v13, 0x50

    iput v13, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 206
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 207
    invoke-virtual {v1, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 208
    move-object/from16 v13, p10

    iget-boolean v14, v13, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->initiatedFromSeascape:Z

    if-eqz v14, :cond_2

    .line 211
    neg-int v14, v11

    sub-int/2addr v14, v12

    int-to-float v14, v14

    invoke-virtual {v0, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 212
    neg-int v14, v11

    sub-int/2addr v14, v12

    add-int v14, v14, p3

    int-to-float v14, v14

    invoke-virtual {v1, v14}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 217
    :cond_2
    neg-int v14, v11

    int-to-float v14, v14

    invoke-virtual {v0, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 218
    neg-int v14, v11

    add-int v14, v14, p3

    int-to-float v14, v14

    invoke-virtual {v1, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 221
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    return-void
.end method

.method public setTaskIconParams(Landroid/widget/FrameLayout$LayoutParams;IIIZ)V
    .locals 2
    .param p1, "iconParams"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p2, "taskIconMargin"    # I
    .param p3, "taskIconHeight"    # I
    .param p4, "thumbnailTopMargin"    # I
    .param p5, "isRtl"    # Z

    .line 172
    if-eqz p5, :cond_0

    const v0, 0x800005

    goto :goto_0

    :cond_0
    const v0, 0x800003

    :goto_0
    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 173
    neg-int v0, p3

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 174
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 175
    div-int/lit8 v0, p4, 0x2

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 176
    return-void
.end method

.method public setTaskMenuAroundTaskView(Landroid/widget/LinearLayout;F)V
    .locals 2
    .param p1, "taskView"    # Landroid/widget/LinearLayout;
    .param p2, "margin"    # F

    .line 99
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 100
    .local v0, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    iget v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->bottomMargin:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->bottomMargin:I

    .line 101
    return-void
.end method
