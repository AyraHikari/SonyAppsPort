.class public Lcom/android/launcher3/ShortcutAndWidgetContainer;
.super Landroid/view/ViewGroup;
.source "ShortcutAndWidgetContainer.java"

# interfaces
.implements Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;


# static fields
.field static final TAG:Ljava/lang/String; = "ShortcutAndWidgetContainer"


# instance fields
.field private final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field private mBorderSpace:Landroid/graphics/Point;

.field private mCellHeight:I

.field private mCellWidth:I

.field private final mContainerType:I

.field private mCountX:I

.field private mCountY:I

.field private mInvertIfRtl:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTmpCellXY:[I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerType"    # I

    .line 66
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTempRect:Landroid/graphics/Rect;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    .line 67
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 68
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 69
    iput p2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    .line 70
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 3

    .line 245
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 248
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 249
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 250
    invoke-virtual {p0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 251
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    .line 249
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public clearFolderLeaveBehind(Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 2
    .param p1, "child"    # Lcom/android/launcher3/folder/FolderIcon;

    .line 268
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 269
    iget v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-ne v0, v1, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 272
    .local v0, "cl":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->clearFolderLeaveBehind()V

    .line 275
    .end local v0    # "cl":Lcom/android/launcher3/CellLayout;
    :cond_0
    return-void
.end method

.method public drawFolderLeaveBehindForIcon(Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 4
    .param p1, "child"    # Lcom/android/launcher3/folder/FolderIcon;

    .line 257
    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 259
    .local v0, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 260
    iget v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 262
    .local v1, "cl":Lcom/android/launcher3/CellLayout;
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/CellLayout;->setFolderLeaveBehindCell(II)V

    .line 264
    .end local v1    # "cl":Lcom/android/launcher3/CellLayout;
    :cond_0
    return-void
.end method

.method public getCellContentHeight()I
    .locals 3

    .line 130
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 131
    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DeviceProfile;->getCellContentHeight(I)I

    move-result v1

    .line 130
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 83
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 85
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 87
    .local v3, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_0

    .line 89
    return-object v2

    .line 83
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public invertLayoutHorizontally()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public layoutChild(Landroid/view/View;)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 189
    .local v0, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    instance-of v1, p1, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v1, :cond_0

    .line 190
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    .line 193
    .local v1, "nahv":Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
    iget-object v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 194
    .local v2, "profile":Lcom/android/launcher3/DeviceProfile;
    iget-object v3, v2, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 195
    .local v3, "scaleX":F
    iget-object v4, v2, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 197
    .local v4, "scaleY":F
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setScaleToFit(F)V

    .line 198
    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    int-to-float v5, v5

    iget v6, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    neg-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v7, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    int-to-float v7, v7

    iget v8, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    neg-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {v1, v5, v7}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setTranslationForCentering(FF)V

    .line 202
    .end local v1    # "nahv":Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
    .end local v2    # "profile":Lcom/android/launcher3/DeviceProfile;
    .end local v3    # "scaleX":F
    .end local v4    # "scaleY":F
    :cond_0
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 203
    .local v1, "childLeft":I
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 204
    .local v2, "childTop":I
    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    add-int/2addr v3, v1

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    add-int/2addr v4, v2

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 206
    iget-boolean v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->dropped:Z

    if-eqz v3, :cond_1

    .line 207
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->dropped:Z

    .line 209
    iget-object v4, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    .line 210
    .local v4, "cellXY":[I
    invoke-virtual {p0, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getLocationOnScreen([I)V

    .line 211
    iget-object v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    aget v3, v4, v3

    add-int/2addr v3, v1

    iget v7, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    div-int/lit8 v7, v7, 0x2

    add-int v8, v3, v7

    const/4 v3, 0x1

    aget v3, v4, v3

    add-int/2addr v3, v2

    iget v7, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    div-int/lit8 v7, v7, 0x2

    add-int v9, v3, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v7, "android.home.drop"

    invoke-virtual/range {v5 .. v11}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 216
    .end local v4    # "cellXY":[I
    :cond_1
    return-void
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 136
    .local v0, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v11

    .line 138
    .local v11, "dp":Lcom/android/launcher3/DeviceProfile;
    instance-of v1, p1, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v1, :cond_0

    .line 139
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v11, v2}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getWidgetInset(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 140
    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    iget-object v1, v11, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v11, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v8, v1, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTempRect:Landroid/graphics/Rect;

    move-object v1, v0

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 143
    :cond_0
    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    iget-object v7, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v1

    .line 147
    .local v1, "cHeight":I
    iget-boolean v2, v11, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-nez v2, :cond_1

    .line 148
    iget v2, v11, Lcom/android/launcher3/DeviceProfile;->cellYPaddingPx:I

    goto :goto_0

    .line 149
    :cond_1
    const/4 v2, 0x0

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    :goto_0
    nop

    .line 152
    .local v2, "cellPaddingY":I
    iget-object v3, v11, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_2

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-eqz v3, :cond_5

    :cond_2
    iget-object v3, v11, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_5

    :cond_3
    iget v3, v11, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    if-lez v3, :cond_4

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-ne v3, v4, :cond_4

    goto :goto_1

    :cond_4
    move v4, v5

    :cond_5
    :goto_1
    move v3, v4

    .line 156
    .local v3, "noPaddingX":Z
    if-eqz v3, :cond_6

    .line 157
    move v4, v5

    goto :goto_2

    .line 158
    :cond_6
    iget v4, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-nez v4, :cond_7

    .line 159
    iget v4, v11, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    goto :goto_2

    .line 160
    :cond_7
    iget v4, v11, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    float-to-int v4, v4

    :goto_2
    nop

    .line 161
    .local v4, "cellPaddingX":I
    invoke-virtual {p1, v4, v2, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 163
    .end local v1    # "cHeight":I
    .end local v2    # "cellPaddingY":I
    .end local v3    # "noPaddingX":Z
    .end local v4    # "cellPaddingX":I
    :goto_3
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 164
    .local v1, "childWidthMeasureSpec":I
    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 165
    .local v2, "childheightMeasureSpec":I
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 166
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x1

    return v0

    .line 225
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 174
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 175
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 176
    invoke-virtual {p0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 177
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 178
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 179
    .local v3, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    invoke-virtual {p0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->layoutChild(Landroid/view/View;)V

    .line 175
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 99
    .local v0, "count":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 100
    .local v1, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 101
    .local v2, "heightSpecSize":I
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setMeasuredDimension(II)V

    .line 103
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 104
    invoke-virtual {p0, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 105
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 106
    invoke-virtual {p0, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 103
    .end local v4    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 235
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 236
    if-eqz p1, :cond_0

    .line 237
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 238
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 241
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setCellDimensions(IIIILandroid/graphics/Point;)V
    .locals 0
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "countX"    # I
    .param p4, "countY"    # I
    .param p5, "borderSpace"    # Landroid/graphics/Point;

    .line 74
    iput p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    .line 75
    iput p2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    .line 76
    iput p3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    .line 77
    iput p4, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    .line 78
    iput-object p5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    .line 79
    return-void
.end method

.method public setInvertIfRtl(Z)V
    .locals 0
    .param p1, "invert"    # Z

    .line 126
    iput-boolean p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    .line 127
    return-void
.end method

.method public setupLp(Landroid/view/View;)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 113
    .local v0, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    instance-of v1, p1, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v11

    .line 115
    .local v11, "profile":Lcom/android/launcher3/DeviceProfile;
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v11, v2}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getWidgetInset(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 116
    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    iget-object v1, v11, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v11, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v8, v1, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTempRect:Landroid/graphics/Rect;

    move-object v1, v0

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 118
    .end local v11    # "profile":Lcom/android/launcher3/DeviceProfile;
    goto :goto_0

    .line 119
    :cond_0
    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    iget-object v7, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 122
    :goto_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 230
    const/4 v0, 0x0

    return v0
.end method
