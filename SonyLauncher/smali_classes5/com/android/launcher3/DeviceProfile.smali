.class public Lcom/android/launcher3/DeviceProfile;
.super Ljava/lang/Object;
.source "DeviceProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/DeviceProfile$Builder;,
        Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;,
        Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_DOT_SIZE:I = 0x64

.field private static final MAX_HORIZONTAL_PADDING_PERCENT:F = 0.14f

.field private static final TALLER_DEVICE_ASPECT_RATIO_THRESHOLD:F = 2.15f

.field private static final TALL_DEVICE_ASPECT_RATIO_THRESHOLD:F = 2.0f

.field private static final TALL_DEVICE_EXTRA_SPACE_THRESHOLD_DP:F = 252.0f

.field private static final TALL_DEVICE_MORE_EXTRA_SPACE_THRESHOLD_DP:F = 268.0f


# instance fields
.field public allAppsBorderSpacePx:Landroid/graphics/Point;

.field public allAppsCellHeightPx:I

.field public allAppsCellWidthPx:I

.field public allAppsIconDrawablePaddingPx:I

.field public allAppsIconSizePx:I

.field public allAppsIconTextSizePx:F

.field public allAppsLeftRightMargin:I

.field public allAppsLeftRightPadding:I

.field public allAppsShiftRange:I

.field public allAppsTopPadding:I

.field public final appWidgetScale:Landroid/graphics/PointF;

.field private final areNavButtonsInline:Z

.field public final aspectRatio:F

.field public final availableHeightPx:I

.field public final availableWidthPx:I

.field public bottomSheetTopPadding:I

.field public cellHeightPx:I

.field public cellLayoutBorderSpaceOriginalPx:Landroid/graphics/Point;

.field public cellLayoutBorderSpacePx:Landroid/graphics/Point;

.field public cellLayoutPaddingPx:Landroid/graphics/Rect;

.field public cellScaleToFit:F

.field public cellWidthPx:I

.field public cellYPaddingPx:I

.field public final desiredWorkspaceHorizontalMarginOriginalPx:I

.field public desiredWorkspaceHorizontalMarginPx:I

.field public dropTargetBarBottomMarginPx:I

.field public dropTargetBarSizePx:I

.field public dropTargetBarTopMarginPx:I

.field public dropTargetButtonWorkspaceEdgeGapPx:I

.field public dropTargetDragPaddingPx:I

.field public dropTargetGapPx:I

.field public dropTargetHorizontalPaddingPx:I

.field public dropTargetTextSizePx:I

.field public dropTargetVerticalPaddingPx:I

.field public final edgeMarginPx:I

.field public extraHotseatBottomPadding:I

.field private final extraSpace:I

.field public flingToDeleteThresholdVelocity:I

.field public folderCellHeightPx:I

.field public folderCellLayoutBorderSpaceOriginalPx:I

.field public folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

.field public folderCellWidthPx:I

.field public folderChildDrawablePaddingPx:I

.field public folderChildIconSizePx:I

.field public folderChildTextSizePx:I

.field public folderContentPaddingLeftRight:I

.field public folderContentPaddingTop:I

.field public folderIconOffsetYPx:I

.field public folderIconSizePx:I

.field public folderLabelTextScale:F

.field public folderLabelTextSizePx:I

.field public gridVisualizationPaddingX:I

.field public gridVisualizationPaddingY:I

.field public final heightPx:I

.field public final hotseatBarBottomPaddingPx:I

.field public final hotseatBarSidePaddingEndPx:I

.field public final hotseatBarSidePaddingStartPx:I

.field public hotseatBarSizeExtraSpacePx:I

.field public hotseatBarSizePx:I

.field public hotseatBarTopPaddingPx:I

.field public hotseatBorderSpace:I

.field public hotseatCellHeightPx:I

.field private final hotseatExtraVerticalSize:I

.field public final hotseatQsbHeight:I

.field public iconDrawablePaddingOriginalPx:I

.field public iconDrawablePaddingPx:I

.field public iconScale:F

.field public iconSizePx:I

.field public iconTextSizePx:I

.field public final inv:Lcom/android/launcher3/InvariantDeviceProfile;

.field public final isGestureMode:Z

.field public final isLandscape:Z

.field public final isMultiWindowMode:Z

.field public final isPhone:Z

.field public final isQsbInline:Z

.field public final isScalableGrid:Z

.field public final isTablet:Z

.field public isTaskbarPresent:Z

.field public isTaskbarPresentInApps:Z

.field public final isTwoPanels:Z

.field private mContext:Landroid/content/Context;

.field public mDotRendererAllApps:Lcom/android/launcher3/icons/DotRenderer;

.field public mDotRendererWorkSpace:Lcom/android/launcher3/icons/DotRenderer;

.field private final mHotseatPadding:Landroid/graphics/Rect;

.field private final mInfo:Lcom/android/launcher3/util/DisplayController$Info;

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsSeascape:Z

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private final mQsbCenterFactor:F

.field public mSonyBadgeRenderer:Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;

.field private final mTypeIndex:I

.field private final mWorkspacePageIndicatorOverlapWorkspace:I

.field public final numShownAllAppsColumns:I

.field public final numShownHotseatIcons:I

.field public final overviewActionsButtonSpacing:I

.field public final overviewActionsHeight:I

.field public final overviewActionsTopMarginPx:I

.field public overviewGridSideMargin:I

.field public overviewPageSpacing:I

.field public overviewRowSpacing:I

.field public overviewTaskIconDrawableSizeGridPx:I

.field public overviewTaskIconDrawableSizePx:I

.field public overviewTaskIconSizePx:I

.field public overviewTaskMarginGridPx:I

.field public overviewTaskMarginPx:I

.field public overviewTaskThumbnailTopMarginPx:I

.field public final qsbBottomMarginOriginalPx:F

.field public qsbBottomMarginPx:I

.field public qsbWidth:I

.field public final rotationHint:I

.field public springLoadedHotseatBarTopMarginPx:I

.field public stashedTaskbarSize:I

.field public taskbarSize:I

.field public final transposeLayoutWithOrientation:Z

.field public final widthPx:I

.field public final windowX:I

.field public final windowY:I

.field public workspaceBottomPadding:I

.field public workspaceCellPaddingXPx:I

.field public final workspacePadding:Landroid/graphics/Rect;

.field public final workspacePageIndicatorHeight:I

.field public workspaceSpringLoadShrunkBottom:F

.field public workspaceSpringLoadShrunkTop:F

.field public final workspaceSpringLoadedBottomSpace:I

.field public final workspaceSpringLoadedMinNextPageVisiblePx:I

.field public workspaceTopPadding:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/util/WindowBounds;ZZZZ)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inv"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p3, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p4, "windowBounds"    # Lcom/android/launcher3/util/WindowBounds;
    .param p5, "isMultiWindowMode"    # Z
    .param p6, "transposeLayoutWithOrientation"    # Z
    .param p7, "useTwoPanels"    # Z
    .param p8, "isGestureMode"    # Z

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    .line 214
    new-instance v6, Landroid/graphics/PointF;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v6, v0, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    .line 228
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    .line 229
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    .line 230
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    .line 255
    iput-object v1, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 256
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/util/WindowBounds;->isLandscape()Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    .line 257
    iput-boolean v4, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    .line 258
    move/from16 v8, p6

    iput-boolean v8, v0, Lcom/android/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    .line 259
    iput-boolean v5, v0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    .line 260
    iget-object v9, v3, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iput v9, v0, Lcom/android/launcher3/DeviceProfile;->windowX:I

    .line 261
    iget-object v9, v3, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iput v9, v0, Lcom/android/launcher3/DeviceProfile;->windowY:I

    .line 262
    iget v9, v3, Lcom/android/launcher3/util/WindowBounds;->rotationHint:I

    iput v9, v0, Lcom/android/launcher3/DeviceProfile;->rotationHint:I

    .line 263
    iget-object v9, v3, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 265
    iget-boolean v9, v1, Lcom/android/launcher3/InvariantDeviceProfile;->isScalable:Z

    if-eqz v9, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v9

    if-nez v9, :cond_0

    if-nez v4, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    iput-boolean v9, v0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    .line 267
    iput-object v2, v0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    .line 268
    invoke-virtual/range {p3 .. p4}, Lcom/android/launcher3/util/DisplayController$Info;->isTablet(Lcom/android/launcher3/util/WindowBounds;)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    .line 269
    xor-int/lit8 v13, v12, 0x1

    iput-boolean v13, v0, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    .line 270
    if-eqz v12, :cond_1

    if-eqz p7, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    iput-boolean v13, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    .line 271
    iput-boolean v12, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v14

    if-nez v14, :cond_3

    if-eqz v12, :cond_2

    if-eqz v7, :cond_2

    goto :goto_2

    .line 276
    :cond_2
    const/4 v14, 0x1

    goto :goto_3

    .line 275
    :cond_3
    :goto_2
    const/4 v14, 0x2

    .line 274
    :goto_3
    move-object/from16 v11, p1

    invoke-static {v11, v2, v14, v3}, Lcom/android/launcher3/DeviceProfile;->getContext(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;ILcom/android/launcher3/util/WindowBounds;)Landroid/content/Context;

    move-result-object v11

    .line 278
    .end local p1    # "context":Landroid/content/Context;
    .local v11, "context":Landroid/content/Context;
    iput-object v11, v0, Lcom/android/launcher3/DeviceProfile;->mContext:Landroid/content/Context;

    .line 279
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 280
    .local v14, "res":Landroid/content/res/Resources;
    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iput-object v10, v0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    .line 283
    iget-object v15, v3, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    iput v15, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    .line 284
    iget-object v2, v3, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 285
    iget-object v4, v3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, v0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    .line 286
    iget-object v4, v3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    .line 288
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v4, v15

    iput v4, v0, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    .line 289
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v4, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-ltz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    .line 290
    .local v4, "isTallDevice":Z
    :goto_4
    sget v15, Lcom/android/launcher3/R$dimen;->qsb_center_factor:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v15

    iput v15, v0, Lcom/android/launcher3/DeviceProfile;->mQsbCenterFactor:F

    .line 292
    const/4 v15, 0x3

    if-eqz v13, :cond_6

    .line 293
    if-eqz v7, :cond_5

    .line 294
    iput v15, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    goto :goto_5

    .line 296
    :cond_5
    const/4 v7, 0x2

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    goto :goto_5

    .line 299
    :cond_6
    if-eqz v7, :cond_7

    .line 300
    const/4 v7, 0x1

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    goto :goto_5

    .line 302
    :cond_7
    const/4 v7, 0x0

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    .line 306
    :goto_5
    iget-boolean v7, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v7, :cond_8

    .line 307
    sget v7, Lcom/android/launcher3/R$dimen;->taskbar_size:I

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    .line 308
    sget v7, Lcom/android/launcher3/R$dimen;->taskbar_stashed_size:I

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->stashedTaskbarSize:I

    .line 311
    :cond_8
    sget v7, Lcom/android/launcher3/R$dimen;->dynamic_grid_edge_margin:I

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    .line 313
    invoke-direct {v0, v1, v14}, Lcom/android/launcher3/DeviceProfile;->getHorizontalMarginPx(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/res/Resources;)I

    move-result v15

    iput v15, v0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    .line 314
    iput v15, v0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginOriginalPx:I

    .line 315
    sget v15, Lcom/android/launcher3/R$dimen;->grid_visualization_horizontal_cell_spacing:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    iput v15, v0, Lcom/android/launcher3/DeviceProfile;->gridVisualizationPaddingX:I

    .line 317
    sget v15, Lcom/android/launcher3/R$dimen;->grid_visualization_vertical_cell_spacing:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    iput v15, v0, Lcom/android/launcher3/DeviceProfile;->gridVisualizationPaddingY:I

    .line 320
    iget v6, v6, Landroid/graphics/Rect;->top:I

    sget v15, Lcom/android/launcher3/R$dimen;->bottom_sheet_extra_top_padding:I

    .line 321
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    add-int/2addr v6, v15

    .line 322
    if-eqz v12, :cond_9

    const/4 v7, 0x0

    :cond_9
    add-int/2addr v6, v7

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetTopPadding:I

    .line 324
    if-eqz v12, :cond_a

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    :goto_6
    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->allAppsTopPadding:I

    .line 325
    if-eqz v12, :cond_b

    .line 326
    sub-int/2addr v2, v6

    goto :goto_7

    .line 327
    :cond_b
    sget v2, Lcom/android/launcher3/R$dimen;->all_apps_starting_vertical_translate:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_7
    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->allAppsShiftRange:I

    .line 328
    sget v2, Lcom/android/launcher3/R$dimen;->folder_label_text_scale:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->folderLabelTextScale:F

    .line 329
    sget v2, Lcom/android/launcher3/R$dimen;->folder_content_padding_left_right:I

    .line 330
    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    .line 331
    sget v2, Lcom/android/launcher3/R$dimen;->folder_content_padding_top:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    .line 333
    invoke-direct {v0, v1}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutBorderSpace(Lcom/android/launcher3/InvariantDeviceProfile;)Landroid/graphics/Point;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    .line 334
    new-instance v2, Landroid/graphics/Point;

    iget-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    iget v7, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v6, v6, v7

    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 335
    invoke-static {v6, v10}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v6

    iget-object v7, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    iget v12, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v7, v7, v12

    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 336
    invoke-static {v7, v10}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v7

    invoke-direct {v2, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    .line 337
    new-instance v2, Landroid/graphics/Point;

    iget-object v6, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    invoke-direct {v2, v6}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v2, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpaceOriginalPx:Landroid/graphics/Point;

    .line 338
    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile;->folderBorderSpace:F

    invoke-static {v2, v10}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpaceOriginalPx:I

    .line 339
    new-instance v2, Landroid/graphics/Point;

    iget v6, v0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpaceOriginalPx:I

    invoke-direct {v2, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    .line 342
    sget v2, Lcom/android/launcher3/R$dimen;->workspace_page_indicator_height:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->workspacePageIndicatorHeight:I

    .line 344
    sget v2, Lcom/android/launcher3/R$dimen;->workspace_page_indicator_overlap_workspace:I

    .line 345
    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->mWorkspacePageIndicatorOverlapWorkspace:I

    .line 347
    sget v2, Lcom/android/launcher3/R$dimen;->dynamic_grid_icon_drawable_padding:I

    .line 348
    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    .line 350
    sget v2, Lcom/android/launcher3/R$dimen;->dynamic_grid_drop_target_size:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    .line 351
    sget v2, Lcom/android/launcher3/R$dimen;->drop_target_top_margin:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarTopMarginPx:I

    .line 352
    sget v2, Lcom/android/launcher3/R$dimen;->drop_target_bottom_margin:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarBottomMarginPx:I

    .line 353
    sget v2, Lcom/android/launcher3/R$dimen;->drop_target_drag_padding:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetDragPaddingPx:I

    .line 354
    sget v2, Lcom/android/launcher3/R$dimen;->drop_target_text_size:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetTextSizePx:I

    .line 355
    sget v2, Lcom/android/launcher3/R$dimen;->drop_target_button_drawable_horizontal_padding:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetHorizontalPaddingPx:I

    .line 357
    sget v2, Lcom/android/launcher3/R$dimen;->drop_target_button_drawable_vertical_padding:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetVerticalPaddingPx:I

    .line 359
    sget v2, Lcom/android/launcher3/R$dimen;->drop_target_button_gap:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetGapPx:I

    .line 360
    sget v2, Lcom/android/launcher3/R$dimen;->drop_target_button_workspace_edge_gap:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetButtonWorkspaceEdgeGapPx:I

    .line 363
    sget v2, Lcom/android/launcher3/R$dimen;->dynamic_grid_min_spring_loaded_space:I

    .line 364
    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadedBottomSpace:I

    .line 365
    sget v2, Lcom/android/launcher3/R$dimen;->dynamic_grid_spring_loaded_min_next_space_visible:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadedMinNextPageVisiblePx:I

    .line 368
    sget v2, Lcom/android/launcher3/R$dimen;->dynamic_grid_cell_padding_x:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    .line 370
    sget v2, Lcom/android/launcher3/R$dimen;->search_widget_hotseat_height:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbHeight:I

    .line 372
    iget-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    if-eqz v13, :cond_e

    const/4 v12, 0x2

    aget-boolean v6, v6, v12

    if-nez v6, :cond_d

    iget-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    const/4 v12, 0x3

    aget-boolean v6, v6, v12

    if-eqz v6, :cond_c

    goto :goto_8

    :cond_c
    const/4 v12, 0x1

    goto :goto_a

    :cond_d
    :goto_8
    const/4 v12, 0x1

    goto :goto_9

    :cond_e
    const/4 v12, 0x0

    aget-boolean v6, v6, v12

    if-nez v6, :cond_f

    iget-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    const/4 v12, 0x1

    aget-boolean v6, v6, v12

    if-eqz v6, :cond_10

    goto :goto_9

    :cond_f
    const/4 v12, 0x1

    :goto_9
    if-lez v2, :cond_10

    move v2, v12

    goto :goto_b

    :cond_10
    :goto_a
    const/4 v2, 0x0

    .line 376
    .local v2, "canQsbInline":Z
    :goto_b
    iget-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    iget v15, v0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-boolean v6, v6, v15

    if-eqz v6, :cond_11

    if-eqz v2, :cond_11

    move v6, v12

    goto :goto_c

    :cond_11
    const/4 v6, 0x0

    :goto_c
    iput-boolean v6, v0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    .line 380
    iget-boolean v15, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v15, :cond_12

    if-nez v5, :cond_12

    goto :goto_d

    :cond_12
    const/4 v12, 0x0

    :goto_d
    iput-boolean v12, v0, Lcom/android/launcher3/DeviceProfile;->areNavButtonsInline:Z

    .line 381
    if-eqz v12, :cond_13

    if-eqz v2, :cond_13

    .line 382
    iget v12, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numShrunkenHotseatIcons:I

    iput v12, v0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    goto :goto_f

    .line 384
    :cond_13
    nop

    .line 385
    if-eqz v13, :cond_14

    iget v12, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    goto :goto_e

    :cond_14
    iget v12, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    :goto_e
    iput v12, v0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    .line 388
    :goto_f
    nop

    .line 389
    if-eqz v13, :cond_15

    iget v12, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseAllAppsColumns:I

    goto :goto_10

    :cond_15
    iget v12, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    :goto_10
    iput v12, v0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    .line 390
    const/4 v12, 0x0

    iput v12, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizeExtraSpacePx:I

    .line 391
    sget v12, Lcom/android/launcher3/R$dimen;->dynamic_grid_hotseat_top_padding:I

    .line 392
    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    .line 393
    if-eqz v6, :cond_16

    .line 394
    sget v6, Lcom/android/launcher3/R$dimen;->inline_qsb_bottom_margin:I

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    goto :goto_13

    .line 397
    :cond_16
    invoke-static {v11}, Lcom/android/launcher3/Utilities;->getQsbEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 398
    if-eqz v4, :cond_17

    const/4 v6, 0x0

    goto :goto_11

    .line 399
    :cond_17
    sget v6, Lcom/android/launcher3/R$dimen;->dynamic_grid_hotseat_bottom_non_tall_padding:I

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :goto_11
    sget v12, Lcom/android/launcher3/R$dimen;->dynamic_grid_hotseat_bottom_padding:I

    .line 400
    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v6, v12

    goto :goto_12

    .line 401
    :cond_18
    sget v6, Lcom/android/launcher3/R$dimen;->dynamic_grid_hotseat_bottom_padding_no_search:I

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :goto_12
    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    .line 404
    :goto_13
    sget v6, Lcom/android/launcher3/R$dimen;->spring_loaded_hotseat_top_margin:I

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->springLoadedHotseatBarTopMarginPx:I

    .line 406
    sget v6, Lcom/android/launcher3/R$dimen;->dynamic_grid_hotseat_side_padding:I

    .line 407
    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v6

    if-eqz v6, :cond_19

    goto :goto_14

    :cond_19
    const/4 v7, 0x0

    :goto_14
    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    .line 410
    sget v6, Lcom/android/launcher3/R$dimen;->dynamic_grid_hotseat_extra_vertical_size:I

    .line 411
    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->hotseatExtraVerticalSize:I

    .line 412
    iget-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-static {v6, v10}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-direct {v0, v6}, Lcom/android/launcher3/DeviceProfile;->updateHotseatIconSize(I)V

    .line 414
    if-eqz v9, :cond_1a

    .line 415
    sget v6, Lcom/android/launcher3/R$dimen;->scalable_grid_qsb_bottom_margin:I

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    goto :goto_15

    .line 416
    :cond_1a
    const/4 v6, 0x0

    :goto_15
    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->qsbBottomMarginOriginalPx:F

    .line 418
    sget v6, Lcom/android/launcher3/R$dimen;->overview_task_margin:I

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginPx:I

    .line 419
    sget v6, Lcom/android/launcher3/R$dimen;->overview_task_margin_grid:I

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginGridPx:I

    .line 420
    sget v6, Lcom/android/launcher3/R$dimen;->task_thumbnail_icon_size:I

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconSizePx:I

    .line 421
    sget v6, Lcom/android/launcher3/R$dimen;->task_thumbnail_icon_drawable_size:I

    .line 422
    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizePx:I

    .line 423
    sget v6, Lcom/android/launcher3/R$dimen;->task_thumbnail_icon_drawable_size_grid:I

    .line 424
    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizeGridPx:I

    .line 425
    iget v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconSizePx:I

    iget v7, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginPx:I

    const/4 v9, 0x2

    mul-int/2addr v7, v9

    add-int/2addr v6, v7

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 428
    iget v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginPx:I

    goto :goto_16

    .line 429
    :cond_1b
    sget v6, Lcom/android/launcher3/R$dimen;->overview_actions_top_margin:I

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :goto_16
    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewActionsTopMarginPx:I

    .line 430
    sget v6, Lcom/android/launcher3/R$dimen;->overview_page_spacing:I

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewPageSpacing:I

    .line 431
    sget v6, Lcom/android/launcher3/R$dimen;->overview_actions_button_spacing:I

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewActionsButtonSpacing:I

    .line 433
    sget v6, Lcom/android/launcher3/R$dimen;->overview_actions_height:I

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewActionsHeight:I

    .line 437
    iget v6, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    iget v7, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconSizePx:I

    sub-int/2addr v6, v7

    iget v7, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginGridPx:I

    sub-int/2addr v6, v7

    .line 439
    .local v6, "extraTopMargin":I
    sget v7, Lcom/android/launcher3/R$dimen;->overview_grid_row_spacing:I

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v7, v6

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->overviewRowSpacing:I

    .line 441
    sget v7, Lcom/android/launcher3/R$dimen;->overview_grid_side_margin:I

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->overviewGridSideMargin:I

    .line 445
    invoke-direct {v0, v14}, Lcom/android/launcher3/DeviceProfile;->updateAvailableDimensions(Landroid/content/res/Resources;)I

    move-result v7

    iput v7, v0, Lcom/android/launcher3/DeviceProfile;->extraSpace:I

    .line 500
    if-eqz v13, :cond_1c

    iget-object v7, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    const/4 v9, 0x2

    div-int/2addr v7, v9

    goto :goto_17

    :cond_1c
    sget v7, Lcom/android/launcher3/R$dimen;->cell_layout_padding:I

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 502
    .local v7, "cellLayoutPadding":I
    :goto_17
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    .line 504
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->updateWorkspacePadding()V

    .line 507
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->calculateHotseatBorderSpace()I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    .line 508
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/DeviceProfile;->calculateQsbWidth()I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/DeviceProfile;->qsbWidth:I

    .line 510
    sget v9, Lcom/android/launcher3/R$dimen;->drag_flingToDeleteMinVelocity:I

    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v0, Lcom/android/launcher3/DeviceProfile;->flingToDeleteThresholdVelocity:I

    .line 515
    invoke-direct {v0, v14}, Lcom/android/launcher3/DeviceProfile;->updateAppWidgetScale(Landroid/content/res/Resources;)V

    .line 518
    const/16 v9, 0x64

    invoke-static {v9}, Lcom/android/launcher3/icons/GraphicsUtils;->getShapePath(I)Landroid/graphics/Path;

    move-result-object v10

    .line 519
    .local v10, "dotPath":Landroid/graphics/Path;
    new-instance v12, Lcom/android/launcher3/icons/DotRenderer;

    iget v13, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-direct {v12, v13, v10, v9}, Lcom/android/launcher3/icons/DotRenderer;-><init>(ILandroid/graphics/Path;I)V

    iput-object v12, v0, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/DotRenderer;

    .line 520
    iget v13, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v15, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    if-ne v13, v15, :cond_1d

    goto :goto_18

    .line 521
    :cond_1d
    new-instance v12, Lcom/android/launcher3/icons/DotRenderer;

    invoke-direct {v12, v15, v10, v9}, Lcom/android/launcher3/icons/DotRenderer;-><init>(ILandroid/graphics/Path;I)V

    :goto_18
    iput-object v12, v0, Lcom/android/launcher3/DeviceProfile;->mDotRendererAllApps:Lcom/android/launcher3/icons/DotRenderer;

    .line 522
    new-instance v9, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;

    iget v12, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-direct {v9, v12, v11}, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;-><init>(ILandroid/content/Context;)V

    iput-object v9, v0, Lcom/android/launcher3/DeviceProfile;->mSonyBadgeRenderer:Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;

    .line 523
    return-void
.end method

.method public static calculateCellHeight(III)I
    .locals 1
    .param p0, "height"    # I
    .param p1, "borderSpacing"    # I
    .param p2, "countY"    # I

    .line 1247
    add-int/lit8 v0, p2, -0x1

    mul-int/2addr v0, p1

    sub-int v0, p0, v0

    div-int/2addr v0, p2

    return v0
.end method

.method public static calculateCellWidth(III)I
    .locals 1
    .param p0, "width"    # I
    .param p1, "borderSpacing"    # I
    .param p2, "countX"    # I

    .line 1243
    add-int/lit8 v0, p2, -0x1

    mul-int/2addr v0, p1

    sub-int v0, p0, v0

    div-int/2addr v0, p2

    return v0
.end method

.method private calculateHotseatBorderSpace()I
    .locals 5

    .line 804
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 806
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->areNavButtonsInline:Z

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatBorderSpaces:[F

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    return v0

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatColumnSpan:[I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v0, v0, v1

    .line 810
    .local v0, "columns":I
    invoke-direct {p0, v0}, Lcom/android/launcher3/DeviceProfile;->getIconToIconWidthForColumns(I)I

    move-result v1

    int-to-float v1, v1

    .line 811
    .local v1, "hotseatWidthPx":F
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    .line 812
    .local v2, "hotseatIconsTotalPx":F
    sub-float v4, v1, v2

    float-to-int v4, v4

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v4, v3

    return v4
.end method

.method private calculateQsbWidth()I
    .locals 4

    .line 530
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getPanelCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    mul-int/2addr v0, v1

    .line 532
    .local v0, "columns":I
    invoke-direct {p0, v0}, Lcom/android/launcher3/DeviceProfile;->getIconToIconWidthForColumns(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    return v1

    .line 536
    .end local v0    # "columns":I
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatColumnSpan:[I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v0, v0, v1

    .line 537
    .restart local v0    # "columns":I
    invoke-direct {p0, v0}, Lcom/android/launcher3/DeviceProfile;->getIconToIconWidthForColumns(I)I

    move-result v1

    return v1
.end method

.method private getAdaptationCellHeight()I
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$integer;->short_screen_cell_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private getCellLayoutBorderSpace(Lcom/android/launcher3/InvariantDeviceProfile;)Landroid/graphics/Point;
    .locals 1
    .param p1, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;

    .line 571
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutBorderSpace(Lcom/android/launcher3/InvariantDeviceProfile;F)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private getCellLayoutBorderSpace(Lcom/android/launcher3/InvariantDeviceProfile;F)Landroid/graphics/Point;
    .locals 3
    .param p1, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p2, "scale"    # F

    .line 576
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-nez v0, :cond_0

    .line 577
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 580
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->borderSpaces:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, p2}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v0

    .line 581
    .local v0, "horizontalSpacePx":I
    iget-object v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->borderSpaces:[Landroid/graphics/PointF;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2, p2}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v1

    .line 583
    .local v1, "verticalSpacePx":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method private getCellLayoutHeightSpecification()I
    .locals 3

    .line 734
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getCellLayoutSpringLoadShrunkBottom()F
    .locals 3

    .line 992
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->springLoadedHotseatBarTopMarginPx:I

    add-int/2addr v0, v1

    .line 993
    .local v0, "topOfHotseat":I
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 994
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getVerticalHotseatLastItemBottomOffset()I

    move-result v2

    goto :goto_0

    .line 995
    :cond_0
    move v2, v0

    :goto_0
    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrunkBottom:F

    .line 996
    return v1
.end method

.method private getCellLayoutWidthSpecification()I
    .locals 4

    .line 739
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getPanelCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    mul-int/2addr v0, v1

    .line 740
    .local v0, "numColumns":I
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    return v1
.end method

.method private static getContext(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;ILcom/android/launcher3/util/WindowBounds;)Landroid/content/Context;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p2, "orientation"    # I
    .param p3, "bounds"    # Lcom/android/launcher3/util/WindowBounds;

    .line 1470
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1471
    .local v0, "config":Landroid/content/res/Configuration;
    iput p2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1472
    invoke-virtual {p1}, Lcom/android/launcher3/util/DisplayController$Info;->getDensityDpi()I

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1473
    invoke-virtual {p1, p3}, Lcom/android/launcher3/util/DisplayController$Info;->smallestSizeDp(Lcom/android/launcher3/util/WindowBounds;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1474
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    return-object v1
.end method

.method private getHorizontalMarginPx(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/res/Resources;)I
    .locals 2
    .param p1, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 548
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    const/4 v0, 0x0

    return v0

    .line 552
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->horizontalMargin:[F

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    goto :goto_0

    .line 554
    :cond_1
    sget v0, Lcom/android/launcher3/R$dimen;->dynamic_grid_left_right_margin:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 552
    :goto_0
    return v0
.end method

.method private getHotseatBottomPadding()I
    .locals 3

    .line 1186
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v0, :cond_0

    .line 1187
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getQsbOffsetY()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbHeight:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0

    .line 1189
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getQsbOffsetY()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getIconToIconWidthForColumns(I)I
    .locals 3
    .param p1, "columns"    # I

    .line 542
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, p1

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 544
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 542
    return v0
.end method

.method private hideWorkspaceLabelsIfNotEnoughSpace()V
    .locals 4

    .line 656
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v0

    int-to-float v0, v0

    .line 657
    .local v0, "iconTextHeight":F
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    sub-float/2addr v1, v0

    .line 661
    .local v1, "workspaceCellPaddingY":F
    cmpg-float v3, v1, v0

    if-gez v3, :cond_0

    .line 662
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    .line 663
    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    .line 664
    int-to-float v2, v2

    const/high16 v3, 0x3f900000    # 1.125f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    .line 665
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->autoResizeAllAppsCells()V

    .line 667
    :cond_0
    return-void
.end method

.method private insetPadding(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "paddings"    # Landroid/graphics/Rect;
    .param p2, "insets"    # Landroid/graphics/Rect;

    .line 1072
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 1073
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1075
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 1076
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1078
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1079
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1081
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 1082
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1083
    return-void
.end method

.method private pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "px ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p2, v1}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dp)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateAllAppsContainerWidth(Landroid/content/res/Resources;)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 680
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 682
    .local v0, "cellLayoutHorizontalPadding":I
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_0

    .line 683
    sget v1, Lcom/android/launcher3/R$dimen;->all_apps_bottom_sheet_horizontal_padding:I

    .line 684
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    .line 686
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellWidthPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 689
    .local v1, "usedWidth":I
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    .line 690
    .end local v1    # "usedWidth":I
    goto :goto_0

    .line 691
    :cond_0
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    .line 694
    :goto_0
    return-void
.end method

.method private updateAllAppsIconSize(FLandroid/content/res/Resources;)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 821
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    .line 822
    invoke-static {v1, v2, p1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    .line 823
    invoke-static {v2, v3, p1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    .line 826
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSize:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    .line 830
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSize:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellWidthPx:I

    .line 831
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconSize:[F

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    .line 833
    invoke-static {v0, v1, p1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    .line 834
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconTextSize:[F

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    .line 835
    invoke-static {v0, v1, p1}, Lcom/android/launcher3/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    .line 836
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    goto :goto_0

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconSize:[F

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v0, v0, v1

    .line 839
    .local v0, "invIconSizeDp":F
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconTextSize:[F

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v1, v1, v2

    .line 840
    .local v1, "invIconTextSizeSp":F
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v3, p1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    .line 841
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    .line 842
    sget v2, Lcom/android/launcher3/R$dimen;->all_apps_icon_drawable_padding:I

    .line 843
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    .line 844
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getAdaptationCellHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    .line 847
    .end local v0    # "invIconSizeDp":F
    .end local v1    # "invIconTextSizeSp":F
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/launcher3/DeviceProfile;->updateAllAppsContainerWidth(Landroid/content/res/Resources;)V

    .line 848
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->hideWorkspaceLabelsIfNotEnoughSpace()V

    .line 851
    :cond_1
    return-void
.end method

.method private updateAppWidgetScale(Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 607
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    .line 608
    .local v0, "cellSize":Landroid/graphics/Point;
    sget v1, Lcom/android/launcher3/R$dimen;->min_widget_cell_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 609
    .local v1, "widgetMinCellSize":I
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 610
    .local v2, "appWidgetScaleX":F
    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 611
    .local v3, "appWidgetScaleY":F
    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 612
    return-void
.end method

.method private updateAvailableDimensions(Landroid/content/res/Resources;)I
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 700
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FLandroid/content/res/Resources;)V

    .line 702
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->updateWorkspacePadding()V

    .line 705
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeightSpecification()I

    move-result v1

    int-to-float v1, v1

    .line 706
    .local v1, "usedHeight":F
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeight()I

    move-result v2

    .line 707
    .local v2, "maxHeight":I
    int-to-float v3, v2

    sub-float/2addr v3, v1

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 708
    .local v3, "extraHeight":F
    int-to-float v4, v2

    div-float/2addr v4, v1

    .line 709
    .local v4, "scaleY":F
    cmpg-float v0, v4, v0

    const/4 v5, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    .line 711
    .local v0, "shouldScale":Z
    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    .line 712
    .local v6, "scaleX":F
    iget-boolean v7, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v7, :cond_1

    .line 716
    nop

    .line 717
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutWidthSpecification()I

    move-result v7

    iget v8, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    .line 719
    .local v7, "usedWidth":F
    iget v8, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v8, v8

    div-float v6, v8, v7

    .line 720
    const/4 v0, 0x1

    .line 723
    .end local v7    # "usedWidth":F
    :cond_1
    if-eqz v0, :cond_2

    .line 724
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 725
    .local v7, "scale":F
    invoke-virtual {p0, v7, p1}, Lcom/android/launcher3/DeviceProfile;->updateIconSize(FLandroid/content/res/Resources;)V

    .line 726
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeightSpecification()I

    move-result v8

    sub-int v8, v2, v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v3, v5

    .line 729
    .end local v7    # "scale":F
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/DeviceProfile;->updateAvailableFolderCellDimensions(Landroid/content/res/Resources;)V

    .line 730
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    return v5
.end method

.method private updateAvailableFolderCellDimensions(Landroid/content/res/Resources;)V
    .locals 11
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 861
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/DeviceProfile;->updateFolderCellSize(FLandroid/content/res/Resources;)V

    .line 863
    sget v1, Lcom/android/launcher3/R$dimen;->folder_label_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 866
    .local v1, "folderBottomPanelSize":I
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v2, v2, 0x2

    .line 867
    .local v2, "folderMargin":I
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v3

    .line 870
    .local v3, "totalWorkspacePadding":Landroid/graphics/Point;
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 872
    .local v4, "contentUsedHeight":F
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    sub-int/2addr v5, v6

    .line 874
    .local v5, "contentMaxHeight":I
    int-to-float v6, v5

    div-float/2addr v6, v4

    .line 877
    .local v6, "scaleY":F
    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iget-object v8, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v8, v8, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    mul-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v8, v8, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    int-to-float v7, v7

    .line 879
    .local v7, "contentUsedWidth":F
    iget v8, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v9, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v2

    iget v9, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    .line 881
    .local v8, "contentMaxWidth":I
    int-to-float v9, v8

    div-float/2addr v9, v7

    .line 883
    .local v9, "scaleX":F
    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 884
    .local v10, "scale":F
    cmpg-float v0, v10, v0

    if-gez v0, :cond_0

    .line 885
    invoke-direct {p0, v10, p1}, Lcom/android/launcher3/DeviceProfile;->updateFolderCellSize(FLandroid/content/res/Resources;)V

    .line 887
    :cond_0
    return-void
.end method

.method private updateFolderCellSize(FLandroid/content/res/Resources;)V
    .locals 7
    .param p1, "scale"    # F
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 890
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    aget v0, v0, v1

    goto :goto_0

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    aget v0, v0, v2

    :goto_0
    nop

    .line 893
    .local v0, "invIconSizeDp":F
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v3, p1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    .line 894
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:[F

    aget v1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    .line 895
    invoke-static {v1, v3, p1}, Lcom/android/launcher3/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;F)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    .line 896
    int-to-float v3, v1

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->folderLabelTextScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->folderLabelTextSizePx:I

    .line 898
    int-to-float v1, v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v1

    .line 900
    .local v1, "textHeight":I
    iget-boolean v3, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v3, :cond_1

    .line 901
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v3

    .line 902
    .local v5, "minWidth":I
    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 904
    .local v3, "minHeight":I
    int-to-float v4, v5

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    .line 905
    int-to-float v4, v3

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    .line 907
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpaceOriginalPx:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    .line 908
    .local v4, "scaledSpace":I
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    .line 909
    iput v4, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    .line 910
    iput v4, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    .line 911
    .end local v3    # "minHeight":I
    .end local v4    # "scaledSpace":I
    .end local v5    # "minWidth":I
    goto :goto_1

    .line 912
    :cond_1
    sget v3, Lcom/android/launcher3/R$dimen;->folder_cell_x_padding:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    .line 914
    .local v3, "cellPaddingX":I
    sget v4, Lcom/android/launcher3/R$dimen;->folder_cell_y_padding:I

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    .line 917
    .local v4, "cellPaddingY":I
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v5

    iput v6, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    .line 918
    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    iput v5, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    .line 921
    .end local v3    # "cellPaddingX":I
    .end local v4    # "cellPaddingY":I
    :goto_1
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    .line 923
    return-void
.end method

.method private updateHotseatIconSize(I)V
    .locals 2
    .param p1, "hotseatIconSizePx"    # I

    .line 559
    int-to-float v0, p1

    const/high16 v1, 0x3f900000    # 1.125f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    .line 560
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    goto :goto_1

    .line 564
    :cond_0
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    add-int/2addr v0, v1

    .line 565
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatExtraVerticalSize:I

    :goto_0
    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizeExtraSpacePx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    .line 568
    :goto_1
    return-void
.end method

.method private updateWorkspacePadding()V
    .locals 6

    .line 1047
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    .line 1048
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1049
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1050
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1051
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1052
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1053
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1055
    :cond_0
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1056
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1060
    :cond_1
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    .line 1061
    .local v1, "hotseatTop":I
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->workspacePageIndicatorHeight:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->workspaceBottomPadding:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->mWorkspacePageIndicatorOverlapWorkspace:I

    sub-int/2addr v3, v4

    .line 1063
    .local v3, "paddingBottom":I
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->workspaceTopPadding:I

    iget-boolean v5, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    :goto_0
    add-int/2addr v4, v2

    .line 1064
    .local v4, "paddingTop":I
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    .line 1066
    .local v2, "paddingSide":I
    invoke-virtual {v0, v2, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1068
    .end local v1    # "hotseatTop":I
    .end local v2    # "paddingSide":I
    .end local v3    # "paddingBottom":I
    .end local v4    # "paddingTop":I
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/DeviceProfile;->insetPadding(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1069
    return-void
.end method


# virtual methods
.method public autoResizeAllAppsCells()V
    .locals 4

    .line 673
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v0

    .line 674
    .local v0, "textHeight":I
    move v1, v0

    .line 675
    .local v1, "topBottomPadding":I
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    .line 677
    return-void
.end method

.method public copy(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 627
    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeviceProfile;->toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 1305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceProfile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t1 dp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " px"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisTablet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisPhone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ttransposeLayoutWithOrientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisGestureMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisLandscape:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisMultiWindowMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisTwoPanels:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->windowX:I

    int-to-float v1, v1

    const-string v2, "windowX"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->windowY:I

    int-to-float v1, v1

    const-string v2, "windowY"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v1, v1

    const-string v2, "widthPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v1, v1

    const-string v2, "heightPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v1, v1

    const-string v2, "availableWidthPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v1, v1

    const-string v2, "availableHeightPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const-string v2, "mInsets.left"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const-string v2, "mInsets.top"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const-string v2, "mInsets.right"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const-string v2, "mInsets.bottom"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\taspectRatio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisScalableGrid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tinv.numRows: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tinv.numColumns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tinv.numSearchContainerColumns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numSearchContainerColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tminCellSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->minCellSize:[Landroid/graphics/PointF;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    int-to-float v1, v1

    const-string v2, "cellWidthPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    int-to-float v1, v1

    const-string v2, "cellHeightPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const-string v2, "getCellSize().x"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const-string v2, "getCellSize().y"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const-string v2, "cellLayoutBorderSpacePx Horizontal"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const-string v2, "cellLayoutBorderSpacePx Vertical"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const-string v2, "cellLayoutPaddingPx.left"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const-string v2, "cellLayoutPaddingPx.top"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const-string v2, "cellLayoutPaddingPx.right"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    .line 1354
    const-string v2, "cellLayoutPaddingPx.bottom"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1353
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    const-string v2, "iconSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v1, v1

    const-string v2, "iconTextSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    int-to-float v1, v1

    const-string v2, "iconDrawablePaddingPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    int-to-float v1, v1

    const-string v2, "folderCellWidthPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    int-to-float v1, v1

    const-string v2, "folderCellHeightPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    int-to-float v1, v1

    const-string v2, "folderChildIconSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    int-to-float v1, v1

    const-string v2, "folderChildTextSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    int-to-float v1, v1

    const-string v2, "folderChildDrawablePaddingPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpaceOriginalPx:I

    int-to-float v1, v1

    const-string v2, "folderCellLayoutBorderSpaceOriginalPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const-string v2, "folderCellLayoutBorderSpacePx Horizontal"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const-string v2, "folderCellLayoutBorderSpacePx Vertical"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->bottomSheetTopPadding:I

    int-to-float v1, v1

    const-string v2, "bottomSheetTopPadding"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsShiftRange:I

    int-to-float v1, v1

    const-string v2, "allAppsShiftRange"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsTopPadding:I

    int-to-float v1, v1

    const-string v2, "allAppsTopPadding"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v1, v1

    const-string v2, "allAppsIconSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    const-string v2, "allAppsIconTextSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    int-to-float v1, v1

    const-string v2, "allAppsIconDrawablePaddingPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    int-to-float v1, v1

    const-string v2, "allAppsCellHeightPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellWidthPx:I

    int-to-float v1, v1

    const-string v2, "allAppsCellWidthPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const-string v2, "allAppsBorderSpacePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tnumShownAllAppsColumns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    int-to-float v1, v1

    const-string v2, "allAppsLeftRightPadding"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    int-to-float v1, v1

    const-string v2, "allAppsLeftRightMargin"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    int-to-float v1, v1

    const-string v2, "hotseatBarSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tinv.hotseatColumnSpan: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatColumnSpan:[I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    int-to-float v1, v1

    const-string v2, "hotseatCellHeightPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    int-to-float v1, v1

    const-string v2, "hotseatBarTopPaddingPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    int-to-float v1, v1

    const-string v2, "hotseatBarBottomPaddingPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    int-to-float v1, v1

    const-string v2, "hotseatBarSidePaddingStartPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    int-to-float v1, v1

    const-string v2, "hotseatBarSidePaddingEndPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->springLoadedHotseatBarTopMarginPx:I

    int-to-float v1, v1

    const-string v2, "springLoadedHotseatBarTopMarginPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const-string v2, "mHotseatPadding.top"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const-string v2, "mHotseatPadding.bottom"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const-string v2, "mHotseatPadding.left"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const-string v2, "mHotseatPadding.right"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tnumShownHotseatIcons: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    int-to-float v1, v1

    const-string v2, "hotseatBorderSpace"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisQsbInline: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->qsbWidth:I

    int-to-float v1, v1

    const-string v2, "qsbWidth"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisTaskbarPresent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tisTaskbarPresentInApps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    int-to-float v1, v1

    const-string v2, "taskbarSize"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    int-to-float v1, v1

    const-string v2, "desiredWorkspaceHorizontalMarginPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const-string v2, "workspacePadding.left"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const-string v2, "workspacePadding.top"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const-string v2, "workspacePadding.right"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const-string v2, "workspacePadding.bottom"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconScale:F

    const-string v2, "iconScale"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->cellScaleToFit:F

    const-string v2, "cellScaleToFit "

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->extraSpace:I

    int-to-float v1, v1

    const-string v2, "extraSpace"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->extraSpace:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->iconScale:F

    div-float/2addr v1, v2

    const-string v2, "unscaled extraSpace"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1424
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddings:Lcom/android/launcher3/DevicePaddings;

    if-eqz v0, :cond_0

    .line 1425
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->extraSpace:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1426
    .local v0, "unscaledExtraSpace":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddings:Lcom/android/launcher3/DevicePaddings;

    .line 1427
    invoke-virtual {v2, v0}, Lcom/android/launcher3/DevicePaddings;->getDevicePadding(I)Lcom/android/launcher3/DevicePaddings$DevicePadding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/DevicePaddings$DevicePadding;->getMaxEmptySpacePx()I

    move-result v2

    int-to-float v2, v2

    .line 1426
    const-string v3, "maxEmptySpace"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1429
    .end local v0    # "unscaledExtraSpace":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->workspaceTopPadding:I

    int-to-float v1, v1

    const-string v2, "workspaceTopPadding"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->workspaceBottomPadding:I

    int-to-float v1, v1

    const-string v2, "workspaceBottomPadding"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->extraHotseatBottomPadding:I

    int-to-float v1, v1

    const-string v2, "extraHotseatBottomPadding"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginPx:I

    int-to-float v1, v1

    const-string v2, "overviewTaskMarginPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginGridPx:I

    int-to-float v1, v1

    const-string v2, "overviewTaskMarginGridPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconSizePx:I

    int-to-float v1, v1

    const-string v2, "overviewTaskIconSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizePx:I

    int-to-float v1, v1

    const-string v2, "overviewTaskIconDrawableSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizeGridPx:I

    int-to-float v1, v1

    const-string v2, "overviewTaskIconDrawableSizeGridPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    int-to-float v1, v1

    const-string v2, "overviewTaskThumbnailTopMarginPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewActionsTopMarginPx:I

    int-to-float v1, v1

    const-string v2, "overviewActionsTopMarginPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewActionsHeight:I

    int-to-float v1, v1

    const-string v2, "overviewActionsHeight"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewActionsButtonSpacing:I

    int-to-float v1, v1

    const-string v2, "overviewActionsButtonSpacing"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewPageSpacing:I

    int-to-float v1, v1

    const-string v2, "overviewPageSpacing"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewRowSpacing:I

    int-to-float v1, v1

    const-string v2, "overviewRowSpacing"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewGridSideMargin:I

    int-to-float v1, v1

    const-string v2, "overviewGridSideMargin"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarTopMarginPx:I

    int-to-float v1, v1

    const-string v2, "dropTargetBarTopMarginPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    int-to-float v1, v1

    const-string v2, "dropTargetBarSizePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarBottomMarginPx:I

    int-to-float v1, v1

    .line 1455
    const-string v2, "dropTargetBarBottomMarginPx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1454
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrunkTop:F

    .line 1458
    const-string v2, "workspaceSpringLoadShrunkTop"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1457
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrunkBottom:F

    const-string v2, "workspaceSpringLoadShrunkBottom"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadedBottomSpace:I

    int-to-float v1, v1

    const-string v2, "workspaceSpringLoadedBottomSpace"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadedMinNextPageVisiblePx:I

    int-to-float v1, v1

    const-string v2, "workspaceSpringLoadedMinNextPageVisiblePx"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1466
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getWorkspaceSpringLoadScale()F

    move-result v1

    const-string v2, "getWorkspaceSpringLoadScale()"

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->pxToDpStr(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1465
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1467
    return-void
.end method

.method public getAbsoluteOpenFolderBounds()Landroid/graphics/Rect;
    .locals 7

    .line 1225
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 1233
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    .line 1234
    .local v0, "hotseatTop":I
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->workspacePageIndicatorHeight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getCellContentHeight(I)I
    .locals 1
    .param p1, "containerType"    # I

    .line 1285
    packed-switch p1, :pswitch_data_0

    .line 1296
    const/4 v0, 0x0

    return v0

    .line 1289
    :pswitch_0
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    return v0

    .line 1293
    :pswitch_1
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    return v0

    .line 1287
    :pswitch_2
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCellLayoutHeight()I
    .locals 2

    .line 1033
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCellLayoutSpringLoadShrunkTop()F
    .locals 2

    .line 983
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarTopMarginPx:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarBottomMarginPx:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrunkTop:F

    .line 985
    return v0
.end method

.method public getCellLayoutWidth()I
    .locals 2

    .line 1024
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getPanelCount()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public getCellSize()Landroid/graphics/Point;
    .locals 1

    .line 938
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .param p1, "result"    # Landroid/graphics/Point;

    .line 942
    if-nez p1, :cond_0

    .line 943
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    move-object p1, v0

    .line 946
    :cond_0
    nop

    .line 947
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 948
    .local v0, "shortcutAndWidgetContainerWidth":I
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(III)I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 950
    nop

    .line 951
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 952
    .local v1, "shortcutAndWidgetContainerHeight":I
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(III)I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->y:I

    .line 954
    return-object p1
.end method

.method public getDisplayInfo()Lcom/android/launcher3/util/DisplayController$Info;
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    return-object v0
.end method

.method public getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 1089
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1095
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    const/high16 v3, 0x3e000000    # 0.125f

    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    .line 1096
    .local v0, "diffOverlapFactor":F
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    sub-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1098
    .local v1, "paddingTop":I
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v3, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1101
    .local v2, "paddingBottom":I
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1102
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1105
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingEndPx:I

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSidePaddingStartPx:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1108
    .end local v0    # "diffOverlapFactor":F
    .end local v1    # "paddingTop":I
    .end local v2    # "paddingBottom":I
    :goto_0
    goto/16 :goto_3

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v0, :cond_6

    .line 1110
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getHotseatBottomPadding()I

    move-result v0

    .line 1111
    .local v0, "hotseatBottomPadding":I
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    sub-int/2addr v1, v3

    .line 1115
    .local v1, "hotseatTopPadding":I
    iget-boolean v3, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v3, :cond_2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->qsbWidth:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    add-int/2addr v2, v3

    .line 1116
    .local v2, "additionalQsbSpace":I
    :cond_2
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    mul-int/2addr v3, v4

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v5, v4

    add-int/2addr v3, v5

    add-int/2addr v3, v2

    .line 1119
    .local v3, "requiredWidth":I
    invoke-static {p1}, Lcom/android/launcher3/uioverrides/ApiWrapper;->getHotseatEndOffset(Landroid/content/Context;)I

    move-result v4

    .line 1120
    .local v4, "endOffset":I
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1121
    .local v5, "hotseatWidth":I
    iget v6, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    sub-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    .line 1123
    .local v6, "sideSpacing":I
    iget-object v7, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    invoke-virtual {v7, v6, v1, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v7

    .line 1126
    .local v7, "isRtl":Z
    if-eqz v7, :cond_3

    .line 1127
    iget-object v8, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v2

    iput v9, v8, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1129
    :cond_3
    iget-object v8, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v2

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 1132
    :goto_1
    if-le v4, v6, :cond_5

    .line 1133
    if-eqz v7, :cond_4

    .line 1134
    sub-int v8, v6, v4

    goto :goto_2

    .line 1135
    :cond_4
    sub-int v8, v4, v6

    :goto_2
    nop

    .line 1136
    .local v8, "diff":I
    iget-object v9, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v8

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 1137
    iget-object v9, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v8

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 1139
    .end local v0    # "hotseatBottomPadding":I
    .end local v1    # "hotseatTopPadding":I
    .end local v2    # "additionalQsbSpace":I
    .end local v3    # "requiredWidth":I
    .end local v4    # "endOffset":I
    .end local v5    # "hotseatWidth":I
    .end local v6    # "sideSpacing":I
    .end local v7    # "isRtl":Z
    .end local v8    # "diff":I
    :cond_5
    goto :goto_3

    :cond_6
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v0, :cond_7

    .line 1140
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->qsbWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 1141
    .local v0, "sideSpacing":I
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1146
    .end local v0    # "sideSpacing":I
    goto :goto_3

    .line 1151
    :cond_7
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 1152
    .local v0, "workspaceCellWidth":F
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1153
    .local v2, "hotseatCellWidth":F
    sub-float v3, v0, v2

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1154
    .local v1, "hotseatAdjustment":I
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v8, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarTopPaddingPx:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1161
    .end local v0    # "workspaceCellWidth":F
    .end local v1    # "hotseatAdjustment":I
    .end local v2    # "hotseatCellWidth":F
    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMultiWindowProfile(Landroid/content/Context;Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowBounds"    # Lcom/android/launcher3/util/WindowBounds;

    .line 634
    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeviceProfile;->toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v0

    .line 635
    invoke-virtual {v0, p2}, Lcom/android/launcher3/DeviceProfile$Builder;->setWindowBounds(Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v0

    .line 636
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeviceProfile$Builder;->setMultiWindowMode(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v0

    .line 637
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 639
    .local v0, "profile":Lcom/android/launcher3/DeviceProfile;
    invoke-direct {v0}, Lcom/android/launcher3/DeviceProfile;->hideWorkspaceLabelsIfNotEnoughSpace()V

    .line 643
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 644
    .local v1, "appWidgetScaleX":F
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 645
    .local v2, "appWidgetScaleY":F
    iget-object v3, v0, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 647
    return-object v0
.end method

.method public getOverviewActionsClaimedSpace()I
    .locals 2

    .line 1217
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->overviewActionsTopMarginPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewActionsHeight:I

    add-int/2addr v0, v1

    .line 1218
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getOverviewActionsClaimedSpaceBelow()I

    move-result v1

    add-int/2addr v0, v1

    .line 1217
    return v0
.end method

.method public getOverviewActionsClaimedSpaceBelow()I
    .locals 2

    .line 1207
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-nez v1, :cond_0

    .line 1209
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->overviewActionsHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 1212
    :cond_0
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->stashedTaskbarSize:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return v0
.end method

.method public getPanelCount()I
    .locals 1

    .line 961
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getQsbOffsetY()I
    .locals 3

    .line 1168
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v0, :cond_0

    .line 1169
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    return v0

    .line 1172
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1174
    :cond_1
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbHeight:I

    sub-int/2addr v0, v1

    :goto_0
    nop

    .line 1176
    .local v0, "freeSpace":I
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->qsbBottomMarginPx:I

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_2

    .line 1178
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->qsbBottomMarginPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    add-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 1180
    :cond_2
    int-to-float v1, v0

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mQsbCenterFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1181
    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    :goto_1
    add-int/2addr v1, v2

    .line 1180
    return v1
.end method

.method public getTaskbarOffsetY()I
    .locals 3

    .line 1197
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 1198
    .local v0, "taskbarIconBottomSpace":I
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->hotseatCellHeightPx:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->gridVisualizationPaddingY:I

    .line 1199
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1200
    .local v1, "launcherIconBottomSpace":I
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getHotseatBottomPadding()I

    move-result v2

    add-int/2addr v2, v1

    sub-int/2addr v2, v0

    return v2
.end method

.method public getTotalWorkspacePadding()Landroid/graphics/Point;
    .locals 4

    .line 1037
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->updateWorkspacePadding()V

    .line 1038
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getVerticalHotseatLastItemBottomOffset()I
    .locals 6

    .line 969
    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(III)I

    move-result v0

    .line 972
    .local v0, "cellHeight":I
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    mul-int v2, v0, v1

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 974
    .local v2, "hotseatSize":I
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 975
    .local v1, "extraHotseatEndSpacing":I
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    .line 976
    .local v3, "extraIconEndSpacing":I
    add-int v4, v1, v3

    iget-object v5, p0, Lcom/android/launcher3/DeviceProfile;->mHotseatPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    return v4
.end method

.method public getWorkspaceSpringLoadScale()F
    .locals 5

    .line 1003
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutSpringLoadShrunkBottom()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutSpringLoadShrunkTop()F

    move-result v1

    sub-float/2addr v0, v1

    .line 1004
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1005
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1008
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    .line 1009
    .local v1, "workspaceWidth":I
    int-to-float v2, v1

    mul-float/2addr v2, v0

    .line 1010
    .local v2, "scaledWorkspaceWidth":F
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadedMinNextPageVisiblePx:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    int-to-float v3, v3

    .line 1011
    .local v3, "maxAvailableWidth":F
    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    .line 1012
    div-float v4, v3, v2

    mul-float/2addr v0, v4

    .line 1014
    :cond_0
    return v0
.end method

.method public isSeascape()Z
    .locals 1

    .line 1277
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->mIsSeascape:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVerticalBarLayout()Z
    .locals 1

    .line 1256
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->transposeLayoutWithOrientation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldFadeAdjacentWorkspaceScreens()Z
    .locals 1

    .line 1281
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    return v0
.end method

.method public shouldInsetWidgets()Z
    .locals 3

    .line 595
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    .line 599
    .local v0, "widgetPadding":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->workspaceTopPadding:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 615
    new-instance v6, Lcom/android/launcher3/util/WindowBounds;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->rotationHint:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/WindowBounds;-><init>(IIIII)V

    .line 617
    .local v0, "bounds":Lcom/android/launcher3/util/WindowBounds;
    iget-object v1, v0, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->windowX:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->windowY:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 618
    iget-object v1, v0, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 619
    new-instance v1, Lcom/android/launcher3/DeviceProfile$Builder;

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/launcher3/DeviceProfile$Builder;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;)V

    .line 620
    invoke-virtual {v1, v0}, Lcom/android/launcher3/DeviceProfile$Builder;->setWindowBounds(Lcom/android/launcher3/util/WindowBounds;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    .line 621
    invoke-virtual {v1, v2}, Lcom/android/launcher3/DeviceProfile$Builder;->setUseTwoPanels(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    .line 622
    invoke-virtual {v1, v2}, Lcom/android/launcher3/DeviceProfile$Builder;->setMultiWindowMode(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    .line 623
    invoke-virtual {v1, v2}, Lcom/android/launcher3/DeviceProfile$Builder;->setGestureMode(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v1

    .line 619
    return-object v1
.end method

.method public updateIconSize(FLandroid/content/res/Resources;)V
    .locals 7
    .param p1, "scale"    # F
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 751
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->iconScale:F

    .line 752
    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->cellScaleToFit:F

    .line 755
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    .line 756
    .local v0, "isVerticalLayout":Z
    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v1, v1, v2

    .line 757
    .local v1, "invIconSizeDp":F
    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:[F

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget v2, v2, v3

    .line 759
    .local v2, "invIconTextSizeSp":F
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->iconScale:F

    invoke-static {v1, v3, v4}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 760
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Lcom/android/launcher3/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->iconScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    .line 761
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    .line 763
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {p0, v3, p1}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutBorderSpace(Lcom/android/launcher3/InvariantDeviceProfile;F)Landroid/graphics/Point;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    .line 765
    iget-boolean v3, p0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v3, :cond_0

    .line 766
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->minCellSize:[Landroid/graphics/PointF;

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4, p1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    .line 767
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->minCellSize:[Landroid/graphics/PointF;

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4, p1}, Lcom/android/launcher3/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    .line 768
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v4, v4

    .line 769
    invoke-static {v4}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v4

    add-int/2addr v3, v4

    .line 770
    .local v3, "cellContentHeight":I
    const/4 v4, 0x0

    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/launcher3/DeviceProfile;->cellYPaddingPx:I

    .line 771
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginOriginalPx:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    .line 773
    .end local v3    # "cellContentHeight":I
    goto :goto_0

    .line 774
    :cond_0
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    .line 775
    int-to-float v3, v3

    const/high16 v4, 0x3f900000    # 1.125f

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v4, v4

    .line 777
    invoke-static {v4}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->getAdaptationCellHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    .line 778
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 779
    .local v3, "cellPaddingY":I
    iget v5, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    if-le v5, v3, :cond_1

    if-nez v0, :cond_1

    iget-boolean v6, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v6, :cond_1

    .line 784
    sub-int/2addr v5, v3

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    .line 785
    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    .line 790
    .end local v3    # "cellPaddingY":I
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/DeviceProfile;->updateAllAppsIconSize(FLandroid/content/res/Resources;)V

    .line 792
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-direct {p0, v3}, Lcom/android/launcher3/DeviceProfile;->updateHotseatIconSize(I)V

    .line 795
    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {v3}, Lcom/android/launcher3/icons/IconNormalizer;->getNormalizedCircleSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    .line 796
    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/launcher3/DeviceProfile;->folderIconOffsetYPx:I

    .line 797
    return-void
.end method

.method public updateInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 926
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 927
    return-void
.end method

.method public updateIsSeascape(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1263
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1264
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    .line 1265
    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1266
    .local v0, "isSeascape":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/DeviceProfile;->mIsSeascape:Z

    if-eq v2, v0, :cond_1

    .line 1267
    iput-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->mIsSeascape:Z

    .line 1269
    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfile;->updateWorkspacePadding()V

    .line 1270
    return v3

    .line 1273
    .end local v0    # "isSeascape":Z
    :cond_1
    return v1
.end method
